#!/bin/bash

################################################################################
# Script: user_info.sh
# Description: Bash script to display username and UID
# Author: Saiju Lukose
# This script retrieves and displays the username and UID of the current user.
# It serves as a simple utility for obtaining basic user information.
################################################################################




# Get the current username
USERNAME=$(whoami)  # Using 'whoami' to retrieve the current username

# Get the UID of the current user
UID=$(id -u)  # Using 'id -u' to retrieve the UID of the current user

# Display information using echo
echo "My username is ${USERNAME} and my UID is ${UID}"

# Check if the UID is 1000 
if [[ "${UID}" -eq 1000 ]]; then
  echo "User is Saiju"
else    
  echo "User is Someone else"
fi

