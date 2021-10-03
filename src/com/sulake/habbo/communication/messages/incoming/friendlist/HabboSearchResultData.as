package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2329:Boolean;
      
      private var var_2328:int;
      
      private var var_2331:Boolean;
      
      private var var_1564:String;
      
      private var var_1241:String;
      
      private var var_1681:int;
      
      private var var_2157:String;
      
      private var var_2330:String;
      
      private var var_2158:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1681 = param1.readInteger();
         this.var_1564 = param1.readString();
         this.var_2157 = param1.readString();
         this.var_2329 = param1.readBoolean();
         this.var_2331 = param1.readBoolean();
         param1.readString();
         this.var_2328 = param1.readInteger();
         this.var_2158 = param1.readString();
         this.var_2330 = param1.readString();
         this.var_1241 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1241;
      }
      
      public function get avatarName() : String
      {
         return this.var_1564;
      }
      
      public function get avatarId() : int
      {
         return this.var_1681;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2329;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2330;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2158;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2331;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2157;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2328;
      }
   }
}
