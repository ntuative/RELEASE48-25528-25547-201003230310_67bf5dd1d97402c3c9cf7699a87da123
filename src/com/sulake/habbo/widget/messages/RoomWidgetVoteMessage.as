package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_130:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1311:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_130);
         var_1311 = param1;
      }
      
      public function get vote() : int
      {
         return var_1311;
      }
   }
}
