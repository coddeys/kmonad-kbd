#!/bin/bash
set -o pipefail
set -e

device_name="usb-Topre_Corporation_HHKB_Professional-event-kbd"
dactyl="usb-tshort_handwired_dactyl_manuform_4x6_vial:f64c2b3c-event-kbd"
corne="usb-foostan_Corne-event-if02"

if [[ -e "/dev/input/by-id/${device_name}" ]]; then
    /home/dima.sukhikh/.local/bin/kmonad /home/dima.sukhikh/.config/kmonad/config.kbd
elif [[ -e "/dev/input/by-id/${corne}" ]]; then
    /home/dima.sukhikh/.local/bin/kmonad /home/dima.sukhikh/.config/kmonad/corne.kbd
fi
