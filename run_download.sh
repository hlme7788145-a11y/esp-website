#!/bin/bash
# Download the OpenZeppelin contracts
wget https://github.com/OpenZeppelin/openzeppelin-contracts/archive/refs/tags/v4.9.3.tar.gz -O /tmp/openzeppelin-contracts-4.9.3.tar.gz
# Extract the tar.gz file
cd /tmp && tar -xzf openzeppelin-contracts-4.9.3.tar.gz -C openzeppelin-contracts-4.9.3