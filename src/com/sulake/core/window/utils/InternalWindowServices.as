package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_116:DisplayObject;
      
      private var var_2297:uint;
      
      private var var_791:IWindowToolTipAgentService;
      
      private var var_792:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_789:IWindowFocusManagerService;
      
      private var var_790:IWindowMouseListenerService;
      
      private var var_788:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2297 = 0;
         var_116 = param2;
         _windowContext = param1;
         var_788 = new WindowMouseDragger(param2);
         var_792 = new WindowMouseScaler(param2);
         var_790 = new WindowMouseListener(param2);
         var_789 = new FocusManager(param2);
         var_791 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_792;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_789;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_791;
      }
      
      public function dispose() : void
      {
         if(var_788 != null)
         {
            var_788.dispose();
            var_788 = null;
         }
         if(var_792 != null)
         {
            var_792.dispose();
            var_792 = null;
         }
         if(var_790 != null)
         {
            var_790.dispose();
            var_790 = null;
         }
         if(var_789 != null)
         {
            var_789.dispose();
            var_789 = null;
         }
         if(var_791 != null)
         {
            var_791.dispose();
            var_791 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_790;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_788;
      }
   }
}
