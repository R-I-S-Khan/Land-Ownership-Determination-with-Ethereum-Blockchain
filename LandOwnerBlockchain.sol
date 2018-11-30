//Redwan Khan
pragma solidity ^0.4.25;

contract LandOwner {

     string public LandName = "250 Comstock Avenue";
     string public Owner = "Annie";
     uint private Social_Security;
     uint public askingPrice;
     bool public  eligible_for_sale;
     uint constant minimumsellingprice = 1000;
     
     //A public function that sets the property ownership to a particular person with a social security.
     function setName(string Lname, string ownerName, uint ss) public {
        LandName = Lname;
        Owner = ownerName;
        Social_Security = ss;
    }
     
    //A public function that sets the asking price of property.
    function setAskingPrice(uint askPrice) public {
       askingPrice  = askPrice;
    }

    //A public function that determines if the property can be sold. 
    function determineifLandCanBeSold() public {
        if (askingPrice >= minimumsellingprice ) eligible_for_sale = true;
        else eligible_for_sale = false;

    }
    
    //A public function that changes the ownership of property whenever all other conditions meet.
    function changeOwner(string name,uint ss) public{
        if(eligible_for_sale){
            Owner = name;
            Social_Security = ss;
        }
    }

}
