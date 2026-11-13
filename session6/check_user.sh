#!/bin/bash
# Challenge 2: check whether a user exists on this system

if [ $# -eq 0 ]; then
    echo "Usage: $0 username"
    exit 1
fi

if grep -q "^$1:" /etc/passwd; then
    echo "User '$1' exists on this system."
else
    echo "User '$1' does NOT exist on this system."
fi
