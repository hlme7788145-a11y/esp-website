#!/bin/bash
cd /tmp/contracts/dependency
if [ -f "OpenZeppelin-v4.9.3.tar.gz" ]; then
    tar -xzf "OpenZeppelin-v4.9.3.tar.gz" -C /tmp
    echo "Extracted OpenZeppelin contracts to /tmp/openzeppelin-contracts-4.9.3"
else
    echo "Error: OpenZeppelin-v4.9.3.tar.gz not found in /tmp/contracts/dependency"
fi