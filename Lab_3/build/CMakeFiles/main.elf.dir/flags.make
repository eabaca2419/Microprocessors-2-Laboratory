# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# compile C with /Users/eabaca/.espressif/tools/xtensa-esp32-elf/esp-2021r1-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
C_DEFINES = -DHAVE_CONFIG_H -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DUNITY_INCLUDE_CONFIG_H -DWITH_POSIX

C_INCLUDES = -I/Users/eabaca/esp/esp-idf/components/esp_ringbuf/include -I/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_3/build/config -I/Users/eabaca/esp/esp-idf/components/newlib/platform_include -I/Users/eabaca/esp/esp-idf/components/freertos/include -I/Users/eabaca/esp/esp-idf/components/freertos/port/xtensa/include -I/Users/eabaca/esp/esp-idf/components/freertos/include/esp_additions -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/include -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/include/soc -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/include/soc/esp32 -I/Users/eabaca/esp/esp-idf/components/esp_hw_support/port/esp32/. -I/Users/eabaca/esp/esp-idf/components/heap/include -I/Users/eabaca/esp/esp-idf/components/log/include -I/Users/eabaca/esp/esp-idf/components/lwip/include/apps -I/Users/eabaca/esp/esp-idf/components/lwip/include/apps/sntp -I/Users/eabaca/esp/esp-idf/components/lwip/lwip/src/include -I/Users/eabaca/esp/esp-idf/components/lwip/port/esp32/include -I/Users/eabaca/esp/esp-idf/components/lwip/port/esp32/include/arch -I/Users/eabaca/esp/esp-idf/components/soc/include -I/Users/eabaca/esp/esp-idf/components/soc/esp32/. -I/Users/eabaca/esp/esp-idf/components/soc/esp32/include -I/Users/eabaca/esp/esp-idf/components/hal/esp32/include -I/Users/eabaca/esp/esp-idf/components/hal/include -I/Users/eabaca/esp/esp-idf/components/hal/platform_port/include -I/Users/eabaca/esp/esp-idf/components/esp_rom/include -I/Users/eabaca/esp/esp-idf/components/esp_rom/include/esp32 -I/Users/eabaca/esp/esp-idf/components/esp_rom/esp32 -I/Users/eabaca/esp/esp-idf/components/esp_common/include -I/Users/eabaca/esp/esp-idf/components/esp_system/include -I/Users/eabaca/esp/esp-idf/components/esp_system/port/soc -I/Users/eabaca/esp/esp-idf/components/esp_system/port/public_compat -I/Users/eabaca/esp/esp-idf/components/esp32/include -I/Users/eabaca/esp/esp-idf/components/xtensa/include -I/Users/eabaca/esp/esp-idf/components/xtensa/esp32/include -I/Users/eabaca/esp/esp-idf/components/driver/include -I/Users/eabaca/esp/esp-idf/components/driver/esp32/include -I/Users/eabaca/esp/esp-idf/components/esp_pm/include -I/Users/eabaca/esp/esp-idf/components/efuse/include -I/Users/eabaca/esp/esp-idf/components/efuse/esp32/include -I/Users/eabaca/esp/esp-idf/components/vfs/include -I/Users/eabaca/esp/esp-idf/components/esp_wifi/include -I/Users/eabaca/esp/esp-idf/components/esp_event/include -I/Users/eabaca/esp/esp-idf/components/esp_netif/include -I/Users/eabaca/esp/esp-idf/components/esp_eth/include -I/Users/eabaca/esp/esp-idf/components/tcpip_adapter/include -I/Users/eabaca/esp/esp-idf/components/esp_phy/include -I/Users/eabaca/esp/esp-idf/components/esp_phy/esp32/include -I/Users/eabaca/esp/esp-idf/components/esp_ipc/include -I/Users/eabaca/esp/esp-idf/components/app_trace/include -I/Users/eabaca/esp/esp-idf/components/esp_timer/include -I/Users/eabaca/esp/esp-idf/components/mbedtls/port/include -I/Users/eabaca/esp/esp-idf/components/mbedtls/mbedtls/include -I/Users/eabaca/esp/esp-idf/components/mbedtls/esp_crt_bundle/include -I/Users/eabaca/esp/esp-idf/components/app_update/include -I/Users/eabaca/esp/esp-idf/components/spi_flash/include -I/Users/eabaca/esp/esp-idf/components/bootloader_support/include -I/Users/eabaca/esp/esp-idf/components/nvs_flash/include -I/Users/eabaca/esp/esp-idf/components/pthread/include -I/Users/eabaca/esp/esp-idf/components/esp_gdbstub/include -I/Users/eabaca/esp/esp-idf/components/esp_gdbstub/xtensa -I/Users/eabaca/esp/esp-idf/components/esp_gdbstub/esp32 -I/Users/eabaca/esp/esp-idf/components/espcoredump/include -I/Users/eabaca/esp/esp-idf/components/espcoredump/include/port/xtensa -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/include -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/port/include -I/Users/eabaca/esp/esp-idf/components/wpa_supplicant/esp_supplicant/include -I/Users/eabaca/esp/esp-idf/components/ieee802154/include -I/Users/eabaca/esp/esp-idf/components/asio/asio/asio/include -I/Users/eabaca/esp/esp-idf/components/asio/port/include -I/Users/eabaca/esp/esp-idf/components/cbor/port/include -I/Users/eabaca/esp/esp-idf/components/unity/include -I/Users/eabaca/esp/esp-idf/components/unity/unity/src -I/Users/eabaca/esp/esp-idf/components/cmock/CMock/src -I/Users/eabaca/esp/esp-idf/components/coap/port/include -I/Users/eabaca/esp/esp-idf/components/coap/port/include/coap -I/Users/eabaca/esp/esp-idf/components/coap/libcoap/include -I/Users/eabaca/esp/esp-idf/components/coap/libcoap/include/coap2 -I/Users/eabaca/esp/esp-idf/components/console -I/Users/eabaca/esp/esp-idf/components/nghttp/port/include -I/Users/eabaca/esp/esp-idf/components/nghttp/nghttp2/lib/includes -I/Users/eabaca/esp/esp-idf/components/esp-tls -I/Users/eabaca/esp/esp-idf/components/esp-tls/esp-tls-crypto -I/Users/eabaca/esp/esp-idf/components/esp_adc_cal/include -I/Users/eabaca/esp/esp-idf/components/esp_hid/include -I/Users/eabaca/esp/esp-idf/components/tcp_transport/include -I/Users/eabaca/esp/esp-idf/components/esp_http_client/include -I/Users/eabaca/esp/esp-idf/components/esp_http_server/include -I/Users/eabaca/esp/esp-idf/components/esp_https_ota/include -I/Users/eabaca/esp/esp-idf/components/esp_lcd/include -I/Users/eabaca/esp/esp-idf/components/esp_lcd/interface -I/Users/eabaca/esp/esp-idf/components/protobuf-c/protobuf-c -I/Users/eabaca/esp/esp-idf/components/protocomm/include/common -I/Users/eabaca/esp/esp-idf/components/protocomm/include/security -I/Users/eabaca/esp/esp-idf/components/protocomm/include/transports -I/Users/eabaca/esp/esp-idf/components/mdns/include -I/Users/eabaca/esp/esp-idf/components/esp_local_ctrl/include -I/Users/eabaca/esp/esp-idf/components/sdmmc/include -I/Users/eabaca/esp/esp-idf/components/esp_serial_slave_link/include -I/Users/eabaca/esp/esp-idf/components/esp_websocket_client/include -I/Users/eabaca/esp/esp-idf/components/expat/expat/expat/lib -I/Users/eabaca/esp/esp-idf/components/expat/port/include -I/Users/eabaca/esp/esp-idf/components/wear_levelling/include -I/Users/eabaca/esp/esp-idf/components/fatfs/diskio -I/Users/eabaca/esp/esp-idf/components/fatfs/vfs -I/Users/eabaca/esp/esp-idf/components/fatfs/src -I/Users/eabaca/esp/esp-idf/components/freemodbus/common/include -I/Users/eabaca/esp/esp-idf/components/idf_test/include -I/Users/eabaca/esp/esp-idf/components/idf_test/include/esp32 -I/Users/eabaca/esp/esp-idf/components/jsmn/include -I/Users/eabaca/esp/esp-idf/components/json/cJSON -I/Users/eabaca/esp/esp-idf/components/libsodium/libsodium/src/libsodium/include -I/Users/eabaca/esp/esp-idf/components/libsodium/port_include -I/Users/eabaca/esp/esp-idf/components/mqtt/esp-mqtt/include -I/Users/eabaca/esp/esp-idf/components/openssl/include -I/Users/eabaca/esp/esp-idf/components/perfmon/include -I/Users/eabaca/esp/esp-idf/components/spiffs/include -I/Users/eabaca/esp/esp-idf/components/ulp/include -I/Users/eabaca/esp/esp-idf/components/wifi_provisioning/include -I/Users/eabaca/esp/esp-idf/examples/Micro_2_Lab/Lab_3/main

C_FLAGS = -mlongcalls -Wno-frame-address

