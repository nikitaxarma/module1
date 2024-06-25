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

    // Transfer function is already part of the ERC20 standard
}
//0x583031D1113aD414F02576BD6afaBfb302140225
