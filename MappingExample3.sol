// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract LedgerBalance {
    mapping(address => uint) public balances;

    function updateBalance(uint newBalance) public returns (address) {
        balances[msg.sender] = newBalance;
        return msg.sender;
    }
}

contract Updater {
    function updateBalance() public returns (uint) {
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updateBalance(400);
        return ledgerBalance.balances(address(this));
    }

    function getAddress() public returns (address) {
        return address(this);
    }
}