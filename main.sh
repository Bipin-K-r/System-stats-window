#!/bin/bash
# Purpose: Complete System Statistics
# Author: Bipin Kumar
# ---------------------------------------------------------------------------------
# Find out current screen width and hight
COLUMNS=$(tput cols)
LINES=$(tput lines)
GREEN='\033[0;32m'

# Set default message if $1 input not provided
MESSAGE="COMPLETE SYSTEM STATISTICS ..."

# Calculate x and y coordinates so that we can display $MESSAGE
# centered in the screen 
x=$(( $LINES / 2 ))
y=$(( ( $COLUMNS - ${#MESSAGE} )  / 2 ))

# Clear the screen
tput clear

# set x and y position
tput cup $x $y

# set reverse video mode
tput rev

# Alright display message stored in $_MESSAGE
echo "${GREEN}${MESSAGE}"
sleep 5
# Start cleaning up our screen...
tput clear
tput sgr0
tput rc

screen -c myscreenrc
