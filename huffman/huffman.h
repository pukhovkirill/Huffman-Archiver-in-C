#ifndef HUFFMANARCHIVER_HUFFMAN_H

#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "../data_structures/priority_queue.h"

#endif //HUFFMANARCHIVER_HUFFMAN_H

#define CHAR_COUNT 256

Tree *build_huffman_tree(const int *freq);
void create_huffman_codes(char codes[256][256], Tree *root);
