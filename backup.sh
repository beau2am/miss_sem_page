#!/bin/bash

# Simple backup script

SOURCE_DIR=$1
BACKUP_DIR=$2

if [ -z "$SOURCE_DIR" ] || [ -z "$BACKUP_DIR" ]; then
	echo "Usage: $0 source_directory backup_directory"
	exit 1
fi
if [ ! -d "$SOURCE_DIR" ]; then
	echo "Error: Source directory dous not exist."
	exit 1
fi

if [ ! -d "$BACKUP_DIR" ]; then
	echo "Backup directory does not exist. Creating it."
	mkdir -p "$BACKUP_DIR"
fi

tar czf "${BACKUP_DIR}/backup_$(date +%Y%m%d_%H%M%S).tar.gz" "$SOURCE_DIR"
echo "Backup of $SOURCE_DIR completed successsfully."
