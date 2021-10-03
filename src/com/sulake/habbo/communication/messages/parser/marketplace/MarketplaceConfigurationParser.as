package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1875:int;
      
      private var var_1478:int;
      
      private var var_1873:int;
      
      private var var_1874:int;
      
      private var var_1876:int;
      
      private var var_1477:int;
      
      private var var_1877:int;
      
      private var var_1163:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1875;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1478;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1877;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1874;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1876;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1477;
      }
      
      public function get commission() : int
      {
         return var_1873;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1163 = param1.readBoolean();
         var_1873 = param1.readInteger();
         var_1478 = param1.readInteger();
         var_1477 = param1.readInteger();
         var_1874 = param1.readInteger();
         var_1875 = param1.readInteger();
         var_1876 = param1.readInteger();
         var_1877 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1163;
      }
   }
}
