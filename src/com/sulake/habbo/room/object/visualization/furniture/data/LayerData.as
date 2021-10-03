package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_413:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_402:int = 0;
      
      public static const const_824:int = 2;
      
      public static const const_1001:int = 1;
      
      public static const const_593:Boolean = false;
      
      public static const const_730:String = "";
      
      public static const const_361:int = 0;
      
      public static const const_426:int = 0;
      
      public static const const_437:int = 0;
       
      
      private var var_2041:int = 0;
      
      private var var_1819:String = "";
      
      private var var_1556:int = 0;
      
      private var var_2040:int = 0;
      
      private var var_2039:Number = 0;
      
      private var var_1816:int = 255;
      
      private var var_2038:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2041;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1556 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2039;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2040 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2041 = param1;
      }
      
      public function get tag() : String
      {
         return var_1819;
      }
      
      public function get alpha() : int
      {
         return var_1816;
      }
      
      public function get ink() : int
      {
         return var_1556;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2039 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2040;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2038 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2038;
      }
      
      public function set tag(param1:String) : void
      {
         var_1819 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1816 = param1;
      }
   }
}
