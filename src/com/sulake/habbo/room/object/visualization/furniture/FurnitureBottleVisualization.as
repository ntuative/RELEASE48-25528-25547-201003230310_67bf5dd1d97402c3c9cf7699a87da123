package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1053:int = -1;
      
      private static const const_748:int = 20;
      
      private static const const_486:int = 9;
       
      
      private var var_591:Boolean = false;
      
      private var var_211:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_211 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_591 = true;
            var_211 = new Array();
            var_211.push(const_1053);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_591)
            {
               var_591 = false;
               var_211 = new Array();
               var_211.push(const_748);
               var_211.push(const_486 + param1);
               var_211.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
         {
            if(false)
            {
               super.setAnimation(var_211.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
