#!/bin/bash

# copy.sh
# links all files to their respective locations
# ideally run in root mode

# defining variables:
dir="/home/$USER/themes"                                                                          # themes directory
themes="Arc Arc-Dark Arc-Darker Default FlatStudioDark Vertex Vertex-Dark vertex-theme" # themes list
icons="Breeze-Amber bridge Vertex-Icons"                                                # icons list

# copies all themes into /usr/share/themes
echo "Moving themes into the /usr/share/themes directory..."
for theme in $themes; do
	ln -s -f $dir/$theme /usr/share/themes/$theme
done
# copies all icons into /usr/share/icons
for icon in $icons; do
	ln -s -f $dir/$icon /usr/share/icons/$icon
done

# configures lightdm
ln -s -f $dir/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf

# copies pictures into their locations
cp -f $dir/Pictures/wallpapers/Ibex.png /usr/share/lightdm/backgrounds/Ibex.png
ln -s -f $dir/Pictures ~/Pictures
