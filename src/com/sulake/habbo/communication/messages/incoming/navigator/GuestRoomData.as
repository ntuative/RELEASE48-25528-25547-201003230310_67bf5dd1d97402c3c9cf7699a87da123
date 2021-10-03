package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1969:int;
      
      private var var_1970:String;
      
      private var var_1972:int;
      
      private var var_1968:int;
      
      private var var_690:Boolean;
      
      private var var_1680:Boolean;
      
      private var var_375:int;
      
      private var var_1295:String;
      
      private var var_1675:int;
      
      private var var_1243:int;
      
      private var _ownerName:String;
      
      private var var_687:String;
      
      private var var_1967:int;
      
      private var var_1971:RoomThumbnailData;
      
      private var var_1938:Boolean;
      
      private var var_630:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_630 = new Array();
         super();
         var_375 = param1.readInteger();
         var_690 = param1.readBoolean();
         var_687 = param1.readString();
         _ownerName = param1.readString();
         var_1675 = param1.readInteger();
         var_1969 = param1.readInteger();
         var_1967 = param1.readInteger();
         var_1295 = param1.readString();
         var_1972 = param1.readInteger();
         var_1938 = param1.readBoolean();
         var_1968 = param1.readInteger();
         var_1243 = param1.readInteger();
         var_1970 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_630.push(_loc4_);
            _loc3_++;
         }
         var_1971 = new RoomThumbnailData(param1);
         var_1680 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1967;
      }
      
      public function get roomName() : String
      {
         return var_687;
      }
      
      public function get userCount() : int
      {
         return var_1969;
      }
      
      public function get score() : int
      {
         return var_1968;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1970;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1938;
      }
      
      public function get tags() : Array
      {
         return var_630;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1680;
      }
      
      public function get event() : Boolean
      {
         return var_690;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_630 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1243;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1972;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1971;
      }
      
      public function get doorMode() : int
      {
         return var_1675;
      }
      
      public function get flatId() : int
      {
         return var_375;
      }
      
      public function get description() : String
      {
         return var_1295;
      }
   }
}
