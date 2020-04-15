pragma solidity ^0.5.0;
/*
Every time a function is called, it executes a transaction on EVM
Transaction and business logic is executed through Functions
Function visibility Qualifier:
    Public: Everyone can access from everywhere, i.e., internally and externally (even outside of the contract)
    Internal: Within the contract and in the child contract (THis will not be visible / accessible from outside)
    Private: Only with in the contract
    External: Only accessible from outside (will be visible outside), not within the contract

Visibility needs to be identified at the time of specificing a function

*/

contract First{
    
    int private age = 45;
    
    function setAge(int a) public{
        age = a;
    }
    function hello() public returns (int){
        return 45;
    }
    
    function getName() private returns(string memory){
        return 'Hello World';
    }
    
    function getAge() public view returns (int){
        return age;
    }
    
    function getCount() external returns(string memory){
        getAge();
        return 'Adnan';
        
    }
        
    }
