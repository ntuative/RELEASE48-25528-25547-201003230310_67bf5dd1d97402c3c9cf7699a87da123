package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1349:String = "F";
      
      public static const const_972:String = "M";
       
      
      private var var_81:Number = 0;
      
      private var var_380:String = "";
      
      private var var_2069:int = 0;
      
      private var var_2065:String = "";
      
      private var var_2066:int = 0;
      
      private var var_1669:int = 0;
      
      private var var_2067:String = "";
      
      private var var_1174:String = "";
      
      private var _id:int = 0;
      
      private var var_199:Boolean = false;
      
      private var var_212:int = 0;
      
      private var var_2068:String = "";
      
      private var _name:String = "";
      
      private var var_1663:int = 0;
      
      private var _y:Number = 0;
      
      private var var_82:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_82;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_212;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_199)
         {
            var_212 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_199)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2069;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_199)
         {
            var_2066 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2068;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_199)
         {
            var_2067 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_199)
         {
            var_2068 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_199)
         {
            var_1669 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_199)
         {
            var_380 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_199)
         {
            var_2069 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_199)
         {
            var_1174 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_2066;
      }
      
      public function get groupID() : String
      {
         return var_2067;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_199)
         {
            var_1663 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_199)
         {
            var_2065 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_199 = true;
      }
      
      public function get sex() : String
      {
         return var_1174;
      }
      
      public function get figure() : String
      {
         return var_380;
      }
      
      public function get webID() : int
      {
         return var_1663;
      }
      
      public function get custom() : String
      {
         return var_2065;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_199)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_199)
         {
            var_82 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_199)
         {
            var_81 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_81;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1669;
      }
   }
}
