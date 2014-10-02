#!/bin/bash
# Author : Etienne Hallet
# Permits to sort photos/videos by date
## Create an arborescence /MONTH/DAY

FOLD_origin=''
FOLD_dest=''
FILETYPE=''

for i in `ls $FOLD_origin/*.$FILETYPE`
do
# Get the Month of the creation date
  dateM=`stat -c %y $i | cut -d- -f2`

# Get the Day of the creation date
  dateD=`stat -c %y $i | cut -d- -f3 | cut -f1 -d ' '`

# Create the appropriate folder if not existing
  if [ ! -a $FOLD_dest/$dateM/$dateD/ ]
    then  mkdir -p $FOLD_dest/$dateM/$dateD/
  fi

# Copy the file to its proper emplacement
  cp $i $FOLD_dest/$dateM/$dateD/

done               

