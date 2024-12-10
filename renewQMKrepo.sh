#! /bin/bash

#Update for QMK MSYS/MSYS
pacman -Syu

#Update for QMK CLI
pip install -U -r requirements.txt

#Update for QMK Repo
git fetch --all
git merge upstream/master
make git-submodule
