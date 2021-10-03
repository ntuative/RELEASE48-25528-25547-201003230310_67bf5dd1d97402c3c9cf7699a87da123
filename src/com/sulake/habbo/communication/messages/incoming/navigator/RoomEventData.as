package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1807:String;
      
      private var var_375:int;
      
      private var var_1809:String;
      
      private var var_1808:String;
      
      private var var_1810:int;
      
      private var var_1811:String;
      
      private var var_1812:int;
      
      private var var_630:Array;
      
      private var var_976:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_630 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_976 = false;
            return;
         }
         this.var_976 = true;
         var_1810 = int(_loc2_);
         var_1809 = param1.readString();
         var_375 = int(param1.readString());
         var_1812 = param1.readInteger();
         var_1807 = param1.readString();
         var_1808 = param1.readString();
         var_1811 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_630.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1812;
      }
      
      public function get eventName() : String
      {
         return var_1807;
      }
      
      public function get eventDescription() : String
      {
         return var_1808;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1809;
      }
      
      public function get tags() : Array
      {
         return var_630;
      }
      
      public function get creationTime() : String
      {
         return var_1811;
      }
      
      public function get exists() : Boolean
      {
         return var_976;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1810;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
      
      public function get flatId() : int
      {
         return var_375;
      }
   }
}
