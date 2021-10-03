package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1420:int = -1;
      
      private var var_1154:Boolean;
      
      private var var_1155:String;
      
      private var var_1723:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1723 = String(param1["set-type"]);
         var_1155 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1154 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1420 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1155;
      }
      
      public function get staticId() : int
      {
         return var_1420;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1420 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1154;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1154 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1155 = param1;
      }
      
      public function get setType() : String
      {
         return var_1723;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
