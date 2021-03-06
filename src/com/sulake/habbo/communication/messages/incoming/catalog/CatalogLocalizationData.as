package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogLocalizationData
   {
       
      
      private var var_619:Array;
      
      private var var_911:Array;
      
      public function CatalogLocalizationData(param1:IMessageDataWrapper)
      {
         super();
         var_911 = new Array();
         var_619 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_911.push(param1.readString());
            _loc3_++;
         }
         var _loc4_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            var_619.push(param1.readString());
            _loc5_++;
         }
      }
      
      public function get texts() : Array
      {
         return var_619;
      }
      
      public function get images() : Array
      {
         return var_911;
      }
   }
}
