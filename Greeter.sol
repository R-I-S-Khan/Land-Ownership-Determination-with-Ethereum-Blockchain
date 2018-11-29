//Redwan Khan
pragma solidity ^0.4.25;

contract Greeter  {
    string public yourName;  // data

    /* This runs when the contract is executed */
   constructor() public {
        yourName = "World";
    }

    function set(string name)public {
        yourName = name;
    }

    function hello() view public returns (string) {
        return yourName;
    }
}
