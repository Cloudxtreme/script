#!/bin/bash
#
# Basic script to completely rename a package in all files and with moving src folders.
# Version 0.5: Replace work, maven build work and work under MAC OS X bash
#
##############################

OLD_PARTS=(com sap core odata)
NEW_PARTS=(org apache olingo odata2)

function move {
  BASE=$1
  SOURCE=$2
  TARGET=$3
  mkdir -p $BASE/$TARGET
  mv $BASE/$SOURCE/* $BASE/$TARGET/
  echo "Moved [$BASE/$SOURCE/*] to [$BASE/$TARGET/]"

}

function replace {
  OLD=$1
  NEW=$2

  ENDINGS=(xml)

  for ending in "${ENDINGS[@]}"; do
    echo Search for $OLD replace with $NEW in files with ending $ending
    find ./ -type f -iname "*$ending" | xargs grep "$OLD" -l | xargs sed -e "s/$OLD/$NEW/g" -i ''
  done
}

function concat {
  result=""
  declare -a parts=("${!1}")
  for part in "${parts[@]}"; do
    result=$result$part$2
  done
  #echo $result
  
  echo "${result%?}"
  #for
}

function run {
  SEARCH=$(concat OLD_PARTS[@] .)
  REPLACE=$(concat NEW_PARTS[@] .)

  replace $SEARCH $REPLACE

  #
  SOURCE=$(concat OLD_PARTS[@] /)
  TARGET=$(concat NEW_PARTS[@] /)

  FOLDERS=($(find ./ -type d -ipath '*src/test/java'))

  for folder in "${FOLDERS[@]}"; do
    move $folder $SOURCE $TARGET
  done
}

run
