package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1465:int = 2;
      
      public static const const_1315:int = 4;
      
      public static const const_1304:int = 1;
      
      public static const const_1254:int = 3;
       
      
      private var var_980:int = 0;
      
      private var var_783:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_980;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_980 = param1.readInteger();
         if(var_980 == 3)
         {
            var_783 = param1.readString();
         }
         else
         {
            var_783 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_980 = 0;
         var_783 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_783;
      }
   }
}
