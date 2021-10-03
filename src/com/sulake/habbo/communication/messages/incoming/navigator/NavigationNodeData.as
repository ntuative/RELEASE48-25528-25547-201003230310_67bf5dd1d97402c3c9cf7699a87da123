package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1208:int;
      
      private var var_1554:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1208 = param1;
         var_1554 = param2;
         Logger.log("READ NODE: " + var_1208 + ", " + var_1554);
      }
      
      public function get nodeName() : String
      {
         return var_1554;
      }
      
      public function get nodeId() : int
      {
         return var_1208;
      }
   }
}
