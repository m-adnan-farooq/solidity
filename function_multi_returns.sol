pragma solidity ^0.6.0;

contract First{

int age = 31;
    //Returning multiple values
    function getAge() public view returns (int,string memory){
        // need to create tuple to return multiple values
        return (age, 'Adnan');
    }
    
    // Here two variables are created inside the function age and _age, as age is not defined (value not defined) in the function, therefore, 0 will be shown
    function getAge1() public view returns (int age,int _age){
        _age = 31;
    }
}