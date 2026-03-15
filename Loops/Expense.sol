//SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;


contract ExpenseTracker{
    

    struct Expense{
        address user;
        string description;
        uint amount;
    }

    Expense[] public expenses;

    constructor() {
        expenses.push(Expense(msg.sender, "Groceries",50));
        expenses.push(Expense(msg.sender, "Transport",40));
        expenses.push(Expense(msg.sender, "Dining",40));
    }

    function addExpense(string memory _description, uint amount) public {
        expenses.push(Expense(msg.sender, _description,amount));
    }

    function getExpenses(address _user) public view returns(uint){

            uint totalExpenses = 0;
        for ( uint i = 0; i < expenses.length; i++){
            if(expenses[i].user == _user){
                totalExpenses += expenses[i].amount; 
            }
            
        }

         return totalExpenses;

    }
}