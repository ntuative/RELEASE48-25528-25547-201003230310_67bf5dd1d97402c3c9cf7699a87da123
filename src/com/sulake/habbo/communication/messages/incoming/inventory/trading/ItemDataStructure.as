package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1062:String;
      
      private var var_1936:int;
      
      private var var_2131:int;
      
      private var var_1560:int;
      
      private var var_2134:int;
      
      private var _category:int;
      
      private var var_2372:int;
      
      private var var_2132:int;
      
      private var var_2137:int;
      
      private var var_2133:int;
      
      private var var_2136:int;
      
      private var var_2135:Boolean;
      
      private var var_1385:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1936 = param1;
         var_1062 = param2;
         var_2131 = param3;
         var_2133 = param4;
         _category = param5;
         var_1385 = param6;
         var_1560 = param7;
         var_2137 = param8;
         var_2132 = param9;
         var_2136 = param10;
         var_2134 = param11;
         var_2135 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2133;
      }
      
      public function get extra() : int
      {
         return var_1560;
      }
      
      public function get stuffData() : String
      {
         return var_1385;
      }
      
      public function get groupable() : Boolean
      {
         return var_2135;
      }
      
      public function get creationMonth() : int
      {
         return var_2136;
      }
      
      public function get roomItemID() : int
      {
         return var_2131;
      }
      
      public function get itemType() : String
      {
         return var_1062;
      }
      
      public function get itemID() : int
      {
         return var_1936;
      }
      
      public function get songID() : int
      {
         return var_1560;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2137;
      }
      
      public function get creationYear() : int
      {
         return var_2134;
      }
      
      public function get creationDay() : int
      {
         return var_2132;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
