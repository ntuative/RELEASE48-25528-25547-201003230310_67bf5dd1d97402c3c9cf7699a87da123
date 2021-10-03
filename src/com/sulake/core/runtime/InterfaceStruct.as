package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_419:uint;
      
      private var var_1049:IUnknown;
      
      private var var_1294:String;
      
      private var var_1050:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1050 = param1;
         var_1294 = getQualifiedClassName(var_1050);
         var_1049 = param2;
         var_419 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1050;
      }
      
      public function get disposed() : Boolean
      {
         return var_1049 == null;
      }
      
      public function get references() : uint
      {
         return var_419;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_419) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1049;
      }
      
      public function get iis() : String
      {
         return var_1294;
      }
      
      public function reserve() : uint
      {
         return ++var_419;
      }
      
      public function dispose() : void
      {
         var_1050 = null;
         var_1294 = null;
         var_1049 = null;
         var_419 = 0;
      }
   }
}
