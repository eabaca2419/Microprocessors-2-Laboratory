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
CMAKE_SOURCE_DIR = /Users/eabaca/esp/esp-idf/components/bootloader/subproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/build/bootloader

# Utility rule file for menuconfig.

# Include any custom commands dependencies for this target.
include CMakeFiles/menuconfig.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/menuconfig.dir/progress.make

CMakeFiles/menuconfig:
	/Users/eabaca/.espressif/python_env/idf4.4_py3.9_env/bin/python /Users/eabaca/esp/esp-idf/tools/kconfig_new/prepare_kconfig_files.py --env-file /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/build/bootloader/config.env
	/Users/eabaca/.espressif/python_env/idf4.4_py3.9_env/bin/python /Users/eabaca/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig /Users/eabaca/esp/esp-idf/Kconfig --sdkconfig-rename /Users/eabaca/esp/esp-idf/sdkconfig.rename --config /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/sdkconfig --env-file /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/build/bootloader/config.env --env IDF_TARGET=esp32 --env IDF_ENV_FPGA= --dont-write-deprecated --output config /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/sdkconfig
	/Users/eabaca/.espressif/python_env/idf4.4_py3.9_env/bin/python /Users/eabaca/esp/esp-idf/tools/check_term.py
	/Applications/CMake.app/Contents/bin/cmake -E env COMPONENT_KCONFIGS_SOURCE_FILE=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/build/bootloader/kconfigs.in COMPONENT_KCONFIGS_PROJBUILD_SOURCE_FILE=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/build/bootloader/kconfigs_projbuild.in IDF_CMAKE=y KCONFIG_CONFIG=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/sdkconfig IDF_TARGET=esp32 IDF_ENV_FPGA= /Users/eabaca/.espressif/python_env/idf4.4_py3.9_env/bin/python -m menuconfig /Users/eabaca/esp/esp-idf/Kconfig
	/Users/eabaca/.espressif/python_env/idf4.4_py3.9_env/bin/python /Users/eabaca/esp/esp-idf/tools/kconfig_new/confgen.py --kconfig /Users/eabaca/esp/esp-idf/Kconfig --sdkconfig-rename /Users/eabaca/esp/esp-idf/sdkconfig.rename --config /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/sdkconfig --env-file /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/build/bootloader/config.env --env IDF_TARGET=esp32 --env IDF_ENV_FPGA= --output config /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/sdkconfig

menuconfig: CMakeFiles/menuconfig
menuconfig: CMakeFiles/menuconfig.dir/build.make
.PHONY : menuconfig

# Rule to build all files generated by this target.
CMakeFiles/menuconfig.dir/build: menuconfig
.PHONY : CMakeFiles/menuconfig.dir/build

CMakeFiles/menuconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/menuconfig.dir/cmake_clean.cmake
.PHONY : CMakeFiles/menuconfig.dir/clean

CMakeFiles/menuconfig.dir/depend:
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/build/bootloader && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eabaca/esp/esp-idf/components/bootloader/subproject /Users/eabaca/esp/esp-idf/components/bootloader/subproject /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/build/bootloader /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/build/bootloader /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_5/build/bootloader/CMakeFiles/menuconfig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/menuconfig.dir/depend

