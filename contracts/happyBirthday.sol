contract happyBirthday {
    event GuestArrived(address guest);
    event GuestSigned(address guest, string name);

    uint gift = 1 ether;
    address[] public giftPaid;
    mapping (address=>string) public guestList;

    modifier newGuestOnly(){
        for (uint i; i < giftPaid.length; i++){
            if (msg.sender==giftPaid[i])
                throw;
        }
        _
    }

    function () newGuestOnly() {
        if(!msg.sender.send(gift))
            throw;
        giftPaid.push(msg.sender);
        GuestArrived(msg.sender);
    }

    function signGuestList(string _guestName) newGuestOnly() {
        guestList[msg.sender]=_guestName;
        if(!msg.sender.send(gift))
            throw;
        giftPaid.push(msg.sender);
        GuestSigned(msg.sender,_guestName);
    }

    function fund(){

    }

}
