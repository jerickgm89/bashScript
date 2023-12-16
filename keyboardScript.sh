#!/bin/bash

keyboardLaptop=$(xinput | grep "AT Translated Set 2 keyboard" | cut -d'=' -f2 | cut -d'[' -f1)
keyboardHunstman=$(xinput | grep "Razer Razer Huntsman Mini" | cut -d'=' -f2 | cut -d'[' -f1 | head -n 1)


if [ -n "$keyboardHunstman" ]; then
    xinput disable $keyboardLaptop
    polychromatic-cli -e JErickDev
else
    xinput enable $keyboardLaptop
fi

