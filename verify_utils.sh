#!/bin/bash
chmod +x /tmp/verify_utils.sh
cd /tmp
wget https://github.com/OpenZeppelin/openzeppelin-contracts/archive/refs/tags/v4.9.3.tar.gz -O openzeppelin-contracts-4.9.3.tar.gz
tar -xzf openzeppelin-contracts-4.9.3.tar.gz -C openzeppelin-contracts-4.9.3
rm openzeppelin-contracts-4.9.3.tar.gz
ls -la /tmp/openzeppelin-contracts-4.9.3/contracts/utils/