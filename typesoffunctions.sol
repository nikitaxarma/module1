// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {

    constructor() ERC20("MyToken", "MTK") Ownable() {}

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
