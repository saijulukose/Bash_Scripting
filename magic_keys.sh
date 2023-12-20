#!/bin/bash

################################################################################
# Script	: magic_keys.sh
# Description	: Displays magic keys if the user gives the correct magic spell
#              	  and is deemed worthy.
# Author	:Saiju Lukose
# This script serves as a basic refresher on Bash scripting, including comments
# on common scripting concepts.
################################################################################

# Assign a value to the variable WORTHY_USERNAME
WORTHY_USERNAME="saiju"

# Assign a value to the variable MAGIC_PHRASE
MAGIC_PHRASE="scripting"

# Assign a value to the variable encrypted_sentence
encrypted_sentence="Gur zntvp frggyr vf erivrjrq bayl gb gur jbegre bar."

# Print a message to inform the user about the script's purpose
echo "Let me check if you are worthy to be given the magic spell"

# Check if the user is worthy based on the username using an if statement
if [[ "${USER}" == "${WORTHY_USERNAME}" ]]; then
    # Print a message indicating that the user is deemed worthy
    echo "You are worthy for the magic spell, ${USER}"
    
    # Prompt the user to enter the magic phrase using the read command
    read -p "Now say the magic phrase...." user_magic_phrase
    
    # Check if the entered magic phrase matches the expected one
    if [[ "${MAGIC_PHRASE}" == "${user_magic_phrase}" ]]; then
        # Print the encrypted sentence if the magic phrase matches
        echo "${encrypted_sentence}"
    else 
        # Print a message if the magic phrase doesn't match
        echo "Magic Phrase doesn't match...${MAGIC_PHRASE}"
    fi

else
    # Print a message if the user is not deemed worthy
    echo "You are not worthy, ${USER}"
    exit 1
fi
