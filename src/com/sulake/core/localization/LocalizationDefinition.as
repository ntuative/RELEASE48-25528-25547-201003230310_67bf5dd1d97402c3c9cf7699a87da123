package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1550:String;
      
      private var var_931:String;
      
      private var var_1549:String;
      
      private var var_1551:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1551 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1550 = _loc5_[0];
         var_1549 = _loc5_[1];
         _name = param2;
         var_931 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1550;
      }
      
      public function get languageCode() : String
      {
         return var_1551;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_931;
      }
      
      public function get encoding() : String
      {
         return var_1549;
      }
      
      public function get id() : String
      {
         return var_1551 + "_" + var_1550 + "." + var_1549;
      }
   }
}
