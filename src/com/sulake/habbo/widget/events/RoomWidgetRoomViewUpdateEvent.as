package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_697:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_718:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_242:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1389:Point;
      
      private var var_1388:Rectangle;
      
      private var var_184:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1388 = param2;
         var_1389 = param3;
         var_184 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1388 != null)
         {
            return var_1388.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_184;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1389 != null)
         {
            return var_1389.clone();
         }
         return null;
      }
   }
}
