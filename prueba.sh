#!/bin/bash

keyboardLaptop=$(xinput | grep "AT Translated Set 2 keyboard" | cut -d'=' -f2 | cut -d'[' -f1)
keyboardHunstman=$(xinput | grep "Razer Razer Huntsman Mini" | cut -d'=' -f2 | cut -d'[' -f1)
echo "El teclado del laptop es: $keyboardLaptop"

if [ -n "$keyboardHunstman" ]; then
    echo "El teclado Hunstman esta conectado"
    xinput disable $keyboardLaptop
else
    echo "El teclado Hunstman no esta conectado"
    xinput enable $keyboardLaptop
fi
