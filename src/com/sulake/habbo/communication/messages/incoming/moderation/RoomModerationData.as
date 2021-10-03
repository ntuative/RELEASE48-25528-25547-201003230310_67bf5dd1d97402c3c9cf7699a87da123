package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_115:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1969:int;
      
      private var var_375:int;
      
      private var var_690:RoomData;
      
      private var var_1609:int;
      
      private var _ownerName:String;
      
      private var var_2222:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_375 = param1.readInteger();
         var_1969 = param1.readInteger();
         var_2222 = param1.readBoolean();
         var_1609 = param1.readInteger();
         _ownerName = param1.readString();
         var_115 = new RoomData(param1);
         var_690 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1969;
      }
      
      public function get event() : RoomData
      {
         return var_690;
      }
      
      public function get room() : RoomData
      {
         return var_115;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_115 != null)
         {
            var_115.dispose();
            var_115 = null;
         }
         if(var_690 != null)
         {
            var_690.dispose();
            var_690 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_375;
      }
      
      public function get ownerId() : int
      {
         return var_1609;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2222;
      }
   }
}
