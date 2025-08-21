#!/bin/bash

# search and replace script for ubuntu upgrade-manager(?)
# intended to simplify changing the prompt to lts to allow automated upgrade of a system remotely
# we are changin never/normal to lts but for the purpose of a backup lts has been included in the list of words to replace

file=$1 # name of config to search

for item in never normal lts; # never, normal, and lts are default options within the config.
	do sed -i.$( date +%d-%b-%Y ).bak "s/Prompt=$item/Prompt=lts/g" $1 ; # backup with original name + dd-mmm-yyyy.bak appended is created with original config settings
done

exit
