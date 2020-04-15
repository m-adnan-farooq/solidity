pragma solidity ^0.6.0;

contract EnumTest{
    enum Status {
        APPLIED,
        REJECTED,
        APPROVED
    }
    
    Status myStatus = Status.APPROVED;
    function setStatus() public pure {
        Status a = Status.APPLIED;
        Status b = Status.REJECTED;
    }
    
    function getStatus1() public pure returns(int){
        Status abc = Status.APPLIED;
        return int(abc);
    }
    
    function getStatus2() public pure returns(int){
        Status abc = Status.REJECTED;
        return int(abc);
    }
    
    function getStatus3() public view returns(int){
        return int(myStatus);
    }
}