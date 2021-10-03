package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1990:int;
      
      private var var_1992:String;
      
      private var var_1443:IActionDefinition;
      
      private var var_1987:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1986:String;
      
      private var var_1989:String;
      
      private var var_1993:Boolean;
      
      private var var_1991:ColorTransform;
      
      private var var_1988:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1992 = param1;
         var_1986 = param2;
         var_1990 = param3;
         _color = param4;
         _frames = param5;
         var_1443 = param6;
         var_1993 = param7;
         var_1988 = param8;
         var_1989 = param9;
         var_1987 = param10;
         var_1991 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1993;
      }
      
      public function get partType() : String
      {
         return var_1986;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1988;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1987;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1990;
      }
      
      public function get flippedPartType() : String
      {
         return var_1989;
      }
      
      public function get bodyPartId() : String
      {
         return var_1992;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1443;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1991;
      }
   }
}
