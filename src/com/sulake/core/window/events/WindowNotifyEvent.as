package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1307:String = "WN_CREATED";
      
      public static const const_865:String = "WN_DISABLE";
      
      public static const const_841:String = "WN_DEACTIVATED";
      
      public static const const_805:String = "WN_OPENED";
      
      public static const const_942:String = "WN_CLOSED";
      
      public static const const_1005:String = "WN_DESTROY";
      
      public static const const_1565:String = "WN_ARRANGED";
      
      public static const const_376:String = "WN_PARENT_RESIZED";
      
      public static const const_965:String = "WN_ENABLE";
      
      public static const const_849:String = "WN_RELOCATE";
      
      public static const const_946:String = "WN_FOCUS";
      
      public static const const_842:String = "WN_PARENT_RELOCATED";
      
      public static const const_467:String = "WN_PARAM_UPDATED";
      
      public static const const_648:String = "WN_PARENT_ACTIVATED";
      
      public static const const_172:String = "WN_RESIZED";
      
      public static const const_847:String = "WN_CLOSE";
      
      public static const const_882:String = "WN_PARENT_REMOVED";
      
      public static const const_265:String = "WN_CHILD_RELOCATED";
      
      public static const const_736:String = "WN_ENABLED";
      
      public static const const_262:String = "WN_CHILD_RESIZED";
      
      public static const const_811:String = "WN_MINIMIZED";
      
      public static const const_722:String = "WN_DISABLED";
      
      public static const const_199:String = "WN_CHILD_ACTIVATED";
      
      public static const const_358:String = "WN_STATE_UPDATED";
      
      public static const const_580:String = "WN_UNSELECTED";
      
      public static const const_459:String = "WN_STYLE_UPDATED";
      
      public static const const_1543:String = "WN_UPDATE";
      
      public static const const_471:String = "WN_PARENT_ADDED";
      
      public static const const_525:String = "WN_RESIZE";
      
      public static const const_596:String = "WN_CHILD_REMOVED";
      
      public static const const_1547:String = "";
      
      public static const const_889:String = "WN_RESTORED";
      
      public static const const_332:String = "WN_SELECTED";
      
      public static const const_928:String = "WN_MINIMIZE";
      
      public static const const_969:String = "WN_FOCUSED";
      
      public static const const_1224:String = "WN_LOCK";
      
      public static const const_304:String = "WN_CHILD_ADDED";
      
      public static const const_1012:String = "WN_UNFOCUSED";
      
      public static const const_421:String = "WN_RELOCATED";
      
      public static const const_1011:String = "WN_DEACTIVATE";
      
      public static const const_1178:String = "WN_CRETAE";
      
      public static const const_899:String = "WN_RESTORE";
      
      public static const const_337:String = "WN_ACTVATED";
      
      public static const const_1383:String = "WN_LOCKED";
      
      public static const const_435:String = "WN_SELECT";
      
      public static const const_959:String = "WN_MAXIMIZE";
      
      public static const const_832:String = "WN_OPEN";
      
      public static const const_683:String = "WN_UNSELECT";
      
      public static const const_1548:String = "WN_ARRANGE";
      
      public static const const_1306:String = "WN_UNLOCKED";
      
      public static const const_1506:String = "WN_UPDATED";
      
      public static const const_919:String = "WN_ACTIVATE";
      
      public static const const_1376:String = "WN_UNLOCK";
      
      public static const const_993:String = "WN_MAXIMIZED";
      
      public static const const_944:String = "WN_DESTROYED";
      
      public static const const_823:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1599,cancelable);
      }
   }
}
