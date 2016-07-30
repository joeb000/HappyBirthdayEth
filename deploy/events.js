
var guestArrival = happybirthday.GuestArrived();
guestArrival.watch(function(error, result){
   if (!error){
     console.log("*******************************************************");
     console.log("Guest (" + result.args.guest + ") has been paid! ");
     console.log("*******************************************************");
   }
   else {
     console.log("oops something went wrong...")
   }
});

var guestArrival = happybirthday.GuestSigned();
guestArrival.watch(function(error, result){
   if (!error){
     console.log("*******************************************************");
     console.log(result.args.name + " (" + result.args.guest + ") has been paid! ");
     console.log("*******************************************************");
   }
   else {
     console.log("oops something went wrong...")
   }
});
