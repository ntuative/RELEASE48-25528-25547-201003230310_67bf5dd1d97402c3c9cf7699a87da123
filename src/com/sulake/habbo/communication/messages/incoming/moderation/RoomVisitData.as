package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_687:String;
      
      private var var_2080:int;
      
      private var var_1552:Boolean;
      
      private var _roomId:int;
      
      private var var_2081:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1552 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_687 = param1.readString();
         var_2081 = param1.readInteger();
         var_2080 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1552;
      }
      
      public function get roomName() : String
      {
         return var_687;
      }
      
      public function get enterMinute() : int
      {
         return var_2080;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2081;
      }
   }
}
