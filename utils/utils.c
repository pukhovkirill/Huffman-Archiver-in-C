#include "utils.h"

int concat_arrays(unsigned char **array, const unsigned char *a, const int a_size, const unsigned char *b, const int b_size){
    int len = a_size + b_size;
    *array = (unsigned char *)malloc(len * sizeof(unsigned char));
    int i = 0;
    for(int j = 0; j < a_size; j++){
        *(*array + i) = a[j];
        i++;
    }

    for(int j = 0; j < b_size; j++){
        *(*array + i) = b[j];
        i++;
    }

    return len;
}

int write_bytes(const char *name, const unsigned char *bytes, const int bytes_size){
    int fd = open(name, O_WRONLY | O_CREAT | O_EXCL, 0755);
    if ((fd == -1) && (EEXIST == errno))
        fd = open(name, O_WRONLY);

    if(fd == -1){
        perror("open() failed");
        exit(EXIT_FAILURE);
    }

    size_t r1;
    if((r1 = write(fd, bytes, bytes_size)) == -1){
        perror("write() failed");
        exit(EXIT_FAILURE);
    }

    printf("\nwrote %zu elements out of %d requested\n", r1,  bytes_size);
    close(fd);

    return 0;
}

int write_string(const char *name, const char *bytes, const int bytes_size){
    int fd = open(name, O_WRONLY | O_CREAT | O_EXCL, 0755);
    if ((fd == -1) && (EEXIST == errno))
        fd = open(name, O_WRONLY);

    if(fd == -1){
        perror("open() failed");
        exit(EXIT_FAILURE);
    }

    size_t r1;
    if((r1 = write(fd, bytes, bytes_size)) == -1){
        perror("write() failed");
        exit(EXIT_FAILURE);
    }

    printf("\nwrote %zu elements out of %d requested\n", r1,  bytes_size);
    close(fd);

    return 0;
}
