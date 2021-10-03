package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_2011:int;
      
      private var var_2010:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         var_2011 = param1;
         var_2010 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_2011,var_2010];
      }
   }
}
