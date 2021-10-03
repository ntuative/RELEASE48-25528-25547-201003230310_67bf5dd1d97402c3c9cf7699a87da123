package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1932:Number = 1;
      
      private var var_184:Number = 1;
      
      private var var_1735:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1735 = param1;
         var_184 = param2;
         var_1932 = param3;
      }
      
      public function get scale() : Number
      {
         return var_184;
      }
      
      public function get heightScale() : Number
      {
         return var_1932;
      }
   }
}
