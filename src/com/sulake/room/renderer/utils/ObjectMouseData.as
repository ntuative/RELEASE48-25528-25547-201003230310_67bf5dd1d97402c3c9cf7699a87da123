package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1724:String = "";
      
      private var var_147:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1724 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_147 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1724;
      }
      
      public function get objectId() : String
      {
         return var_147;
      }
   }
}
