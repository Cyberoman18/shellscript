#!/usr/bin/env bash

#Owner: Cy.Roman
#Github:https://github.com/Cyberoman18 
#contact: emperor18_19@proton.me

#--===-=-=--=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-==--==-==--==
#
#least version: v1.0
#
#-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-==-=-=-=-=-=-=-=-=-==
#
#Example: ./userslist -h
#	in this example, the script will run the Help menu
#
#=-==-=-=-=-=-=-=-=-=-=-==-=-=-=-==--=-=-=-=--==-=-=--=-==-=-=-=

#script

#vars

#take the users in /etc/passwd
USERS=$( cat /etc/passwd | cut -d : -f 1  )
#aphabetical order
SORT=$( cat /etc/passwd | cut -d : -f 1 | sort )

VERSION="v1.0"

MENU=$"
	HELP MENU

	-h help
	-v version
	-s alphabetical order
"
#functions

if [ $1 = -h ]; then
	echo "$MENU" && exit 0
fi

if [ $1 = -v ]; then
	echo "$VERSION" && exit 0
fi

if [ $1 = -s ]; then
	echo "$SORT" && exit 0
fi

#Default answer

echo "$USERS"


