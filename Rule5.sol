pragma solidity^0.6.0;

//Rule 5 - Assignment - Copy Behaviour
contract First{
    
    int public var1 = 10; 
    int public var2 = 20;
    
    function assignment1() public returns (int){
//Assignment of value type from state to state creates a copy
        var1 = var2;   // both 20 now
        var2 = 30;      // only var2 value will be updated to 30
        return var1;    // 20
    }
    
    int[2] var3 = [int(1),2];
    int[2] var4 = [int(3),4];

// Assignment of reference type from state to state creates a copy
    function assignment2() public returns (int){
        var3 = var4;
        var4[1] = 15;
        return var3[1]; //4
    }
}

