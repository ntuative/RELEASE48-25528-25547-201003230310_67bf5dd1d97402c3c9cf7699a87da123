package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_438:int = 0;
      
      public static const const_127:int = 2;
      
      public static const const_167:int = 1;
      
      public static const const_558:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1679:Boolean;
      
      private var var_1678:Boolean;
      
      private var var_2227:int;
      
      private var var_1676:Array;
      
      private var var_2226:int;
      
      private var var_1680:Boolean;
      
      private var var_1295:String;
      
      private var var_1677:int;
      
      private var var_1675:int;
      
      private var var_1243:int;
      
      private var _roomId:int;
      
      private var var_630:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1677;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1677 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_630;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1680;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2226 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1676 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_630 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1679;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1678;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2227;
      }
      
      public function get categoryId() : int
      {
         return var_1243;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1680 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2226;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1676;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1675 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1679 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1678 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2227 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1675;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1243 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1295 = param1;
      }
      
      public function get description() : String
      {
         return var_1295;
      }
   }
}
