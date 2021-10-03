package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1141:int;
      
      private var var_1659:int = -1;
      
      private var var_368:int;
      
      private var var_1660:int;
      
      private var var_1658:int;
      
      private var _offerId:int;
      
      private var var_1140:int;
      
      private var var_1657:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1657 = param2;
         var_1658 = param3;
         var_1141 = param4;
         var_368 = param5;
         var_1659 = param6;
         var_1660 = param7;
         var_1140 = param8;
      }
      
      public function get status() : int
      {
         return var_368;
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
      
      public function get averagePrice() : int
      {
         return var_1660;
      }
      
      public function get furniId() : int
      {
         return var_1657;
      }
   }
}
