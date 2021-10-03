package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_405:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_406:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_78:String = "RWPDUE_CONTENTS";
      
      public static const const_360:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_446:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_61:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_193:String;
      
      private var var_1789:BitmapData;
      
      private var var_147:int = -1;
      
      private var var_47:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_147 = param2;
         var_193 = param3;
         var_47 = param4;
         var_1789 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1789;
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
