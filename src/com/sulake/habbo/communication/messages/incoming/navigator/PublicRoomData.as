package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1699:int;
      
      private var var_1700:String;
      
      private var var_1698:int;
      
      private var _disposed:Boolean;
      
      private var var_1696:int;
      
      private var var_1697:String;
      
      private var var_1208:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1697 = param1.readString();
         var_1699 = param1.readInteger();
         var_1698 = param1.readInteger();
         var_1700 = param1.readString();
         var_1696 = param1.readInteger();
         var_1208 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1696;
      }
      
      public function get worldId() : int
      {
         return var_1698;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_1697;
      }
      
      public function get unitPort() : int
      {
         return var_1699;
      }
      
      public function get castLibs() : String
      {
         return var_1700;
      }
      
      public function get nodeId() : int
      {
         return var_1208;
      }
   }
}
