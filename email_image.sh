#!/bin/dash
for arg in "$@"; do
    echo $arg
    display $arg
    read -p "Address to e-mail this image to? " email
    if [ -n $email ]; then
        read -p "Message to accompany image? " msg
        echo "$msg" | mutt -s "$arg" -e 'set copy=no' -a "$arg" -- "$email"
        echo "$arg sent to $email"
    else
        echo "No email sent"
    fi
done