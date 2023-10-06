#include "archiver.h"

static unsigned char *archive;

int read_header(int *data_len, int *offset, int *freq);
int dearchive(char *bytes, int data_len, int offset, HuffNode *huffman_tree);

void decompress(const char *file_name, const char *data){
    archive = (unsigned char *)data;

    int out_len, offset, freq[CHAR_COUNT];

    read_header(&out_len, &offset, freq);
    Tree *huffman_tree = build_huffman_tree(freq);

    char output[out_len];
    dearchive(output, out_len, offset, huffman_tree->data);

    write_string(file_name, output, out_len);

    free(huffman_tree);
}

int read_header(int *data_len, int *offset, int *freq){
    *data_len = archive[0]        |
               (archive[1] <<  8) |
               (archive[1] << 16) |
               (archive[1] << 24);

    *offset = 4;

    for(int i = 0; i < CHAR_COUNT; i++)
        freq[i] = archive[*offset + i];

    *offset += CHAR_COUNT;

    return 0;
}


int dearchive(char *bytes, const int data_len, const int offset, HuffNode *huffman_tree){
    HuffNode *curr_tree = huffman_tree;

    int size = 0;
    int i = offset;
    while(1){
        if(size > data_len)
            break;

        for(int bit = 1; bit <= 128; bit <<= 1){
            int tail = archive[i] & bit;
            if(tail == 0)
                curr_tree = curr_tree->bit0;
            else
                curr_tree = curr_tree->bit1;

            if(curr_tree->bit0 != NULL)
                continue;

            if(size++ < data_len)
                bytes[size-1] = (char)curr_tree->symbol;

            curr_tree = huffman_tree;
        }
        ++i;
    }

    return 0;
}
