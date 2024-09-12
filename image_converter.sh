#!bin/bash

if ! command -v convert &> /dev/null; then
  echo "ImageMagick is not installed. Please install it first."
  exit 1
fi 

 
for file in *.webp; do
  # Check if the file exists
  if [ ! -f "$file" ]; then
    echo "No webp files found in the current directory."
    exit 1
  fi
  
  # {$file} takes the whole file.format variable but if we add "%" we "cut" the format part of the variable
  output = "${file%.webp}.png"
  convert "$file" "$output"

  if [$ -eq 0]; then
    echo "$file has been converted to $output"
  else
    echo "An error occurred while converting $file"
  fi

done

