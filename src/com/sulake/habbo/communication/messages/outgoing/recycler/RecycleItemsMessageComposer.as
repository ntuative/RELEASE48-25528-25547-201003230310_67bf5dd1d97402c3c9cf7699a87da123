package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_897:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_897 = new Array();
         var_897.push(param1.length);
         var_897 = var_897.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_897;
      }
   }
}
