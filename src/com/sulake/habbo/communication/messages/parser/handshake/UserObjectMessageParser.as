package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_380:String;
      
      private var var_2286:String;
      
      private var var_2288:int;
      
      private var var_2287:int;
      
      private var var_1174:String;
      
      private var var_1241:String;
      
      private var _name:String;
      
      private var var_521:int;
      
      private var var_909:int;
      
      private var var_2285:int;
      
      private var var_2212:int;
      
      private var var_2289:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2287;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1241;
      }
      
      public function get customData() : String
      {
         return this.var_2286;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_521;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2288;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2289;
      }
      
      public function get figure() : String
      {
         return this.var_380;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2212;
      }
      
      public function get sex() : String
      {
         return this.var_1174;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_380 = param1.readString();
         this.var_1174 = param1.readString();
         this.var_2286 = param1.readString();
         this.var_1241 = param1.readString();
         this.var_2285 = param1.readInteger();
         this.var_2289 = param1.readString();
         this.var_2288 = param1.readInteger();
         this.var_2287 = param1.readInteger();
         this.var_2212 = param1.readInteger();
         this.var_909 = param1.readInteger();
         this.var_521 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2285;
      }
      
      public function get respectLeft() : int
      {
         return this.var_909;
      }
   }
}
