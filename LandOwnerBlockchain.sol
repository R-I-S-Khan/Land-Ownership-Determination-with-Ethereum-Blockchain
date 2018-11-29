//Redwan Khan
pragma solidity ^0.4.25;

contract LandOwner {

     string public LandName = "250 Comstock Avenue";
     string public Owner = "Annie";
     uint private Social_Security;
     uint public askingPrice;
     bool public  eligible_for_sale;
     uint constant minimumsellingprice = 1000;

     function setName(string Lname, string ownerName, uint ss) public {
        LandName = Lname;
        Owner = ownerName;
        Social_Security = ss;
    }

    function setAskingPrice(uint askPrice) public {
       askingPrice  = askPrice;
    }

    function determineifLandCanBeSold() public {
        if (askingPrice >= minimumsellingprice ) eligible_for_sale = true;
        else eligible_for_sale = false;

    }
    function changeOwner(string name,uint ss) public{
        if(eligible_for_sale){
            Owner = name;
            Social_Security = ss;
        }
    }

}
