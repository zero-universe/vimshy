#!/bin/bash

cd ~/.vim

echo "updating all modules"
git submodule foreach git pull origin master

echo "updates complete"

exit 0
