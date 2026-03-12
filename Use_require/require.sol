// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//We are going to learn how to use require in solidity
contract SimpleToken{
uint256 public MaxPerMint = 3;

function mint(uint256 amount) public view {
    require(amount <= MaxPerMint,'No more than 3 allowed');
}


}