package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_380:String;
      
      private var var_1244:String;
      
      private var var_1242:String;
      
      private var var_1243:int;
      
      private var var_654:int;
      
      private var var_1241:String;
      
      private var _name:String;
      
      private var var_1207:Boolean;
      
      private var var_738:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_654 = param1.readInteger();
         this.var_738 = param1.readBoolean();
         this.var_1207 = param1.readBoolean();
         this.var_380 = param1.readString();
         this.var_1243 = param1.readInteger();
         this.var_1242 = param1.readString();
         this.var_1244 = param1.readString();
         this.var_1241 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_654;
      }
      
      public function get realName() : String
      {
         return var_1241;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1242;
      }
      
      public function get categoryId() : int
      {
         return var_1243;
      }
      
      public function get online() : Boolean
      {
         return var_738;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1207;
      }
      
      public function get lastAccess() : String
      {
         return var_1244;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_380;
      }
   }
}
