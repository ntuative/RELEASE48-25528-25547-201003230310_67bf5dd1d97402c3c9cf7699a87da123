package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPetCommandMessage extends RoomWidgetMessage
   {
      
      public static const const_741:String = "RWPCM_REQUEST_PET_COMMANDS";
      
      public static const const_639:String = "RWPCM_PET_COMMAND";
       
      
      private var var_162:String;
      
      private var var_1205:int = 0;
      
      public function RoomWidgetPetCommandMessage(param1:String, param2:int, param3:String = null)
      {
         super(param1);
         var_1205 = param2;
         var_162 = param3;
      }
      
      public function get value() : String
      {
         return var_162;
      }
      
      public function get petId() : int
      {
         return var_1205;
      }
   }
}
