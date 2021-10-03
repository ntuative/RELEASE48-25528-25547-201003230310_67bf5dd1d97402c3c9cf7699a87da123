package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2089:int;
      
      private var var_1173:String;
      
      private var var_2092:int;
      
      private var var_2090:int;
      
      private var var_2091:int;
      
      private var var_2093:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1173;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2093;
      }
      
      public function get responseType() : int
      {
         return var_2090;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2092;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1173 = param1.readString();
         var_2092 = param1.readInteger();
         var_2089 = param1.readInteger();
         var_2091 = param1.readInteger();
         var_2090 = param1.readInteger();
         var_2093 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2089;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2091;
      }
   }
}
