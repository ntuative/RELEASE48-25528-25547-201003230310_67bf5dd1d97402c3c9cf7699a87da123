package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_654:String;
      
      private var _id:int;
      
      private var var_2013:String = "";
      
      private var var_2014:int;
      
      private var var_2012:String;
      
      private var var_1993:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2014 = parseInt(param1.@pattern);
         var_654 = String(param1.@gender);
         var_1993 = Boolean(parseInt(param1.@colorable));
         var_2013 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2013;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1993;
      }
      
      public function get gender() : String
      {
         return var_654;
      }
      
      public function get patternId() : int
      {
         return var_2014;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2012;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2012 = param1;
      }
   }
}
