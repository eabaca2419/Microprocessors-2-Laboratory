# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build

# Include any dependencies generated for this target.
include esp-idf/asio/CMakeFiles/__idf_asio.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/asio/CMakeFiles/__idf_asio.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/asio/CMakeFiles/__idf_asio.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/asio/CMakeFiles/__idf_asio.dir/flags.make

esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj: esp-idf/asio/CMakeFiles/__idf_asio.dir/flags.make
esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj: ../../../../components/asio/asio/asio/src/asio.cpp
esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj: esp-idf/asio/CMakeFiles/__idf_asio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build/esp-idf/asio && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj -MF CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj.d -o CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj -c /Users/eabaca/esp/esp-idf/components/asio/asio/asio/src/asio.cpp

esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build/esp-idf/asio && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eabaca/esp/esp-idf/components/asio/asio/asio/src/asio.cpp > CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.i

esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build/esp-idf/asio && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eabaca/esp/esp-idf/components/asio/asio/asio/src/asio.cpp -o CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.s

# Object files for target __idf_asio
__idf_asio_OBJECTS = \
"CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj"

# External object files for target __idf_asio
__idf_asio_EXTERNAL_OBJECTS =

esp-idf/asio/libasio.a: esp-idf/asio/CMakeFiles/__idf_asio.dir/asio/asio/src/asio.cpp.obj
esp-idf/asio/libasio.a: esp-idf/asio/CMakeFiles/__idf_asio.dir/build.make
esp-idf/asio/libasio.a: esp-idf/asio/CMakeFiles/__idf_asio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libasio.a"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build/esp-idf/asio && $(CMAKE_COMMAND) -P CMakeFiles/__idf_asio.dir/cmake_clean_target.cmake
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build/esp-idf/asio && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_asio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/asio/CMakeFiles/__idf_asio.dir/build: esp-idf/asio/libasio.a
.PHONY : esp-idf/asio/CMakeFiles/__idf_asio.dir/build

esp-idf/asio/CMakeFiles/__idf_asio.dir/clean:
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build/esp-idf/asio && $(CMAKE_COMMAND) -P CMakeFiles/__idf_asio.dir/cmake_clean.cmake
.PHONY : esp-idf/asio/CMakeFiles/__idf_asio.dir/clean

esp-idf/asio/CMakeFiles/__idf_asio.dir/depend:
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7 /Users/eabaca/esp/esp-idf/components/asio /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build/esp-idf/asio /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_7/build/esp-idf/asio/CMakeFiles/__idf_asio.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/asio/CMakeFiles/__idf_asio.dir/depend

