//remix ide
pragma solidity ^0.4.24;

//Contract name
contract MessageStore {
    address private owner;
    string private message;

    constructor() public {
        owner = msg.sender;
    }

    //payable make necesary payment
    function setMessage(string newMessage) public payable {
        //obligatory 3 ether on every setMessage
        require(msg.value == 3 ether);
        message = newMessage;
    }

    function getMessage() public view returns (string) {
        return message;
    }

    modifier isOwner() {
        require(owner == msg.sender);
        //mecanismo de placeholder
        _;
    }
}
