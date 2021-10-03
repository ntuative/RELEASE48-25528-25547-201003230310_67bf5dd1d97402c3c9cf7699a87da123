package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1052:int = 31;
      
      private static const const_1053:int = 32;
      
      private static const const_485:int = 30;
      
      private static const const_748:int = 20;
      
      private static const const_486:int = 10;
       
      
      private var var_591:Boolean = false;
      
      private var var_211:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_211 = new Array();
         super();
         super.setAnimation(const_485);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_591 = true;
            var_211 = new Array();
            var_211.push(const_1052);
            var_211.push(const_1053);
            return;
         }
         if(param1 > 0 && param1 <= const_486)
         {
            if(var_591)
            {
               var_591 = false;
               var_211 = new Array();
               if(_direction == 2)
               {
                  var_211.push(const_748 + 5 - param1);
                  var_211.push(const_486 + 5 - param1);
               }
               else
               {
                  var_211.push(const_748 + param1);
                  var_211.push(const_486 + param1);
               }
               var_211.push(const_485);
               return;
            }
            super.setAnimation(const_485);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
