
// SPDX-License-Identifier: MIT
/**
   * @title Loop
   * @dev tejaspatel
   * @custom:dev-run-script file_path
   */
pragma solidity ^0.8.17;

contract Loop {
    uint[] dataArray;

    function returnData() public returns(uint[] memory){
        // for loop
        for (uint i = 0; i < 6; i++) {
            dataArray.push(i);
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
            return dataArray;
        }

        // while loop
        // uint j;
        // while (j < 10) {
        //     j++;
        // }
    }
}