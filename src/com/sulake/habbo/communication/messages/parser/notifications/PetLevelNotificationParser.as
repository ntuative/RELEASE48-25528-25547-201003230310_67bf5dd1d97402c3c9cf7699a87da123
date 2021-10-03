package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_380:String;
      
      private var var_1617:int;
      
      private var var_1959:String;
      
      private var var_959:int;
      
      private var var_1205:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1205;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1205 = param1.readInteger();
         var_1959 = param1.readString();
         var_1617 = param1.readInteger();
         var_380 = param1.readString();
         var_959 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1959;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_380;
      }
      
      public function get petType() : int
      {
         return var_959;
      }
      
      public function get level() : int
      {
         return var_1617;
      }
   }
}
