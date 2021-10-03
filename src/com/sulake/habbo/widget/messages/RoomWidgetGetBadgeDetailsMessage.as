package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_515:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1065:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_515);
         var_1065 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1065;
      }
   }
}
