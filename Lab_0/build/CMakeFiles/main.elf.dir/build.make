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
CMAKE_SOURCE_DIR = /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build

# Include any dependencies generated for this target.
include CMakeFiles/main.elf.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.elf.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.elf.dir/flags.make

project_elf_src_esp32.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src_esp32.c"
	/Applications/CMake.app/Contents/bin/cmake -E touch /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build/project_elf_src_esp32.c

CMakeFiles/main.elf.dir/project_elf_src_esp32.c.obj: CMakeFiles/main.elf.dir/flags.make
CMakeFiles/main.elf.dir/project_elf_src_esp32.c.obj: project_elf_src_esp32.c
CMakeFiles/main.elf.dir/project_elf_src_esp32.c.obj: CMakeFiles/main.elf.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/main.elf.dir/project_elf_src_esp32.c.obj"
	/Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/main.elf.dir/project_elf_src_esp32.c.obj -MF CMakeFiles/main.elf.dir/project_elf_src_esp32.c.obj.d -o CMakeFiles/main.elf.dir/project_elf_src_esp32.c.obj -c /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build/project_elf_src_esp32.c

CMakeFiles/main.elf.dir/project_elf_src_esp32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/main.elf.dir/project_elf_src_esp32.c.i"
	/Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build/project_elf_src_esp32.c > CMakeFiles/main.elf.dir/project_elf_src_esp32.c.i

CMakeFiles/main.elf.dir/project_elf_src_esp32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/main.elf.dir/project_elf_src_esp32.c.s"
	/Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build/project_elf_src_esp32.c -o CMakeFiles/main.elf.dir/project_elf_src_esp32.c.s

# Object files for target main.elf
main_elf_OBJECTS = \
"CMakeFiles/main.elf.dir/project_elf_src_esp32.c.obj"

# External object files for target main.elf
main_elf_EXTERNAL_OBJECTS =

