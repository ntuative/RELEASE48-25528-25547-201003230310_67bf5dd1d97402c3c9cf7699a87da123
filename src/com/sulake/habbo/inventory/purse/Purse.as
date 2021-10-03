package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2186:Boolean = false;
      
      private var var_2187:int = 0;
      
      private var var_1834:int = 0;
      
      private var var_2188:int = 0;
      
      private var var_1533:int = 0;
      
      private var var_1836:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1533 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2187;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2186;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2186 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2187 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1834 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1533;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2188 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1834;
      }
      
      public function get pixelBalance() : int
      {
         return var_2188;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1836 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1836;
      }
   }
}
