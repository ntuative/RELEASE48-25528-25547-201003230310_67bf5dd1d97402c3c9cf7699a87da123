package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_615:Array;
      
      private var var_1141:int;
      
      private var var_1571:Array;
      
      private var var_614:Array;
      
      private var var_1163:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1163 = _loc2_.isWrappingEnabled;
         var_1141 = _loc2_.wrappingPrice;
         var_1571 = _loc2_.stuffTypes;
         var_614 = _loc2_.boxTypes;
         var_615 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_615;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1571;
      }
      
      public function get price() : int
      {
         return var_1141;
      }
      
      public function get boxTypes() : Array
      {
         return var_614;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1163;
      }
   }
}
