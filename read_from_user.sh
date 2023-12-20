#!/bin/bash

################################################################################
# Script: read_example.sh
# Description: Basic Bash script demonstrating the usage of the read command
# Author: Saiju Lukose
#
# This script showcases the basic usage of the read command to collect user input
# and display personalized information.
################################################################################

# Prompt the user for their name
echo -n "Enter your name: "
read name

# Prompt the user for their age
echo -n "Enter your age: "
read age

# Display the information
echo "Hello, $name! You are $age years old."

