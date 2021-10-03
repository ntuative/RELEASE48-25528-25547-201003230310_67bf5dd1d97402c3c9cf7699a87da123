package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1834:int = 0;
      
      private var var_1835:int = 0;
      
      private var var_1746:int = 0;
      
      private var var_1836:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1835;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1835 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1834 = param1;
      }
      
      public function get credits() : int
      {
         return var_1746;
      }
      
      public function get clubDays() : int
      {
         return var_1834;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1836 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1746 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1836;
      }
   }
}
