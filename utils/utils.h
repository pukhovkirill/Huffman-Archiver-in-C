#ifndef HUFFMANARCHIVER_UTILS_H

#include <unistd.h>
#include <stdlib.h>
#include <malloc.h>
#include <fcntl.h>
#include <errno.h>
#include <asm-generic/errno-base.h>

#endif //HUFFMANARCHIVER_UTILS_H

int concat_arrays(unsigned char **array, const unsigned char *a, int a_size, const unsigned char *b, int b_size);
int write_bytes(const char *name, const unsigned char *bytes, int bytes_size);
int write_string(const char *name, const char *bytes, int bytes_size);