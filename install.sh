#!/bin/bash
#Script for installing/uninstalling macInfo

#List of options
echo ""
echo "Please choose an option:"
echo "1. Install macInfo to /usr/local/bin"
echo "2. Uninstall macInfo from /usr/local/bin"
echo -n "Option: "
read answer
echo ""

#If statements based on asnwer
if [ $answer == 1 ]
then

   #create directory if it doesn't exist
   if [ ! -d "/usr/local/bin/" ]
   then
      echo "Creating /usr/local/bin/"
      mkdir -pv -m 755 /usr/local/bin/
   fi

   #copy script
   sudo cp macInfo Models.txt /usr/local/bin/
   sudo chmod +x /usr/local/bin/macInfo

   #display message
   tput setaf 2
   echo "Installed Sucessfully"
   tput sgr0

elif [ $answer == 2 ]
then

   #remove script
   sudo rm -f /usr/local/bin/macInfo /usr/local/bin/Models.txt

   #display message
   tput setaf 2
   echo "Uninstalled Sucessfully"
   tput sgr0

else
   echo "Command not supported."
   exit
fi

exit
