package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1692:Number = 0;
      
      private var var_1691:Number = 0;
      
      private var var_1694:Number = 0;
      
      private var var_1693:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1691 = param1;
         var_1694 = param2;
         var_1692 = param3;
         var_1693 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1691;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1692;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1694;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1693;
      }
   }
}
