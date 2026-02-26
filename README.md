# 🔷 Learn Solidity — From Zero to Smart Contract Developer

> A structured, beginner-friendly course repository for learning Solidity and Ethereum smart contract development. 

---

## 📋 Table of Contents

- [About This Repo](#about-this-repo)
- [Prerequisites](#prerequisites)
- [Course Outline](#course-outline)
- [Getting Started](#getting-started)
- [Tools & Environment](#tools--environment)
- [How to Use This Repo](#how-to-use-this-repo)
- [Resources](#resources)
- [Contributing](#contributing)
- [License](#license)

---

## About This Repo

This repository is designed to teach **Solidity** — the primary programming language for writing smart contracts on the Ethereum blockchain — from the ground up.

Whether you're a complete beginner or an experienced developer new to Web3, this course walks you through core concepts, real-world patterns, and best practices used in production smart contract development.

By the end, you'll be able to write, test, deploy, and interact with your own smart contracts on Ethereum and EVM-compatible chains.

---

## Prerequisites

Before diving in, you should be comfortable with:

- Basic programming concepts (variables, loops, functions, conditionals)
- Some familiarity with JavaScript or TypeScript is helpful but not required
- A basic understanding of what a blockchain is (we cover the essentials in Module 1)

No prior Solidity or Web3 experience needed. ✅

---

## Course Outline

### Module 1 — Blockchain & Ethereum Basics
- What is a blockchain?
- How Ethereum works (accounts, transactions, gas)
- What are smart contracts?
- The EVM (Ethereum Virtual Machine) explained

### Module 2 — Solidity Fundamentals
- Your first `.sol` file
- State variables, data types, and visibility
- Functions: view, pure, payable
- Control flow: if/else, loops
- Events and error handling (`require`, `revert`, `assert`)

### Module 3 — Data Structures & Storage
- Arrays and mappings
- Structs
- Storage vs. memory vs. calldata
- Gas optimization basics

### Module 4 — Object-Oriented Solidity
- Contracts as objects
- Inheritance and interfaces
- Abstract contracts
- Libraries

### Module 5 — Common Patterns & Standards
- ERC-20: Fungible tokens
- ERC-721: NFTs
- Ownable and access control
- The Checks-Effects-Interactions pattern
- Reentrancy and how to prevent it

### Module 6 — Testing & Deployment
- Writing tests with Hardhat / Foundry
- Deploying to a local testnet
- Deploying to a public testnet (Sepolia)
- Verifying contracts on Etherscan

### Module 7 — Real-World Projects
- Build a simple token
- Build an NFT collection
- Build a basic DAO voting contract
- Build a simple DeFi vault

---

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/ishemagurnaud0-maker/solidity_101.git
cd learn-solidity
```

### 2. Install dependencies

```bash
npm install
```

### 3. Set up your environment

Copy the example environment file and fill in your values:

```bash
cp .env.example .env
```

### 4. Compile the contracts

```bash
npx hardhat compile
```

### 5. Run the tests

```bash
npx hardhat test
```

---

## Tools & Environment

| Tool | Purpose |
|------|---------|
| [Hardhat](https://hardhat.org/) | Development framework, testing, deployment |
| [Foundry](https://book.getfoundry.sh/) | Alternative framework (fast, Rust-based) |
| [Remix IDE](https://remix.ethereum.org/) | Browser-based IDE, great for beginners |
| [MetaMask](https://metamask.io/) | Wallet for interacting with deployed contracts |
| [OpenZeppelin](https://openzeppelin.com/contracts/) | Audited contract libraries |
| [Etherscan](https://etherscan.io/) | Block explorer for inspecting contracts |

### Recommended Remix Setup (No Installation Required)

If you're just getting started, you can skip local setup entirely and use **Remix IDE** in your browser:

1. Go to [remix.ethereum.org](https://remix.ethereum.org)
2. Create a new `.sol` file
3. Select the Solidity compiler version (e.g., `0.8.20`)
4. Hit **Compile**, then **Deploy** to a local JavaScript VM
5. Interact with your contract directly in the browser

---

## How to Use This Repo

```
learn-solidity/
├── modules/
│   ├── 01-basics/
│   ├── 02-fundamentals/
│   ├── 03-data-structures/
│   ├── 04-oop/
│   ├── 05-patterns/
│   ├── 06-testing/
│   └── 07-projects/
├── contracts/         # Final versions of all example contracts
├── test/              # Test files for all contracts
├── scripts/           # Deployment scripts
├── hardhat.config.js
└── README.md
```

Each module folder contains:
- A `README.md` with lesson notes and explanations
- `.sol` files with example contracts (often with `// TODO` exercises)
- A `solutions/` subfolder with completed examples

**Recommended approach:**
1. Read the module's `README.md` first
2. Study the example contracts
3. Complete the exercises in the starter files
4. Check your work against the solutions

---

## Resources

### Official Docs
- [Solidity Documentation](https://docs.soliditylang.org/) — The official language reference
- [Ethereum.org Developer Docs](https://ethereum.org/en/developers/docs/) — Comprehensive Ethereum guide

### Practice & Challenges
- [CryptoZombies](https://cryptozombies.io/) — Gamified Solidity lessons
- [Ethernaut](https://ethernaut.openzeppelin.com/) — Smart contract security challenges
- [SpeedRunEthereum](https://speedrunethereum.com/) — Practical mini-projects

### Communities
- [r/ethdev](https://www.reddit.com/r/ethdev/) — Ethereum developers on Reddit
- [Ethereum StackExchange](https://ethereum.stackexchange.com/) — Q&A for developers
- [Developer Discord servers](https://ethereum.org/en/community/online/) — Real-time help

---

## Contributing

Contributions, bug reports, and suggestions are welcome!

1. Fork the repo
2. Create a feature branch: `git checkout -b feature/add-lesson`
3. Commit your changes: `git commit -m "Add lesson on mappings"`
4. Push to your branch: `git push origin feature/add-lesson`
5. Open a Pull Request

Please follow the existing code style and add comments to contracts where helpful.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

> 💡 **Tip:** Star ⭐ this repo to stay updated as new modules are added!
