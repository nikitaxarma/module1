// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {

    constructor() ERC20("MyToken", "MTK") {}

    // Function to mint tokens (only callable by contract owner)
    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }

    // Function to burn tokens
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    // Function to transfer tokens
    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), to, amount);
        return true;
    }
}
