package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1312:int = 4;
      
      public static const const_675:int = 3;
      
      public static const const_635:int = 2;
      
      public static const const_947:int = 1;
       
      
      private var var_2217:String;
      
      private var _disposed:Boolean;
      
      private var var_1969:int;
      
      private var var_2216:Boolean;
      
      private var var_796:String;
      
      private var var_913:PublicRoomData;
      
      private var var_2218:int;
      
      private var _index:int;
      
      private var var_2220:String;
      
      private var _type:int;
      
      private var var_1819:String;
      
      private var var_912:GuestRoomData;
      
      private var var_2219:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2217 = param1.readString();
         var_2219 = param1.readString();
         var_2216 = param1.readInteger() == 1;
         var_2220 = param1.readString();
         var_796 = param1.readString();
         var_2218 = param1.readInteger();
         var_1969 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_947)
         {
            var_1819 = param1.readString();
         }
         else if(_type == const_675)
         {
            var_913 = new PublicRoomData(param1);
         }
         else if(_type == const_635)
         {
            var_912 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2218;
      }
      
      public function get popupCaption() : String
      {
         return var_2217;
      }
      
      public function get userCount() : int
      {
         return var_1969;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2216;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_947)
         {
            return 0;
         }
         if(this.type == const_635)
         {
            return this.var_912.maxUserCount;
         }
         if(this.type == const_675)
         {
            return this.var_913.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2219;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_912 != null)
         {
            this.var_912.dispose();
            this.var_912 = null;
         }
         if(this.var_913 != null)
         {
            this.var_913.dispose();
            this.var_913 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_912;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2220;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_913;
      }
      
      public function get picRef() : String
      {
         return var_796;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1819;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
