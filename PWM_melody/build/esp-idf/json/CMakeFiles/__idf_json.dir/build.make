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
CMAKE_SOURCE_DIR = /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build

# Include any dependencies generated for this target.
include esp-idf/json/CMakeFiles/__idf_json.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/json/CMakeFiles/__idf_json.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/json/CMakeFiles/__idf_json.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/json/CMakeFiles/__idf_json.dir/flags.make

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj: esp-idf/json/CMakeFiles/__idf_json.dir/flags.make
esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj: ../../../../components/json/cJSON/cJSON.c
esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj: esp-idf/json/CMakeFiles/__idf_json.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/json && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj -MF CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj.d -o CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj -c /Users/eabaca/esp/esp-idf/components/json/cJSON/cJSON.c

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_json.dir/cJSON/cJSON.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/json && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/json/cJSON/cJSON.c > CMakeFiles/__idf_json.dir/cJSON/cJSON.c.i

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_json.dir/cJSON/cJSON.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/json && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/json/cJSON/cJSON.c -o CMakeFiles/__idf_json.dir/cJSON/cJSON.c.s

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj: esp-idf/json/CMakeFiles/__idf_json.dir/flags.make
esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj: ../../../../components/json/cJSON/cJSON_Utils.c
esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj: esp-idf/json/CMakeFiles/__idf_json.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/json && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj -MF CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj.d -o CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj -c /Users/eabaca/esp/esp-idf/components/json/cJSON/cJSON_Utils.c

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/json && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/json/cJSON/cJSON_Utils.c > CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.i

esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/json && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/json/cJSON/cJSON_Utils.c -o CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.s

# Object files for target __idf_json
__idf_json_OBJECTS = \
"CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj" \
"CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj"

# External object files for target __idf_json
__idf_json_EXTERNAL_OBJECTS =

esp-idf/json/libjson.a: esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON.c.obj
esp-idf/json/libjson.a: esp-idf/json/CMakeFiles/__idf_json.dir/cJSON/cJSON_Utils.c.obj
esp-idf/json/libjson.a: esp-idf/json/CMakeFiles/__idf_json.dir/build.make
esp-idf/json/libjson.a: esp-idf/json/CMakeFiles/__idf_json.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libjson.a"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/json && $(CMAKE_COMMAND) -P CMakeFiles/__idf_json.dir/cmake_clean_target.cmake
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/json && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_json.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/json/CMakeFiles/__idf_json.dir/build: esp-idf/json/libjson.a
.PHONY : esp-idf/json/CMakeFiles/__idf_json.dir/build

esp-idf/json/CMakeFiles/__idf_json.dir/clean:
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/json && $(CMAKE_COMMAND) -P CMakeFiles/__idf_json.dir/cmake_clean.cmake
.PHONY : esp-idf/json/CMakeFiles/__idf_json.dir/clean

esp-idf/json/CMakeFiles/__idf_json.dir/depend:
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody /Users/eabaca/esp/esp-idf/components/json /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/json /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/json/CMakeFiles/__idf_json.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/json/CMakeFiles/__idf_json.dir/depend

