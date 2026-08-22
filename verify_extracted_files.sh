#!/bin/bash

# Verify that the extracted directory '/tmp/openzeppelin-contracts-4.9.3' contains the 'contracts' directory
if [ -d '/tmp/openzeppelin-contracts-4.9.3/contracts' ]; then
    echo "Verification successful: The 'contracts' directory exists in '/tmp/openzeppelin-contracts-4.9.3'"
    exit 0
else
    echo "Verification failed: The 'contracts' directory does not exist in '/tmp/openzeppelin-contracts-4.9.3'"
    exit 1
fi