//remix ide
pragma solidity ^0.4.24;

import "./Ownable.sol";


//Contract name
contract MessageStore is Ownable {
    
    string private message;
    
    //payable make necesary payment
    function setMessage(string newMessage) public payable{
        require(msg.value == 3 ether);
        message = newMessage;
    }
    
    function getMessage() public view returns (string) {
        return message;
    }
    
    
    
}