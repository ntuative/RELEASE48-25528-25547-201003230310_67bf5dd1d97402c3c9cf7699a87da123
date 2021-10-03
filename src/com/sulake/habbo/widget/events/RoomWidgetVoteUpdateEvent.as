package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_131:String = "RWPUE_VOTE_RESULT";
      
      public static const const_125:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1334:int;
      
      private var var_958:String;
      
      private var var_674:Array;
      
      private var var_1069:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_958 = param2;
         var_1069 = param3;
         var_674 = param4;
         if(var_674 == null)
         {
            var_674 = [];
         }
         var_1334 = param5;
      }
      
      public function get votes() : Array
      {
         return var_674.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1334;
      }
      
      public function get question() : String
      {
         return var_958;
      }
      
      public function get choices() : Array
      {
         return var_1069.slice();
      }
   }
}
