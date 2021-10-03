package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_329:Boolean;
      
      private var var_193:String;
      
      private var var_1279:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_193 = param1;
         var_1279 = param2;
         var_329 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1279;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_329 = param1;
      }
      
      public function get text() : String
      {
         return var_193;
      }
      
      public function get visible() : Boolean
      {
         return var_329;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1279 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_193 = param1;
      }
   }
}
