pragma solidity ^0.6.0;

contract First{
    
    //uint age = 55;
    // modifiers are used to place a restriction/authentication/validation mechanism that would be checked before executing a function on which it applies.
    modifier verify(uint a){
        if (a>45){
            _;
        }
    }
    // the input taken by funtion 'a' will be placed in modifier verify(a) for checking of condition before executing the function
    function getValues(uint a) public pure verify(a) returns(uint){
        return 54;
    }
    
    function updateValues(uint a) public pure verify(a) returns(bool){
        return true;
    }
}