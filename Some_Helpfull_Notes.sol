pragma solidity ^0.8.0;

contract MyContract {
    function myFunction(uint256 param1, string memory param2) public payable returns (bool) {
        // function logic here
        return true;
    }
}

// example usage
MyContract myContract = MyContract(0x1234567890123456789012345678901234567890);
bool success = myContract.myFunction{gas: 1000000, value: 1 ether} (123, "hello");

//--------------------------------------------------------------------------------------------


    function setValuesInFirstContract(uint newValue, address newAddress, string memory newString) public {
        bytes memory payload = abi.encodeWithSignature("setValues(uint256,address,string)", newValue, newAddress, newString);
        (bool success, bytes memory data) = firstContractAddress.call{gas: 50000}(payload);
        require(success, "Failed to call setValues function in FirstContract"); 
    }
    
    
contract gate3{
    uint32 public x;
    uint64 public x64 = uint64(64);
    modifier gateThree(bytes8 _gateKey) {
      require(uint32(uint64(_gateKey)) == uint16(uint64(_gateKey)), "GatekeeperOne: invalid gateThree part one");
      require(uint32(uint64(_gateKey)) != uint64(_gateKey), "GatekeeperOne: invalid gateThree part two");
      require(uint32(uint64(_gateKey)) == uint16(uint160(tx.origin)), "GatekeeperOne: invalid gateThree part three");
    _;
  }

  function check(bytes8 _gateKey) public view gateThree(_gateKey){
      console.log("You pass");
  }
    function generateBytes32() public view returns (bytes32) {
    return keccak256(abi.encodePacked(block.timestamp, block.difficulty, block.coinbase));
    }

    function converterTobytes8(bytes32 data) public view returns(bytes8 z){
        z = bytes8(data);
    }

    function Touint64(bytes8 data) public view returns(uint64){
        return uint64(data);
    }

    function Touint32(uint256 data) public {
        x = uint32(data);
    }
    function convertTouint32(uint64 data) public view returns(uint32){
        return uint32(data);
    }
  function hello() public {
      console.log("Yes i am here!");
  }
}
