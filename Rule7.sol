pragma solidity^0.6.0;

//Rule 7 - Assignment - Copy Behaviour
contract First{

    int var1 = 20;

//Assignment to memory variable from state variable always creates a copy for both value type and reference type variables    
    function assignment1() public returns(int){
        int var2 = 50;
        var2 = var1;
        var1 = 80;
        return var2;  //20
    }
    
    uint8[2] var3 = [uint8(50),90];
    
    function assignment2() public returns(uint8){
        
        uint8[2] memory var4 = [uint8(90),120];
        var4 = var3;
        var3 = [50,10];
        return var4[1];   //90
    }
}