//SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract Loops{
    function countUp(uint limit) pure public returns(uint){
        uint sum = 0;
        for (uint i = 1; i <= limit; i++){
            sum += i;
        }

        return sum;

    } 
}