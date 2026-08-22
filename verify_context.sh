#!/bin/bash
cd /tmp
# Download and extract OpenZeppelin contracts
wget https://github.com/OpenZeppelin/openzeppelin-contracts/archive/refs/tags/v4.9.3.tar.gz -O openzeppelin-contracts-4.9.3.tar.gz
tar -xzf openzeppelin-contracts-4.9.3.tar.gz -C openzeppelin-contracts-4.9.3
rm openzeppelin-contracts-4.9.3.tar.gz

# Check if Context.sol exists in the extracted contracts
find /tmp/openzeppelin-contracts-4.9.3 -name "Context.sol" -exec echo "Found Context.sol: {}" \;