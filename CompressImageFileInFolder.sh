#/bin/sh
# Author Etienne Hallet
# This 3 lines script compress all the A4 images present in the folder and add the result to a Compress Folder
# I think it can be used for PDFs too
#

if [ ! -d 'Compress' ]
then
  mkdir ./Compress
fi
  
for i in `ls *.jpeg`
do
  echo 'Compressing :' $i
  echo 'Size :' `ls -lah $i | awk '{ print $5}'`
  convert -resize 1249x1749 -quality 70 $i Compress/$i
  echo '[Done] New Size :'`ls -lah Compress/$i | awk '{ print $5}'`
  echo '------'
  echo ''
done
