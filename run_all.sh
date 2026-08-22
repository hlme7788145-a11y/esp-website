#!/bin/bash
# Make download and extract scripts executable
chmod +x /tmp/run_download.sh /tmp/run_extract.sh

# Execute the download and extraction scripts sequentially
cd /tmp && ./run_download.sh && ./run_extract.sh && ./verify_contracts.sh