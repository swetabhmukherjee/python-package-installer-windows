#!/bin/bash
#
# Created By: Swetabh
# Bash script to install and generate pip requirements.txt from inside a virtualenv.
# usage pip-install package1 package2 package3 .. package(n)... etc
# 
echo "---------------------------------------------------------------------" 
echo "Starting the script........" 


pip install virtualenv
virtualenv api
.\api\Scripts\activate


echo "Starting to install packages......." 
echo "---------------------------------------------------------------------" 
echo "Enter the path of requirements.txt file"
read requirements_path
echo "---------------------------------------------------------------------" 

echo "Requested packages are :"
while read line; do echo $line; done < $requirements_path
echo "---------------------------------------------------------------------" 

# packages=$(while read line; do echo $line; done < $requirements_path)

echo "Starting to install packages......." 
   #check virtualenv path 
if [[ "$VIRTUAL_ENV" != "" ]]; then 
    echo "You are in a working virtualenv $VIRTUAL_ENV";
   # virtual_env > check if packages is empty .. if [[ ]]; then
    # if [[ "$packages" != "" ]]; then
    pip install -r $requirements_path;
    
# virtual_env > packages .. else; fi 
  # else 
  #   echo "Please enter at least one package to install";
  #   exit 1;
  # fi 
# virtual_env .. else; fi
else 
    echo "You are not in a working virtualenv"
    echo "Exiting .........."
    exit 1;
fi 
echo "---------------------------------------------------------------------" 
echo "Packages installed successfully" 
echo "---------------------------------------------------------------------" 

#END
