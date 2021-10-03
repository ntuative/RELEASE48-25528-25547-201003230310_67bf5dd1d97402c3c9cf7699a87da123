package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1411:int = 10;
       
      
      private var var_1408:NavigatorSettingsMessageParser;
      
      private var var_1142:int;
      
      private var var_1686:int;
      
      private var var_1682:Boolean;
      
      private var var_960:Array;
      
      private var var_770:Dictionary;
      
      private var var_961:Array;
      
      private var var_2290:int;
      
      private var var_1685:int;
      
      private var var_1681:int;
      
      private var var_1684:int;
      
      private var var_547:PublicRoomShortData;
      
      private var var_378:RoomEventData;
      
      private var var_118:MsgWithRequestId;
      
      private var var_1633:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1683:Boolean;
      
      private var var_186:GuestRoomData;
      
      private var var_646:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_960 = new Array();
         var_961 = new Array();
         var_770 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1686;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1683;
      }
      
      public function startLoading() : void
      {
         this.var_646 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1683 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_378 != null)
         {
            var_378.dispose();
         }
         var_378 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_118 != null && var_118 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_118 != null && var_118 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_118 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_186;
      }
      
      public function get allCategories() : Array
      {
         return var_960;
      }
      
      public function onRoomExit() : void
      {
         if(var_378 != null)
         {
            var_378.dispose();
            var_378 = null;
         }
         if(var_547 != null)
         {
            var_547.dispose();
            var_547 = null;
         }
         if(var_186 != null)
         {
            var_186.dispose();
            var_186 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_118 = param1;
         var_646 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1408;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_118 = param1;
         var_646 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_547 = null;
         var_186 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_547 = param1.publicSpace;
            var_378 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2290 = param1.limit;
         this.var_1142 = param1.favouriteRoomIds.length;
         this.var_770 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_770[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_118 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_547;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1682;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_118 = param1;
         var_646 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1681 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_186 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_646;
      }
      
      public function get visibleCategories() : Array
      {
         return var_961;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_960 = param1;
         var_961 = new Array();
         for each(_loc2_ in var_960)
         {
            if(_loc2_.visible)
            {
               var_961.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1685;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1684;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1408 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_118 == null)
         {
            return;
         }
         var_118.dispose();
         var_118 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_378;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_770[param1] = !!param2 ? "yes" : null;
         var_1142 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_118 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1681;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_118 != null && var_118 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1682 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1685 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1633 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_186 != null)
         {
            var_186.dispose();
         }
         var_186 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_186 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1408.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1142 >= var_2290;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1684 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1633;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_186 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1686 = param1;
      }
   }
}
