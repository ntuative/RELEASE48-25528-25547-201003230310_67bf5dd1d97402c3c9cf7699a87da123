package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_685:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2005:int;
      
      private var var_2004:int;
      
      private var var_2156:Boolean;
      
      private var var_1087:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_685);
         var_2004 = param1;
         var_2005 = param2;
         _color = param3;
         var_1087 = param4;
         var_2156 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2005;
      }
      
      public function get presetNumber() : int
      {
         return var_2004;
      }
      
      public function get brightness() : int
      {
         return var_1087;
      }
      
      public function get apply() : Boolean
      {
         return var_2156;
      }
   }
}
