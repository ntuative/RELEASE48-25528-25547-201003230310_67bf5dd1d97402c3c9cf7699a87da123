package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_778:LegacyWallGeometry = null;
      
      private var var_553:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_551:TileHeightMap = null;
      
      private var var_1735:String = null;
      
      private var _roomId:int = 0;
      
      private var var_552:SelectedRoomObjectData = null;
      
      private var var_777:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_778 = new LegacyWallGeometry();
         var_777 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_553 != null)
         {
            var_553.dispose();
         }
         var_553 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_551 != null)
         {
            var_551.dispose();
         }
         var_551 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1735 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_778;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_552;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_777;
      }
      
      public function dispose() : void
      {
         if(var_551 != null)
         {
            var_551.dispose();
            var_551 = null;
         }
         if(var_778 != null)
         {
            var_778.dispose();
            var_778 = null;
         }
         if(var_777 != null)
         {
            var_777.dispose();
            var_777 = null;
         }
         if(var_553 != null)
         {
            var_553.dispose();
            var_553 = null;
         }
         if(var_552 != null)
         {
            var_552.dispose();
            var_552 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_551;
      }
      
      public function get worldType() : String
      {
         return var_1735;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_552 != null)
         {
            var_552.dispose();
         }
         var_552 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_553;
      }
   }
}
