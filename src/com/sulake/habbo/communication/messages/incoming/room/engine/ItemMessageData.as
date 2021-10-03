package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_82:Number = 0;
      
      private var _data:String = "";
      
      private var var_1560:int = 0;
      
      private var var_32:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2032:Boolean = false;
      
      private var var_2371:String = "";
      
      private var _id:int = 0;
      
      private var var_199:Boolean = false;
      
      private var var_212:String = "";
      
      private var var_2035:int = 0;
      
      private var var_2034:int = 0;
      
      private var var_2033:int = 0;
      
      private var var_2036:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2032 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_199)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2032;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_199)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_212;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_199)
         {
            var_2033 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_199)
         {
            var_2035 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_199)
         {
            var_2034 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_199)
         {
            var_212 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_199)
         {
            var_2036 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_199)
         {
            var_32 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_2033;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_199)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2035;
      }
      
      public function get wallY() : Number
      {
         return var_2034;
      }
      
      public function get localY() : Number
      {
         return var_2036;
      }
      
      public function setReadOnly() : void
      {
         var_199 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_82;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_199)
         {
            var_82 = param1;
         }
      }
   }
}
