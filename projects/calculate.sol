// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Calculator{
  uint256 public result;
  


//function  to carry out operations 
  function add(uint256 a,uint256 b) public returns(uint256) {
      result = a + b;
        return result;
       }

       function subtract(uint256 a, uint256 b) public returns(uint256){
        result = a - b;
        return result;
       }

       function multiply(uint256 a, uint256 b) public returns(uint256) {
        result = a* b;
        return result;
       }

       function divide(uint256 a, uint256 b) public  returns(uint256,string memory){
            if(b == 0){
              result = 0;
              return ( 0,"Math Error");
            }
            else{
              result = a/b;
            return (result,"");
            }
      

        }

       

}
 