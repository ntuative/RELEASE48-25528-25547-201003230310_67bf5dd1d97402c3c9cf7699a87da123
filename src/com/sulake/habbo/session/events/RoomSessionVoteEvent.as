package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_131:String = "RSPE_VOTE_RESULT";
      
      public static const const_125:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1334:int = 0;
      
      private var var_958:String = "";
      
      private var var_674:Array;
      
      private var var_1069:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1069 = [];
         var_674 = [];
         super(param1,param2,param7,param8);
         var_958 = param3;
         var_1069 = param4;
         var_674 = param5;
         if(var_674 == null)
         {
            var_674 = [];
         }
         var_1334 = param6;
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
