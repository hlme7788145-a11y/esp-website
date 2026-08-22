pragma solidity ^0.8.20;

contract MinimalTestContract {
    function greet() external pure returns (string memory) {
        return "Hello, World!";
    }
}