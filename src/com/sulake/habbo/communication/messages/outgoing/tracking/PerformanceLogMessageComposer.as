package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_963:int = 0;
      
      private var var_1330:int = 0;
      
      private var var_1701:String = "";
      
      private var var_962:int = 0;
      
      private var var_2168:String = "";
      
      private var var_2171:int = 0;
      
      private var var_1412:String = "";
      
      private var var_2170:int = 0;
      
      private var var_2172:int = 0;
      
      private var var_1705:String = "";
      
      private var var_2169:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2170 = param1;
         var_1705 = param2;
         var_1412 = param3;
         var_1701 = param4;
         var_2168 = param5;
         if(param6)
         {
            var_1330 = 1;
         }
         else
         {
            var_1330 = 0;
         }
         var_2171 = param7;
         var_2172 = param8;
         var_962 = param9;
         var_2169 = param10;
         var_963 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2170,var_1705,var_1412,var_1701,var_2168,var_1330,var_2171,var_2172,var_962,var_2169,var_963];
      }
      
      public function dispose() : void
      {
      }
   }
}
