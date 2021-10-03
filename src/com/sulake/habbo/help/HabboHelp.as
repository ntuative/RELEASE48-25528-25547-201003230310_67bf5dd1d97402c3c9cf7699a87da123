package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_2138:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_134:TutorialUI;
      
      private var var_731:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_57:HelpUI;
      
      private var var_732:IHabboConfigurationManager;
      
      private var var_183:IHabboToolbar;
      
      private var var_606:HotelMergeUI;
      
      private var var_315:IHabboCommunicationManager;
      
      private var var_888:FaqIndex;
      
      private var var_2030:String = "";
      
      private var var_1072:IncomingMessages;
      
      private var var_1317:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1317 = new CallForHelpData();
         var_2138 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_888 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_183;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_57 != null)
         {
            var_57.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_57 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_57.toggleUI();
      }
      
      private function removeTutorialUI() : void
      {
         if(var_134 != null)
         {
            var_134.dispose();
            var_134 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_2030;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      override public function dispose() : void
      {
         if(var_57 != null)
         {
            var_57.dispose();
            var_57 = null;
         }
         if(var_134 != null)
         {
            var_134.dispose();
            var_134 = null;
         }
         if(var_606)
         {
            var_606.dispose();
            var_606 = null;
         }
         if(var_888 != null)
         {
            var_888.dispose();
            var_888 = null;
         }
         var_1072 = null;
         if(var_183)
         {
            var_183.release(new IIDHabboToolbar());
            var_183 = null;
         }
         if(var_731)
         {
            var_731.release(new IIDHabboLocalizationManager());
            var_731 = null;
         }
         if(var_315)
         {
            var_315.release(new IIDHabboCommunicationManager());
            var_315 = null;
         }
         if(var_732)
         {
            var_732.release(new IIDHabboConfigurationManager());
            var_732 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_731;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_97:
               if(var_57 != null)
               {
                  var_57.setRoomSessionStatus(true);
               }
               if(var_134 != null)
               {
                  var_134.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_104:
               if(var_57 != null)
               {
                  var_57.setRoomSessionStatus(false);
               }
               if(var_134 != null)
               {
                  var_134.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_57 != null)
         {
            var_57.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_2138;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_57 != null)
         {
            var_57.showCallForHelpResult(param1);
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!var_606)
         {
            var_606 = new HotelMergeUI(this);
         }
         var_606.startNameChange();
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_134 == null && _assetLibrary != null && _windowManager != null)
         {
            var_134 = new TutorialUI(this);
         }
         return var_134 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_57 == null && _assetLibrary != null && _windowManager != null)
         {
            var_57 = new HelpUI(this,_assetLibrary,_windowManager,var_731,var_183);
         }
         return var_57 != null;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1317;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1317.reportedUserId = param1;
         var_1317.reportedUserName = param2;
         var_57.showUI(HabboHelpViewEnum.const_285);
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_2030 = param1;
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_183 != null)
         {
            var_183.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_118,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_731 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_134 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_134.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_315 = IHabboCommunicationManager(param2);
         var_1072 = new IncomingMessages(this,var_315);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_57 != null)
         {
            var_57.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(var_57 != null)
         {
            var_57.hideUI();
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_315 != null && param1 != null)
         {
            var_315.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_888;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_57 != null)
         {
            var_57.updateCallForGuideBotUI(false);
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_183 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_732 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_134;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_87)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_56)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return var_606;
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_97,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_104,onRoomSessionEvent);
         var_183.events.addEventListener(HabboToolbarEvent.const_87,onHabboToolbarEvent);
         var_183.events.addEventListener(HabboToolbarEvent.const_56,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_57 != null)
         {
            var_57.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_732 == null)
         {
            return param1;
         }
         return var_732.getKey(param1,param2,param3);
      }
   }
}
