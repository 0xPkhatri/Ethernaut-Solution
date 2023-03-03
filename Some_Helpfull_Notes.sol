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

//------------------------------------------------------------------------------------------
// GeteKeeper_Two Notes


contract For_GateKeeperTwo{
    function check()public view returns(uint64){
        return type(uint64).max;
    }

    function maxBytes8()public view returns(bytes8){
        return bytes8(type(uint64).max);
    }

    function uint64Tobytes8(uint64 _value) public view returns(bytes8){
        return bytes8(_value);
    }

    function hashCreater() public view returns(uint64 z) {
        z = uint64(bytes8(keccak256(abi.encodePacked(msg.sender))));
    }

    function xorPerform(uint64 _first, uint64 _second) public view returns(uint64 z){
        z = _first ^ _second;
    }

    function uint64Tobytes(uint64 _v) public view returns(bytes8 z){
        z = bytes8(_v);
    }

    function gate3Check(bytes8 _gateKey) public view returns(bool){
        require(uint64(bytes8(keccak256(abi.encodePacked(msg.sender)))) ^ uint64(_gateKey) == type(uint64).max);
        return true;

    } 

}

contract testing{
    uint64  public a;
    uint64 public b;
    uint64 public c;
    function see(bytes8 _gateKey) public view{
        require(uint64(bytes8(keccak256(abi.encodePacked(msg.sender)))) ^ uint64(_gateKey) == type(uint64).max);
        console.log("Pass");
    }

    function generate() public {
        a = uint64(bytes8(keccak256(abi.encodePacked(msg.sender))));
        b = type(uint64).max;
        c = a ^ b;
        console.log(uint64(bytes8(keccak256(abi.encodePacked(msg.sender)))));
        console.log(type(uint64).max);
    }

    function xorPerform() public view returns(uint64 z){
        z = a ^ b;
    }
    function Three() public view returns(uint64 z){
        z = uint64(bytes8(keccak256(abi.encodePacked(msg.sender)))) ^ type(uint64).max;
    }

    function Four() public view returns(bytes8 z){
        z = bytes8(uint64(bytes8(keccak256(abi.encodePacked(msg.sender)))) ^ type(uint64).max);
    }
}

contract Solution_2{
    GatekeeperTwo gate;
    bytes8 public _gateKey;
    constructor(address _cA){
        gate = GatekeeperTwo(_cA);
        _gateKey = bytes8(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ type(uint64).max);
        // console.log(uint64(_gateKey));
        gate.enter(_gateKey);
        // console.log(uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^ uint64(_gateKey) == type(uint64).max);
    }
}

contract checking1{
    address public x;
    constructor(){
        x  = address(this);
    }
}


// Bytes32 to string and string to bytes32 converter contract

contract bytes32String{

    function stringToBytes32(string memory _x) external pure returns(bytes32) {
        return bytes32(bytes(_x));
    }

    function bytes32ToString(bytes32 _bytes32) public pure returns (string memory) {
        bytes memory bytesArray = new bytes(32);
        for (uint256 i = 0; i < 32; i++) {
            bytesArray[i] = _bytes32[i];
        }
        return string(bytesArray);
    }
}

// How is the address of an Ethereum contract computed?
contract checks{
  function get_address(address sender) external pure returns(address){
  // nonce0= address(uint160(uint256(keccak256(abi.encodePacked(bytes1(0xd6), bytes1(0x94), sender, bytes1(0x80))))));
    address nonce1= address(uint160(uint256(keccak256(abi.encodePacked(bytes1(0xd6), bytes1(0x94), sender, bytes1(0x02))))));
    return nonce1;
}
}
