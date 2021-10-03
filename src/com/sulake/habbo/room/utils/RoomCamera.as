package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_346:Number = 0.5;
      
      private static const const_769:int = 3;
      
      private static const const_1088:Number = 1;
       
      
      private var var_1922:Boolean = false;
      
      private var var_1917:Boolean = false;
      
      private var var_1016:int = 0;
      
      private var var_256:Vector3d = null;
      
      private var var_1915:int = 0;
      
      private var var_1913:int = 0;
      
      private var var_1918:Boolean = false;
      
      private var var_1919:int = -2;
      
      private var var_1916:Boolean = false;
      
      private var var_1921:int = 0;
      
      private var var_1914:int = -1;
      
      private var var_404:Vector3d = null;
      
      private var var_1920:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1915;
      }
      
      public function get targetId() : int
      {
         return var_1914;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1921 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1915 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1922 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1914 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1917 = param1;
      }
      
      public function dispose() : void
      {
         var_404 = null;
         var_256 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_404 == null)
         {
            var_404 = new Vector3d();
         }
         var_404.assign(param1);
         var_1016 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1919;
      }
      
      public function get screenHt() : int
      {
         return var_1920;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1913 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_256;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1920 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1921;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1922;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1917;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_404 != null && var_256 != null)
         {
            ++var_1016;
            _loc2_ = Vector3d.dif(var_404,var_256);
            if(_loc2_.length <= const_346)
            {
               var_256 = var_404;
               var_404 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_346 * (const_769 + 1))
               {
                  _loc2_.mul(const_346);
               }
               else if(var_1016 <= const_769)
               {
                  _loc2_.mul(const_346);
               }
               else
               {
                  _loc2_.mul(const_1088);
               }
               var_256 = Vector3d.sum(var_256,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1918 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1913;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1916 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1919 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_256 != null)
         {
            return;
         }
         var_256 = new Vector3d();
         var_256.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1918;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1916;
      }
   }
}
