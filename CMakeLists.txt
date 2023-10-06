cmake_minimum_required(VERSION 3.25)
project(HuffmanArchiver C)

set(CMAKE_C_STANDARD 11)

add_executable(HuffmanArchiver main.c
        data_structures/priority_queue.c
        data_structures/priority_queue.h
        archive/dearchiver.c
        archive/archiver.c
        archive/archiver.h
        huffman/huffman.h
        huffman/huffman.c
        utils/utils.h
        utils/utils.c
)
