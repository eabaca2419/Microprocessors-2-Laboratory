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
include esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/compiler_depend.make

# Include the progress variables for this target.
include esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/flags.make

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/flags.make
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.obj: ../../../../components/fatfs/diskio/diskio.c
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.obj -MF CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.obj.d -o CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.obj -c /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio.c

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio.c > CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.i

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio.c -o CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.s

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/flags.make
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.obj: ../../../../components/fatfs/diskio/diskio_rawflash.c
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.obj -MF CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.obj.d -o CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.obj -c /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio_rawflash.c

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio_rawflash.c > CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.i

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio_rawflash.c -o CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.s

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/flags.make
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.obj: ../../../../components/fatfs/diskio/diskio_sdmmc.c
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.obj -MF CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.obj.d -o CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.obj -c /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio_sdmmc.c

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio_sdmmc.c > CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.i

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio_sdmmc.c -o CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.s

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/flags.make
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.obj: ../../../../components/fatfs/diskio/diskio_wl.c
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.obj -MF CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.obj.d -o CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.obj -c /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio_wl.c

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio_wl.c > CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.i

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/fatfs/diskio/diskio_wl.c -o CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.s

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ff.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/flags.make
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ff.c.obj: ../../../../components/fatfs/src/ff.c
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ff.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ff.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ff.c.obj -MF CMakeFiles/__idf_fatfs.dir/src/ff.c.obj.d -o CMakeFiles/__idf_fatfs.dir/src/ff.c.obj -c /Users/eabaca/esp/esp-idf/components/fatfs/src/ff.c

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ff.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_fatfs.dir/src/ff.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/fatfs/src/ff.c > CMakeFiles/__idf_fatfs.dir/src/ff.c.i

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ff.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_fatfs.dir/src/ff.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/fatfs/src/ff.c -o CMakeFiles/__idf_fatfs.dir/src/ff.c.s

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/flags.make
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.obj: ../../../../components/fatfs/port/freertos/ffsystem.c
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.obj -MF CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.obj.d -o CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.obj -c /Users/eabaca/esp/esp-idf/components/fatfs/port/freertos/ffsystem.c

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/fatfs/port/freertos/ffsystem.c > CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.i

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/fatfs/port/freertos/ffsystem.c -o CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.s

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/flags.make
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.obj: ../../../../components/fatfs/src/ffunicode.c
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.obj -MF CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.obj.d -o CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.obj -c /Users/eabaca/esp/esp-idf/components/fatfs/src/ffunicode.c

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/fatfs/src/ffunicode.c > CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.i

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/fatfs/src/ffunicode.c -o CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.s

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/flags.make
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.obj: ../../../../components/fatfs/vfs/vfs_fat.c
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.obj -MF CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.obj.d -o CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.obj -c /Users/eabaca/esp/esp-idf/components/fatfs/vfs/vfs_fat.c

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/fatfs/vfs/vfs_fat.c > CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.i

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/fatfs/vfs/vfs_fat.c -o CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.s

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/flags.make
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.obj: ../../../../components/fatfs/vfs/vfs_fat_sdmmc.c
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.obj -MF CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.obj.d -o CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.obj -c /Users/eabaca/esp/esp-idf/components/fatfs/vfs/vfs_fat_sdmmc.c

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/fatfs/vfs/vfs_fat_sdmmc.c > CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.i

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/fatfs/vfs/vfs_fat_sdmmc.c -o CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.s

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/flags.make
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.obj: ../../../../components/fatfs/vfs/vfs_fat_spiflash.c
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.obj: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.obj"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.obj -MF CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.obj.d -o CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.obj -c /Users/eabaca/esp/esp-idf/components/fatfs/vfs/vfs_fat_spiflash.c

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.i"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/components/fatfs/vfs/vfs_fat_spiflash.c > CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.i

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.s"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/components/fatfs/vfs/vfs_fat_spiflash.c -o CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.s

# Object files for target __idf_fatfs
__idf_fatfs_OBJECTS = \
"CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.obj" \
"CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.obj" \
"CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.obj" \
"CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.obj" \
"CMakeFiles/__idf_fatfs.dir/src/ff.c.obj" \
"CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.obj" \
"CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.obj" \
"CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.obj" \
"CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.obj" \
"CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.obj"

# External object files for target __idf_fatfs
__idf_fatfs_EXTERNAL_OBJECTS =

esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio.c.obj
esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_rawflash.c.obj
esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_sdmmc.c.obj
esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/diskio/diskio_wl.c.obj
esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ff.c.obj
esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/port/freertos/ffsystem.c.obj
esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/src/ffunicode.c.obj
esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat.c.obj
esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_sdmmc.c.obj
esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/vfs/vfs_fat_spiflash.c.obj
esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/build.make
esp-idf/fatfs/libfatfs.a: esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking C static library libfatfs.a"
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && $(CMAKE_COMMAND) -P CMakeFiles/__idf_fatfs.dir/cmake_clean_target.cmake
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_fatfs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/build: esp-idf/fatfs/libfatfs.a
.PHONY : esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/build

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/clean:
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs && $(CMAKE_COMMAND) -P CMakeFiles/__idf_fatfs.dir/cmake_clean.cmake
.PHONY : esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/clean

esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/depend:
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody /Users/eabaca/esp/esp-idf/components/fatfs /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/fatfs/CMakeFiles/__idf_fatfs.dir/depend

