# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# compile C with /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
C_DEFINES = -DCONFIG_DPP -DCONFIG_ECC -DCONFIG_IEEE80211W -DCONFIG_SHA256 -DCONFIG_WNM -DCONFIG_WPA3_SAE -DCONFIG_WPS2 -DCONFIG_WPS_PIN -DEAP_MSCHAPv2 -DEAP_PEAP -DEAP_PEER_METHOD -DEAP_TLS -DEAP_TTLS -DESP32_WORKAROUND -DESPRESSIF_USE -DESP_SUPPLICANT -DIEEE8021X_EAPOL -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DUSE_WPA2_TASK -DUSE_WPS_TASK -D__ets__

C_INCLUDES = -I/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_3/build/config -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/include -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/port/include -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/esp_supplicant/include -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/src -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/src/utils -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/esp_supplicant/src -I/Users/eabaca/esp/esp-idf/components/newlib/platform_include -I/Users/eabaca/esp/esp-idf/components/freertos/include -I/Users/eabaca/esp/esp-idf/components/freertos/port/xtensa/include -I/Users/eabaca/esp/esp-idf/components/freertos/include/esp_additions -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/include -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/include/soc -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/include/soc/esp32 -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/port/esp32/. -I/Users/eabaca/esp/esp-idf/components/heap/include -I/Users/eabaca/esp/esp-idf/components/log/include -I/Users/eabaca/esp/esp-idf/components/lwip/include/apps -I/Users/eabaca/esp/esp-idf/components/lwip/include/apps/sntp -I/Users/eabaca/esp/esp-idf/components/lwip/lwip/src/include -I/Users/eabaca/esp/esp-idf/components/lwip/port/esp32/include -I/Users/eabaca/esp/esp-idf/components/lwip/port/esp32/include/arch -I/Users/eabaca/esp/esp-idf/components/soc/include -I/Users/eabaca/esp/esp-idf/components/soc/esp32/. -I/Users/eabaca/esp/esp-idf/components/soc/esp32/include -I/Users/eabaca/esp/esp-idf/components/hal/esp32/include -I/Users/eabaca/esp/esp-idf/components/hal/include -I/Users/eabaca/esp/esp-idf/components/hal/platform_port/include -I/Users/eabaca/esp/esp-idf/components/esp_rom/include -I/Users/eabaca/esp/esp-idf/components/esp_rom/include/esp32 -I/Users/eabaca/esp/esp-idf/components/esp_rom/esp32 -I/Users/eabaca/esp/esp-idf/components/esp_common/include -I/Users/eabaca/esp/esp-idf/components/esp_system/include -I/Users/eabaca/esp/esp-idf/components/esp_system/port/soc -I/Users/eabaca/esp/esp-idf/components/esp_system/port/public_compat -I/Users/eabaca/esp/esp-idf/components/esp32/include -I/Users/eabaca/esp/esp-idf/components/xtensa/include -I/Users/eabaca/esp/esp-idf/components/xtensa/esp32/include -I/Users/eabaca/esp/esp-idf/components/driver/include -I/Users/eabaca/esp/esp-idf/components/driver/esp32/include -I/Users/eabaca/esp/esp-idf/components/esp_pm/include -I/Users/eabaca/esp/esp-idf/components/esp_ringbuf/include -I/Users/eabaca/esp/esp-idf/components/efuse/include -I/Users/eabaca/esp/esp-idf/components/efuse/esp32/include -I/Users/eabaca/esp/esp-idf/components/vfs/include -I/Users/eabaca/esp/esp-idf/components/esp_wifi/include -I/Users/eabaca/esp/esp-idf/components/esp_event/include -I/Users/eabaca/esp/esp-idf/components/esp_netif/include -I/Users/eabaca/esp/esp-idf/components/esp_eth/include -I/Users/eabaca/esp/esp-idf/components/tcpip_adapter/include -I/Users/eabaca/esp/esp-idf/components/esp_phy/include -I/Users/eabaca/esp/esp-idf/components/esp_phy/esp32/include -I/Users/eabaca/esp/esp-idf/components/esp_ipc/include -I/Users/eabaca/esp/esp-idf/components/app_trace/include -I/Users/eabaca/esp/esp-idf/components/esp_timer/include -I/Users/eabaca/esp/esp-idf/components/mbedtls/port/include -I/Users/eabaca/esp/esp-idf/components/mbedtls/mbedtls/include -I/Users/eabaca/esp/esp-idf/components/mbedtls/esp_crt_bundle/include

C_FLAGS = -mlongcalls -Wno-frame-address -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -ggdb -Og -fmacro-prefix-map=/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_3=. -fmacro-prefix-map=/Users/eabaca/esp/esp-idf=IDF -fstrict-volatile-bitfields -Wno-error=unused-but-set-variable -fno-jump-tables -fno-tree-switch-conversion -std=gnu99 -Wno-old-style-declaration -D_GNU_SOURCE -DIDF_VER=\"v4.4-dev-2740-gf65c8249af-dirty\" -DESP_PLATFORM -Wno-strict-aliasing -Wno-write-strings

