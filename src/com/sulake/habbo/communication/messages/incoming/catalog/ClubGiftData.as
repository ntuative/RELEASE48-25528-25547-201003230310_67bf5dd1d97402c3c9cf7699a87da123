package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2144:int;
      
      private var var_2143:Boolean;
      
      private var _offerId:int;
      
      private var var_1825:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2143 = param1.readBoolean();
         var_2144 = param1.readInteger();
         var_1825 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1825;
      }
      
      public function get monthsRequired() : int
      {
         return var_2144;
      }
      
      public function get isVip() : Boolean
      {
         return var_2143;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
