#! /bin/bash

# This script file restarts pc and boots Windows OS for one time. 
# It asks sudo password and after entering it, immediatly reboots pc.
#
# Copy and paste this to a text file and save as RebootOS.sh
# Make script file executeble by: chmod u+x RebootOS.sh
# or right click on it, then click properties and switch to permisions tab
# after it, click to make executable.
#
# When you need to reboot PC with another OS, just double click on it
#
# Customizing:  grub-reboot 4 | In this line the number 4 represents grub list id for my grub config
# 				      Change this to your correspondent grub entry number for preferred OS
#
# Option:		    Can be launched by command via terminal.
#				        Move your script file to /usr/bin folder and just type RebootOS.sh
#
# Option: 		  gksudo can be used instead of sudo for graphical interface about password entering
#
# Option:   	  It can also be improved about asking "Which OS do you want to start?"
# 					    with user input options for PC's with multiple operating systems installed.
#
# Option:	      List of entries in grub file might be listed in someway.
#
# Example:
# echo "Which OS do you want to start?"
# echo "Please enter grub entry list number: "
# read os_number
# grub-reboot $os_number
# reboot

[[ "$UID" -eq 0 ]] || exec sudo bash "$0" "$@"

grub-reboot 4
reboot
