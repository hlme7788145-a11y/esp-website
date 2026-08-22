#!/bin/bash
# Download OpenZeppelin contracts
wget https://github.com/OpenZeppelin/openzeppelin-contracts/archive/refs/tags/v4.9.3.tar.gz -O /tmp/openzeppelin-contracts-4.9.3.tar.gz
# Extract the archive
mkdir -p /tmp/openzeppelin && cd /tmp/openzeppelin && tar -xzf /tmp/openzeppelin-contracts-4.9.3.tar.gz
# Navigate to the contracts directory
cd openzeppelin-contracts-4.9.3/contracts
# Find and check for Context.sol
find . -name "Context.sol" -exec echo "Context.sol found at: {}" \;