package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class WindowKeyboardEvent extends WindowEvent
   {
      
      public static const const_179:String = "";
      
      public static const const_138:String = "WKE_KEY_DOWN";
      
      public static const const_600:String = "WKE_KEY_UP";
       
      
      private var var_690:KeyboardEvent;
      
      public function WindowKeyboardEvent(param1:String, param2:Event, param3:IWindow, param4:IWindow, param5:Boolean = false, param6:Boolean = false)
      {
         _type = param1;
         var_690 = KeyboardEvent(param2);
         super(param1,param3,param4,param5,false);
      }
      
      public function get keyLocation() : uint
      {
         return var_690.keyLocation;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_690.shiftKey;
      }
      
      public function get charCode() : uint
      {
         return var_690.charCode;
      }
      
      public function get keyCode() : uint
      {
         return var_690.keyCode;
      }
      
      public function get altKey() : Boolean
      {
         return var_690.altKey;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowKeyboardEvent","type","bubbles","cancelable","window","charCode");
      }
      
      override public function clone() : Event
      {
         return new WindowKeyboardEvent(_type,var_690,window,related,bubbles,cancelable);
      }
   }
}
