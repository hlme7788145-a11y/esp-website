#!/bin/bash
cd /tmp
wget https://github.com/OpenZeppelin/openzeppelin-contracts/archive/refs/tags/v4.9.3.tar.gz -O openzeppelin-contracts-4.9.3.tar.gz
tar -xzf openzeppelin-contracts-4.9.3.tar.gz -C openzeppelin-contracts-4.9.3
rm openzeppelin-contracts-4.9.3.tar.gz
mkdir -p /contracts/dependency
mv openzeppelin-contracts-4.9.3/* /contracts/dependency/