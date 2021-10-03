package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1956:String;
      
      private var var_783:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1956 = param1;
         var_783 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1956;
      }
      
      public function get parameter() : String
      {
         return var_783;
      }
   }
}
