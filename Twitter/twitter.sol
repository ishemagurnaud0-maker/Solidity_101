// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//Create Smart Contract for twitter


contract Twitter{

struct Tweet{
    address Author;
    string Message;
    uint256 TimeTweeted;
    uint256 Likes;
     
}

mapping(address => Tweet[]) public tweets;

    function addTweet(string memory message) public{
            Tweet memory newTweet = Tweet({
                Author: msg.sender,
                Message:message,
                TimeTweeted:block.timestamp,
                Likes:0
            });

            tweets[msg.sender].push(newTweet);
         }

        function getTweet(address author,uint256 i) public view returns(Tweet memory){
            return tweets[author][i];
        }
        function getAllTweets(address author) public view returns(Tweet[] memory){
            return tweets[author];
        }
            
    }














