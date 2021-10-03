package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_644:int = 2;
      
      public static const const_992:int = 6;
      
      public static const const_555:int = 1;
      
      public static const const_512:int = 3;
      
      public static const const_912:int = 4;
      
      public static const const_693:int = 5;
       
      
      private var var_2088:String;
      
      private var var_966:int;
      
      private var var_2087:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_966 = param2;
         var_2087 = param3;
         var_2088 = param4;
      }
      
      public function get time() : String
      {
         return var_2088;
      }
      
      public function get senderId() : int
      {
         return var_966;
      }
      
      public function get messageText() : String
      {
         return var_2087;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
