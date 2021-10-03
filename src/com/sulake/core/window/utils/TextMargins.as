package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_921:int;
      
      private var _right:int;
      
      private var var_922:int;
      
      private var var_920:int;
      
      private var var_181:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_922 = param1;
         var_920 = param2;
         _right = param3;
         var_921 = param4;
         var_181 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_921 = param1;
         var_181(this);
      }
      
      public function get left() : int
      {
         return var_922;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_922 == 0 && _right == 0 && var_920 == 0 && var_921 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_920 = param1;
         var_181(this);
      }
      
      public function get top() : int
      {
         return var_920;
      }
      
      public function set left(param1:int) : void
      {
         var_922 = param1;
         var_181(this);
      }
      
      public function get bottom() : int
      {
         return var_921;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_922,var_920,_right,var_921,param1);
      }
      
      public function dispose() : void
      {
         var_181 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_181(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
