package com.sulake.habbo.friendlist.domain
{
   import com.sulake.habbo.friendlist.FriendRequestsView;
   import com.sulake.habbo.friendlist.FriendsView;
   import com.sulake.habbo.friendlist.SearchView;
   
   public class FriendListTabs
   {
       
      
      private var var_1908:int = 200;
      
      private var var_679:int = 200;
      
      private var var_387:IFriendListTabsDeps;
      
      private var var_431:Array;
      
      private var var_1475:FriendListTab;
      
      private var var_1474:int = 200;
      
      public function FriendListTabs(param1:IFriendListTabsDeps)
      {
         var_431 = new Array();
         super();
         var_387 = param1;
         var_431.push(new FriendListTab(var_387.getFriendList(),FriendListTab.const_82,new FriendsView(),"${friendlist.friends}","friends_footer","hdr_friends"));
         var_431.push(new FriendListTab(var_387.getFriendList(),FriendListTab.const_88,new FriendRequestsView(),"${friendlist.tab.friendrequests}","friend_requests_footer","hdr_friend_requests"));
         var_431.push(new FriendListTab(var_387.getFriendList(),FriendListTab.const_319,new SearchView(),"${generic.search}","search_footer","hdr_search"));
         toggleSelected(null);
      }
      
      public function findSelectedTab() : FriendListTab
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
      
      public function get tabContentWidth() : int
      {
         return var_1474 - 2;
      }
      
      public function toggleSelected(param1:FriendListTab) : void
      {
         var _loc2_:FriendListTab = findSelectedTab();
         if(_loc2_ == null)
         {
            var_679 = var_1908;
            setSelected(determineDisplayedTab(param1),true);
         }
         else if(_loc2_ == param1 || param1 == null)
         {
            var_1908 = var_679;
            var_679 = 0;
            clearSelections();
         }
         else
         {
            setSelected(determineDisplayedTab(param1),true);
         }
      }
      
      public function clearSelections() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_431)
         {
            _loc1_.setSelected(false);
         }
      }
      
      public function set tabContentHeight(param1:int) : void
      {
         var_679 = param1;
      }
      
      public function findTab(param1:int) : FriendListTab
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
      
      private function setSelected(param1:FriendListTab, param2:Boolean) : void
      {
         var _loc3_:FriendListTab = findSelectedTab();
         clearSelections();
         param1.setSelected(param2);
         if(param2)
         {
            var_1475 = param1;
         }
      }
      
      private function determineDisplayedTab(param1:FriendListTab) : FriendListTab
      {
         if(param1 != null)
         {
            return param1;
         }
         if(var_1475 != null)
         {
            return var_1475;
         }
         return var_431[0];
      }
      
      public function get tabContentHeight() : int
      {
         return var_679;
      }
      
      public function set windowWidth(param1:int) : void
      {
         var_1474 = param1;
      }
      
      public function getTabs() : Array
      {
         return var_431;
      }
      
      public function get windowWidth() : int
      {
         return var_1474;
      }
   }
}
