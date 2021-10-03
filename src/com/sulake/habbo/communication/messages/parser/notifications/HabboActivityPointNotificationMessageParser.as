package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboActivityPointNotificationMessageParser implements IMessageParser
   {
       
      
      private var var_1655:int = 0;
      
      private var var_1654:int = 0;
      
      public function HabboActivityPointNotificationMessageParser()
      {
         super();
      }
      
      public function get change() : int
      {
         return var_1654;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1655 = param1.readInteger();
         var_1654 = param1.readInteger();
         return true;
      }
      
      public function get amount() : int
      {
         return var_1655;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
   }
}
