package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_133:int = 1;
      
      public static const const_1142:int = 3;
      
      public static const const_384:int = 2;
       
      
      private var var_1948:int;
      
      private var var_1699:int;
      
      private var var_1945:int;
      
      private var var_1698:int;
      
      private var var_32:int;
      
      private var var_375:int;
      
      private var var_1298:int;
      
      private var var_1710:int;
      
      private var var_969:int;
      
      private var _roomResources:String;
      
      private var var_1752:int;
      
      private var var_1946:int;
      
      private var var_1950:String;
      
      private var var_1712:String;
      
      private var var_1947:int = 0;
      
      private var var_1158:String;
      
      private var _message:String;
      
      private var var_1944:int;
      
      private var var_1949:String;
      
      private var var_1243:int;
      
      private var var_687:String;
      
      private var var_1951:String;
      
      private var var_1485:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_969 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1947 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1946;
      }
      
      public function set roomName(param1:String) : void
      {
         var_687 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1752 = param1;
      }
      
      public function get state() : int
      {
         return var_32;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_687;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1698 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_32 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1699;
      }
      
      public function get priority() : int
      {
         return var_1948 + var_1947;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1710 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1712;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1485) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1243;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1946 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1298;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1950 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1752;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1698;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1951 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1158 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1710;
      }
      
      public function set priority(param1:int) : void
      {
         var_1948 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1699 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1950;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1945 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1712 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1944 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1158;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1298 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1945;
      }
      
      public function set flatId(param1:int) : void
      {
         var_375 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1243 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1485 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1944;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1949 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1485;
      }
      
      public function get reportedUserId() : int
      {
         return var_969;
      }
      
      public function get flatId() : int
      {
         return var_375;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1951;
      }
      
      public function get reporterUserName() : String
      {
         return var_1949;
      }
   }
}
