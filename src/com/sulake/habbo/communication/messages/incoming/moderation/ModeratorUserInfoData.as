package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1637:int;
      
      private var var_1635:int;
      
      private var var_1638:int;
      
      private var _userName:String;
      
      private var var_1639:int;
      
      private var var_1636:int;
      
      private var var_1634:int;
      
      private var _userId:int;
      
      private var var_738:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1636 = param1.readInteger();
         var_1639 = param1.readInteger();
         var_738 = param1.readBoolean();
         var_1638 = param1.readInteger();
         var_1635 = param1.readInteger();
         var_1637 = param1.readInteger();
         var_1634 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1634;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_738;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1639;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1635;
      }
      
      public function get cautionCount() : int
      {
         return var_1637;
      }
      
      public function get cfhCount() : int
      {
         return var_1638;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1636;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
