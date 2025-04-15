#!/bin/bash

current_path=$(pwd)
directories=($(find "$current_path" -maxdepth 1 -type d -print))

for dir in "${directories[@]}"; do
  echo "repository: $dir"
  if [ -e "$dir/.git/hooks" ]; then
    cd $dir/.git/hooks
    rm $dir/.git/hooks/prepare-commit-msg

  else
    echo "$dir/.git/hooks 디렉토리를 찾을 수 없습니다."
  fi
done