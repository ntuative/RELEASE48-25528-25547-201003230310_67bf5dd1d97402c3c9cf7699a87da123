package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1656:int;
      
      private var var_1141:int;
      
      private var var_1660:int;
      
      private var var_1659:int = -1;
      
      private var var_368:int;
      
      private var var_1658:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1140:int;
      
      private var var_1657:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1657 = param2;
         var_1658 = param3;
         var_1141 = param4;
         var_368 = param5;
         var_1660 = param6;
         var_1140 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1656 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1656;
      }
      
      public function get price() : int
      {
         return var_1141;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1659;
      }
      
      public function get offerCount() : int
      {
         return var_1140;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1658;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1659 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1141 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1140 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_368;
      }
      
      public function get averagePrice() : int
      {
         return var_1660;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1657;
      }
   }
}
