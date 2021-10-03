package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_716:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_193:String;
      
      private var var_752:String;
      
      private var var_1592:String;
      
      private var var_147:int = -1;
      
      private var var_47:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_147 = param2;
         var_1592 = param3;
         var_193 = param4;
         var_752 = param5;
         var_47 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1592;
      }
      
      public function get colorHex() : String
      {
         return var_752;
      }
      
      public function get text() : String
      {
         return var_193;
      }
      
      public function get objectId() : int
      {
         return var_147;
      }
      
      public function get controller() : Boolean
      {
         return var_47;
      }
   }
}
