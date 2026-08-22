#!/bin/bash
rm -rf /tmp/openzeppelin-contracts-4.9.3
cd /tmp && git clone https://github.com/OpenZeppelin/openzeppelin-contracts.git openzeppelin-contracts-4.9.3
tar -xzf openzeppelin-contracts-4.9.3/contracts.tar.gz -C /tmp/openzeppelin-contracts-4.9.3m -rf /tmp/openzeppelin-contracts-4.9.3/contracts.tar.gz
mkdir -p /tmp/contracts/dependency && cp -r /tmp/openzeppelin-contracts-4.9.3/contracts/* /tmp/contracts/dependency/