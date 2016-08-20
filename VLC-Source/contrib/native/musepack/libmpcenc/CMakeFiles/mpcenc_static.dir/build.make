# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack

# Include any dependencies generated for this target.
include libmpcenc/CMakeFiles/mpcenc_static.dir/depend.make

# Include the progress variables for this target.
include libmpcenc/CMakeFiles/mpcenc_static.dir/progress.make

# Include the compile flags for this target's objects.
include libmpcenc/CMakeFiles/mpcenc_static.dir/flags.make

libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o: libmpcenc/CMakeFiles/mpcenc_static.dir/flags.make
libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o: libmpcenc/analy_filter.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mpcenc_static.dir/analy_filter.o   -c /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/analy_filter.c

libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mpcenc_static.dir/analy_filter.i"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/analy_filter.c > CMakeFiles/mpcenc_static.dir/analy_filter.i

libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mpcenc_static.dir/analy_filter.s"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/analy_filter.c -o CMakeFiles/mpcenc_static.dir/analy_filter.s

libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o.requires:
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o.requires

libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o.provides: libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o.requires
	$(MAKE) -f libmpcenc/CMakeFiles/mpcenc_static.dir/build.make libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o.provides.build
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o.provides

libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o.provides.build: libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o

libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o: libmpcenc/CMakeFiles/mpcenc_static.dir/flags.make
libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o: libmpcenc/bitstream.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mpcenc_static.dir/bitstream.o   -c /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/bitstream.c

libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mpcenc_static.dir/bitstream.i"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/bitstream.c > CMakeFiles/mpcenc_static.dir/bitstream.i

libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mpcenc_static.dir/bitstream.s"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/bitstream.c -o CMakeFiles/mpcenc_static.dir/bitstream.s

libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o.requires:
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o.requires

libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o.provides: libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o.requires
	$(MAKE) -f libmpcenc/CMakeFiles/mpcenc_static.dir/build.make libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o.provides.build
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o.provides

libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o.provides.build: libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o

libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o: libmpcenc/CMakeFiles/mpcenc_static.dir/flags.make
libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o: libmpcenc/encode_sv7.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mpcenc_static.dir/encode_sv7.o   -c /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/encode_sv7.c

libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mpcenc_static.dir/encode_sv7.i"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/encode_sv7.c > CMakeFiles/mpcenc_static.dir/encode_sv7.i

libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mpcenc_static.dir/encode_sv7.s"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/encode_sv7.c -o CMakeFiles/mpcenc_static.dir/encode_sv7.s

libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o.requires:
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o.requires

libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o.provides: libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o.requires
	$(MAKE) -f libmpcenc/CMakeFiles/mpcenc_static.dir/build.make libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o.provides.build
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o.provides

libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o.provides.build: libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o

libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o: libmpcenc/CMakeFiles/mpcenc_static.dir/flags.make
libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o: libmpcenc/huffsv7.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mpcenc_static.dir/huffsv7.o   -c /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/huffsv7.c

libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mpcenc_static.dir/huffsv7.i"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/huffsv7.c > CMakeFiles/mpcenc_static.dir/huffsv7.i

libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mpcenc_static.dir/huffsv7.s"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/huffsv7.c -o CMakeFiles/mpcenc_static.dir/huffsv7.s

libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o.requires:
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o.requires

libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o.provides: libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o.requires
	$(MAKE) -f libmpcenc/CMakeFiles/mpcenc_static.dir/build.make libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o.provides.build
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o.provides

libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o.provides.build: libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o

libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o: libmpcenc/CMakeFiles/mpcenc_static.dir/flags.make
libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o: libmpcenc/quant.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mpcenc_static.dir/quant.o   -c /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/quant.c

libmpcenc/CMakeFiles/mpcenc_static.dir/quant.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mpcenc_static.dir/quant.i"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/quant.c > CMakeFiles/mpcenc_static.dir/quant.i

libmpcenc/CMakeFiles/mpcenc_static.dir/quant.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mpcenc_static.dir/quant.s"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/quant.c -o CMakeFiles/mpcenc_static.dir/quant.s

libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o.requires:
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o.requires

libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o.provides: libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o.requires
	$(MAKE) -f libmpcenc/CMakeFiles/mpcenc_static.dir/build.make libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o.provides.build
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o.provides

libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o.provides.build: libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o

libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o: libmpcenc/CMakeFiles/mpcenc_static.dir/flags.make
libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o: common/crc32.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mpcenc_static.dir/__/common/crc32.o   -c /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/common/crc32.c

libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mpcenc_static.dir/__/common/crc32.i"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/common/crc32.c > CMakeFiles/mpcenc_static.dir/__/common/crc32.i

libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mpcenc_static.dir/__/common/crc32.s"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/common/crc32.c -o CMakeFiles/mpcenc_static.dir/__/common/crc32.s

libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o.requires:
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o.requires

libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o.provides: libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o.requires
	$(MAKE) -f libmpcenc/CMakeFiles/mpcenc_static.dir/build.make libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o.provides.build
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o.provides

libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o.provides.build: libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o

# Object files for target mpcenc_static
mpcenc_static_OBJECTS = \
"CMakeFiles/mpcenc_static.dir/analy_filter.o" \
"CMakeFiles/mpcenc_static.dir/bitstream.o" \
"CMakeFiles/mpcenc_static.dir/encode_sv7.o" \
"CMakeFiles/mpcenc_static.dir/huffsv7.o" \
"CMakeFiles/mpcenc_static.dir/quant.o" \
"CMakeFiles/mpcenc_static.dir/__/common/crc32.o"

# External object files for target mpcenc_static
mpcenc_static_EXTERNAL_OBJECTS =

libmpcenc/libmpcenc_static.a: libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o
libmpcenc/libmpcenc_static.a: libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o
libmpcenc/libmpcenc_static.a: libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o
libmpcenc/libmpcenc_static.a: libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o
libmpcenc/libmpcenc_static.a: libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o
libmpcenc/libmpcenc_static.a: libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o
libmpcenc/libmpcenc_static.a: libmpcenc/CMakeFiles/mpcenc_static.dir/build.make
libmpcenc/libmpcenc_static.a: libmpcenc/CMakeFiles/mpcenc_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libmpcenc_static.a"
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && $(CMAKE_COMMAND) -P CMakeFiles/mpcenc_static.dir/cmake_clean_target.cmake
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mpcenc_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libmpcenc/CMakeFiles/mpcenc_static.dir/build: libmpcenc/libmpcenc_static.a
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/build

libmpcenc/CMakeFiles/mpcenc_static.dir/requires: libmpcenc/CMakeFiles/mpcenc_static.dir/analy_filter.o.requires
libmpcenc/CMakeFiles/mpcenc_static.dir/requires: libmpcenc/CMakeFiles/mpcenc_static.dir/bitstream.o.requires
libmpcenc/CMakeFiles/mpcenc_static.dir/requires: libmpcenc/CMakeFiles/mpcenc_static.dir/encode_sv7.o.requires
libmpcenc/CMakeFiles/mpcenc_static.dir/requires: libmpcenc/CMakeFiles/mpcenc_static.dir/huffsv7.o.requires
libmpcenc/CMakeFiles/mpcenc_static.dir/requires: libmpcenc/CMakeFiles/mpcenc_static.dir/quant.o.requires
libmpcenc/CMakeFiles/mpcenc_static.dir/requires: libmpcenc/CMakeFiles/mpcenc_static.dir/__/common/crc32.o.requires
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/requires

libmpcenc/CMakeFiles/mpcenc_static.dir/clean:
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc && $(CMAKE_COMMAND) -P CMakeFiles/mpcenc_static.dir/cmake_clean.cmake
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/clean

libmpcenc/CMakeFiles/mpcenc_static.dir/depend:
	cd /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc /home/vlc/vlcProject/vlc-2.2/contrib/native/musepack/libmpcenc/CMakeFiles/mpcenc_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libmpcenc/CMakeFiles/mpcenc_static.dir/depend
