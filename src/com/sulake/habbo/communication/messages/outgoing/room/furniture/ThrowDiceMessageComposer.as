package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class ThrowDiceMessageComposer implements IMessageComposer
   {
       
      
      private var var_147:int;
      
      public function ThrowDiceMessageComposer(param1:int)
      {
         super();
         var_147 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_147];
      }
   }
}
