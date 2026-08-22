#!/bin/bash
rm -rf /tmp/openzeppelin-contracts-4.9.3
# Run the download and extraction script
bash /tmp/run_download.sh
# Move the extracted contracts to /contracts/dependency
mkdir -p /contracts/dependency
mv /tmp/openzeppelin-contracts-4.9.3/* /contracts/dependency/