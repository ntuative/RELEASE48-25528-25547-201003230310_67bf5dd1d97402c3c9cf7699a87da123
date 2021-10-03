package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_892:Array;
      
      private var var_809:int;
      
      private var var_1204:String;
      
      private var _offerId:int;
      
      private var var_810:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1204 = param1.readString();
         var_809 = param1.readInteger();
         var_810 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_892 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_892.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_892;
      }
      
      public function get priceInCredits() : int
      {
         return var_809;
      }
      
      public function get localizationId() : String
      {
         return var_1204;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_810;
      }
   }
}
