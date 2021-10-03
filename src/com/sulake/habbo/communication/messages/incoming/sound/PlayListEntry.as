package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1751:int;
      
      private var var_1750:int = 0;
      
      private var var_1749:String;
      
      private var var_1748:int;
      
      private var var_1747:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1751 = param1;
         var_1748 = param2;
         var_1747 = param3;
         var_1749 = param4;
      }
      
      public function get length() : int
      {
         return var_1748;
      }
      
      public function get name() : String
      {
         return var_1747;
      }
      
      public function get creator() : String
      {
         return var_1749;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1750;
      }
      
      public function get id() : int
      {
         return var_1751;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1750 = param1;
      }
   }
}
