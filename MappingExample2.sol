// SPDX-License-Identifier: GPL-3.0 2 
/**
   * @title SimpleToken
   * @dev tejaspatel
   * @custom:dev-run-script file_path
   */
pragma solidity ^0.8.13;
contract SimpleToken {
    address owner;
    mapping (address => uint256) public accounts;

    constructor (uint256 initialSupply){ 
        owner = msg.sender; 
        accounts[owner] = initialSupply; 
    } 

    function transfer(address to, uint256 value) public {
        require(accounts[msg.sender] >=value);
        require(accounts[to]+value >= accounts[to]); 
        accounts[msg.sender] -= value; 
        account[to]+ = value; 
    } 
}