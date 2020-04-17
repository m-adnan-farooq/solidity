pragma solidity^0.6.0;

//Rule 6 - Assignment - Copy Behaviour
contract First{

    int var1 = 20;

//Assignment to storage variable from memory variable always creates a copy for both value type and reference type variables
    function assignment1() public returns(int){
        int var2 = 50;
        var1 = var2;
        var2 = 80;
        return var1;
    }
    
    uint8[2] var3 = [uint8(50),90];
    
    function assignment2() public returns(uint8){
        
        uint8[2] memory var4 = [uint8(90),120];
        var3 = var4;
        var4 = [50,10];
        return var3[1];
    }
}