// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract HelloWorld {
    string public greeting = "Hello, Blockchain!";
    
    function setGreeting(string memory _newGreeting) public {
        greeting = _newGreeting;
    }
}
