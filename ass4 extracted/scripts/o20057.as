package
{
   import flash.utils.ByteArray;
   
   public class o20057
   {
      
      public static var o2255:ByteArray;
       
      
      public function o20057()
      {
         super();
      }
      
      public static function o5056(param1:String) : String
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         return o18484(_loc2_);
      }
      
      public static function o1183(param1:ByteArray) : String
      {
         return o18484(param1);
      }
      
      public static function o18484(param1:ByteArray) : String
      {
         var _loc2_:* = 0;
         var _loc9_:* = 0;
         var _loc6_:* = 0;
         var _loc10_:* = 0;
         var _loc5_:int = 0;
         var _loc12_:int = 1732584193;
         var _loc8_:int = -271733879;
         var _loc3_:int = -1732584194;
         var _loc7_:int = 271733878;
         var _loc11_:Array = o12633(param1);
         var _loc4_:int = _loc11_.length;
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_ = _loc12_;
            _loc9_ = _loc8_;
            _loc6_ = _loc3_;
            _loc10_ = _loc7_;
            _loc12_ = o13958(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 0)],7,-680876936);
            _loc7_ = o13958(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 1)],12,-389564586);
            _loc3_ = o13958(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 2)],17,606105819);
            _loc8_ = o13958(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 3)],22,-1044525330);
            _loc12_ = o13958(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 4)],7,-176418897);
            _loc7_ = o13958(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 5)],12,1200080426);
            _loc3_ = o13958(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 6)],17,-1473231341);
            _loc8_ = o13958(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 7)],22,-45705983);
            _loc12_ = o13958(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 8)],7,1770035416);
            _loc7_ = o13958(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 9)],12,-1958414417);
            _loc3_ = o13958(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 10)],17,-42063);
            _loc8_ = o13958(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 11)],22,-1990404162);
            _loc12_ = o13958(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 12)],7,1804603682);
            _loc7_ = o13958(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 13)],12,-40341101);
            _loc3_ = o13958(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 14)],17,-1502002290);
            _loc8_ = o13958(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 15)],22,1236535329);
            _loc12_ = o17873(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 1)],5,-165796510);
            _loc7_ = o17873(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 6)],9,-1069501632);
            _loc3_ = o17873(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 11)],14,643717713);
            _loc8_ = o17873(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 0)],20,-373897302);
            _loc12_ = o17873(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 5)],5,-701558691);
            _loc7_ = o17873(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 10)],9,38016083);
            _loc3_ = o17873(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 15)],14,-660478335);
            _loc8_ = o17873(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 4)],20,-405537848);
            _loc12_ = o17873(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 9)],5,568446438);
            _loc7_ = o17873(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 14)],9,-1019803690);
            _loc3_ = o17873(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 3)],14,-187363961);
            _loc8_ = o17873(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 8)],20,1163531501);
            _loc12_ = o17873(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 13)],5,-1444681467);
            _loc7_ = o17873(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 2)],9,-51403784);
            _loc3_ = o17873(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 7)],14,1735328473);
            _loc8_ = o17873(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 12)],20,-1926607734);
            _loc12_ = o6373(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 5)],4,-378558);
            _loc7_ = o6373(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 8)],11,-2022574463);
            _loc3_ = o6373(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 11)],16,1839030562);
            _loc8_ = o6373(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 14)],23,-35309556);
            _loc12_ = o6373(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 1)],4,-1530992060);
            _loc7_ = o6373(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 4)],11,1272893353);
            _loc3_ = o6373(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 7)],16,-155497632);
            _loc8_ = o6373(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 10)],23,-1094730640);
            _loc12_ = o6373(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 13)],4,681279174);
            _loc7_ = o6373(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 0)],11,-358537222);
            _loc3_ = o6373(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 3)],16,-722521979);
            _loc8_ = o6373(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 6)],23,76029189);
            _loc12_ = o6373(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 9)],4,-640364487);
            _loc7_ = o6373(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 12)],11,-421815835);
            _loc3_ = o6373(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 15)],16,530742520);
            _loc8_ = o6373(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 2)],23,-995338651);
            _loc12_ = o6686(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 0)],6,-198630844);
            _loc7_ = o6686(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 7)],10,1126891415);
            _loc3_ = o6686(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 14)],15,-1416354905);
            _loc8_ = o6686(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 5)],21,-57434055);
            _loc12_ = o6686(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 12)],6,1700485571);
            _loc7_ = o6686(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 3)],10,-1894986606);
            _loc3_ = o6686(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 10)],15,-1051523);
            _loc8_ = o6686(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 1)],21,-2054922799);
            _loc12_ = o6686(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 8)],6,1873313359);
            _loc7_ = o6686(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 15)],10,-30611744);
            _loc3_ = o6686(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 6)],15,-1560198380);
            _loc8_ = o6686(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 13)],21,1309151649);
            _loc12_ = o6686(_loc12_,_loc8_,_loc3_,_loc7_,_loc11_[int(_loc5_ + 4)],6,-145523070);
            _loc7_ = o6686(_loc7_,_loc12_,_loc8_,_loc3_,_loc11_[int(_loc5_ + 11)],10,-1120210379);
            _loc3_ = o6686(_loc3_,_loc7_,_loc12_,_loc8_,_loc11_[int(_loc5_ + 2)],15,718787259);
            _loc8_ = o6686(_loc8_,_loc3_,_loc7_,_loc12_,_loc11_[int(_loc5_ + 9)],21,-343485551);
            _loc12_ = _loc12_ + _loc2_;
            _loc8_ = _loc8_ + _loc9_;
            _loc3_ = _loc3_ + _loc6_;
            _loc7_ = _loc7_ + _loc10_;
            _loc5_ = _loc5_ + 16;
         }
         o2255 = new ByteArray();
         o2255.writeInt(_loc12_);
         o2255.writeInt(_loc8_);
         o2255.writeInt(_loc3_);
         o2255.writeInt(_loc7_);
         o2255.position = 0;
         return o9096.o15277(_loc12_) + o9096.o15277(_loc8_) + o9096.o15277(_loc3_) + o9096.o15277(_loc7_);
      }
      
      private static function o6352(param1:int, param2:int, param3:int) : int
      {
         return param1 & param2 | ~param1 & param3;
      }
      
      private static function g(param1:int, param2:int, param3:int) : int
      {
         return param1 & param3 | param2 & ~param3;
      }
      
      private static function o7068(param1:int, param2:int, param3:int) : int
      {
         return param1 ^ param2 ^ param3;
      }
      
      private static function o1903(param1:int, param2:int, param3:int) : int
      {
         return param2 ^ (param1 | ~param3);
      }
      
      private static function transform(param1:Function, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int) : int
      {
         var _loc9_:int = param2 + int(param1(param3,param4,param5)) + param6 + param8;
         return o9096.o16995(_loc9_,param7) + param3;
      }
      
      private static function o13958(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return transform(o6352,param1,param2,param3,param4,param5,param6,param7);
      }
      
      private static function o17873(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return transform(g,param1,param2,param3,param4,param5,param6,param7);
      }
      
      private static function o6373(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return transform(o7068,param1,param2,param3,param4,param5,param6,param7);
      }
      
      private static function o6686(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return transform(o1903,param1,param2,param3,param4,param5,param6,param7);
      }
      
      private static function o12633(param1:ByteArray) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:Array = [];
         var _loc2_:int = param1.length * 8;
         var _loc5_:int = 255;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            var _loc6_:* = _loc3_ >> 5;
            var _loc7_:* = _loc4_[_loc6_] | (param1[_loc3_ / 8] & _loc5_) << _loc3_ % 32;
            _loc4_[_loc6_] = _loc7_;
            _loc3_ = _loc3_ + 8;
         }
         _loc7_ = _loc2_ >> 5;
         _loc6_ = _loc4_[_loc7_] | 128 << _loc2_ % 32;
         _loc4_[_loc7_] = _loc6_;
         _loc4_[int((_loc2_ + 64 >>> 9 << 4) + 14)] = _loc2_;
         return _loc4_;
      }
   }
}
