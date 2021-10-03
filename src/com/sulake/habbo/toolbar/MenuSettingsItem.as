package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1758:Array;
      
      private var var_1756:String;
      
      private var var_1757:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1756 = param1;
         var_1758 = param2;
         var_1757 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1756;
      }
      
      public function get yieldList() : Array
      {
         return var_1758;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1757;
      }
   }
}
