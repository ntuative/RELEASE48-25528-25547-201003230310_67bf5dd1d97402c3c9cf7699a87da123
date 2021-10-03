package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_108:String = "RSPE_POLL_CONTENT";
      
      public static const const_116:String = "RSPE_POLL_OFFER";
      
      public static const const_59:String = "RSPE_POLL_ERROR";
       
      
      private var var_1070:Array = null;
      
      private var var_1337:String = "";
      
      private var var_1301:String;
      
      private var var_1336:String = "";
      
      private var var_1071:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_1070;
      }
      
      public function get startMessage() : String
      {
         return var_1337;
      }
      
      public function get summary() : String
      {
         return var_1301;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1337 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1071 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1301 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1071;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1336 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1336;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1070 = param1;
      }
   }
}
