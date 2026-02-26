//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Array{
//Several ways to initialize arrays
uint[] public arr;
uint [] public arr2 = [1,2,3];//These are arrays that will continuous grow
//Arrays with finite elements

uint[5] public names;
uint[10] public classes;
//There are many ways to work with arrays 
//to push to a dynamic array(Meaning arrays with no limit)

//lets use a function to add a new element

function add(uint value) public{
    arr.push(value);
}

//lets see the new length of the new array

function get() public view returns(uint){
    return arr.length;
}

//To access a certain element we use its index as normal

function getElement(uint i) public view returns(uint){
    return arr[i]; // it will return an element at index i.
}


}