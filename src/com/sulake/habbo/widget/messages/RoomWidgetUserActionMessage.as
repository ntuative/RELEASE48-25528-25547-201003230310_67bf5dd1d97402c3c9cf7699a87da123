package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_721:String = "RWUAM_RESPECT_USER";
      
      public static const const_584:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_686:String = "RWUAM_START_TRADING";
      
      public static const const_544:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_517:String = "RWUAM_WHISPER_USER";
      
      public static const const_547:String = "RWUAM_IGNORE_USER";
      
      public static const const_468:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_731:String = "RWUAM_BAN_USER";
      
      public static const const_649:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_396:String = "RWUAM_KICK_USER";
      
      public static const const_706:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_528:String = " RWUAM_RESPECT_PET";
      
      public static const const_479:String = "RWUAM_KICK_BOT";
      
      public static const const_1266:String = "RWUAM_TRAIN_PET";
      
      public static const const_712:String = "RWUAM_PICKUP_PET";
      
      public static const const_546:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_518:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
