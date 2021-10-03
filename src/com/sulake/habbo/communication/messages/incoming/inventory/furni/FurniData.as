package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1385:String;
      
      private var var_1062:String;
      
      private var var_1966:Boolean;
      
      private var var_1560:int;
      
      private var var_1730:int;
      
      private var var_1963:Boolean;
      
      private var var_1428:String = "";
      
      private var var_1965:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1339:int;
      
      private var var_1962:Boolean;
      
      private var var_1751:int = -1;
      
      private var var_1964:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1730 = param1;
         var_1062 = param2;
         _objId = param3;
         var_1339 = param4;
         _category = param5;
         var_1385 = param6;
         var_1966 = param7;
         var_1965 = param8;
         var_1962 = param9;
         var_1963 = param10;
         var_1964 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1428;
      }
      
      public function get extra() : int
      {
         return var_1560;
      }
      
      public function get classId() : int
      {
         return var_1339;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1963;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1966;
      }
      
      public function get stripId() : int
      {
         return var_1730;
      }
      
      public function get stuffData() : String
      {
         return var_1385;
      }
      
      public function get songId() : int
      {
         return var_1751;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1428 = param1;
         var_1560 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1062;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1964;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1962;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1965;
      }
   }
}
