package
{
   import flash.system.Capabilities;
   
   public class o18293
   {
      
      private static var o13153:Number = 0;
       
      
      public function o18293()
      {
         super();
      }
      
      public static function create() : String
      {
         var _loc1_:Date = new Date();
         var _loc3_:Number = _loc1_.getTime();
         var _loc2_:Number = Math.random() * 1.79769313486232e308;
         var _loc6_:String = Capabilities.serverString;
         o13153 = Number(o13153) + 1;
         var _loc4_:String = o19468(_loc3_ + _loc6_ + _loc2_ + Number(o13153)).toUpperCase();
         var _loc5_:String = _loc4_.substring(0,8) + "-" + _loc4_.substring(8,12) + "-" + _loc4_.substring(12,16) + "-" + _loc4_.substring(16,20) + "-" + _loc4_.substring(20,32);
         return _loc5_;
      }
      
      private static function o19468(param1:String) : String
      {
         return o17653(param1);
      }
      
      private static function o17653(param1:String) : String
      {
         return o7845(o4908(o11822(param1),param1.length * 8));
      }
      
      private static function o4908(param1:Array, param2:Number) : Array
      {
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc9_:* = NaN;
         var _loc4_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc17_:* = param2 >> 5;
         var _loc18_:* = param1[_loc17_] | 128 << 24 - param2 % 32;
         param1[_loc17_] = _loc18_;
         param1[(param2 + 64 >> 9 << 4) + 15] = param2;
         var _loc12_:Array = new Array(80);
         var _loc11_:* = 1732584193;
         var _loc8_:* = -271733879;
         var _loc3_:* = -1732584194;
         var _loc14_:* = 271733878;
         var _loc13_:* = -1009589776;
         _loc6_ = 0;
         while(_loc6_ < param1.length)
         {
            _loc7_ = _loc11_;
            var _loc16_:* = _loc8_;
            _loc9_ = _loc3_;
            var _loc5_:* = _loc14_;
            var _loc15_:* = _loc13_;
            _loc4_ = 0;
            while(_loc4_ < 80)
            {
               if(_loc4_ < 16)
               {
                  _loc12_[_loc4_] = param1[_loc6_ + _loc4_];
               }
               else
               {
                  _loc12_[_loc4_] = o16995(_loc12_[_loc4_ - 3] ^ _loc12_[_loc4_ - 8] ^ _loc12_[_loc4_ - 14] ^ _loc12_[_loc4_ - 16],1);
               }
               _loc10_ = o5542(o5542(o16995(_loc11_,5),o9321(_loc4_,_loc8_,_loc3_,_loc14_)),o5542(o5542(_loc13_,_loc12_[_loc4_]),o20334(_loc4_)));
               _loc13_ = _loc14_;
               _loc14_ = _loc3_;
               _loc3_ = Number(o16995(_loc8_,30));
               _loc8_ = _loc11_;
               _loc11_ = _loc10_;
               _loc4_++;
            }
            _loc11_ = Number(o5542(_loc11_,_loc7_));
            _loc8_ = Number(o5542(_loc8_,_loc16_));
            _loc3_ = Number(o5542(_loc3_,_loc9_));
            _loc14_ = Number(o5542(_loc14_,_loc5_));
            _loc13_ = Number(o5542(_loc13_,_loc15_));
            _loc6_ = Number(_loc6_ + 16);
         }
         return new Array(_loc11_,_loc8_,_loc3_,_loc14_,_loc13_);
      }
      
      private static function o9321(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         if(param1 < 20)
         {
            return param2 & param3 | ~param2 & param4;
         }
         if(param1 < 40)
         {
            return param2 ^ param3 ^ param4;
         }
         if(param1 < 60)
         {
            return param2 & param3 | param2 & param4 | param3 & param4;
         }
         return param2 ^ param3 ^ param4;
      }
      
      private static function o20334(param1:Number) : Number
      {
         return param1 < 20?1518500249:param1 < 40?1859775393:param1 < 60?-1894007588:-899497514;
      }
      
      private static function o5542(param1:Number, param2:Number) : Number
      {
         var _loc4_:Number = (param1 & 65535) + (param2 & 65535);
         var _loc3_:Number = (param1 >> 16) + (param2 >> 16) + (_loc4_ >> 16);
         return _loc3_ << 16 | _loc4_ & 65535;
      }
      
      private static function o16995(param1:Number, param2:Number) : Number
      {
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      private static function o11822(param1:String) : Array
      {
         var _loc2_:* = NaN;
         var _loc4_:Array = [];
         var _loc3_:Number = 255;
         _loc2_ = 0;
         while(_loc2_ < param1.length * 8)
         {
            var _loc5_:* = _loc2_ >> 5;
            var _loc6_:* = _loc4_[_loc5_] | (param1.charCodeAt(_loc2_ / 8) & _loc3_) << 24 - _loc2_ % 32;
            _loc4_[_loc5_] = _loc6_;
            _loc2_ = Number(_loc2_ + 8);
         }
         return _loc4_;
      }
      
      private static function o7845(param1:Array) : String
      {
         var _loc4_:* = NaN;
         var _loc2_:String = new String("");
         var _loc3_:String = new String("0123456789abcdef");
         _loc4_ = 0;
         while(_loc4_ < param1.length * 4)
         {
            _loc2_ = _loc2_ + (_loc3_.charAt(param1[_loc4_ >> 2] >> (3 - _loc4_ % 4) * 8 + 4 & 15) + _loc3_.charAt(param1[_loc4_ >> 2] >> (3 - _loc4_ % 4) * 8 & 15));
            _loc4_++;
         }
         return _loc2_;
      }
   }
}
