//Redwan Khan
pragma solidity ^0.4.0;

contract LandOwner {

     string public LandName = "230 Comstock Avenue";
     string public Owner = "Jack";
     uint public askingPrice;
     bool public  eligible_for_sale;
     uint constant minimumsellingprice = 1000;

     function setName(string Lname, string ownerName) public {
        LandName = Lname;
        Owner = ownerName;
    }

    function setAskingPrice(uint askPrice) public {
       askingPrice  = askPrice;
    }

    function determineifLandCanBeSold() public {
        if (askingPrice >= minimumsellingprice ) eligible_for_sale = true;
        else eligible_for_sale = false;

    }
    function changeOwner(string name) public{
        if(eligible_for_sale)
            Owner = name;
    }

}
