//SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

//Syntax for inheriting features from one contract to another 

contract Parent{
    uint256 public parentData;
//... logic 


}
// Now the child contract is inheriting all features of the parent contract.
    contract Child is Parent{
         uint256 public childData;

         constructor(uint256 _childData){
            childData = _childData;
         }   
    }
