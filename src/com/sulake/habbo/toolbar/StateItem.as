package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1115:Boolean;
      
      private var var_1607:String;
      
      private var _frames:XMLList;
      
      private var var_975:String = "-1";
      
      private var var_631:String;
      
      private var var_167:int = 120;
      
      private var var_1116:String = "-1";
      
      private var var_1117:String;
      
      private var var_1608:Boolean;
      
      private var var_1387:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1115 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1608 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_167 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1117 = param1.@namebase;
         }
         else
         {
            var_1117 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_975 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1116 = param1.@nextState;
         }
         else
         {
            var_1116 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1387 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1607 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_631 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_975 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1608;
      }
      
      public function get defaultState() : String
      {
         return var_1387;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1387 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1607;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_167;
      }
      
      public function get loop() : Boolean
      {
         return var_1115;
      }
      
      public function get nextState() : String
      {
         return var_1116;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_631;
      }
      
      public function get stateOver() : String
      {
         return var_975;
      }
      
      public function get nameBase() : String
      {
         return var_1117;
      }
   }
}
