//SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;


//We are going to learn about events 
//how you create them and use them in your contract.

contract EventDriven{
    event EventName(uint256 indexed data1,string data2);

    function UseEvent(uint256 data1, string memory data2) public {
        //... Your function logic
        //After creating the event you mst use it 
        //in order to use it you must emit it.
        emit EventName(data1,data2);
    }
}

//Let use an example here 

contract EventExample{

//We are going to make to make a contract to register a new user.

struct User{
    string username;
    uint16 age;
}

event NewUserRegistered(string username, address indexed user);
 
mapping(address => User) public users;


function createNewUser(string memory _username,uint16 _age) public {
    User storage newUser = users[msg.sender];
    newUser.username = _username;
    newUser.age = _age;

    emit NewUserRegistered(_username,msg.sender);

    }

}