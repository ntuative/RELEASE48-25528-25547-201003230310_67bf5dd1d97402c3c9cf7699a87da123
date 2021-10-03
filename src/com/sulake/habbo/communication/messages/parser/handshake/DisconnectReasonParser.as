package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class DisconnectReasonParser implements IMessageParser
   {
       
      
      private var var_980:int;
      
      public function DisconnectReasonParser()
      {
         super();
         var_980 = -1;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_980 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get reason() : int
      {
         return var_980;
      }
   }
}
