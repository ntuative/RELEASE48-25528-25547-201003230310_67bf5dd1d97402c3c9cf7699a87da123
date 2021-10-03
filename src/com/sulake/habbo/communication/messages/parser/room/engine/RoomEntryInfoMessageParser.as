package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2008:int;
      
      private var var_376:Boolean;
      
      private var var_2009:Boolean;
      
      private var var_845:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2009 = param1.readBoolean();
         if(var_2009)
         {
            var_2008 = param1.readInteger();
            var_376 = param1.readBoolean();
         }
         else
         {
            var_845 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_845 != null)
         {
            var_845.dispose();
            var_845 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2008;
      }
      
      public function get owner() : Boolean
      {
         return var_376;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2009;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_845;
      }
   }
}
