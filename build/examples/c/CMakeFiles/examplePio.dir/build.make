# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tkurc/codar/e3sm/pio_adios1/ParallelIO

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build

# Include any dependencies generated for this target.
include examples/c/CMakeFiles/examplePio.dir/depend.make

# Include the progress variables for this target.
include examples/c/CMakeFiles/examplePio.dir/progress.make

# Include the compile flags for this target's objects.
include examples/c/CMakeFiles/examplePio.dir/flags.make

examples/c/CMakeFiles/examplePio.dir/examplePio.c.o: examples/c/CMakeFiles/examplePio.dir/flags.make
examples/c/CMakeFiles/examplePio.dir/examplePio.c.o: ../examples/c/examplePio.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/c/CMakeFiles/examplePio.dir/examplePio.c.o"
	cd /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/examples/c && /usr/lib64/openmpi/bin/mpicc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/examplePio.dir/examplePio.c.o   -c /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/examples/c/examplePio.c

examples/c/CMakeFiles/examplePio.dir/examplePio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/examplePio.dir/examplePio.c.i"
	cd /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/examples/c && /usr/lib64/openmpi/bin/mpicc  $(C_DEFINES) $(C_FLAGS) -E /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/examples/c/examplePio.c > CMakeFiles/examplePio.dir/examplePio.c.i

examples/c/CMakeFiles/examplePio.dir/examplePio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/examplePio.dir/examplePio.c.s"
	cd /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/examples/c && /usr/lib64/openmpi/bin/mpicc  $(C_DEFINES) $(C_FLAGS) -S /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/examples/c/examplePio.c -o CMakeFiles/examplePio.dir/examplePio.c.s

examples/c/CMakeFiles/examplePio.dir/examplePio.c.o.requires:
.PHONY : examples/c/CMakeFiles/examplePio.dir/examplePio.c.o.requires

examples/c/CMakeFiles/examplePio.dir/examplePio.c.o.provides: examples/c/CMakeFiles/examplePio.dir/examplePio.c.o.requires
	$(MAKE) -f examples/c/CMakeFiles/examplePio.dir/build.make examples/c/CMakeFiles/examplePio.dir/examplePio.c.o.provides.build
.PHONY : examples/c/CMakeFiles/examplePio.dir/examplePio.c.o.provides

examples/c/CMakeFiles/examplePio.dir/examplePio.c.o.provides.build: examples/c/CMakeFiles/examplePio.dir/examplePio.c.o

# Object files for target examplePio
examplePio_OBJECTS = \
"CMakeFiles/examplePio.dir/examplePio.c.o"

# External object files for target examplePio
examplePio_EXTERNAL_OBJECTS =

examples/c/examplePio: examples/c/CMakeFiles/examplePio.dir/examplePio.c.o
examples/c/examplePio: examples/c/CMakeFiles/examplePio.dir/build.make
examples/c/examplePio: src/clib/libpioc.a
examples/c/examplePio: src/gptl/libgptl.a
examples/c/examplePio: tools/adios2pio-nm/libadios2pio-nm-lib.a
examples/c/examplePio: /home/tkurc/codar/acme/pnetcdf/lib/libpnetcdf.a
examples/c/examplePio: /home/tkurc/codar/adios-install/lib/libadios.a
examples/c/examplePio: /usr/lib64/libpthread.so
examples/c/examplePio: /usr/lib64/libm.so
examples/c/examplePio: examples/c/CMakeFiles/examplePio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable examplePio"
	cd /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/examples/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/examplePio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/c/CMakeFiles/examplePio.dir/build: examples/c/examplePio
.PHONY : examples/c/CMakeFiles/examplePio.dir/build

examples/c/CMakeFiles/examplePio.dir/requires: examples/c/CMakeFiles/examplePio.dir/examplePio.c.o.requires
.PHONY : examples/c/CMakeFiles/examplePio.dir/requires

examples/c/CMakeFiles/examplePio.dir/clean:
	cd /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/examples/c && $(CMAKE_COMMAND) -P CMakeFiles/examplePio.dir/cmake_clean.cmake
.PHONY : examples/c/CMakeFiles/examplePio.dir/clean

examples/c/CMakeFiles/examplePio.dir/depend:
	cd /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tkurc/codar/e3sm/pio_adios1/ParallelIO /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/examples/c /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/examples/c /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/examples/c/CMakeFiles/examplePio.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/c/CMakeFiles/examplePio.dir/depend

