package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_401:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_306:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_814:int;
      
      private var var_270:Boolean;
      
      private var var_2195:Boolean;
      
      private var var_1544:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_814 = param2;
         var_2195 = param3;
         var_270 = param4;
         var_1544 = param5;
      }
      
      public function get position() : int
      {
         return var_814;
      }
      
      public function get isActive() : Boolean
      {
         return var_270;
      }
      
      public function get method_12() : Boolean
      {
         return var_1544;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2195;
      }
   }
}
