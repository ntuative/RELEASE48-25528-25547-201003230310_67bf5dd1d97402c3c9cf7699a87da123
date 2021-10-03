package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1871:Number;
      
      private var var_575:Number = 0;
      
      private var var_1870:Number;
      
      private var var_576:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1871 = param1;
         var_1870 = param2;
      }
      
      public function update() : void
      {
         var_576 += var_1870;
         var_575 += var_576;
         if(var_575 > 0)
         {
            var_575 = 0;
            var_576 = var_1871 * -1 * var_576;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_576 = param1;
         var_575 = 0;
      }
      
      public function get location() : Number
      {
         return var_575;
      }
   }
}