main.elf: CMakeFiles/main.elf.dir/project_elf_src_esp32.c.obj
main.elf: CMakeFiles/main.elf.dir/build.make
main.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
main.elf: esp-idf/efuse/libefuse.a
main.elf: esp-idf/esp_ipc/libesp_ipc.a
main.elf: esp-idf/driver/libdriver.a
main.elf: esp-idf/esp_pm/libesp_pm.a
main.elf: esp-idf/mbedtls/libmbedtls.a
main.elf: esp-idf/app_update/libapp_update.a
main.elf: esp-idf/bootloader_support/libbootloader_support.a
main.elf: esp-idf/spi_flash/libspi_flash.a
main.elf: esp-idf/nvs_flash/libnvs_flash.a
main.elf: esp-idf/pthread/libpthread.a
main.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
main.elf: esp-idf/espcoredump/libespcoredump.a
main.elf: esp-idf/esp_phy/libesp_phy.a
main.elf: esp-idf/esp_system/libesp_system.a
main.elf: esp-idf/esp_rom/libesp_rom.a
main.elf: esp-idf/hal/libhal.a
main.elf: esp-idf/vfs/libvfs.a
main.elf: esp-idf/esp_eth/libesp_eth.a
main.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
main.elf: esp-idf/esp_netif/libesp_netif.a
main.elf: esp-idf/esp_event/libesp_event.a
main.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
main.elf: esp-idf/esp_wifi/libesp_wifi.a
main.elf: esp-idf/lwip/liblwip.a
main.elf: esp-idf/log/liblog.a
main.elf: esp-idf/heap/libheap.a
main.elf: esp-idf/soc/libsoc.a
main.elf: esp-idf/esp_hw_support/libesp_hw_support.a
main.elf: esp-idf/xtensa/libxtensa.a
main.elf: esp-idf/esp_common/libesp_common.a
main.elf: esp-idf/esp_timer/libesp_timer.a
main.elf: esp-idf/freertos/libfreertos.a
main.elf: esp-idf/newlib/libnewlib.a
main.elf: esp-idf/cxx/libcxx.a
main.elf: esp-idf/app_trace/libapp_trace.a
main.elf: esp-idf/asio/libasio.a
main.elf: esp-idf/cbor/libcbor.a
main.elf: esp-idf/unity/libunity.a
main.elf: esp-idf/cmock/libcmock.a
main.elf: esp-idf/coap/libcoap.a
main.elf: esp-idf/console/libconsole.a
main.elf: esp-idf/nghttp/libnghttp.a
main.elf: esp-idf/esp-tls/libesp-tls.a
main.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
main.elf: esp-idf/esp_hid/libesp_hid.a
main.elf: esp-idf/tcp_transport/libtcp_transport.a
main.elf: esp-idf/esp_http_client/libesp_http_client.a
main.elf: esp-idf/esp_http_server/libesp_http_server.a
main.elf: esp-idf/esp_https_ota/libesp_https_ota.a
main.elf: esp-idf/esp_lcd/libesp_lcd.a
main.elf: esp-idf/protobuf-c/libprotobuf-c.a
main.elf: esp-idf/protocomm/libprotocomm.a
main.elf: esp-idf/mdns/libmdns.a
main.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
main.elf: esp-idf/sdmmc/libsdmmc.a
main.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
main.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
main.elf: esp-idf/expat/libexpat.a
main.elf: esp-idf/wear_levelling/libwear_levelling.a
main.elf: esp-idf/fatfs/libfatfs.a
main.elf: esp-idf/freemodbus/libfreemodbus.a
main.elf: esp-idf/jsmn/libjsmn.a
main.elf: esp-idf/json/libjson.a
main.elf: esp-idf/libsodium/liblibsodium.a
main.elf: esp-idf/mqtt/libmqtt.a
main.elf: esp-idf/openssl/libopenssl.a
main.elf: esp-idf/perfmon/libperfmon.a
main.elf: esp-idf/spiffs/libspiffs.a
main.elf: esp-idf/ulp/libulp.a
main.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
main.elf: esp-idf/main/libmain.a
main.elf: esp-idf/asio/libasio.a
main.elf: esp-idf/cbor/libcbor.a
main.elf: esp-idf/cmock/libcmock.a
main.elf: esp-idf/unity/libunity.a
main.elf: esp-idf/coap/libcoap.a
main.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
main.elf: esp-idf/esp_hid/libesp_hid.a
main.elf: esp-idf/esp_lcd/libesp_lcd.a
main.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
main.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
main.elf: esp-idf/expat/libexpat.a
main.elf: esp-idf/fatfs/libfatfs.a
main.elf: esp-idf/wear_levelling/libwear_levelling.a
main.elf: esp-idf/freemodbus/libfreemodbus.a
main.elf: esp-idf/jsmn/libjsmn.a
main.elf: esp-idf/libsodium/liblibsodium.a
main.elf: esp-idf/mqtt/libmqtt.a
main.elf: esp-idf/openssl/libopenssl.a
main.elf: esp-idf/perfmon/libperfmon.a
main.elf: esp-idf/spiffs/libspiffs.a
main.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
main.elf: esp-idf/protocomm/libprotocomm.a
main.elf: esp-idf/protobuf-c/libprotobuf-c.a
main.elf: esp-idf/mdns/libmdns.a
main.elf: esp-idf/console/libconsole.a
main.elf: esp-idf/json/libjson.a
main.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
main.elf: esp-idf/efuse/libefuse.a
main.elf: esp-idf/esp_ipc/libesp_ipc.a
main.elf: esp-idf/driver/libdriver.a
main.elf: esp-idf/esp_pm/libesp_pm.a
main.elf: esp-idf/mbedtls/libmbedtls.a
main.elf: esp-idf/app_update/libapp_update.a
main.elf: esp-idf/bootloader_support/libbootloader_support.a
main.elf: esp-idf/spi_flash/libspi_flash.a
main.elf: esp-idf/nvs_flash/libnvs_flash.a
main.elf: esp-idf/pthread/libpthread.a
main.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
main.elf: esp-idf/espcoredump/libespcoredump.a
main.elf: esp-idf/esp_phy/libesp_phy.a
main.elf: esp-idf/esp_system/libesp_system.a
main.elf: esp-idf/esp_rom/libesp_rom.a
main.elf: esp-idf/hal/libhal.a
main.elf: esp-idf/vfs/libvfs.a
main.elf: esp-idf/esp_eth/libesp_eth.a
main.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
main.elf: esp-idf/esp_netif/libesp_netif.a
main.elf: esp-idf/esp_event/libesp_event.a
main.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
main.elf: esp-idf/esp_wifi/libesp_wifi.a
main.elf: esp-idf/lwip/liblwip.a
main.elf: esp-idf/log/liblog.a
main.elf: esp-idf/heap/libheap.a
main.elf: esp-idf/soc/libsoc.a
main.elf: esp-idf/esp_hw_support/libesp_hw_support.a
main.elf: esp-idf/xtensa/libxtensa.a
main.elf: esp-idf/esp_common/libesp_common.a
main.elf: esp-idf/esp_timer/libesp_timer.a
main.elf: esp-idf/freertos/libfreertos.a
main.elf: esp-idf/newlib/libnewlib.a
main.elf: esp-idf/cxx/libcxx.a
main.elf: esp-idf/app_trace/libapp_trace.a
main.elf: esp-idf/nghttp/libnghttp.a
main.elf: esp-idf/esp-tls/libesp-tls.a
main.elf: esp-idf/tcp_transport/libtcp_transport.a
main.elf: esp-idf/esp_http_client/libesp_http_client.a
main.elf: esp-idf/esp_http_server/libesp_http_server.a
main.elf: esp-idf/esp_https_ota/libesp_https_ota.a
main.elf: esp-idf/sdmmc/libsdmmc.a
main.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
main.elf: esp-idf/ulp/libulp.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
main.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
main.elf: esp-idf/efuse/libefuse.a
main.elf: esp-idf/esp_ipc/libesp_ipc.a
main.elf: esp-idf/driver/libdriver.a
main.elf: esp-idf/esp_pm/libesp_pm.a
main.elf: esp-idf/mbedtls/libmbedtls.a
main.elf: esp-idf/app_update/libapp_update.a
main.elf: esp-idf/bootloader_support/libbootloader_support.a
main.elf: esp-idf/spi_flash/libspi_flash.a
main.elf: esp-idf/nvs_flash/libnvs_flash.a
main.elf: esp-idf/pthread/libpthread.a
main.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
main.elf: esp-idf/espcoredump/libespcoredump.a
main.elf: esp-idf/esp_phy/libesp_phy.a
main.elf: esp-idf/esp_system/libesp_system.a
main.elf: esp-idf/esp_rom/libesp_rom.a
main.elf: esp-idf/hal/libhal.a
main.elf: esp-idf/vfs/libvfs.a
main.elf: esp-idf/esp_eth/libesp_eth.a
main.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
main.elf: esp-idf/esp_netif/libesp_netif.a
main.elf: esp-idf/esp_event/libesp_event.a
main.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
main.elf: esp-idf/esp_wifi/libesp_wifi.a
main.elf: esp-idf/lwip/liblwip.a
main.elf: esp-idf/log/liblog.a
main.elf: esp-idf/heap/libheap.a
main.elf: esp-idf/soc/libsoc.a
main.elf: esp-idf/esp_hw_support/libesp_hw_support.a
main.elf: esp-idf/xtensa/libxtensa.a
main.elf: esp-idf/esp_common/libesp_common.a
main.elf: esp-idf/esp_timer/libesp_timer.a
main.elf: esp-idf/freertos/libfreertos.a
main.elf: esp-idf/newlib/libnewlib.a
main.elf: esp-idf/cxx/libcxx.a
main.elf: esp-idf/app_trace/libapp_trace.a
main.elf: esp-idf/nghttp/libnghttp.a
main.elf: esp-idf/esp-tls/libesp-tls.a
main.elf: esp-idf/tcp_transport/libtcp_transport.a
main.elf: esp-idf/esp_http_client/libesp_http_client.a
main.elf: esp-idf/esp_http_server/libesp_http_server.a
main.elf: esp-idf/esp_https_ota/libesp_https_ota.a
main.elf: esp-idf/sdmmc/libsdmmc.a
main.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
main.elf: esp-idf/ulp/libulp.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
main.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
main.elf: esp-idf/efuse/libefuse.a
main.elf: esp-idf/esp_ipc/libesp_ipc.a
main.elf: esp-idf/driver/libdriver.a
main.elf: esp-idf/esp_pm/libesp_pm.a
main.elf: esp-idf/mbedtls/libmbedtls.a
main.elf: esp-idf/app_update/libapp_update.a
main.elf: esp-idf/bootloader_support/libbootloader_support.a
main.elf: esp-idf/spi_flash/libspi_flash.a
main.elf: esp-idf/nvs_flash/libnvs_flash.a
main.elf: esp-idf/pthread/libpthread.a
main.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
main.elf: esp-idf/espcoredump/libespcoredump.a
main.elf: esp-idf/esp_phy/libesp_phy.a
main.elf: esp-idf/esp_system/libesp_system.a
main.elf: esp-idf/esp_rom/libesp_rom.a
main.elf: esp-idf/hal/libhal.a
main.elf: esp-idf/vfs/libvfs.a
main.elf: esp-idf/esp_eth/libesp_eth.a
main.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
main.elf: esp-idf/esp_netif/libesp_netif.a
main.elf: esp-idf/esp_event/libesp_event.a
main.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
main.elf: esp-idf/esp_wifi/libesp_wifi.a
main.elf: esp-idf/lwip/liblwip.a
main.elf: esp-idf/log/liblog.a
main.elf: esp-idf/heap/libheap.a
main.elf: esp-idf/soc/libsoc.a
main.elf: esp-idf/esp_hw_support/libesp_hw_support.a
main.elf: esp-idf/xtensa/libxtensa.a
main.elf: esp-idf/esp_common/libesp_common.a
main.elf: esp-idf/esp_timer/libesp_timer.a
main.elf: esp-idf/freertos/libfreertos.a
main.elf: esp-idf/newlib/libnewlib.a
main.elf: esp-idf/cxx/libcxx.a
main.elf: esp-idf/app_trace/libapp_trace.a
main.elf: esp-idf/nghttp/libnghttp.a
main.elf: esp-idf/esp-tls/libesp-tls.a
main.elf: esp-idf/tcp_transport/libtcp_transport.a
main.elf: esp-idf/esp_http_client/libesp_http_client.a
main.elf: esp-idf/esp_http_server/libesp_http_server.a
main.elf: esp-idf/esp_https_ota/libesp_https_ota.a
main.elf: esp-idf/sdmmc/libsdmmc.a
main.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
main.elf: esp-idf/ulp/libulp.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
main.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
main.elf: esp-idf/efuse/libefuse.a
main.elf: esp-idf/esp_ipc/libesp_ipc.a
main.elf: esp-idf/driver/libdriver.a
main.elf: esp-idf/esp_pm/libesp_pm.a
main.elf: esp-idf/mbedtls/libmbedtls.a
main.elf: esp-idf/app_update/libapp_update.a
main.elf: esp-idf/bootloader_support/libbootloader_support.a
main.elf: esp-idf/spi_flash/libspi_flash.a
main.elf: esp-idf/nvs_flash/libnvs_flash.a
main.elf: esp-idf/pthread/libpthread.a
main.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
main.elf: esp-idf/espcoredump/libespcoredump.a
main.elf: esp-idf/esp_phy/libesp_phy.a
main.elf: esp-idf/esp_system/libesp_system.a
main.elf: esp-idf/esp_rom/libesp_rom.a
main.elf: esp-idf/hal/libhal.a
main.elf: esp-idf/vfs/libvfs.a
main.elf: esp-idf/esp_eth/libesp_eth.a
main.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
main.elf: esp-idf/esp_netif/libesp_netif.a
main.elf: esp-idf/esp_event/libesp_event.a
main.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
main.elf: esp-idf/esp_wifi/libesp_wifi.a
main.elf: esp-idf/lwip/liblwip.a
main.elf: esp-idf/log/liblog.a
main.elf: esp-idf/heap/libheap.a
main.elf: esp-idf/soc/libsoc.a
main.elf: esp-idf/esp_hw_support/libesp_hw_support.a
main.elf: esp-idf/xtensa/libxtensa.a
main.elf: esp-idf/esp_common/libesp_common.a
main.elf: esp-idf/esp_timer/libesp_timer.a
main.elf: esp-idf/freertos/libfreertos.a
main.elf: esp-idf/newlib/libnewlib.a
main.elf: esp-idf/cxx/libcxx.a
main.elf: esp-idf/app_trace/libapp_trace.a
main.elf: esp-idf/nghttp/libnghttp.a
main.elf: esp-idf/esp-tls/libesp-tls.a
main.elf: esp-idf/tcp_transport/libtcp_transport.a
main.elf: esp-idf/esp_http_client/libesp_http_client.a
main.elf: esp-idf/esp_http_server/libesp_http_server.a
main.elf: esp-idf/esp_https_ota/libesp_https_ota.a
main.elf: esp-idf/sdmmc/libsdmmc.a
main.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
main.elf: esp-idf/ulp/libulp.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
main.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
main.elf: esp-idf/efuse/libefuse.a
main.elf: esp-idf/esp_ipc/libesp_ipc.a
main.elf: esp-idf/driver/libdriver.a
main.elf: esp-idf/esp_pm/libesp_pm.a
main.elf: esp-idf/mbedtls/libmbedtls.a
main.elf: esp-idf/app_update/libapp_update.a
main.elf: esp-idf/bootloader_support/libbootloader_support.a
main.elf: esp-idf/spi_flash/libspi_flash.a
main.elf: esp-idf/nvs_flash/libnvs_flash.a
main.elf: esp-idf/pthread/libpthread.a
main.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
main.elf: esp-idf/espcoredump/libespcoredump.a
main.elf: esp-idf/esp_phy/libesp_phy.a
main.elf: esp-idf/esp_system/libesp_system.a
main.elf: esp-idf/esp_rom/libesp_rom.a
main.elf: esp-idf/hal/libhal.a
main.elf: esp-idf/vfs/libvfs.a
main.elf: esp-idf/esp_eth/libesp_eth.a
main.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
main.elf: esp-idf/esp_netif/libesp_netif.a
main.elf: esp-idf/esp_event/libesp_event.a
main.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
main.elf: esp-idf/esp_wifi/libesp_wifi.a
main.elf: esp-idf/lwip/liblwip.a
main.elf: esp-idf/log/liblog.a
main.elf: esp-idf/heap/libheap.a
main.elf: esp-idf/soc/libsoc.a
main.elf: esp-idf/esp_hw_support/libesp_hw_support.a
main.elf: esp-idf/xtensa/libxtensa.a
main.elf: esp-idf/esp_common/libesp_common.a
main.elf: esp-idf/esp_timer/libesp_timer.a
main.elf: esp-idf/freertos/libfreertos.a
main.elf: esp-idf/newlib/libnewlib.a
main.elf: esp-idf/cxx/libcxx.a
main.elf: esp-idf/app_trace/libapp_trace.a
main.elf: esp-idf/nghttp/libnghttp.a
main.elf: esp-idf/esp-tls/libesp-tls.a
main.elf: esp-idf/tcp_transport/libtcp_transport.a
main.elf: esp-idf/esp_http_client/libesp_http_client.a
main.elf: esp-idf/esp_http_server/libesp_http_server.a
main.elf: esp-idf/esp_https_ota/libesp_https_ota.a
main.elf: esp-idf/sdmmc/libsdmmc.a
main.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
main.elf: esp-idf/ulp/libulp.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
main.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libcore.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libpp.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
main.elf: /Users/eabaca/esp/esp-idf/components/esp_wifi/lib/esp32/libwapi.a
main.elf: esp-idf/esp_phy/libesp_phy.a
main.elf: esp-idf/esp_phy/libesp_phy.a
main.elf: /Users/eabaca/esp/esp-idf/components/xtensa/esp32/libxt_hal.a
main.elf: esp-idf/newlib/libnewlib.a
main.elf: esp-idf/pthread/libpthread.a
main.elf: esp-idf/cxx/libcxx.a
main.elf: esp-idf/app_trace/libapp_trace.a
main.elf: esp-idf/app_trace/libapp_trace.a
main.elf: esp-idf/esp_system/ld/memory.ld
main.elf: esp-idf/esp_system/ld/sections.ld
main.elf: /Users/eabaca/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
main.elf: /Users/eabaca/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.api.ld
main.elf: /Users/eabaca/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
main.elf: /Users/eabaca/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
main.elf: /Users/eabaca/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
main.elf: /Users/eabaca/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-funcs.ld
main.elf: /Users/eabaca/esp/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-time.ld
main.elf: /Users/eabaca/esp/esp-idf/components/soc/esp32/ld/esp32.peripherals.ld
main.elf: CMakeFiles/main.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable main.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.elf.dir/build: main.elf
.PHONY : CMakeFiles/main.elf.dir/build

CMakeFiles/main.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.elf.dir/clean

CMakeFiles/main.elf.dir/depend: project_elf_src_esp32.c
	cd /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0 /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0 /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build /Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_0/build/CMakeFiles/main.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.elf.dir/depend

