#!/bin/bash

########### Checksum Generator
#
# Reads the files of a directory and calcs the checksums
#

# The directory with the files to create the checksums from
DIR_FILES="$1"

#  Check if command param is provided or is == '-h'
if [ -z "$1" -o "$1" == "-h" ]; then
	printf '%s' "Usage:
${PROGNAME} [DIRECTORY_WITH_FILES]"
	exit 1
fi

# Write the checksum for every file in the directory
if [ -d  "$DIR_FILES" ]; then
  for file in "$DIR_FILES"/*
    do
      if [ -f "$file" ]; then
        echo "$file"
        sha256sum "$file" > "${file%.*}.sha256sum"
      fi
    done
fi
