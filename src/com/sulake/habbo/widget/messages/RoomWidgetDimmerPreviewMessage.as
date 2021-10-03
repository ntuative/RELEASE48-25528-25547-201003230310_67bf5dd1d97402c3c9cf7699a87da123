package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerPreviewMessage extends RoomWidgetMessage
   {
      
      public static const const_621:String = "RWDPM_PREVIEW_DIMMER_PRESET";
       
      
      private var var_1087:int;
      
      private var _color:uint;
      
      private var var_1632:Boolean;
      
      public function RoomWidgetDimmerPreviewMessage(param1:uint, param2:int, param3:Boolean)
      {
         super(const_621);
         _color = param1;
         var_1087 = param2;
         var_1632 = param3;
      }
      
      public function get brightness() : int
      {
         return var_1087;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get bgOnly() : Boolean
      {
         return var_1632;
      }
   }
}
