# MyToken Smart Contract
## Overview
The MyToken smart contract is an ERC-20 token implementation built on the Ethereum blockchain using Solidity. This token is compliant with the ERC-20 standard and incorporates additional functionalities such as minting, burning, and custom logic in the transfer function. The contract leverages OpenZeppelin's libraries for secure and reliable implementation.
## Features
* **ERC-20 Standard Compliance:** Implements standard ERC-20 functions.
* **Ownership:** The contract uses the Ownable contract from OpenZeppelin to restrict certain functionalities to the contract owner.
*  **Minting:** Allows the owner to mint new tokens.
*  **Burning:** Users can burn their own tokens.
* **Custom Transfer Logic:** Overrides the standard transfer function to add custom logic if needed.

# Usage
## Minting Tokens
Only the owner can mint new tokens.
```
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}
```
## Burning Tokens
Users can burn their own tokens to reduce the total supply.
```
function burn(uint256 amount) public {
    _burn(msg.sender, amount);
}
```
## Transferring Tokens
The transfer function has been overridden to include custom logic. By default, it behaves like the standard ERC-20 transfer.
```
function transfer(address recipient, uint256 amount) public override returns (bool) {
    // Add any custom logic here

    // Call the parent contract's transfer function
    return super.transfer(recipient, amount);
}
```
## Contract Code
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {

    constructor() ERC20("MyToken", "MTK") Ownable(msg.sender) {}

    // Function to mint tokens
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function for users to burn their own tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Override the transfer function to add custom logic
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        // Add any custom logic here

        // Call the parent contract's transfer function
        return super.transfer(recipient, amount);
    }
}
```
## License
This project is licensed under the MIT License. See the LICENSE file for details.
