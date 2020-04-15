pragma solidity ^0.6.0;

/*
1-State variables are the ones that are stored on the blockchain as permanent variables. They are directly declared in a contract and are not within any function 
2-By default if no qualifier is mentioned while declaring a state variable, it is termed as internal.
3-Internal variables are ones which are accessible only from within the contract or in child contract (s)
4-Public state variables can be accessed out of the contract. The Solidity compiler generates a getter function for each public state variable
5-Private variables are only accessible in the contract in which they are declared - not even in chil contract.
6-Default value for Integer state variable is zero
*/
contract First{
    
    int internal age = 31;  
    int public age2 = 35;   
    int private age3 = 37;  
    int public age4;        
    
    //Function to access age. Details of function are in functions code
    function getAge() public view returns (int){
        return age;
    }

    //Modifying age4 therefore we have used payable and the function will return a value therefore returns keyword is used
    function modifyAge4() public payable returns (int){
        age4 = 99;
        age4 = age4 + age2;
        return age4;
    }
    
    // Here we are only updating the value of a State Variable
    function updateage() public {
        age = age + 12;
    }
    // It is important to note that the function will update the value of age as many times the function will be called
}