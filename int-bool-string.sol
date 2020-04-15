pragma solidity ^0.6.0;
//Solidity is a statically typed language which means that you have to define data type at the time of declaring a variable
//unit8 = unsigned data integer type that can store value from 0 to 255
//int8 = signed integer data type than can store value from -128 to 127

contract data{
    int age = 40;               //By default int refers to int256.
    string name = "Adnan";      //uint is used for unsigned integer. BY default uint refers to uint256
    bool isFeesPaid = true;
    uint count = 34;

//int8, int64, uint8, uint64 etc should be carefully used as this accounts for the space occupied by the variable on the blockchain/EVM network which in turn has a cost in terms of gas.

//It is important to define the type of data the function will return after returns keyword while declaring fucntion in solidity   

    function doSomeWork() public returns (int, string memory){
//While changing the values of defined variables, solidity will not allow change in data type automatically.
        age = 50;
        name = "Farooq";
        return (age,name);

    }
}