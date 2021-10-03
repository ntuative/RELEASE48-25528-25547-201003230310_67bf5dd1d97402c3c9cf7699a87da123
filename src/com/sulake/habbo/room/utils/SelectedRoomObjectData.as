package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_69:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_212:Vector3d = null;
      
      private var var_1625:int = 0;
      
      private var var_1624:String = null;
      
      private var _category:int = 0;
      
      private var var_1626:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_1626 = param3;
         var_69 = new Vector3d();
         var_69.assign(param4);
         var_212 = new Vector3d();
         var_212.assign(param5);
         var_1625 = param6;
         var_1624 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_69;
      }
      
      public function get typeId() : int
      {
         return var_1625;
      }
      
      public function get dir() : Vector3d
      {
         return var_212;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_1624;
      }
      
      public function get operation() : String
      {
         return var_1626;
      }
      
      public function dispose() : void
      {
         var_69 = null;
         var_212 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
