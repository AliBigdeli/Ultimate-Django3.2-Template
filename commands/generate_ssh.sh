#!/bin/bash

echo Enter Email address:
read varemail

yes '' | ssh-keygen -t ed25519 -C "$varemail" -N ""

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub
