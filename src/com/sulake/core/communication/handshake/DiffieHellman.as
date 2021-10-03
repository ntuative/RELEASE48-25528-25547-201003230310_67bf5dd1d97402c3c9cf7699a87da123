package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1363:BigInteger;
      
      private var var_623:BigInteger;
      
      private var var_1590:BigInteger;
      
      private var var_1591:BigInteger;
      
      private var var_2237:BigInteger;
      
      private var var_2197:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1363 = param1;
         var_1590 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2237.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1591 = new BigInteger();
         var_1591.fromRadix(param1,param2);
         var_2237 = var_1591.modPow(var_623,var_1363);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2197.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1363.toString() + ",generator: " + var_1590.toString() + ",secret: " + param1);
         var_623 = new BigInteger();
         var_623.fromRadix(param1,param2);
         var_2197 = var_1590.modPow(var_623,var_1363);
         return true;
      }
   }
}
