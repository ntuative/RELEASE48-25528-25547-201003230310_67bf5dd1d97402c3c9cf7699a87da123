package com.sulake.habbo.communication.messages.outgoing.catalog
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SelectClubGiftComposer implements IMessageComposer
   {
       
      
      private var var_1347:String;
      
      public function SelectClubGiftComposer(param1:String)
      {
         super();
         var_1347 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1347];
      }
      
      public function dispose() : void
      {
         var_1347 = null;
      }
   }
}
