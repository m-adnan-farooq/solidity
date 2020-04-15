pragma solidity ^0.6.0;

//enum is used to create a user defined data type
//enum is defined at contract level, cannot be defined inside of a function
//pre-determined list of constant values which can be explicity converted into integers
//makes processing easy and takes up less data/cost
contract First{
    
    enum Gender{
        male,       // This represents 0
        female      // This represents 1
    }
    
    function getValues() public pure returns(Gender){
        return Gender.female;
    }
    
    function sendGenderValue() public pure{
        doSomeWork(Gender(0));
    }
    function doSomeWork(Gender g) public pure returns (Gender){
        Gender studentGender = g;
        return studentGender;
    }
}