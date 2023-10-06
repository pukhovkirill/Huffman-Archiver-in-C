#include "huffman.h"

Tree *build_huffman_tree(const int *freq){
    /**
     * we go through the array of symbol frequencies and
     * place non-zero symbols in the priority queue
     */
    Tree *tree = NULL;
    for(int i = 0; i < CHAR_COUNT; i++){
        int priority = freq[i];
        if(priority > 0){
            HuffNode *bit = NULL;
            pg_offer(&tree, priority, i, bit , bit);
        }
    }

    Tree *root = NULL;
    /**
     * according to the Huffman algorithm, we take the two smallest
     * frequencies and add them to form a new node of the Huffman tree
     */
    while(tree != NULL){
        HuffNode *dist1 = pg_poll(&tree);
        HuffNode *dist2 = pg_poll(&tree);

        int priority = dist1->priority + (dist2 == NULL ? 0 : dist2->priority);
        int symbol = -1;

        if(tree == NULL)
            pg_offer(&root, dist1->priority, dist1->symbol, dist1->bit0, dist1->bit1);
        else
            pg_offer(&root, priority, symbol, dist1, dist2);
    }


    /**
     * if the tree is over but the Huffman tree still has more than one node,
     * then we continue to iterate over the tree
     */
    while(root->left != NULL || root->right != NULL){
        HuffNode *dist1 = pg_poll(&root);
        HuffNode *dist2 = pg_poll(&root);

        int priority = dist1->priority + dist2->priority;
        int symbol = -1;

        pg_offer(&root, priority, symbol, dist1, dist2);
    }

    return root;
}

void fill_codes(char codes[256][256], HuffNode *root, char code[]){
    /**
     * we go in the opposite direction along the Huffman tree and concatenate the bits lying on certain branches
     * as soon as the value of the symbol in the node becomes greater than -1, this means that we have reached the
     * symbol of the source string, which means we can write the “symbol - code” pair into the array
     */
    if(root != NULL && root->bit0 == NULL){
        strcpy(codes[root->symbol], code);
    }else{
        char code0[256], code1[256];
        strcpy(code0, code);
        strcpy(code1, code);
        fill_codes(codes, root->bit0, strcat(code0, "0"));
        fill_codes(codes, root->bit1, strcat(code1, "1"));
    }
}

void create_huffman_codes(char codes[256][256], Tree *root){
    fill_codes(codes, root->data, "");
}