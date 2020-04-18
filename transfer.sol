pragma solidity ^ 0.6.0;

contract First{
    
    // address payable is used to transfer / send funds to a specific address
    
    address payable myAddress = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
    
    // The function needs to be payable to transfer/send funds
    function sendFunds() public payable {
        myAddress.transfer(msg.value);  // Will transfer funds as stated in the msg value
    }
    // Transfer returns an error (exception) in case the an error the transaction will  be reverted to the initial state
    
    function sendFunds1() public payable{
        myAddress.transfer(1 ether); // the value entered will be transmitted
    }
}