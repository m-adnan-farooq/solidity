pragma solidity ^0.6.0;

// Just like struct in Rust, it is a composite data type i.e., multiple values of different data types
// Variables are declared, however, not initialized
// Struct cannot contain function
// Struct cannot be passed in function argument nor returns from function
// mapping and arrays can store values of type struct

contract Structure{
    struct Student{
        string name;
        uint age;
        bool isFeesPaid;
    }
    Student stu = Student('Adnan', 31, false);
    //memory refers to temporary storage of data
    function manageStruct() public view returns (string memory, bool, string memory){
        uint a = 25;
        Student memory s1 = Student('Rehan', a,true); //Student mentioned on the left side represents the data type
        Student memory s2 = Student('Waqas', 34,true);
        s1.isFeesPaid = false;
        return (stu.name, s1.isFeesPaid, s2.name);
        
    }
}

