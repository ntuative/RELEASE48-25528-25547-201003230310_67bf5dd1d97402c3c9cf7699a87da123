package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_524:int = 6;
      
      public static const const_209:int = 5;
      
      public static const const_719:int = 2;
      
      public static const const_297:int = 9;
      
      public static const const_327:int = 4;
      
      public static const const_272:int = 2;
      
      public static const const_658:int = 4;
      
      public static const const_210:int = 8;
      
      public static const const_732:int = 7;
      
      public static const const_275:int = 3;
      
      public static const const_316:int = 1;
      
      public static const const_195:int = 5;
      
      public static const const_356:int = 12;
      
      public static const const_307:int = 1;
      
      public static const const_510:int = 11;
      
      public static const const_569:int = 3;
      
      public static const const_1618:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_431:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_431 = new Array();
         var_431.push(new Tab(_navigator,const_316,const_356,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_395));
         var_431.push(new Tab(_navigator,const_272,const_307,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_395));
         var_431.push(new Tab(_navigator,const_327,const_510,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_862));
         var_431.push(new Tab(_navigator,const_275,const_209,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_395));
         var_431.push(new Tab(_navigator,const_195,const_210,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_574));
         setSelectedTab(const_316);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_431)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_431)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_431)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_327;
      }
      
      public function get tabs() : Array
      {
         return var_431;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
