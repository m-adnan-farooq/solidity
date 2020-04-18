pragma solidity^0.6.0;

contract BasicMapping{
 //Mapping is a key value pair similar to hash table and dictionary in python.  
 //Enum and Struct can be used as values but not as key.
 
    mapping (uint => string) names;
    
    function update() public returns(string memory){
        names[1] = "John";
        names[2] = "Mike";
        return names[2];
    }
    
// function to get values from the user both key and value
    function updatevalues(uint a, string memory b) public {
        names[a] = b;
    }
    
    function getvalue(uint a) public view returns(string memory){
        return names[a];
    }
}

contract MyMapping{
    enum gender {male,female}
    struct Student{
        string name;
        gender MyGender;
    }
    
    mapping (uint =>Student) Students;
    function addStudent() public{
        uint rollNo = 1001;
        Student memory newStudent = Student("Adnan",gender.male);
        Students[rollNo] = newStudent;
    }
    function getStudent(uint rollNo) public view returns(string memory){
        return Students[rollNo].name;
    }
}



contract NestedMapping{
    mapping (string => mapping(int=>string)) stuCourses;

    function addCourse(string memory rollNo, int counter, string memory course) public{
        stuCourses[rollNo][counter] = course;
}

    function findCourse(string memory rollNo,int counter) public view returns (string memory){
        return stuCourses[rollNo][counter];
    }
}