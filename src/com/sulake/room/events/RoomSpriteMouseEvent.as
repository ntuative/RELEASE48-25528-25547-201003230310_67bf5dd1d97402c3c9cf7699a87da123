package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1887:Boolean = false;
      
      private var var_1884:Boolean = false;
      
      private var var_1724:String = "";
      
      private var _type:String = "";
      
      private var var_1885:Boolean = false;
      
      private var var_2033:Number = 0;
      
      private var var_2180:Number = 0;
      
      private var var_2181:Number = 0;
      
      private var var_2182:String = "";
      
      private var var_2036:Number = 0;
      
      private var var_1886:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2182 = param2;
         var_1724 = param3;
         var_2180 = param4;
         var_2181 = param5;
         var_2033 = param6;
         var_2036 = param7;
         var_1886 = param8;
         var_1884 = param9;
         var_1885 = param10;
         var_1887 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1886;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1887;
      }
      
      public function get localX() : Number
      {
         return var_2033;
      }
      
      public function get localY() : Number
      {
         return var_2036;
      }
      
      public function get canvasId() : String
      {
         return var_2182;
      }
      
      public function get altKey() : Boolean
      {
         return var_1884;
      }
      
      public function get spriteTag() : String
      {
         return var_1724;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2180;
      }
      
      public function get screenY() : Number
      {
         return var_2181;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1885;
      }
   }
}
