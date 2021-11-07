pragma solidity ^0.4.17;

contract UserInformation {
    string public name;
    uint public presentYear = 2021;
    uint public age;
    string public occupation;
    
    struct Friend {
        string name;
        uint age;
        string occupation;
    }
    
    Friend[] public friends;
    
    function personalInformation(string _name, uint _birthYear, string _occupation) public {
        name = _name;
        age = presentYear - _birthYear;
        occupation = _occupation;
        
    }
    
    function friendList(string _name, uint _birthYear, string _occupation) public {
        uint newAge = presentYear - _birthYear;
        friends.push(Friend(_name, newAge, _occupation));
    }
    
}