// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./ERC20Impl.sol";

contract customERC20 is ERC20 {

    constructor() ERC20("Bladi","BBP"){}

    function createToken() public {
        _mint(msg.sender, 1000);
    }
}