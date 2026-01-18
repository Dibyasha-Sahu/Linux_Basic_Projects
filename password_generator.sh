#!/bin/bash

# Random Password Generator in Bash

# Ask user for password length
read -p "Enter password length: " length

# Generate password using /dev/urandom
password=$(< /dev/urandom tr -dc 'A-Za-z0-9!@#$%^&*()_+{}|:<>?' | head -c $length)

echo "Generated Password: $password"