package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_933:String = "price_type_none";
      
      public static const const_441:String = "pricing_model_multi";
      
      public static const const_380:String = "price_type_credits";
      
      public static const const_466:String = "price_type_credits_and_pixels";
      
      public static const const_351:String = "pricing_model_bundle";
      
      public static const const_418:String = "pricing_model_single";
      
      public static const const_679:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1314:String = "pricing_model_unknown";
      
      public static const const_370:String = "price_type_pixels";
       
      
      private var var_809:int;
      
      private var _offerId:int;
      
      private var var_810:int;
      
      private var var_399:String;
      
      private var var_574:String;
      
      private var var_1864:int;
      
      private var var_583:ICatalogPage;
      
      private var var_1204:String;
      
      private var var_398:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1204 = param1.localizationId;
         var_809 = param1.priceInCredits;
         var_810 = param1.priceInPixels;
         var_583 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_399;
      }
      
      public function get page() : ICatalogPage
      {
         return var_583;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1864 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_398;
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
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1204 = "";
         var_809 = 0;
         var_810 = 0;
         var_583 = null;
         if(var_398 != null)
         {
            var_398.dispose();
            var_398 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_574;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1864;
      }
      
      public function get priceInCredits() : int
      {
         return var_809;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_399 = const_418;
            }
            else
            {
               var_399 = const_441;
            }
         }
         else if(param1.length > 1)
         {
            var_399 = const_351;
         }
         else
         {
            var_399 = const_1314;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_399)
         {
            case const_418:
               var_398 = new SingleProductContainer(this,param1);
               break;
            case const_441:
               var_398 = new MultiProductContainer(this,param1);
               break;
            case const_351:
               var_398 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_399);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_809 > 0 && var_810 > 0)
         {
            var_574 = const_466;
         }
         else if(var_809 > 0)
         {
            var_574 = const_380;
         }
         else if(var_810 > 0)
         {
            var_574 = const_370;
         }
         else
         {
            var_574 = const_933;
         }
      }
   }
}
