contract happyBirthday {
    event GuestArrived(address guest);
    event GuestSigned(address guest, string name);

    uint constant gift = 1 ether;
    mapping (address=>Guest) public guestList;

    struct Guest {
        string name;
        bool giftPaid;
    }

    modifier newGuestOnly(){
        if (guestList[msg.sender].giftPaid)
            throw;
        _
    }

    function () newGuestOnly() {
        if(!msg.sender.send(gift))
            throw;
        guestList[msg.sender].giftPaid=true;
        GuestArrived(msg.sender);
    }

    function signGuestList(string _guestName) newGuestOnly() {
        guestList[msg.sender].name=_guestName;
        guestList[msg.sender].giftPaid=true;
        if(!msg.sender.send(gift))
            throw;
        GuestSigned(msg.sender,_guestName);
    }

    function fund(){

    }
}
