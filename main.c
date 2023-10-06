#ifndef HUFFMANARCHIVER_MAIN_H

#include <stdio.h>
#include <fcntl.h>
#include "archive/archiver.h"

#endif //HUFFMANARCHIVER_MAIN_H

#define PROGRAM_NAME "arhuff"

/**
 * @var command = 0 -- compress
 * @var command = 1 -- decompress
 */
static int command = -1;

/**
 * @var infile - input file name
 * @var data_buffer - buffer for data from file
 */
static char const *infile;
static char const *data_buffer;

void usage(int status){
    printf("Usage: %s [SHORT-OPTION]\n\n", PROGRAM_NAME);
    printf("The STRING(s) to standard output.\n");
    printf("  -f             path to target file\n");
    printf("  -c             compress file from -f\n");
    printf("  -d             decompress file from -f\n");
    printf("  -h             display this help and exit\n");
    exit(status);
}

int main(int argc, char **argv){
    if(argc > 1){
        while(1){
            int c = getopt(argc, argv, "cdhf:");

            if(optopt)
                exit(EXIT_FAILURE);

            if(c == -1)
                break;

            switch(c){
                case 'h':
                    usage(EXIT_SUCCESS);
                    break;
                case 'f':
                    infile = optarg;
                    break;
                case 'c':
                    if(command != -1)
                        usage(EXIT_FAILURE);
                    command = 0;
                    break;
                case 'd':
                    if(command != -1)
                        usage(EXIT_FAILURE);
                    command = 1;
                    break;
                default:
                    break;
            }
        }
    }

    int fd = open(infile, O_RDONLY);

    if(fd == -1){
        perror("open() failed");
        return EXIT_FAILURE;
    }

    int size = lseek(fd, 0L, SEEK_END);
    lseek(fd, 0L, SEEK_SET);

    data_buffer = (char *) malloc(sizeof(char)*size);
    if(read(fd, data_buffer, size) == -1){
        perror("read() failed");
        return EXIT_FAILURE;
    }
    close(fd);

    if(command){
        strcat(infile, ".txt");
        decompress(infile, data_buffer);
    }
    else{
        strcat(infile, ".hff");
        compress(infile, data_buffer, size);
    }
    free(data_buffer);

    return 0;
}