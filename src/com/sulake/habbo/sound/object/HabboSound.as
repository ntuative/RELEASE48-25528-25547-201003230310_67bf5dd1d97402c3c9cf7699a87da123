package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1033:SoundChannel = null;
      
      private var var_852:Boolean;
      
      private var var_1032:Sound = null;
      
      private var var_643:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1032 = param1;
         var_1032.addEventListener(Event.COMPLETE,onComplete);
         var_643 = 1;
         var_852 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_852;
      }
      
      public function stop() : Boolean
      {
         var_1033.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_852 = false;
         var_1033 = var_1032.play(0);
         this.volume = var_643;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_643;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1033.position;
      }
      
      public function get length() : Number
      {
         return var_1032.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_643 = param1;
         if(var_1033 != null)
         {
            var_1033.soundTransform = new SoundTransform(var_643);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_852 = true;
      }
   }
}
