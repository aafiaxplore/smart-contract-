# Simple Counter Smart Contract

[![Solidity](https://img.shields.io/badge/Solidity-0.8.0+-blue.svg)](https://docs.soliditylang.org/)  
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A **beginner-friendly Solidity smart contract** that allows users to **increment**, **decrement**, and **reset** a counter. Perfect for learning Solidity basics like **state variables**, **function visibility**, and **modifiers**.

 address:0xC06248703374B4956402b6f1e92D668537B8E8B7

---

## Features

- Increment the counter by 1  
- Decrement the counter by 1 (cannot go below 0)  
- Reset the counter (owner only)  
- View the current counter value  

---

## Contract Details

**Contract Name:** `Counter`  
**Language:** Solidity ^0.8.0  

### Functions

| Function      | Description                                           | Access       |
|---------------|-------------------------------------------------------|--------------|
| `increment()` | Increases the counter by 1                            | Public       |
| `decrement()` | Decreases the counter by 1 (cannot go below 0)       | Public       |
| `reset()`     | Resets the counter to 0                               | Owner only   |
| `getCount()`  | Returns the current counter value                     | Public       |

**State Variables:**

- `count` – stores the current counter value  
- `owner` – stores the address of the contract deployer  

---

## Usage

1. Open [Remix IDE](https://remix.ethereum.org/).  
2. Create a new file `Counter.sol` and paste the contract code.  
3. Compile with Solidity `^0.8.0`.  
4. Deploy the contract to a **testnet** (e.g., Sepolia, Goerli) or **JavaScript VM**.  
5. Interact with the functions:
    - Call `increment()` to increase the counter.  
    - Call `decrement()` to decrease the counter.  
    - Call `reset()` to reset the counter (only deployer can call).  
    - Call `getCount()` or read the public `count` variable to see the current value.  

**Example Solidity Code Snippet:**

```solidity
Counter counter = new Counter();
counter.increment();
uint256 current = counter.getCount();
