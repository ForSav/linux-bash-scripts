#!/bin/bash

SERVICE_NAME=$1

if [ -z "$1" ]; then
    echo "Missed argument"
    exit 1
fi

echo "Checking service..."

if pgrep -x "$SERVICE_NAME" > /dev/null; then
    echo "$SERVICE_NAME active"
else
    echo "$SERVICE_NAME NOT running"
fi
