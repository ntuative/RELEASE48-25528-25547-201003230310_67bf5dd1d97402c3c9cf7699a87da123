package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1615:String;
      
      private var var_380:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_380 = param1;
         var_1615 = param2;
      }
      
      public function get race() : String
      {
         return var_1615;
      }
      
      public function get figure() : String
      {
         return var_380;
      }
   }
}
