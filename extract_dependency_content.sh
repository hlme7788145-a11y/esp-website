#!/bin/bash
# Extract the OpenZeppelin-v4.9.3.tar.gz file to verify its contents
cd /tmp/contracts/dependency

# Extract the tar.gz file
if tar -xzf "OpenZeppelin-v4.9.3.tar.gz" -C /tmp/contracts/dependency/OpenZeppelin-v4.9.3; then
    echo "Extraction successful. Checking for necessary files...
    
    # List the extracted files to verify their presence
    ls -la /tmp/contracts/dependency/OpenZeppelin-v4.9.3/contracts/
else
    echo "Error: Failed to extract the tar.gz file"
    exit 1
fi