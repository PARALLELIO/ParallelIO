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
include tests/general/CMakeFiles/pio_decomp_tests.dir/depend.make

# Include the progress variables for this target.
include tests/general/CMakeFiles/pio_decomp_tests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/general/CMakeFiles/pio_decomp_tests.dir/flags.make

tests/general/pio_decomp_tests.F90: ../tests/general/pio_decomp_tests.F90.in
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating pio_decomp_tests.F90"
	cd /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/tests/general && ../../../tests/general/util/pio_tf_f90gen.pl --annotate-source --out=/home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/tests/general/pio_decomp_tests.F90 /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/tests/general/pio_decomp_tests.F90.in

tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o: tests/general/CMakeFiles/pio_decomp_tests.dir/flags.make
tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o: tests/general/pio_decomp_tests.F90
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building Fortran object tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o"
	cd /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/tests/general && /usr/lib64/openmpi/bin/mpif90  $(Fortran_DEFINES) $(Fortran_FLAGS) -c /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/tests/general/pio_decomp_tests.F90 -o CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o

tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o.requires:
.PHONY : tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o.requires

tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o.provides: tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o.requires
	$(MAKE) -f tests/general/CMakeFiles/pio_decomp_tests.dir/build.make tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o.provides.build
.PHONY : tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o.provides

tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o.provides.build: tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o

# Object files for target pio_decomp_tests
pio_decomp_tests_OBJECTS = \
"CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o"

# External object files for target pio_decomp_tests
pio_decomp_tests_EXTERNAL_OBJECTS =

tests/general/pio_decomp_tests: tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o
tests/general/pio_decomp_tests: tests/general/CMakeFiles/pio_decomp_tests.dir/build.make
tests/general/pio_decomp_tests: tests/general/libpio_tutil.a
tests/general/pio_decomp_tests: src/flib/libpiof.a
tests/general/pio_decomp_tests: src/clib/libpioc.a
tests/general/pio_decomp_tests: src/gptl/libgptl.a
tests/general/pio_decomp_tests: tools/adios2pio-nm/libadios2pio-nm-lib.a
tests/general/pio_decomp_tests: /home/tkurc/codar/acme/pnetcdf/lib/libpnetcdf.a
tests/general/pio_decomp_tests: /home/tkurc/codar/adios-install/lib/libadios.a
tests/general/pio_decomp_tests: /usr/lib64/libpthread.so
tests/general/pio_decomp_tests: /usr/lib64/libm.so
tests/general/pio_decomp_tests: tests/general/CMakeFiles/pio_decomp_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking Fortran executable pio_decomp_tests"
	cd /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/tests/general && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pio_decomp_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/general/CMakeFiles/pio_decomp_tests.dir/build: tests/general/pio_decomp_tests
.PHONY : tests/general/CMakeFiles/pio_decomp_tests.dir/build

tests/general/CMakeFiles/pio_decomp_tests.dir/requires: tests/general/CMakeFiles/pio_decomp_tests.dir/pio_decomp_tests.F90.o.requires
.PHONY : tests/general/CMakeFiles/pio_decomp_tests.dir/requires

tests/general/CMakeFiles/pio_decomp_tests.dir/clean:
	cd /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/tests/general && $(CMAKE_COMMAND) -P CMakeFiles/pio_decomp_tests.dir/cmake_clean.cmake
.PHONY : tests/general/CMakeFiles/pio_decomp_tests.dir/clean

tests/general/CMakeFiles/pio_decomp_tests.dir/depend: tests/general/pio_decomp_tests.F90
	cd /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tkurc/codar/e3sm/pio_adios1/ParallelIO /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/tests/general /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/tests/general /home/tkurc/codar/e3sm/pio_adios1/ParallelIO/build/tests/general/CMakeFiles/pio_decomp_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/general/CMakeFiles/pio_decomp_tests.dir/depend

