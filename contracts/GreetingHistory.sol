// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract GreetingHistory {
    struct Greeting {
        string message;
        uint256 timestamp;
    }

    mapping(address => Greeting[]) public userGreetings;

    event NewGreeting(address indexed user, string message, uint256 timestamp);

    function setGreeting(string memory _message) public {
        userGreetings[msg.sender].push(Greeting(_message, block.timestamp));
        emit NewGreeting(msg.sender, _message, block.timestamp);
    }

    function getGreetings(address _user) public view returns(Greeting[] memory) {
        return userGreetings[_user];
    }
}