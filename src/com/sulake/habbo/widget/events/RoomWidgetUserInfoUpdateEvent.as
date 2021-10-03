package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_217:String = "RWUIUE_PEER";
      
      public static const const_204:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1400:String = "BOT";
      
      public static const const_1019:int = 2;
      
      public static const const_1360:int = 0;
      
      public static const const_1009:int = 3;
       
      
      private var var_1242:String = "";
      
      private var var_1664:Boolean = false;
      
      private var var_1669:int = 0;
      
      private var var_1674:int = 0;
      
      private var var_1671:Boolean = false;
      
      private var var_1241:String = "";
      
      private var var_1662:Boolean = false;
      
      private var var_909:int = 0;
      
      private var var_1665:Boolean = true;
      
      private var var_1065:int = 0;
      
      private var var_1672:Boolean = false;
      
      private var var_1200:Boolean = false;
      
      private var var_1673:Boolean = false;
      
      private var var_1670:int = 0;
      
      private var var_1661:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_272:Array;
      
      private var var_1198:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1663:int = 0;
      
      private var var_1668:Boolean = false;
      
      private var var_1667:int = 0;
      
      private var var_1666:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_272 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1674;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1674 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1664;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1665;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1665 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1662 = param1;
      }
      
      public function get motto() : String
      {
         return var_1242;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1672 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1200;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1242 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1668;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1666;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1200 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1661;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1670 = param1;
      }
      
      public function get badges() : Array
      {
         return var_272;
      }
      
      public function get amIController() : Boolean
      {
         return var_1671;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1671 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1668 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1667 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1666 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1241 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1662;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1672;
      }
      
      public function get carryItem() : int
      {
         return var_1670;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1198;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1198 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_909 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1667;
      }
      
      public function get realName() : String
      {
         return var_1241;
      }
      
      public function set webID(param1:int) : void
      {
         var_1663 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_272 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1673 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1661 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_909;
      }
      
      public function get webID() : int
      {
         return var_1663;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1065 = param1;
      }
      
      public function get xp() : int
      {
         return var_1669;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1664 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1065;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1673;
      }
      
      public function set xp(param1:int) : void
      {
         var_1669 = param1;
      }
   }
}
