#! /bin/bash

# [Keyball61](https://github.com/Yowkees/keyball/blob/main/keyball61/doc/rev1/buildguide_jp.md)

cd "$(dirname "$0")"

# download sources from Yowkees/qmk_firmware

for FNAME in .noci config.h info.json keyball61.c keyball61.h readme.md rules.mk via.json

do
    curl https://raw.githubusercontent.com/Yowkees/keyball/main/qmk_firmware/keyboards/keyball/keyball61/$FNAME -o $FNAME
done

mkdir keymaps && cd keymaps
mkdir default && cd default

for FNAME in config.h keymap.c rules.mk

do
    curl https://raw.githubusercontent.com/Yowkees/keyball/main/qmk_firmware/keyboards/keyball/keyball61/keymaps/default/$FNAME -o $FNAME
done

cd ../
mkdir via && cd via

for FNAME in config.h keymap.c rules.mk

do
    curl https://raw.githubusercontent.com/Yowkees/keyball/main/qmk_firmware/keyboards/keyball/keyball61/keymaps/via/$FNAME -o $FNAME
done