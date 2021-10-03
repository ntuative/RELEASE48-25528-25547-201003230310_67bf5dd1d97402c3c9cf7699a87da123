package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2016:String;
      
      private var var_1230:String;
      
      private var var_2015:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2015 = param1;
         var_1230 = param2;
         var_2016 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2015,var_1230,var_2016];
      }
      
      public function dispose() : void
      {
      }
   }
}
