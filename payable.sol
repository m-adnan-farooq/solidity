pragma solidity ^0.6.0;

//payable qualifier is used when we need to accept ether in our functions. No logic needed. The said ethers are received in the contract.
// The value passed on will be viewable through msg.value and the value received will be in the lowest denomination i.e., wei. where 1ether = 10^8 wei

contract First{

    //contract can be run on remix and payment can be received by the below function on remix (use value box) and then press receivePayment() button
    // contract is provided with ether from an EOA (Externally Originated Account)

    function receivePayment() public payable{
        
    }

    //address is a data type, where address(this) refers to the address of the current contract, '.balance' property is used to check the balance at the given address

    function checkBalance() public view returns(uint){
        
        return address(this).balance;
        
    }
}