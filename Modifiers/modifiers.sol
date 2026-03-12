//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


//A small contract that helps the owner to pause or unpause at his will 
//plus transfer funds from his account and checks his balance.

contract PausableToken {
    address owner;
    bool paused;
    mapping(address => uint) public balance;

    constructor(){
        owner = msg.sender;
        paused = false;
        balance[owner] = 1000;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"You are not the owner.");
       _; 
    }

modifier notPaused(){
    require(paused == false,"The contract has been paused.");
    _;
} 

function pause() public onlyOwner{
        paused = true;
}

function unpause() public onlyOwner{
    paused = false;
}
    function transfer(address To ,uint256 amount) public notPaused{
        require(To != msg.sender,"You can't send to youself.");
        require(amount != 0,"You can't send zero funds.");
        require(To != address(0), "Cannot transfer to zero address");
        require(balance[msg.sender] >= amount,"Insuffient balance.");
            balance[msg.sender] -= amount;
            balance[To] += amount;

    }

}

