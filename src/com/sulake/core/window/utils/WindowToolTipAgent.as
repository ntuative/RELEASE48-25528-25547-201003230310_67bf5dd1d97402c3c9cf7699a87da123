package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_326:Timer;
      
      protected var var_940:String;
      
      protected var var_941:uint;
      
      protected var var_1110:Point;
      
      protected var var_243:IToolTipWindow;
      
      protected var var_1111:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1110 = new Point();
         var_1111 = new Point(20,20);
         var_941 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_326 != null)
         {
            var_326.stop();
            var_326.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_326 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1110);
            if(var_243 != null && true)
            {
               var_243.x = param1 + var_1111.x;
               var_243.y = param2 + var_1111.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_326 != null)
         {
            var_326.reset();
         }
         if(_window && true)
         {
            if(var_243 == null || false)
            {
               var_243 = _window.context.create("undefined::ToolTip",var_940,WindowType.const_284,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_243.x = _loc2_.x + var_1110.x + var_1111.x;
            var_243.y = _loc2_.y + var_1110.y + var_1111.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_940 = IInteractiveWindow(param1).toolTipCaption;
               var_941 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_940 = param1.caption;
               var_941 = 500;
            }
            _mouse.x = var_116.mouseX;
            _mouse.y = var_116.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1110);
            if(var_940 != null && var_940 != "")
            {
               if(var_326 == null)
               {
                  var_326 = new Timer(var_941,1);
                  var_326.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_326.reset();
               var_326.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_243 != null && true)
         {
            var_243.destroy();
            var_243 = null;
         }
      }
   }
}
