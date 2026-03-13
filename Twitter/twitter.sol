// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//Create Smart Contract for twitter


contract Twitter{

    event CreatedNewTweet(address indexed author,uint256 timestamp,string message,uint256 indexed id);
    event LikedTweet(uint256 indexed newLikeCount , address indexed TweetAuthor,address indexed liker,uint256 TweetId);
    event UnlikedTweet(uint256 indexed newLikeCount,address indexed TweetAuthor,address indexed liker ,uint256 TweetId);

struct Tweet{
    uint256 id;
    address Author;
    string Message;
    uint256 TimeTweeted;
    uint256 Likes;
     
}

mapping(address => Tweet[]) public tweets;
uint16 public MAXTWEET_LENGTH = 280;
address public owner;

constructor(){
    owner = msg.sender;
}

modifier onlyOwner(){
    require(msg.sender == owner,"You are not the owner.");
    _;
} 

function changeTweetLength(uint16 newTweetLength) public onlyOwner{
    MAXTWEET_LENGTH = newTweetLength;
}



function createTweet(string memory message) public {

                    require(bytes(message).length <= MAXTWEET_LENGTH,"The tweet is too long.");

            Tweet memory newTweet = Tweet({
                id:tweets[msg.sender].length,
                Author: msg.sender, 
                Message:message,
                TimeTweeted:block.timestamp ,
                Likes:0
            });

            tweets[msg.sender].push(newTweet);

            emit CreatedNewTweet(newTweet.Author,newTweet.TimeTweeted,newTweet.Message,newTweet.id);
         }
 
        function getTweet(address author,uint256 id) public view returns(Tweet memory){
            return tweets[author][id];
        }
        function getAllTweets(address author) public view returns(Tweet[] memory){
            return tweets[author];
        }

        function likeTweet(uint256 id,address author) external {
            require(id < tweets[author].length,"Tweet doesn't not exist.");
            require(msg.sender != author,"You can not like your own tweet.");
            tweets[author][id].Likes++;
            
            emit LikedTweet(tweets[author][id].Likes,author,msg.sender,id);
        }

         function unlikeTweet(uint256 id,address author) external {
             require(id < tweets[author].length,"Tweet doesn't not exist.");
             require(tweets[author][id].Likes > 0,"Tweet has no likes.");
             require(msg.sender != author,"You can not like your own tweet.");

             tweets[author][id].Likes--;

             emit UnlikedTweet(tweets[author][id].Likes,author, msg.sender, id);
         }   
    }














