#!/bin/bash
# Download the OpenZeppelin contracts
wget https://github.com/OpenZeppelin/openzeppelin-contracts/archive/refs/tags/v4.9.3.tar.gz -O /tmp/openzeppelin-contracts-4.9.3.tar.gz

# Extract the tar.gz file
mkdir -p /tmp/openzeppelin-contracts-4.9.3 && cd /tmp/openzeppelin-contracts-4.9.3
tar -xzf ../openzeppelin-contracts-4.9.3.tar.gz && cd ..

# Move the extracted contracts to /tmp/contracts/dependency
mkdir -p /tmp/contracts/dependency && mv openzeppelin-contracts-4.9.3/* /tmp/contracts/dependency/