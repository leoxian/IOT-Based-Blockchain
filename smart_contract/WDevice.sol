pragma solidity ^0.4.0;
//contarct Device is using to storage all the iot-device number
//i use a array in here.
//we got 5 device here
//0 is the centre device using to grap information and send infromation; 
// and 1,2,3,4 is othrer independent device 
contract Device { 
   uint[] Device = new uint[](5);
   function initial() {
   Device[0] = 0;
   Device[1] = 0;
   Device[2] = 0;
   Device[3] = 0;
   Device[4] = 0;
   }
}
contract WDevice is Device {
     
    // using to set the state to the iot 1 means on , 0 means down
    function Setdevice(uint iot, uint state) returns( string feedback) {
       

         if (Device[iot] == 1) {
            Device[iot] = state;
            feedback = "the device have been turn on";
            
         } else if (Device[iot] == 0) {
           Device[iot] = 0;
           feedback = "the device have been turn off";
        } else {
        feedback = "we got some problem here";}

         return feedback;

    }


    // using to get the stat to the iot 
    function Getdevice(uint iot ) returns (string feedback) {
            if (Device[iot] == 1) {
                feedback = "the state of device is";
            } else {
                 feedback = "the state of device is";
            }
        return feedback;

    }
    

}
// using the iot number to identify which device.
contract EDevice is Device {
    function Graspedevice(uint iot) returns(uint state, string feedback) {
        state = Device[iot];
        feedback = "please adjust the state of device" ;
        
        return (state,feedback);

}


    function Putdevice (uint iot) returns(string feedback) {
        
        feedback="alerady upload the iot device state to ethereum"; 
         
        return (feedback);

    }



}