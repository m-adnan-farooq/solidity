pragma solidity^0.6.0;

contract First{
// payable qualifier is used with address type to make it able to send and receive ethers

address payable myAddress = 0x137577C76046A68F85B9Cd665Acc533fA959e437;

function sendFunds() public payable returns(bool){
    // Ether will be sent from the EOA calling the function
    bool isSent = myAddress.send(2 ether);
    return isSent;
    
    }
}
