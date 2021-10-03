package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_1066:Boolean;
      
      private var _name:String;
      
      private var var_1799:String;
      
      private var var_1067:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1799 = String(param1.@link);
         var_1067 = Boolean(parseInt(param1.@fliph));
         var_1066 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_1067;
      }
      
      public function get flipV() : Boolean
      {
         return var_1066;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1799;
      }
   }
}
