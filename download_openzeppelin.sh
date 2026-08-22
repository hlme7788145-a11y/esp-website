#!/bin/bash

# Download the OpenZeppelin contracts for version 4.9.3
wget https://github.com/OpenZeppelin/openzeppelin-contracts/archive/refs/tags/v4.9.3.tar.gz -O /tmp/openzeppelin-contracts-4.9.3.tar.gz
echo "Downloaded OpenZeppelin contracts zip file"

# Extract the tar.gz file
tar -xzf /tmp/openzeppelin-contracts-4.9.3.tar.gz -C /tmp/openzeppelin-contracts-4.9.3
echo "Extracted OpenZeppelin contracts to /tmp/openzeppelin-contracts-4.9.3"

# Verify the directory structure
ls -la /tmp/openzeppelin-contracts-4.9.3