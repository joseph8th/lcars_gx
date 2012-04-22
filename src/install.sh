#!/bin/bash

# Install LCARS on typical Debian-based Linux with GTK.
# Author: Joseph Edwards <github.com:joseph8th/lcars_gx.git>
#
# MY_USR_SHARE_DIR
# MY_GTK_THEMES_DIR
# MY_FONTS_DIR
# MY_BACKGROUNDS_DIR
# LCARS_HOME
# LCARS_SHARE
# LCARS_FONTS
# LCARS_BACKGROUND
# LCARS_GTK_THEME

source lcarsrc.sh

if [ "$1" = "-b" ]; then
    work_dir=${MY_USR_SHARE_DIR}${MY_BACKGROUNDS_DIR}/lcars_gx
    if [ ! -d "$work_dir/" ]; then
	echo "LCARS backgrounds not installed... attempting installation."
        echo "Activate your background under Desktop settings."
	mkdir $work_dir
    fi
    if [ -d "$work_dir/" ]; then
	cp ./backgrounds/${LCARS_BACKGROUND} $work_dir
	if [ -f "${work_dir}/${LCARS_BACKGROUND}" ]; then
	    echo "Copied background from $LCARS_BACKGROUND to $work_dir/."
	fi
    fi
fi

# LCARS-GTK-2.0 theme installation
if [ "$1" = "-g" ]; then
    work_dir=${MY_USR_SHARE_DIR}${MY_GTK_THEMES_DIR}
    if [ ! -d "$work_dir/LCARS-GTK" ]; then
        echo "LCARS theme not installed... attempting installation."
        echo "Activate the theme or style under Appearance settings."
        printf "Extracting %s to %s%s.\n" $LCARS_GTK_THEME $MY_USR_SHARE_DIR $MY_GTK_THEMES_DIR
        sudo tar -zxvf ./gtk/${LCARS_GTK_THEME} -C $work_dir
    else
        echo "LCARS theme already installed."
    fi
fi

if [ "$1" = "-f" ]; then
    echo "Extracting fonts from $LCARS_FONTS to ${MY_USR_SHARE_DIR}${MY_FONTS_DIR}."
    echo "Installing LCARS Conky settings to ${HOME}/.conkyrc."
    echo "Installing GX Conky settings to ${LCARS_HOME}/.conkyrc_logs."
    echo "Installing LCARS GX Conky startup script to ${LCARS_SHARE}/conky_delay_start."
fi

exit 0