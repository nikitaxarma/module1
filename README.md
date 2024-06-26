

#MyToken
#Overview
MyToken is an ERC20 token with minting and burning capabilities.

#Features
Minting: Only the owner can mint new tokens.
Burning: Users can burn their own tokens.
Transfer: Standard ERC20 transfer functionality.

#Functions
mint(address to, uint256 amount) - Mints tokens to an address (owner only).
burn(uint256 amount) - Burns tokens from the caller's balance.
transfer(address recipient, uint256 amount) - Transfers tokens to a recipient.
