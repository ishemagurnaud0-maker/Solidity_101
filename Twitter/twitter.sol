// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//Create Smart Contract for 
//-Creating a tweet 
//-Linking a tweet to the user 
//-Create function to access the tweet

contract Twitter{
mapping(address => string) public tweets;

function createTweet(string memory tweet) public {
        tweets[msg.sender] = tweet;
    }

    function getTweet(address _owner) public view returns(string memory){
          return tweets[_owner];
            
    }
}











