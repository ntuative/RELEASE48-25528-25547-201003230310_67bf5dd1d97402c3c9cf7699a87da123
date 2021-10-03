package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1612:int = 2;
      
      public static const const_1537:int = 1;
      
      public static const const_1474:int = 0;
       
      
      private var var_1141:int;
      
      private var var_368:int;
      
      private var var_2381:int;
      
      private var _offerId:int;
      
      private var var_1658:int;
      
      private var var_1657:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1657 = param2;
         var_1658 = param3;
         var_1141 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1657;
      }
      
      public function get furniType() : int
      {
         return var_1658;
      }
      
      public function get price() : int
      {
         return var_1141;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
