#!/bin/bash

# Get the current working directory
directory=$(pwd)

# # List all subdirectories and create .qmd files in each subdirectory
# for dir in "$directory"/*/; do
#   # Check if it's a directory
#   if [ -d "$dir" ]; then
#     # Get the directory name without the trailing slash
#     dir_name=$(basename "$dir")

#     # Create the .qmd file inside the subdirectory with the same name
#     touch "$dir/$dir_name.qmd"
#     echo "Created file: $dir/$dir_name.qmd"
#   fi
# done
# List all subdirectories
for dir in "$directory"/*/; do
  # Check if it's a directory
  if [ -d "$dir" ]; then
    # Rename all files in the subdirectory to index.qmd
    for file in "$dir"/*; do
      # Check if it's a file (not a directory)
      if [ -f "$file" ]; then
        mv "$file" "$dir/index.qmd"
        echo "Renamed $file to $dir/index.qmd"
      fi
    done
  fi
done
