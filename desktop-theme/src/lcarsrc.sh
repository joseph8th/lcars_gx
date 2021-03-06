#!/bin/bash

# A source-able settings file for customization
# used by 'install' for LCARS GX theme-ing.

#### USER SETTINGS ####

# -- Change this one!!! -- #
MY_HOME="/home/notroot"

# -- Optional -- #
MY_USR_SHARE_DIR="/usr/share"
MY_DEFAULT_BG="/linuxmint/default_background.jpg"

# Shared theme elements install - sudo req
MY_GTK_THEMES_DIR="/themes"
MY_FONTS_DIR="/fonts/truetype"
MY_BACKGROUNDS_DIR="/backgrounds"


#### RECOMMENDED SETTINGS ####

# these folders will be created or used
LCARS_HOME="${MY_HOME}/.lcars_gx"
LCARS_SHARE="/usr/share/lcars_gx"

# location of files to install - rel to this script
LCARS_FONTS="lcarsfont.zip"
LCARS_BACKGROUND="default_lcars_gx.jpg"
LCARS_LOGIN_BG="TMPLcars.png"
LCARS_GTK_THEME="LCARS-GTK-1.2.tar.gz"
LCARS_METACITY="LCARS-Desktop-1.2.tar.gz"