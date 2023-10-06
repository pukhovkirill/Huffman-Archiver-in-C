# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yukir/CLionProjects/HuffmanArchiver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yukir/CLionProjects/HuffmanArchiver

# Include any dependencies generated for this target.
include CMakeFiles/HuffmanArchiver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/HuffmanArchiver.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/HuffmanArchiver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HuffmanArchiver.dir/flags.make

CMakeFiles/HuffmanArchiver.dir/main.c.o: CMakeFiles/HuffmanArchiver.dir/flags.make
CMakeFiles/HuffmanArchiver.dir/main.c.o: main.c
CMakeFiles/HuffmanArchiver.dir/main.c.o: CMakeFiles/HuffmanArchiver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yukir/CLionProjects/HuffmanArchiver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/HuffmanArchiver.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/HuffmanArchiver.dir/main.c.o -MF CMakeFiles/HuffmanArchiver.dir/main.c.o.d -o CMakeFiles/HuffmanArchiver.dir/main.c.o -c /home/yukir/CLionProjects/HuffmanArchiver/main.c

CMakeFiles/HuffmanArchiver.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/HuffmanArchiver.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yukir/CLionProjects/HuffmanArchiver/main.c > CMakeFiles/HuffmanArchiver.dir/main.c.i

CMakeFiles/HuffmanArchiver.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/HuffmanArchiver.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yukir/CLionProjects/HuffmanArchiver/main.c -o CMakeFiles/HuffmanArchiver.dir/main.c.s

CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.o: CMakeFiles/HuffmanArchiver.dir/flags.make
CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.o: huffman/alph_freq.c
CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.o: CMakeFiles/HuffmanArchiver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yukir/CLionProjects/HuffmanArchiver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.o -MF CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.o.d -o CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.o -c /home/yukir/CLionProjects/HuffmanArchiver/huffman/alph_freq.c

CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yukir/CLionProjects/HuffmanArchiver/huffman/alph_freq.c > CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.i

CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yukir/CLionProjects/HuffmanArchiver/huffman/alph_freq.c -o CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.s

CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.o: CMakeFiles/HuffmanArchiver.dir/flags.make
CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.o: huffman/huffman_tree.c
CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.o: CMakeFiles/HuffmanArchiver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yukir/CLionProjects/HuffmanArchiver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.o -MF CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.o.d -o CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.o -c /home/yukir/CLionProjects/HuffmanArchiver/huffman/huffman_tree.c

CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yukir/CLionProjects/HuffmanArchiver/huffman/huffman_tree.c > CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.i

CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yukir/CLionProjects/HuffmanArchiver/huffman/huffman_tree.c -o CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.s

CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.o: CMakeFiles/HuffmanArchiver.dir/flags.make
CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.o: priority_queue/binary_heap.c
CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.o: CMakeFiles/HuffmanArchiver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yukir/CLionProjects/HuffmanArchiver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.o -MF CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.o.d -o CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.o -c /home/yukir/CLionProjects/HuffmanArchiver/priority_queue/binary_heap.c

CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yukir/CLionProjects/HuffmanArchiver/priority_queue/binary_heap.c > CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.i

CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yukir/CLionProjects/HuffmanArchiver/priority_queue/binary_heap.c -o CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.s

CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.o: CMakeFiles/HuffmanArchiver.dir/flags.make
CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.o: priority_queue/priority_queue.c
CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.o: CMakeFiles/HuffmanArchiver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yukir/CLionProjects/HuffmanArchiver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.o -MF CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.o.d -o CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.o -c /home/yukir/CLionProjects/HuffmanArchiver/priority_queue/priority_queue.c

CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yukir/CLionProjects/HuffmanArchiver/priority_queue/priority_queue.c > CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.i

CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yukir/CLionProjects/HuffmanArchiver/priority_queue/priority_queue.c -o CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.s

# Object files for target HuffmanArchiver
HuffmanArchiver_OBJECTS = \
"CMakeFiles/HuffmanArchiver.dir/main.c.o" \
"CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.o" \
"CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.o" \
"CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.o" \
"CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.o"

# External object files for target HuffmanArchiver
HuffmanArchiver_EXTERNAL_OBJECTS =

HuffmanArchiver: CMakeFiles/HuffmanArchiver.dir/main.c.o
HuffmanArchiver: CMakeFiles/HuffmanArchiver.dir/huffman/alph_freq.c.o
HuffmanArchiver: CMakeFiles/HuffmanArchiver.dir/huffman/huffman_tree.c.o
HuffmanArchiver: CMakeFiles/HuffmanArchiver.dir/priority_queue/binary_heap.c.o
HuffmanArchiver: CMakeFiles/HuffmanArchiver.dir/priority_queue/priority_queue.c.o
HuffmanArchiver: CMakeFiles/HuffmanArchiver.dir/build.make
HuffmanArchiver: CMakeFiles/HuffmanArchiver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/yukir/CLionProjects/HuffmanArchiver/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable HuffmanArchiver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HuffmanArchiver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HuffmanArchiver.dir/build: HuffmanArchiver
.PHONY : CMakeFiles/HuffmanArchiver.dir/build

CMakeFiles/HuffmanArchiver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HuffmanArchiver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HuffmanArchiver.dir/clean

CMakeFiles/HuffmanArchiver.dir/depend:
	cd /home/yukir/CLionProjects/HuffmanArchiver && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yukir/CLionProjects/HuffmanArchiver /home/yukir/CLionProjects/HuffmanArchiver /home/yukir/CLionProjects/HuffmanArchiver /home/yukir/CLionProjects/HuffmanArchiver /home/yukir/CLionProjects/HuffmanArchiver/CMakeFiles/HuffmanArchiver.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/HuffmanArchiver.dir/depend

