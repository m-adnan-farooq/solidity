pragma solidity^0.6.0;

contract First{
    uint age = 56;

    function doSomeWork() public{
        
    }

// view qualifier cannot modify the state of blockchain (directly/indirectly).
// They can only read the state variables and return back current state to the caller of the function. They can only call functions marked view or pure
    
    function getAge1() public view returns(uint){
        uint a = age*2;
//      doSomeWork()    cannot access the abvoe function as it is not known that the function will change the State or not
        return a;
    }
//Pure qualifier can neither read nor change/ write the state variables
    function getAge2() public pure returns(uint){
//      uint a = age*2; cannot access age as it is a state variable
//      doSomeWork()    cannot access the abvoe function as it is not known that the function will change the State or not
        uint a = 50;
        return a;
    }

}