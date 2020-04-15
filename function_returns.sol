pragma solidity ^0.6.0;

contract First{
    
    // Here return type is defined however, nothing is returned from inside the function therefore 0 is returned
    function getAge() public view returns (uint){
        
    }
    // This will return false
    function getNoAge() public view returns (bool){
        
    }
    function getAge1() public pure returns (uint){
        return 45;
    }
    // Here data type is not defined at the time of declaring the variable inside the function as data type and variable are already declared in the function inline
    // Furthermore, since the return variable is defined with the function, therefore return is not required to be specified inside the function
    
    function getAge2() public pure returns(uint age){
        age = 25;
    }
}