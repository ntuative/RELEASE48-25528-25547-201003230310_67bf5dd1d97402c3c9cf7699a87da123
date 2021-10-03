package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1577:String;
      
      private var var_1556:String;
      
      private var var_986:String;
      
      private var var_438:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1577 = String(param1.@align);
         var_986 = String(param1.@base);
         var_1556 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_438 = Number(_loc2_);
            if(var_438 > 1)
            {
               var_438 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1577;
      }
      
      public function get ink() : String
      {
         return var_1556;
      }
      
      public function get base() : String
      {
         return var_986;
      }
      
      public function get isBlended() : Boolean
      {
         return var_438 != 1;
      }
      
      public function get blend() : Number
      {
         return var_438;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
