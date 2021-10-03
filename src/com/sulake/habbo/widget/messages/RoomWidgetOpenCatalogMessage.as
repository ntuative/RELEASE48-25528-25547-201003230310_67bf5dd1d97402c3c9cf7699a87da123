package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_881:String = "RWOCM_CLUB_MAIN";
      
      public static const const_577:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1688:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_577);
         var_1688 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1688;
      }
   }
}
