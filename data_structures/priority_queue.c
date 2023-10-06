#include "priority_queue.h"

Tree *new_node(int priority, int symbol, HuffNode *bit0, HuffNode *bit1);
Tree *insert(Tree *root, Tree *node);
Tree *get_min(Tree *root);
Tree *get_max(Tree *root);
Tree *delete_node(Tree *root, int priority);

int pg_offer(Tree **root, int priority, int symbol, HuffNode *bit0, HuffNode *bit1){
    Tree *node = new_node(priority, symbol, bit0, bit1);
    *root = insert(*root, node);
    pq_element_count++;
    return pq_element_count;
}

HuffNode *pg_poll(Tree **root){
    if(*root == NULL) return NULL;

    HuffNode *temp = (HuffNode *)malloc(sizeof(HuffNode));

    Tree *min = get_min(*root);
    temp->priority = min->data->priority;
    temp->symbol = min->data->symbol;
    temp->bit0 = min->data->bit0;
    temp->bit1 = min->data->bit1;
    temp->next = NULL;

    *root = delete_node(*root, min->data->priority);
    pq_element_count--;

    return temp;
}

Tree *new_node(int priority, int symbol, HuffNode *bit0, HuffNode *bit1){
    Tree *temp = (Tree *)malloc(sizeof(Tree));
    temp->data = (HuffNode *)malloc(sizeof(HuffNode));
    temp->data->priority = priority;
    temp->data->symbol = symbol;
    temp->data->bit0 = bit0;
    temp->data->bit1 = bit1;
    temp->data->next = NULL;
    temp->left = temp->right = NULL;
    return temp;
}

HuffNode *insert_into_list(HuffNode *head, HuffNode *node){
    if(head != NULL){
        head->next = insert_into_list(head->next, node);
        return head;
    }else{
        return node;
    }
}

Tree *insert(Tree *root, Tree *node){
    if(root == NULL)
        return node;

    if(root->data->priority == node->data->priority){
        insert_into_list(root->data, node->data);
        return root;
    }

    if(root->data->priority > node->data->priority)
        root->left = insert(root->left, node);
    else
        root->right = insert(root->right, node);

    return root;
}

Tree *get_min(Tree *root){
    if(root == NULL) return NULL;
    Tree *node = get_min(root->left);
    if(node == NULL)
        return root;
    return node;
}

Tree *get_max(Tree *root){
    if(root == NULL) return NULL;
    Tree *node = get_max(root->right);
    if(node == NULL)
        return root;
    return node;
}

Tree* delete_node(Tree *root, int priority){
    if (root == NULL)
        return root;

    if (root->data->priority > priority) {
        root->left = delete_node(root->left, priority);
        return root;
    }
    else if (root->data->priority < priority) {
        root->right = delete_node(root->right, priority);
        return root;
    }
    else if(root->data->priority == priority){
        HuffNode *ll_node = root->data;
        if(ll_node->next == NULL){
            Tree *temp = root->right;
            free(root->data);
            free(root);
            return temp;
        }else{
            HuffNode *next = ll_node->next;
            HuffNode *deleted = root->data;
            root->data = next;
            free(deleted);
            return root;
        }
    }

    if (root->left == NULL) {
        Tree *temp = root->right;
        free(root->data);
        free(root);
        return temp;
    }
    else if (root->right == NULL) {
        Tree *temp = root->left;
        free(root->data);
        free(root);
        return temp;
    }

    return root;
}