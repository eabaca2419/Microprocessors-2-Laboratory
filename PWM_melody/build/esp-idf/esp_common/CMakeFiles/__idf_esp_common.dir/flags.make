# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# compile C with /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
C_DEFINES = -DHAVE_CONFIG_H -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\"

C_INCLUDES = -I/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody/build/config -I/Users/eabaca/esp/esp-idf/components/esp_common/include -I/Users/eabaca/esp/esp-idf/components/newlib/platform_include -I/Users/eabaca/esp/esp-idf/components/freertos/include -I/Users/eabaca/esp/esp-idf/components/freertos/port/xtensa/include -I/Users/eabaca/esp/esp-idf/components/freertos/include/esp_additions -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/include -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/include/soc -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/include/soc/esp32 -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/port/esp32/. -I/Users/eabaca/esp/esp-idf/components/heap/include -I/Users/eabaca/esp/esp-idf/components/log/include -I/Users/eabaca/esp/esp-idf/components/lwip/include/apps -I/Users/eabaca/esp/esp-idf/components/lwip/include/apps/sntp -I/Users/eabaca/esp/esp-idf/components/lwip/lwip/src/include -I/Users/eabaca/esp/esp-idf/components/lwip/port/esp32/include -I/Users/eabaca/esp/esp-idf/components/lwip/port/esp32/include/arch -I/Users/eabaca/esp/esp-idf/components/soc/include -I/Users/eabaca/esp/esp-idf/components/soc/esp32/. -I/Users/eabaca/esp/esp-idf/components/soc/esp32/include -I/Users/eabaca/esp/esp-idf/components/hal/esp32/include -I/Users/eabaca/esp/esp-idf/components/hal/include -I/Users/eabaca/esp/esp-idf/components/hal/platform_port/include -I/Users/eabaca/esp/esp-idf/components/esp_rom/include -I/Users/eabaca/esp/esp-idf/components/esp_rom/include/esp32 -I/Users/eabaca/esp/esp-idf/components/esp_rom/esp32 -I/Users/eabaca/esp/esp-idf/components/esp_system/include -I/Users/eabaca/esp/esp-idf/components/esp_system/port/soc -I/Users/eabaca/esp/esp-idf/components/esp_system/port/public_compat -I/Users/eabaca/esp/esp-idf/components/esp32/include -I/Users/eabaca/esp/esp-idf/components/xtensa/include -I/Users/eabaca/esp/esp-idf/components/xtensa/esp32/include -I/Users/eabaca/esp/esp-idf/components/driver/include -I/Users/eabaca/esp/esp-idf/components/driver/esp32/include -I/Users/eabaca/esp/esp-idf/components/esp_pm/include -I/Users/eabaca/esp/esp-idf/components/esp_ringbuf/include -I/Users/eabaca/esp/esp-idf/components/efuse/include -I/Users/eabaca/esp/esp-idf/components/efuse/esp32/include -I/Users/eabaca/esp/esp-idf/components/vfs/include -I/Users/eabaca/esp/esp-idf/components/esp_wifi/include -I/Users/eabaca/esp/esp-idf/components/esp_event/include -I/Users/eabaca/esp/esp-idf/components/esp_netif/include -I/Users/eabaca/esp/esp-idf/components/esp_eth/include -I/Users/eabaca/esp/esp-idf/components/tcpip_adapter/include -I/Users/eabaca/esp/esp-idf/components/esp_phy/include -I/Users/eabaca/esp/esp-idf/components/esp_phy/esp32/include -I/Users/eabaca/esp/esp-idf/components/esp_ipc/include -I/Users/eabaca/esp/esp-idf/components/app_trace/include -I/Users/eabaca/esp/esp-idf/components/esp_timer/include -I/Users/eabaca/esp/esp-idf/components/ulp/include -I/Users/eabaca/esp/esp-idf/components/esp_http_client/include -I/Users/eabaca/esp/esp-idf/components/nghttp/port/include -I/Users/eabaca/esp/esp-idf/components/nghttp/nghttp2/lib/includes -I/Users/eabaca/esp/esp-idf/components/esp_http_server/include -I/Users/eabaca/esp/esp-idf/components/bootloader_support/include -I/Users/eabaca/esp/esp-idf/components/nvs_flash/include -I/Users/eabaca/esp/esp-idf/components/spi_flash/include -I/Users/eabaca/esp/esp-idf/components/mbedtls/port/include -I/Users/eabaca/esp/esp-idf/components/mbedtls/mbedtls/include -I/Users/eabaca/esp/esp-idf/components/mbedtls/esp_crt_bundle/include -I/Users/eabaca/esp/esp-idf/components/app_update/include -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/include -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/port/include -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/esp_supplicant/include -I/Users/eabaca/esp/esp-idf/components/esp_serial_slave_link/include -I/Users/eabaca/esp/esp-idf/components/sdmmc/include -I/Users/eabaca/esp/esp-idf/components/esp-tls -I/Users/eabaca/esp/esp-idf/components/esp-tls/esp-tls-crypto -I/Users/eabaca/esp/esp-idf/components/esp_https_ota/include

C_FLAGS = -mlongcalls -Wno-frame-address -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -ggdb -Og -fmacro-prefix-map=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/PWM_melody=. -fmacro-prefix-map=/Users/eabaca/esp/esp-idf=IDF -fstrict-volatile-bitfields -Wno-error=unused-but-set-variable -fno-jump-tables -fno-tree-switch-conversion -std=gnu99 -Wno-old-style-declaration -D_GNU_SOURCE -DIDF_VER=\"v4.4-dev-2740-gf65c8249af-dirty\" -DESP_PLATFORM

