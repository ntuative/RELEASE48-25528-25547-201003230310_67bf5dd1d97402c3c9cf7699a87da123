package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1934:Class;
      
      private var var_1933:Class;
      
      private var var_1935:String;
      
      private var var_1235:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1935 = param1;
         var_1933 = param2;
         var_1934 = param3;
         if(rest == null)
         {
            var_1235 = new Array();
         }
         else
         {
            var_1235 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1934;
      }
      
      public function get assetClass() : Class
      {
         return var_1933;
      }
      
      public function get mimeType() : String
      {
         return var_1935;
      }
      
      public function get fileTypes() : Array
      {
         return var_1235;
      }
   }
}
