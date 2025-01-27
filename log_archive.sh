#!/bin/bash

if [-z $1]; then
  echo "Usage: $0 <archive_dir>"
  exit 1
fi

log_dir="$1"

if [! -d $log_dir]; then
  echo "Error: $log_dir is not a directory."
  exit 1
fi

output_dir="./archived_logs"

mkdir -p $output_dir

datetime=$(date +%Y%m%d%_H%M%S)

compressed_file="$output_dir/logs_archive_$datetime.tar.gz"

tar -czf $compressed_file $log_dir