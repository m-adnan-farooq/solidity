pragma solidity ^0.6.0;

contract Structure{
    
    enum Gender {
        male,
        female
    }
    
    struct Student{
        string name;
        uint age;
        bool isFeesPaid;
        Gender gender;
        
    }
    
    Student stu = Student('Adnan', 31, false, Gender.male);
    
    function manageStruct() public view returns (string memory, bool, string memory, Gender){
        uint a = 25;
        Student memory s1 = Student('Rehan', a,true, Gender.male); //Student mentioned on the left side represents the data type
        Student memory s2 = Student('Ayesha', 34,true, Gender.female);
        s1.isFeesPaid = false;
        return (stu.name, s1.isFeesPaid, s2.name, s2.gender);
        
    }
}

