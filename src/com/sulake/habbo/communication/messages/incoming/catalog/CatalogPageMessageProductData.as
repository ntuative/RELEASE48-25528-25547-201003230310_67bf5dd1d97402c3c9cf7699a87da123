package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_218:String = "e";
      
      public static const const_80:String = "i";
      
      public static const const_74:String = "s";
       
      
      private var var_1006:String;
      
      private var var_1214:String;
      
      private var var_1215:int;
      
      private var var_2192:int;
      
      private var var_1007:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1214 = param1.readString();
         var_2192 = param1.readInteger();
         var_1006 = param1.readString();
         var_1007 = param1.readInteger();
         var_1215 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1007;
      }
      
      public function get productType() : String
      {
         return var_1214;
      }
      
      public function get expiration() : int
      {
         return var_1215;
      }
      
      public function get furniClassId() : int
      {
         return var_2192;
      }
      
      public function get extraParam() : String
      {
         return var_1006;
      }
   }
}
