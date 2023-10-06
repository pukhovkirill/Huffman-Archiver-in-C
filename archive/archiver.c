#include "archiver.h"

#define HEADER_SIZE 260

static unsigned char header[HEADER_SIZE];
static char codes[256][256];

int create_header(int data_size, const int *freq);
int archivate(unsigned char *bytes_arr, const char data[], int size);
int calculate_freq(int *freq, const char *bytes);

void compress(const char *file_name, const char *data, const int data_size){
    int freq[CHAR_COUNT];
    calculate_freq(freq, data);

    Tree *huffman_tree = build_huffman_tree(freq);
    create_huffman_codes(codes, huffman_tree);

    unsigned char archive[data_size];
    memset(archive, 0L, data_size);
    int archive_size = archivate(archive, data, data_size);

    create_header(data_size, freq);

    unsigned char *result;
    int res_size = concat_arrays(&result, header, HEADER_SIZE, archive, archive_size);

    write_bytes(file_name, result, res_size);

    free(huffman_tree);
}

int create_header(const int data_size, const int *freq){
    header[0] = (unsigned char)( data_size        & 255);
    header[1] = (unsigned char)((data_size >>  8) & 255);
    header[2] = (unsigned char)((data_size >> 16) & 255);
    header[3] = (unsigned char)((data_size >> 24) & 255);
    int offset = 4;

    for(int i = 0; i < CHAR_COUNT; i++)
        header[offset + i] = (unsigned char)freq[i];

    return 0;
}

int archivate(unsigned char *bytes_arr, const char data[], int size){
    int byte_count = 0;

    unsigned char sum = 0;
    unsigned char bit = 1;
    for(int i = 0; i < size; i++){
        char letter = data[i];
        char *code = codes[letter];
        int c_size = (int)strlen(code);
        for(int j = 0; j < c_size; j++){
            char c = code[j];

            if(c == '1')
                sum |= bit;
            if(bit < 128){
                bit <<= 1;
            }
            else{
                bytes_arr[byte_count++] = sum;
                sum = 0;
                bit = 1;
            }
        }
    }

    if(bit > 1) {
        bytes_arr[byte_count++] = sum;
    }

    return byte_count;
}

int calculate_freq(int *freq, const char *bytes){
    char c;
    int i = 0;

    for(; i < CHAR_COUNT; i++)
        freq[i] = 0;

    i = 0;
    while((c = bytes[i++]) != '\0')
        ++freq[c];

    return 0;
}