package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1752:int;
      
      private var var_969:int;
      
      private var var_1753:int;
      
      private var var_1433:int;
      
      private var var_115:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1433 = param1.readInteger();
         var_1753 = param1.readInteger();
         var_969 = param1.readInteger();
         var_1752 = param1.readInteger();
         var_115 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1433);
      }
      
      public function get chatRecordId() : int
      {
         return var_1752;
      }
      
      public function get reportedUserId() : int
      {
         return var_969;
      }
      
      public function get callerUserId() : int
      {
         return var_1753;
      }
      
      public function get callId() : int
      {
         return var_1433;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_115;
      }
   }
}
