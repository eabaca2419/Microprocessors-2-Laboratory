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
CMAKE_SOURCE_DIR = /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build

# Include any dependencies generated for this target.
include esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/flags.make
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj: ../../../../components/esp_common/src/esp_err_to_name.c
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build/esp-idf/esp_common && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj -MF CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj.d -o CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj -c /Users/eabaca/esp/esp-idf/components/esp_common/src/esp_err_to_name.c

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build/esp-idf/esp_common && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/esp_common/src/esp_err_to_name.c > CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.i

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build/esp-idf/esp_common && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/esp_common/src/esp_err_to_name.c -o CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.s

# Object files for target __idf_esp_common
__idf_esp_common_OBJECTS = \
"CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj"

# External object files for target __idf_esp_common
__idf_esp_common_EXTERNAL_OBJECTS =

esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/src/esp_err_to_name.c.obj
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/build.make
esp-idf/esp_common/libesp_common.a: esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libesp_common.a"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build/esp-idf/esp_common && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_common.dir/cmake_clean_target.cmake
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build/esp-idf/esp_common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_esp_common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/build: esp-idf/esp_common/libesp_common.a
.PHONY : esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/build

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/clean:
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build/esp-idf/esp_common && $(CMAKE_COMMAND) -P CMakeFiles/__idf_esp_common.dir/cmake_clean.cmake
.PHONY : esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/clean

esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/depend:
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project /Users/eabaca/esp/esp-idf/components/esp_common /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build/esp-idf/esp_common /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Elevator_Project/build/esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/esp_common/CMakeFiles/__idf_esp_common.dir/depend

