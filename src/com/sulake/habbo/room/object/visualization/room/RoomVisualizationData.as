package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_433:FloorRasterizer;
      
      private var var_867:Boolean = false;
      
      private var var_608:PlaneMaskManager;
      
      private var var_432:WallRasterizer;
      
      private var var_607:WallAdRasterizer;
      
      private var var_434:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_432 = new WallRasterizer();
         var_433 = new FloorRasterizer();
         var_607 = new WallAdRasterizer();
         var_434 = new LandscapeRasterizer();
         var_608 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_432;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_607;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_433;
      }
      
      public function get initialized() : Boolean
      {
         return var_867;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_608;
      }
      
      public function dispose() : void
      {
         if(var_432 != null)
         {
            var_432.dispose();
            var_432 = null;
         }
         if(var_433 != null)
         {
            var_433.dispose();
            var_433 = null;
         }
         if(var_607 != null)
         {
            var_607.dispose();
            var_607 = null;
         }
         if(var_434 != null)
         {
            var_434.dispose();
            var_434 = null;
         }
         if(var_608 != null)
         {
            var_608.dispose();
            var_608 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_432.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_433.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_607.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_434.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_608.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_432 != null)
         {
            var_432.clearCache();
         }
         if(var_433 != null)
         {
            var_433.clearCache();
         }
         if(var_434 != null)
         {
            var_434.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_434;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_867)
         {
            return;
         }
         var_432.initializeAssetCollection(param1);
         var_433.initializeAssetCollection(param1);
         var_607.initializeAssetCollection(param1);
         var_434.initializeAssetCollection(param1);
         var_608.initializeAssetCollection(param1);
         var_867 = true;
      }
   }
}
