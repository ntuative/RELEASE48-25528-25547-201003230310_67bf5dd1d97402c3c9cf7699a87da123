package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1133:int = 1;
      
      private static const const_1053:int = 3;
      
      private static const const_1131:int = 2;
      
      private static const const_1132:int = 15;
       
      
      private var var_908:int;
      
      private var var_211:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_211 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1131)
         {
            var_211 = new Array();
            var_211.push(const_1133);
            var_908 = const_1132;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_908 > 0)
         {
            --var_908;
         }
         if(var_908 == 0)
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
