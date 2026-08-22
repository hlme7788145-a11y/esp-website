#!/bin/bash
# Verify if necessary import files exist in the extracted OpenZeppelin contracts
cd /tmp/openzeppelin-contracts-4.9.3

# Check for essential Solidity files (e.g., IERC20.sol, AccessControl.sol, etc.)
files_to_check=("contracts/token/IERC20.sol" "contracts/utils/Counters.sol" "contracts/utils/Strings.sol")

found_files=0

for file in "${files_to_check[@]}"; do
    if [ -f "$file" ]; then
        ((found_files++))
        echo "✅ Found: $file"
    else
        echo "❌ Missing: $file"
    fi
done

if [ $found_files -eq ${#files_to_check[@]} ]; then
    echo "All required import files are present."
else
    echo "Some required import files are missing."
    echo "Please check the missing files above."
fi