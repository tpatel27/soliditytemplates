 //SPDX-License-Identifier: GPL-3.0 6 7 
/**
   * @title HelloWorld
   * @dev tejaspatel
   * @custom:dev-run-script file_path
   */
pragma solidity ^0.8.17;

contract HelloWorld {

    string message;

    event logEvent(string a);

    constructor() {
         message = "Hello World!";
         emit logEvent(message);
    }
        
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string memory){
        return message;
    }
}