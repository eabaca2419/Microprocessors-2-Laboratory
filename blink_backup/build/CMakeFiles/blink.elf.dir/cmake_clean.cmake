file(REMOVE_RECURSE
  "blink.bin"
  "blink.map"
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "flash_project_args"
  "project_elf_src_esp32.c"
  "CMakeFiles/blink.elf.dir/project_elf_src_esp32.c.obj"
  "CMakeFiles/blink.elf.dir/project_elf_src_esp32.c.obj.d"
  "blink.elf"
  "blink.elf.pdb"
  "project_elf_src_esp32.c"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/blink.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
