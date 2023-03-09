// SPDX-License-Identifier: MIT
/**
   * @title Bank
   * @dev tejaspatel
   * @custom:dev-run-script file_path
   */
pragma solidity ^0.8.17;

contract Bank {
    mapping (address => uint) public accounts;
    
    function deposit (uint money) public {
        accounts[msg.sender] += money;
    }

    function withdraw (uint money) public {
        accounts[msg.sender] -= money;
    }
}