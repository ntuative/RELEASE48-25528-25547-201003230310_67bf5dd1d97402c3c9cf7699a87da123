package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_744:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_744 = new ByteArray();
         var_744.writeShort(param1);
         var_744.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_744.position = 0;
         if(false)
         {
            _loc1_ = var_744.readShort();
            var_744.position = 0;
         }
         return _loc1_;
      }
   }
}
