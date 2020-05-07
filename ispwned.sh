#!/bin/bash

echo -n "Enter password to check: "
read PWD
HASH=$(echo -n $PWD | sha1sum | awk '{print $1}')
RESULT=$(curl -s https://api.pwnedpasswords.com/range/$(echo $HASH | cut -c1-5) | grep -i ${HASH:5} || echo "0:0")
echo "Your password has leaked $(echo $RESULT | awk -F: '{print $2}' | sed 's/[^0-9]//g') times."

