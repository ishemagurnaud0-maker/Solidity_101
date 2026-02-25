# Solidity Calculator Contract 🧮

A beginner-friendly Solidity smart contract that demonstrates basic arithmetic operations on the Ethereum blockchain. This project is designed to help new developers understand core Solidity concepts.

---

## What You Will Learn

- Writing and deploying a smart contract
- Using state variables
- Understanding `pure` and `view` function modifiers
- Returning multiple values from a function
- Basic error handling in Solidity
- Gas optimization techniques

---

## Contract Overview

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Calculator {
    uint256 public result;
    string public comment;

    function add(uint256 a, uint256 b) public pure returns (uint256);
    function subtract(uint256 a, uint256 b) public pure returns (uint256);
    function multiply(uint256 a, uint256 b) public pure returns (uint256);
    function divide(uint256 a, uint256 b) public pure returns (uint256, string memory);
}
```

---

## Functions

| Function | Description | Modifer |
|---|---|---|
| `add(a, b)` | Adds two numbers | `pure` |
| `subtract(a, b)` | Subtracts b from a | `pure` |
| `multiply(a, b)` | Multiplies two numbers | `pure` |
| `divide(a, b)` | Divides a by b, handles division by zero | `pure` |

---

## Key Concepts Covered

**State Variables**
Global variables stored permanently on the blockchain.
```solidity
uint256 public result;
```

**pure vs view**
- `pure` — does not read or modify state, cheapest to call
- `view` — reads state but does not modify it
- no modifier — reads and writes state, costs gas

**Returning Multiple Values**
```solidity
function divide(uint256 a, uint256 b) public pure returns (uint256, string memory) {
    if (b == 0) {
        return (0, "Math Error");
    }
    return (a / b, "");
}
```

**Data Location**
Reference types like `string` require a data location specifier — `memory` or `calldata`.

---

## Getting Started

### Prerequisites
- A browser — no installation needed
- A [Remix IDE](https://remix.ethereum.org) account

### Steps
1. Open [Remix IDE](https://remix.ethereum.org)
2. Create a new file called `Calculator.sol`
3. Copy and paste the contract code
4. Go to the **Solidity Compiler** tab and click **Compile**
5. Go to **Deploy & Run Transactions** and click **Deploy**
6. Interact with the functions in the deployed contract panel

---

## Testing the Contract

Try this sequence after deploying:

```
add(10, 5)       → returns 15
subtract(10, 3)  → returns 7
multiply(4, 5)   → returns 20
divide(10, 2)    → returns (5, "")
divide(10, 0)    → returns (0, "Math Error")
```

---

## Gas Tips

- `pure` and `view` functions are **free** when called externally
- Writing to state variables **costs gas**
- Avoid storing data on-chain unless necessary

---

## License

MIT
