//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Struct{
    // Think of them as objects to store that have properties that can be accessed
    //Lets Start
    struct Customer{
        string Company;
        string Position;
        uint256 Salary;
        string TimeStarted;
    }

    // After you store your struct in a variable 

    Customer[] public customers;

//Lets say that i want to use my struct to store job credentials for someone 
// lets use a function

function addCustomer(string memory company,string memory position,uint256 salary,string memory time) public {
    Customer memory newCustomer = Customer({
         Company:company,
         Position:position,
         Salary:salary,
         TimeStarted:time
    });
    customers.push(newCustomer);
}

}
