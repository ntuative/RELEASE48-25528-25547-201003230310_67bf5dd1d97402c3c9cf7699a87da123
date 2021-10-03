package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_575:RoomObjectLocationCacheItem = null;
      
      private var var_172:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_575 = new RoomObjectLocationCacheItem(param1);
         var_172 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_575;
      }
      
      public function dispose() : void
      {
         if(var_575 != null)
         {
            var_575.dispose();
            var_575 = null;
         }
         if(var_172 != null)
         {
            var_172.dispose();
            var_172 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_172;
      }
   }
}
