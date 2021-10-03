package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_263:uint = 1;
      
      public static const const_440:uint = 0;
      
      public static const const_843:uint = 8;
      
      public static const const_243:uint = 4;
      
      public static const const_448:uint = 2;
       
      
      private var var_438:uint;
      
      private var var_1717:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1718:uint;
      
      private var var_94:Rectangle;
      
      private var var_630:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_94 = param3;
         _color = param4;
         var_438 = param5;
         var_1717 = param6;
         var_1718 = param7;
         var_630 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1717;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_438;
      }
      
      public function get scaleV() : uint
      {
         return var_1718;
      }
      
      public function get tags() : Array
      {
         return var_630;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_94 = null;
         var_630 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_94;
      }
   }
}
