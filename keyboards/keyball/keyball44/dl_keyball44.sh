#! /bin/bash

# [Keyball44](https://github.com/Yowkees/keyball/blob/main/keyball44/doc/rev1/buildguide_jp.md)

cd "$(dirname "$0")"

# download sources from Yowkees/qmk_firmware

for FNAME in .noci config.h info.json keyball44.c keyball44.h readme.md rules.mk via.json

do
    curl https://raw.githubusercontent.com/Yowkees/keyball/main/qmk_firmware/keyboards/keyball/keyball44/$FNAME -o $FNAME
done

mkdir keymaps && cd keymaps
mkdir default && cd default

for FNAME in config.h keymap.c rules.mk

do
    curl https://raw.githubusercontent.com/Yowkees/keyball/main/qmk_firmware/keyboards/keyball/keyball44/keymaps/default/$FNAME -o $FNAME
done

cd ../
mkdir via && cd via

for FNAME in config.h keymap.c rules.mk

do
    curl https://raw.githubusercontent.com/Yowkees/keyball/main/qmk_firmware/keyboards/keyball/keyball44/keymaps/via/$FNAME -o $FNAME
done