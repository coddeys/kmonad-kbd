#!/bin/bash
set -o pipefail
set -e

device_name="usb-Topre_Corporation_HHKB_Professional-event-kbd"
dactyl="usb-tshort_handwired_dactyl_manuform_4x6_vial:f64c2b3c-event-kbd"

if [[ -e "/dev/input/by-id/${device_name}" ]]; then
    ~/.local/bin/kmonad ~/.config/kmonad/config.kbd
elif [[ -e "/dev/input/by-id/${dactyl}" ]]; then
    ~/.local/bin/kmonad ~/.config/kmonad/dactyl.kbd
fi


