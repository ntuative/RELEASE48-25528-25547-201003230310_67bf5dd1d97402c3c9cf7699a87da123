package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1975:Boolean;
      
      private var var_1495:Array;
      
      private var var_1976:Boolean;
      
      private var var_1974:Boolean;
      
      private var var_1973:Boolean;
      
      private var var_151:Array;
      
      private var var_1980:Boolean;
      
      private var var_1977:Boolean;
      
      private var var_1496:Array;
      
      private var var_1979:Boolean;
      
      private var var_1978:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1978;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1975;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1976;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1980;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1977;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1495;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_151 = [];
         var_1495 = [];
         _roomMessageTemplates = [];
         var_1496 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_151.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1495.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1496.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1980 = param1.readBoolean();
         var_1973 = param1.readBoolean();
         var_1976 = param1.readBoolean();
         var_1974 = param1.readBoolean();
         var_1978 = param1.readBoolean();
         var_1977 = param1.readBoolean();
         var_1975 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1979 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1974;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1496;
      }
      
      public function get issues() : Array
      {
         return var_151;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1979;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1973;
      }
   }
}
