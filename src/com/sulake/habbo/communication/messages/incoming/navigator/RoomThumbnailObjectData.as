package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1425:int;
      
      private var var_1424:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1425;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1425 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1425 = this.var_1425;
         _loc1_.var_1424 = this.var_1424;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1424 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1424;
      }
   }
}
