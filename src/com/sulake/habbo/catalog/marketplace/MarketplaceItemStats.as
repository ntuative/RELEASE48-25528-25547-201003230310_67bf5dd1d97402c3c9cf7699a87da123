package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1442:Array;
      
      private var var_1660:int;
      
      private var var_1773:int;
      
      private var var_1774:int;
      
      private var var_1776:int;
      
      private var _dayOffsets:Array;
      
      private var var_1775:int;
      
      private var var_1441:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1442;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1442 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1773;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1441 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1660 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1774;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1776;
      }
      
      public function get offerCount() : int
      {
         return var_1775;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1775 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1441;
      }
      
      public function get averagePrice() : int
      {
         return var_1660;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1776 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1774 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1773 = param1;
      }
   }
}
