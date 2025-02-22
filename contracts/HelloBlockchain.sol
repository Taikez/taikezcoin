// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract HelloBlockchain {
    string public greeting;

    mapping(address => string) public userLastGreeting;
    uint public userLastGreetingMapSize;

    event NewGreeting(address indexed user, string message, uint256 timestamp);

    constructor() {
        greeting = "Hello Blockchain!";
    }

    function getGreeting() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _newGreeting) public {
        greeting = _newGreeting;
        userLastGreeting[msg.sender] = _newGreeting;
        userLastGreetingMapSize++;

        emit NewGreeting(msg.sender, _newGreeting, block.timestamp);
    } 

    function getUserLastUpdatedGreeting(address _user) public view returns (string memory) {
        return userLastGreeting[_user];
    } 

    function getTotalGreetings() public view returns (uint) {
        return userLastGreetingMapSize;
    }
}