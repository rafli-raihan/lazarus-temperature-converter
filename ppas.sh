#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking /home/rafli/lazarus project/suhu v2/slebewconverter
OFS=$IFS
IFS="
"
/usr/bin/ld -b elf64-x86-64 -m elf_x86_64  --build-id --dynamic-linker=/lib64/ld-linux-x86-64.so.2     -L. -o '/home/rafli/lazarus project/suhu v2/slebewconverter' -T '/home/rafli/lazarus project/suhu v2/link13163.res' -e _start
if [ $? != 0 ]; then DoExitLink /home/rafli/lazarus project/suhu v2/slebewconverter; fi
IFS=$OFS
