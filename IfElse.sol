//SPDX-License-Identifier: GPL-3.0 6 7 
/**
   * @title IfElse
   * @dev tejaspatel
   * @custom:dev-run-script file_path
   */
pragma solidity ^0.8.17;

// simple if-else and ternary statement that returns a string.
contract IfElse {

   function simpleStatement(uint x) public pure returns (string memory) {
        if (x < 100) {
            return "Hey there!!";
        } else if (x < 200 && x > 100) {
            return "Have a nice Day";
        } else {
            return "Nice to see you";
        }
    }

    function ternaryStatement(uint y) public pure returns (string memory) {
        //this condition is same as the above.
        return y < 100 ? "Hey there!!" : y < 200 && y > 100 ? "Have a nice Day" : "Nice to see you";
    }
}
