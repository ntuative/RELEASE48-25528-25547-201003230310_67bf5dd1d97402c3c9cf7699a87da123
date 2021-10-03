package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2259:Boolean;
      
      protected var var_1560:Number;
      
      protected var var_2260:Boolean;
      
      protected var _type:int;
      
      protected var var_2261:Boolean;
      
      protected var var_1751:int;
      
      protected var var_2262:Boolean;
      
      protected var var_1385:String;
      
      protected var var_2134:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1428:String;
      
      protected var var_2135:Boolean;
      
      protected var _category:int;
      
      protected var var_2136:int;
      
      protected var var_2263:int;
      
      protected var var_2132:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_2135 = param5;
         var_2262 = param6;
         var_2259 = param7;
         var_2260 = param8;
         var_1385 = param9;
         var_1560 = param10;
         var_2263 = param11;
         var_2132 = param12;
         var_2136 = param13;
         var_2134 = param14;
         var_1428 = param15;
         var_1751 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2261;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1560;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2261 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_1751;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2260;
      }
      
      public function get slotId() : String
      {
         return var_1428;
      }
      
      public function get expires() : int
      {
         return var_2263;
      }
      
      public function get creationYear() : int
      {
         return var_2134;
      }
      
      public function get creationDay() : int
      {
         return var_2132;
      }
      
      public function get stuffData() : String
      {
         return var_1385;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2262;
      }
      
      public function get groupable() : Boolean
      {
         return var_2135;
      }
      
      public function get creationMonth() : int
      {
         return var_2136;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2259;
      }
   }
}
