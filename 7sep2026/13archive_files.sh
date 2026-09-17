#!/bin/bash

find . -type f -mtime +7 | while read -r file; do
  filename=$(basename "$file")
  name="${filename%.*}"
  tar -czvf "${name}_archive.tar.gz" "$file"
  echo "Created: ${name}_archive.tar.gz"
done
