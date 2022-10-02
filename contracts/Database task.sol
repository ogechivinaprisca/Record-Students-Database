
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract StudentRecord {
    struct Student {
        int ID;
        uint age;
        string fName;
        string lName;
    }
    // To grant access to the administrator
 address owner;
    int public stdCount = 0;
    mapping(int => Student) public stdRecords;
  
    modifier onlyOwner
    {
        require(owner == msg.sender);
        _;
    }
    constructor()
    {
        owner=msg.sender;
    }
    // Function to register a student
    function RegisterStudent (int memory _ID, 
                            uint memory _age,
                           string memory _fName,
                           string memory _lName) public onlyOwner
    Record memory student;
    student.id = currentId_;
      student.age = age_;
      student.fName = fName
      student.lName = lName;
    

 StudentRecord[currentId]=student;

   currentId++;

}
