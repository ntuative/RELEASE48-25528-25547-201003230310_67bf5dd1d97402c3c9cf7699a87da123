package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_970:Boolean;
      
      private var var_1354:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_970 = param1.readInteger() > 0;
         var_1354 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_970;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1354;
      }
      
      public function flush() : Boolean
      {
         var_970 = false;
         var_1354 = false;
         return true;
      }
   }
}
