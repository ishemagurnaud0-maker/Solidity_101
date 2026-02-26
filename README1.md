🐦 Beginner Guide: Building a Simple Twitter Smart Contract in Solidity
-------------------------------------------------------------------------
This project is a beginner-friendly introduction to Solidity smart contract development.

We build a very simple Twitter-like contract that:

Lets a user create a tweet

Links the tweet to their wallet address

Allows anyone to read a tweet by wallet address

If you're new to Solidity — this README will help you understand every line.

📚 What You Will Learn

By studying this project, you will understand:

What a smart contract is

What pragma means

How mappings work

What msg.sender is

The difference between public and view

How blockchain stores data

🧠 What Is a Smart Contract?

--------------------------------------
A smart contract is code that runs on the blockchain.

Instead of:
--
A server storing data

A database storing users

The blockchain stores everything.

Users interact using their wallet address.

-------------------------------------------------------
📜 The Smart Contract Code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Twitter {

    mapping(address => string) public tweets;

    function createTweet(string memory tweet) public {
        tweets[msg.sender] = tweet;
    }

    function getTweet(address _owner) public view returns(string memory){
        return tweets[_owner];
    }
}

---------------------------------------
Now let’s break it down.

🔍 Line-by-Line Explanation
1️⃣ License
// SPDX-License-Identifier: MIT

This tells others how they can use your code.

MIT = Open-source license.

2️⃣ Solidity Version
pragma solidity ^0.8.20;

This means:

The contract works with Solidity version 0.8.20 and above

Prevents compatibility issues

----------------------------------------

3️⃣ Contract Declaration
contract Twitter {

This creates a smart contract named Twitter.

Think of it like creating a class in other programming languages.

--------------------------------------------------------

4️⃣ Mapping (Very Important Concept 🔥)
mapping(address => string) public tweets;

This is the heart of the contract.

A mapping is like a key-value storage system.

Here:

Key → address

Value → string (tweet)

So:

Wallet Address  →  Tweet

Example:

0x123...abc → "Hello Web3!"
5️⃣ createTweet() Function
function createTweet(string memory tweet) public {
    tweets[msg.sender] = tweet;
}
What happens here?

msg.sender = The wallet calling the function

The tweet is stored under their wallet address

If they post again → old tweet is replaced

------------------------------------------------------------------

Important concept:

👉 On blockchain, wallet address = user identity

6️⃣ getTweet() Function
function getTweet(address _owner) public view returns(string memory){
    return tweets[_owner];
}

This function:

Takes a wallet address

Returns the tweet linked to it

Why is it view?

Because:

It does NOT change blockchain data

It only reads data

Reading does not cost gas (when called externally)

⚙️ How the Flow Works

User connects wallet (MetaMask)

Calls createTweet("Hello World")

Blockchain stores:

user_address → "Hello World"

Anyone can call getTweet(user_address) to read it

⛽ Understanding Gas

Writing data (createTweet) costs gas

Reading data (getTweet) does NOT cost gas externally

Storing long strings is expensive
