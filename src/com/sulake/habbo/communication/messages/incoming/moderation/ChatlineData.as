package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1480:String;
      
      private var var_2244:int;
      
      private var var_2242:int;
      
      private var var_2245:int;
      
      private var var_2243:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2244 = param1.readInteger();
         var_2245 = param1.readInteger();
         var_2242 = param1.readInteger();
         var_2243 = param1.readString();
         var_1480 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1480;
      }
      
      public function get hour() : int
      {
         return var_2244;
      }
      
      public function get minute() : int
      {
         return var_2245;
      }
      
      public function get chatterName() : String
      {
         return var_2243;
      }
      
      public function get chatterId() : int
      {
         return var_2242;
      }
   }
}
