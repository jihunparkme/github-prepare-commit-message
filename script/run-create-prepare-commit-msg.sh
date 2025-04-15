#!/bin/bash

current_path=$(pwd)

git clone https://github.com/jihunparkme/github-prepare-commit-message.git

cd $current_path
chmod +x $current_path/github-prepare-commit-message/script/*

cp $current_path/github-prepare-commit-message/script/create-prepare-commit-msg.sh $current_path/create-prepare-commit-msg.sh
cp $current_path/github-prepare-commit-message/script/prepare-commit-msg $current_path/prepare-commit-msg

./create-prepare-commit-msg.sh