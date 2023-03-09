//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

contract MemoryVsStorage {
    uint[5] public arr;
    function startChange() public {
        firstChange(arr);
        secondChange(arr);
    }

    function firstChange(uint[5] storage x) internal {
        x[0] = 4;
    }

    function secondChange(uint[5] memory x) internal pure {
        x[0] = 3;
    }

    function getElement() public view returns (uint) {
        return arr[0];
    }
}