#!/bin/bash
#

# Using clear so we don't have a cluttered screen
clear

# Add in a few hash signs to represent the beginning and end of our script's output
echo " "
echo "#############################################################################################################"
echo " "
echo " "

# Set our file_is_text variable to nothing
file_is_text=""

echo "Default value for file_is_text is set to:" "\"" $file_is_text "\""
echo " "

# Get the file type of the first argument that was specified when our script was called
echo "Checking file type..."
file_type=$(file $1)
echo " "
echo "File says that the file you specified is the following type: ""\""$file_type"\""
echo " "

echo "Manually setting file type to \"ASCII\"."
echo " "
echo " "

file_is_text="ASCII"

echo "The curent value of the variable file_is_text is now: \""$file_is_text"\""
echo " "
echo " "

echo "Running file type detection if loop..."
echo " "
if  file $1 | grep -q "ASCII"   
  then echo "The specified file is ASCII text." 
else
  echo "The specified file isn't ASCII text, I can't parse that. The file you provided has the following type: "
  echo $file_type | cut -d' ' -f 2
fi

echo " "
echo "Ending now."
echo " "
echo "#############################################################################################################"
echo " "

