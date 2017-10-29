#!/bin/bash

FRANZ_DIR="$HOME/Library/Application Support/Franz/recipes/dev"

for i in $(ls -d  */); do
  DIR=$(echo "$i" | sed "s/\///")
  echo "$DIR => $FRANZ_DIR"
  echo "-------------------------------------"
  sudo mkdir -p "$FRANZ_DIR/$DIR" && echo "Created $FRANZ_DIR/$DIR"
  sudo cp -R $DIR "$FRANZ_DIR" && echo "Copied $DIR to $FRANZ_DIR/$DIR"
  echo ""
done;
