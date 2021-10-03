package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_251:String = "WE_CHILD_RESIZED";
      
      public static const const_1217:String = "WE_CLOSE";
      
      public static const const_1239:String = "WE_DESTROY";
      
      public static const const_137:String = "WE_CHANGE";
      
      public static const const_1251:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1605:String = "WE_PARENT_RESIZE";
      
      public static const const_94:String = "WE_UPDATE";
      
      public static const const_1379:String = "WE_MAXIMIZE";
      
      public static const const_462:String = "WE_DESTROYED";
      
      public static const const_916:String = "WE_UNSELECT";
      
      public static const const_1205:String = "WE_MAXIMIZED";
      
      public static const const_1520:String = "WE_UNLOCKED";
      
      public static const const_385:String = "WE_CHILD_REMOVED";
      
      public static const const_164:String = "WE_OK";
      
      public static const const_44:String = "WE_RESIZED";
      
      public static const const_1202:String = "WE_ACTIVATE";
      
      public static const const_236:String = "WE_ENABLED";
      
      public static const const_450:String = "WE_CHILD_RELOCATED";
      
      public static const const_1350:String = "WE_CREATE";
      
      public static const const_738:String = "WE_SELECT";
      
      public static const const_179:String = "";
      
      public static const const_1521:String = "WE_LOCKED";
      
      public static const const_1457:String = "WE_PARENT_RELOCATE";
      
      public static const const_1497:String = "WE_CHILD_REMOVE";
      
      public static const const_1529:String = "WE_CHILD_RELOCATE";
      
      public static const const_1607:String = "WE_LOCK";
      
      public static const const_196:String = "WE_FOCUSED";
      
      public static const const_604:String = "WE_UNSELECTED";
      
      public static const const_1018:String = "WE_DEACTIVATED";
      
      public static const const_1301:String = "WE_MINIMIZED";
      
      public static const const_1480:String = "WE_ARRANGED";
      
      public static const const_1458:String = "WE_UNLOCK";
      
      public static const const_1498:String = "WE_ATTACH";
      
      public static const const_1399:String = "WE_OPEN";
      
      public static const const_1182:String = "WE_RESTORE";
      
      public static const const_1515:String = "WE_PARENT_RELOCATED";
      
      public static const const_1148:String = "WE_RELOCATE";
      
      public static const const_1558:String = "WE_CHILD_RESIZE";
      
      public static const const_1511:String = "WE_ARRANGE";
      
      public static const const_1184:String = "WE_OPENED";
      
      public static const const_1364:String = "WE_CLOSED";
      
      public static const const_1484:String = "WE_DETACHED";
      
      public static const const_1454:String = "WE_UPDATED";
      
      public static const const_1283:String = "WE_UNFOCUSED";
      
      public static const const_424:String = "WE_RELOCATED";
      
      public static const const_1365:String = "WE_DEACTIVATE";
      
      public static const const_230:String = "WE_DISABLED";
      
      public static const const_637:String = "WE_CANCEL";
      
      public static const const_690:String = "WE_ENABLE";
      
      public static const const_1357:String = "WE_ACTIVATED";
      
      public static const const_1337:String = "WE_FOCUS";
      
      public static const const_1516:String = "WE_DETACH";
      
      public static const const_1308:String = "WE_RESTORED";
      
      public static const const_1289:String = "WE_UNFOCUS";
      
      public static const const_54:String = "WE_SELECTED";
      
      public static const const_1230:String = "WE_PARENT_RESIZED";
      
      public static const const_1295:String = "WE_CREATED";
      
      public static const const_1550:String = "WE_ATTACHED";
      
      public static const const_1262:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1599:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1370:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1599 = param3;
         var_1370 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1370;
      }
      
      public function get related() : IWindow
      {
         return var_1599;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1370 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
