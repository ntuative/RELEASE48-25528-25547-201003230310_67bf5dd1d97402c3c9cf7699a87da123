package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_329:Boolean;
      
      private var var_1208:int;
      
      private var var_1554:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1208 = param1.readInteger();
         var_1554 = param1.readString();
         var_329 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_329;
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
