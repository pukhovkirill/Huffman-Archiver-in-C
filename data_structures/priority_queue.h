#ifndef HUFFMANARCHIVER_PRIORITY_QUEUE_H

#include <malloc.h>
#include <stdio.h>

#endif //HUFFMANARCHIVER_PRIORITY_QUEUE_H

/**
 * huff_node huffman tree node
 * @var priority - the frequency of occurrence of the symbol is taken as priority
 * @var symbol - character of source string or -1 if it is a node of higher degree
 * @var bit0 - branch with value zero
 * @var bit1 - branch with value one
 * @var next - It may happen that different characters have the same priority,
 *             so you need to store a list of such characters.
 */
struct huff_node{
    int priority;
    int symbol;
    struct huff_node *bit0;
    struct huff_node *bit1;
    struct huff_node *next;
};
typedef struct huff_node HuffNode;

/**
 * default binary search tree structure
 * @var data - we store the huffman node as a value
 */
struct tree_node{
    struct huff_node *data;
    struct tree_node *left;
    struct tree_node *right;
};
typedef struct tree_node Tree;

/**
 * @var number of elements in the priority queue
 */
static int pq_element_count = 0;

/**
 * push new huffman node into tree
 */
int pg_offer(Tree **tree, int priority, int symbol, HuffNode *bit0, HuffNode *bit1);
/**
 * pull priority node from tree
 */
HuffNode *pg_poll(Tree **tree);
