// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ERC20 {
    function transferFrom(address sender, address recipient, uint256 amount) external;
}

contract BalajisBet {
    address owner;
    ERC20 constant USDC = ERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);

    constructor (address _owner) {
        owner = _owner;
    }

    function balajiDeposit() public {
        USDC.transferFrom(msg.sender, owner, 1_000_000e6);
    }
}