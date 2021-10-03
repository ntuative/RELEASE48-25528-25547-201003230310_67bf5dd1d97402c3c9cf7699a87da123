package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_844:String = "inventory_badges";
      
      public static const const_1284:String = "inventory_clothes";
      
      public static const const_1155:String = "inventory_furniture";
      
      public static const const_717:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_991:String = "inventory_effects";
       
      
      private var var_1647:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_717);
         var_1647 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1647;
      }
   }
}
