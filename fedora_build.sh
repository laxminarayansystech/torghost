#!/bin/bash

// rpm packages
sudo dnf install tor python3-pip
// python dependities
sudo pip3 install -r requirements.txt

echo "dependecies installation was called"

// install 
pyinstaller --onefile torghost.py

echo "python build was called"

// copy to user bin
sudo cp -r dist/torghost /usr/bin/

echo "torghost installation script ended"
