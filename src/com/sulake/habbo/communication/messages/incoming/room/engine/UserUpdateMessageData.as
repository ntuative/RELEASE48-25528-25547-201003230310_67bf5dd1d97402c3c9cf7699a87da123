package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_82:Number = 0;
      
      private var var_212:int = 0;
      
      private var var_1890:int = 0;
      
      private var var_1894:Number = 0;
      
      private var var_1893:Number = 0;
      
      private var var_1889:Number = 0;
      
      private var var_1892:Number = 0;
      
      private var var_1891:Boolean = false;
      
      private var var_81:Number = 0;
      
      private var _id:int = 0;
      
      private var var_185:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_185 = [];
         super();
         _id = param1;
         var_81 = param2;
         _y = param3;
         var_82 = param4;
         var_1892 = param5;
         var_212 = param6;
         var_1890 = param7;
         var_1894 = param8;
         var_1893 = param9;
         var_1889 = param10;
         var_1891 = param11;
         var_185 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_82;
      }
      
      public function get dir() : int
      {
         return var_212;
      }
      
      public function get localZ() : Number
      {
         return var_1892;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1891;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1890;
      }
      
      public function get targetX() : Number
      {
         return var_1894;
      }
      
      public function get targetY() : Number
      {
         return var_1893;
      }
      
      public function get targetZ() : Number
      {
         return var_1889;
      }
      
      public function get x() : Number
      {
         return var_81;
      }
      
      public function get actions() : Array
      {
         return var_185.slice();
      }
   }
}
