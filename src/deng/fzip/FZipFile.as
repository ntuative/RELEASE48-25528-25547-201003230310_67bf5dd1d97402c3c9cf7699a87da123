package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_636:int = 8;
      
      public static const const_1525:int = 10;
      
      public static const const_1287:int = 6;
      
      private static var var_1039:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1192:int = 0;
      
      public static const const_1617:int = 1;
      
      public static const const_1599:int = 2;
      
      public static const const_1488:int = 3;
      
      public static const const_1608:int = 4;
      
      public static const const_1538:int = 5;
      
      public static const const_1486:int = 9;
      
      public static const const_1495:int = 7;
       
      
      private var var_173:uint = 0;
      
      private var var_1040:uint = 0;
      
      private var var_705:Date;
      
      private var var_2056:int = -1;
      
      private var parseFunc:Function;
      
      private var var_494:Boolean = false;
      
      private var var_2318:int = -1;
      
      private var var_1284:uint = 0;
      
      private var var_2055:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_861:uint;
      
      private var var_19:ByteArray;
      
      private var var_706:uint;
      
      private var var_1530:Boolean = false;
      
      private var var_2317:int = -1;
      
      private var var_1528:String = "2.0";
      
      private var var_174:Boolean = false;
      
      private var var_2057:Boolean = false;
      
      private var var_350:String;
      
      private var var_592:uint = 0;
      
      private var var_1283:int = 0;
      
      private var var_414:String = "";
      
      private var var_707:int = 8;
      
      private var var_1529:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_350 = param1;
         _extraFields = new Dictionary();
         var_19 = new ByteArray();
         var_19.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_592;
      }
      
      public function set filename(param1:String) : void
      {
         var_414 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_174 && false)
         {
            var_19.position = 0;
            if(var_1039)
            {
               var_19.uncompress.apply(var_19,["deflate"]);
            }
            else
            {
               var_19.uncompress();
            }
            var_19.position = 0;
            var_174 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_414;
      }
      
      public function get date() : Date
      {
         return var_705;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1529)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_173 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_173)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1528;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_174)
         {
            uncompress();
         }
         var_19.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_19.readUTFBytes(var_19.bytesAvailable);
         }
         else
         {
            _loc3_ = var_19.readMultiByte(var_19.bytesAvailable,param2);
         }
         var_19.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_707 === const_636 && !var_1530)
         {
            if(var_1039)
            {
               param1.readBytes(var_19,0,var_173);
            }
            else
            {
               if(!var_494)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_19.writeByte(120);
               _loc2_ = uint(~var_2056 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_19.writeByte(_loc2_);
               param1.readBytes(var_19,2,var_173);
               var_19.position = var_19.length;
               var_19.writeUnsignedInt(var_861);
            }
            var_174 = true;
         }
         else
         {
            if(var_707 != const_1192)
            {
               throw new Error("Compression method " + var_707 + " is not supported.");
            }
            param1.readBytes(var_19,0,var_173);
            var_174 = false;
         }
         var_19.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1040 + var_1284 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_19.length = 0;
         var_19.position = 0;
         var_174 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_19.writeUTFBytes(param1);
            }
            else
            {
               var_19.writeMultiByte(param1,param2);
            }
            var_706 = ChecksumUtil.CRC32(var_19);
            var_494 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_705 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1283 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1283 << 8 | 20);
         param1.writeShort(var_350 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_636);
         var _loc5_:Date = var_705 != null ? var_705 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_706);
         param1.writeUnsignedInt(var_173);
         param1.writeUnsignedInt(var_592);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_350 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_414);
         }
         else
         {
            _loc8_.writeMultiByte(var_414,var_350);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_494)
            {
               _loc16_ = var_174;
               if(_loc16_)
               {
                  uncompress();
               }
               var_861 = ChecksumUtil.Adler32(var_19,0,var_19.length);
               var_494 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_861);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_350 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_2055);
            }
            else
            {
               _loc8_.writeMultiByte(var_2055,var_350);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_173 > 0)
         {
            if(var_1039)
            {
               _loc13_ = 0;
               param1.writeBytes(var_19,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_19,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_173;
      }
      
      protected function compress() : void
      {
         if(!var_174)
         {
            if(false)
            {
               var_19.position = 0;
               var_592 = var_19.length;
               if(var_1039)
               {
                  var_19.compress.apply(var_19,["deflate"]);
                  var_173 = var_19.length;
               }
               else
               {
                  var_19.compress();
                  var_173 = -6;
               }
               var_19.position = 0;
               var_174 = true;
            }
            else
            {
               var_173 = 0;
               var_592 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1040 + var_1284)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_350 == "utf-8")
         {
            var_414 = param1.readUTFBytes(var_1040);
         }
         else
         {
            var_414 = param1.readMultiByte(var_1040,var_350);
         }
         var _loc2_:uint = var_1284;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_414 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_861 = param1.readUnsignedInt();
               var_494 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1283 = _loc2_ >> 8;
         var_1528 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_707 = param1.readUnsignedShort();
         var_1530 = (_loc3_ & 1) !== 0;
         var_1529 = (_loc3_ & 8) !== 0;
         var_2057 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_350 = "utf-8";
         }
         if(var_707 === const_1287)
         {
            var_2317 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2318 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_707 === const_636)
         {
            var_2056 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_705 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_706 = param1.readUnsignedInt();
         var_173 = param1.readUnsignedInt();
         var_592 = param1.readUnsignedInt();
         var_1040 = param1.readUnsignedShort();
         var_1284 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_19,0,param1.length);
            var_706 = ChecksumUtil.CRC32(var_19);
            var_494 = false;
         }
         else
         {
            var_19.length = 0;
            var_19.position = 0;
            var_174 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_414 + "\n  date:" + var_705 + "\n  sizeCompressed:" + var_173 + "\n  sizeUncompressed:" + var_592 + "\n  versionHost:" + var_1283 + "\n  versionNumber:" + var_1528 + "\n  compressionMethod:" + var_707 + "\n  encrypted:" + var_1530 + "\n  hasDataDescriptor:" + var_1529 + "\n  hasCompressedPatchedData:" + var_2057 + "\n  filenameEncoding:" + var_350 + "\n  crc32:" + var_706.toString(16) + "\n  adler32:" + var_861.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_174)
         {
            uncompress();
         }
         return var_19;
      }
   }
}
