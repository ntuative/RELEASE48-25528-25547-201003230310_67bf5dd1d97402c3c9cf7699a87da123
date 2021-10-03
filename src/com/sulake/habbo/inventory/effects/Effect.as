package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_2223:Date;
      
      private var var_1355:Boolean = false;
      
      private var _type:int;
      
      private var var_369:BitmapData;
      
      private var var_270:Boolean = false;
      
      private var var_1160:int;
      
      private var var_621:int = 1;
      
      private var var_1084:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_369;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_621;
         if(var_621 < 0)
         {
            var_621 = 0;
         }
         var_1084 = var_1160;
         var_270 = false;
         var_1355 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1084 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_270;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_369 = param1;
      }
      
      public function get duration() : int
      {
         return var_1160;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1355;
      }
      
      public function get effectsInInventory() : int
      {
         return var_621;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_369;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_270)
         {
            var_2223 = new Date();
         }
         var_270 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_621 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_270)
         {
            _loc1_ = var_1084 - (new Date().valueOf() - var_2223.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1084;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1355 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1160 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
