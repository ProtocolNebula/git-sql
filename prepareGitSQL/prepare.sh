#!/bin/bash
EXEC_DIR="$(pwd)/$( dirname $0 )/"
#echo "Current directory: ${EXEC_DIR}"

CONF_FILE=".git/hooks/db.conf"

if [ -f ${CONF_FILE} ]; then
    echo "File ${CONF_FILE} already exists."
    echo "Terminating..."
    exit 1
fi

echo "Copying bash directory to .git/hooks"
$(cp ${EXEC_DIR}bash/* .git/hooks/)

if [ $? -eq 0 ]; then
    echo "Copied successfull."
    echo 
    echo "Please, edit .git/hoooks/db.conf"
    echo "Ex: nano .git/hoooks/db.conf"
else
    echo "Error copying files. Check permissions on folder .git"
    exit 2
fi