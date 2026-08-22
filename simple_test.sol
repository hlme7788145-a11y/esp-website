pragma solidity ^0.8.20;

contract SimpleTest {
    function add(uint a, uint b) external pure returns (uint) {
        return a + b;
    }
}