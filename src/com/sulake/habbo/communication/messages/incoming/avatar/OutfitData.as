package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1729:String;
      
      private var var_654:String;
      
      private var var_1428:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1428 = param1.readInteger();
         var_1729 = param1.readString();
         var_654 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_654;
      }
      
      public function get figureString() : String
      {
         return var_1729;
      }
      
      public function get slotId() : int
      {
         return var_1428;
      }
   }
}
