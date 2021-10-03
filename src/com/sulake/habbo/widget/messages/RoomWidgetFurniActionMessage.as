package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_246:String = "RWFAM_MOVE";
      
      public static const const_554:String = "RWFUAM_ROTATE";
      
      public static const const_702:String = "RWFAM_PICKUP";
       
      
      private var var_1657:int = 0;
      
      private var var_1734:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1657 = param2;
         var_1734 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1657;
      }
      
      public function get furniCategory() : int
      {
         return var_1734;
      }
   }
}
