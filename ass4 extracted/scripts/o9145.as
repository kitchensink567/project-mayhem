package
{
   import flash.utils.Dictionary;
   
   public class o9145
   {
       
      
      public var o4995:Boolean = false;
      
      public var o4900:Boolean = true;
      
      public var o17349:String;
      
      public var o717:int = 1;
      
      public var o12405:Boolean = false;
      
      public var o4256:Vector.<o1253>;
      
      public var o11620:Vector.<o14096>;
      
      private var o560:o16123;
      
      public var o17638:o590;
      
      public var o3525:o9503;
      
      public var o12110:String;
      
      private var o8698:o16123;
      
      private var o5641:o16123;
      
      private var o16122:o16123;
      
      public var o15733:Boolean = false;
      
      public var o7993:Vector.<o14096>;
      
      public var o19419:o14200;
      
      public var o420:Vector.<o1253>;
      
      public var o2671:Vector.<o6197>;
      
      public var o8312:Vector.<int>;
      
      public var o6864:Vector.<o14096>;
      
      public var o2575:Vector.<o1253>;
      
      public var o11248:Vector.<int>;
      
      private var o11786:o16123;
      
      public var o17808:Boolean = false;
      
      public var o13308:Boolean = false;
      
      public var o12667:Boolean = true;
      
      public var o16611:int = 0;
      
      public var o1078:int = 0;
      
      public var o19697:int = 0;
      
      public var o7129:int = 0;
      
      public var o18006:int = 0;
      
      public var o16996:Boolean = false;
      
      public var o2922:Boolean = false;
      
      public var o20770:Boolean = false;
      
      public var o19958:Boolean = false;
      
      public var o11661:Boolean = true;
      
      private var o15313:o16123;
      
      private var o2164:o16123;
      
      private var o2589:o16123;
      
      private var o16871:o16123;
      
      private var o5087:o16123;
      
      private var o776:o16123;
      
      private var o12442:o16123;
      
      private var o5436:o16123;
      
      private var o19638:o16123;
      
      private var o7377:o15787;
      
      private var o2235:o16123;
      
      private var o6241:o16123;
      
      public var o17630:Dictionary;
      
      public var o13649:Dictionary;
      
      public var o12569:Boolean = false;
      
      public var o17178:Boolean = false;
      
      public var o19910:Boolean = false;
      
      public var o18643:Array;
      
      public var o7188:Vector.<int> = null;
      
      public var o13560:Vector.<int> = null;
      
      private var o10490:o15787;
      
      private var o19943:o16123;
      
      public var o13012:o11995;
      
      private var o13820:o16123;
      
      private var o16667:o16123;
      
      private var o19657:o16123;
      
      private var o17180:o16123;
      
      private var o2581:o16123;
      
      private var o10130:o16123;
      
      public function o9145(param1:o14200)
      {
         o17349 = "";
         o11620 = new Vector.<o14096>();
         o560 = new o16123(0);
         o8698 = new o16123(1);
         o5641 = new o16123(0);
         o16122 = new o16123(0);
         o7993 = new Vector.<o14096>();
         o420 = new Vector.<o1253>();
         o2671 = new Vector.<o6197>();
         o8312 = new Vector.<int>();
         o6864 = new Vector.<o14096>();
         o2575 = new Vector.<o1253>();
         o11248 = new Vector.<int>();
         o11786 = new o16123(0);
         o15313 = new o16123(0);
         o2164 = new o16123(0);
         o2589 = new o16123(0);
         o16871 = new o16123(0);
         o5087 = new o16123(0);
         o776 = new o16123(0);
         o12442 = new o16123(0);
         o5436 = new o16123(0);
         o19638 = new o16123(0);
         o7377 = new o15787(0);
         o2235 = new o16123(0);
         o6241 = new o16123(0);
         o17630 = new Dictionary();
         o13649 = new Dictionary();
         o18643 = [];
         o10490 = new o15787(0);
         o19943 = new o16123(0);
         o13012 = new o11995();
         o13820 = new o16123(0);
         o16667 = new o16123(0);
         o19657 = new o16123(0);
         o17180 = new o16123(0);
         o2581 = new o16123(0);
         o10130 = new o16123(0);
         super();
         this.o19419 = param1;
         o20170 = param1.o19552.o3554("newCharacter.cash");
         o17638 = new o590(this,param1.o5292.o18982);
         o3525 = new o9503(this,param1);
      }
      
      public function get o11108() : String
      {
         return "Level description " + level;
      }
      
      public function get o6333() : int
      {
         return o11786.value;
      }
      
      public function set o6333(param1:int) : void
      {
         o11786.value = param1;
      }
      
      public function get o12332() : int
      {
         return o6241.value;
      }
      
      public function set o12332(param1:int) : void
      {
         o6241.value = param1;
      }
      
      public function o14370() : Boolean
      {
         return o5662 >= o19419.o5292.o418.o19447();
      }
      
      public function o10067() : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         if(o7188 != null)
         {
            return;
         }
         o7188 = new Vector.<int>();
         o13560 = new Vector.<int>();
         var _loc1_:int = o9607.o8102.length;
         _loc3_ = 0;
         while(_loc3_ <= o4189.o16191)
         {
            _loc2_ = Math.random() * 2147483647;
            o7188.push(_loc2_ % _loc1_);
            o13560.push(0);
            _loc3_++;
         }
      }
      
      public function get o3562() : int
      {
         return o15313.value + o2164.value;
      }
      
      public function get o20269() : int
      {
         return o2589.value + o16871.value;
      }
      
      public function get o2274() : int
      {
         return o16122.value;
      }
      
      public function get o8326() : int
      {
         return o2589.value;
      }
      
      public function get o2988() : int
      {
         return o16871.value;
      }
      
      public function get o18704() : int
      {
         return o5087.value;
      }
      
      public function get o6470() : int
      {
         return o776.value;
      }
      
      public function get o14575() : int
      {
         return o15313.value;
      }
      
      public function get o20831() : int
      {
         return o2164.value;
      }
      
      public function get o3710() : int
      {
         return o12442.value;
      }
      
      public function get o12159() : int
      {
         return o5436.value;
      }
      
      public function get o5662() : Number
      {
         return o7377.value;
      }
      
      public function get o15202() : int
      {
         return o2235.value;
      }
      
      public function get o7768() : int
      {
         return o19638.value;
      }
      
      public function set o7768(param1:int) : void
      {
         o19638.value = param1;
      }
      
      public function get o10192() : int
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<o17905> = o19419.o5292.o418.o2802;
         var _loc4_:int = o19419.o5292.o418.o16180(o15202);
         var _loc3_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < _loc4_)
         {
            _loc3_ = _loc3_ + _loc1_[_loc2_].o8061;
            _loc2_++;
         }
         return _loc3_;
      }
      
      public function set o2274(param1:int) : void
      {
         o16122.value = param1;
      }
      
      public function set o14575(param1:int) : void
      {
         o15313.value = param1;
      }
      
      public function set o8326(param1:int) : void
      {
         o2589.value = param1;
      }
      
      public function set o18704(param1:int) : void
      {
         o5087.value = param1;
      }
      
      public function set o20831(param1:int) : void
      {
         o2164.value = param1;
      }
      
      public function set o2988(param1:int) : void
      {
         o16871.value = param1;
      }
      
      public function set o6470(param1:int) : void
      {
         o776.value = param1;
      }
      
      public function set o3710(param1:int) : void
      {
         o12442.value = param1;
      }
      
      public function set o12159(param1:int) : void
      {
         o5436.value = param1;
      }
      
      public function set o5662(param1:Number) : void
      {
         o7377.value = param1;
      }
      
      public function set o15202(param1:int) : void
      {
         o2235.value = param1;
      }
      
      public function get o20068() : Number
      {
         return o10490.value;
      }
      
      public function set o20068(param1:Number) : void
      {
         o10490.value = param1;
      }
      
      public function get o20148() : int
      {
         return o19943.value;
      }
      
      public function set o20148(param1:int) : void
      {
         o19943.value = param1;
         if(o19943.value < 0)
         {
            o19943.value = 0;
         }
      }
      
      public function get o11348() : o10411
      {
         return new o10411(o14200.o19505.data.o15459 <= 0 && o20148 <= 0);
      }
      
      public function o13832() : void
      {
         o20148 = o14576.o8340;
         var _loc3_:Date = o4519.o8116.o15020;
         var _loc4_:Date = new Date(_loc3_.getUTCFullYear(),_loc3_.getUTCMonth(),_loc3_.getUTCDate(),_loc3_.getUTCHours(),_loc3_.getUTCMinutes(),_loc3_.getUTCSeconds());
         var _loc2_:Date = new Date(_loc4_.getFullYear(),_loc4_.getMonth(),_loc4_.getDate());
         _loc2_.date = _loc2_.date + 1;
         var _loc1_:Number = _loc2_.getTime() - _loc4_.getTime();
         var _loc5_:Date = new Date(_loc3_.getTime() + _loc1_);
         o20068 = _loc5_.time;
         o12332 = 0;
      }
      
      public function get o5532() : int
      {
         return o13820.value;
      }
      
      public function set o5532(param1:int) : void
      {
         o13820.value = param1;
      }
      
      public function get o14250() : int
      {
         return o16667.value;
      }
      
      public function o201(param1:int = 1) : void
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1)
         {
            o16667.value++;
            _loc2_++;
         }
      }
      
      public function o3196(param1:Boolean) : void
      {
         o16667.value--;
      }
      
      public function get o10252() : int
      {
         return o19657.value;
      }
      
      public function set o10252(param1:int) : void
      {
         o19657.value = param1;
      }
      
      public function get o10005() : int
      {
         return o17180.value;
      }
      
      public function set o10005(param1:int) : void
      {
         o17180.value = param1;
      }
      
      public function get o18104() : int
      {
         return o2581.value;
      }
      
      public function set o18104(param1:int) : void
      {
         o2581.value = param1;
      }
      
      public function get o263() : int
      {
         return o10130.value;
      }
      
      public function set o263(param1:int) : void
      {
         o10130.value = param1;
      }
      
      public function o19319() : int
      {
         return o18704 + o6470 + o3710 + o12159;
      }
      
      public function o1819() : Vector.<o14096>
      {
         return o11620;
      }
      
      public function o20444(param1:o14096) : void
      {
         o19419.data.o12466(param1);
         var _loc2_:o6679 = o17638.o8567(param1);
         if(_loc2_.o15851 == false)
         {
            _loc2_.o15851 = true;
            _loc2_.o5109 = _loc2_.o5109 + param1.o9139 * o19419.o5292.o17345;
         }
         o11620.splice(0,0,param1);
      }
      
      public function o2205(param1:o1253) : void
      {
         o19419.data.o19356(param1);
         this.o4256.splice(0,0,param1);
      }
      
      public function o10248() : void
      {
         o8312.splice(0,1);
         var _loc1_:int = o11248[0];
         if(_loc1_ == 0)
         {
            o6864.splice(0,1);
         }
         else if(_loc1_ == 1)
         {
            o2575.splice(0,1);
         }
         o11248.splice(0,1);
      }
      
      public function o11241(param1:int) : o6197
      {
         var _loc4_:int = 0;
         var _loc3_:* = this.o2671;
         for each(var _loc2_ in this.o2671)
         {
            if(_loc2_.o20868.o10374 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o6122(param1:int) : int
      {
         var _loc4_:int = 0;
         var _loc3_:* = this.o2671;
         for each(var _loc2_ in this.o2671)
         {
            if(_loc2_.o20868.o10374 == param1)
            {
               return _loc2_.level;
            }
         }
         return 0;
      }
      
      public function o3669() : Vector.<o6197>
      {
         var _loc1_:Vector.<o6197> = new Vector.<o6197>();
         var _loc4_:int = 0;
         var _loc3_:* = this.o2671;
         for each(var _loc2_ in this.o2671)
         {
            if(_loc2_.level > 0 && _loc2_.o20868.o1267 == false)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function o13108() : Vector.<o6197>
      {
         var _loc1_:Vector.<o6197> = new Vector.<o6197>();
         var _loc4_:int = 0;
         var _loc3_:* = this.o2671;
         for each(var _loc2_ in this.o2671)
         {
            if(_loc2_.level > 0 && _loc2_.o20868.o10374 == 31)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function o8674() : Vector.<o6197>
      {
         var _loc1_:Vector.<o6197> = new Vector.<o6197>();
         var _loc4_:int = 0;
         var _loc3_:* = this.o2671;
         for each(var _loc2_ in this.o2671)
         {
            if(_loc2_.level > 0 && _loc2_.o20868.o1267)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function o8693() : Vector.<o6197>
      {
         var _loc1_:Vector.<o6197> = o3669();
         var _loc4_:int = 0;
         var _loc3_:* = this.o2671;
         for each(var _loc2_ in this.o2671)
         {
            if(_loc2_.level > 0 && _loc2_.o20868.o10374 == 31)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function o6061() : int
      {
         var _loc1_:int = this.level + this.o10192;
         var _loc4_:int = 0;
         var _loc3_:* = this.o2671;
         for each(var _loc2_ in this.o2671)
         {
            _loc1_ = _loc1_ - _loc2_.level;
         }
         return _loc1_;
      }
      
      public function o20159() : int
      {
         return o4934() + o12416();
      }
      
      public function o4934() : int
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = this.o11620;
         for each(var _loc1_ in this.o11620)
         {
            if(_loc1_.o2397)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function o12416() : int
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = this.o4256;
         for each(var _loc1_ in this.o4256)
         {
            if(_loc1_.o2397)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function o12014(param1:o6197, param2:o6197) : int
      {
         if(param1.o20868.o10374 < param2.o20868.o10374)
         {
            return -1;
         }
         if(param1.o20868.o10374 > param2.o20868.o10374)
         {
            return 1;
         }
         return 0;
      }
      
      private function o11274() : void
      {
         o2671.sort(o12014);
      }
      
      public function o4500(param1:int) : void
      {
         if(this.o6061() <= 0)
         {
            return;
         }
         var _loc2_:o6197 = o11241(param1);
         if(_loc2_ == null)
         {
            _loc2_ = new o6197();
            _loc2_.level = 0;
            _loc2_.o20868 = o19419.o5292.o6055.o11241(param1);
            this.o2671.push(_loc2_);
            o11274();
         }
         if(_loc2_.level < o19419.o5292.o16799)
         {
            _loc2_.level = Number(_loc2_.level) + 1;
         }
      }
      
      public function set o20170(param1:int) : void
      {
         if(param1 < 0)
         {
            o11407.o15361(o560.value + param1);
            o560.value = 2147483647;
         }
         else
         {
            o560.value = param1;
         }
         o19419.o8304();
      }
      
      public function get o20170() : int
      {
         return o560.value;
      }
      
      public function get level() : int
      {
         return o8698.value;
      }
      
      public function get o7211() : int
      {
         return o5641.value;
      }
      
      public function set o7211(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.level == 100)
         {
            param1 = o19419.o5292.o923.o10554(100);
         }
         this.o5641.value = param1;
         this.o8698.value = o19419.o5292.o923.o4458(o7211);
      }
      
      public function o20734() : int
      {
         var _loc5_:int = o19419.o5292.o923.o4458(o7211);
         var _loc1_:int = _loc5_ + 2;
         if(_loc1_ >= o19419.o5292.o923.o19598())
         {
            return 2147483647;
         }
         var _loc2_:int = o19419.o5292.o923.o10554(_loc5_ + 2);
         var _loc3_:int = _loc2_ - 500 - o5641.value;
         var _loc4_:int = o19419.o5292.o923.o10554(_loc5_ + 1);
         return _loc3_;
      }
      
      public function get o11990() : String
      {
         return o19419.o5292.o16413(o16122.value).name;
      }
      
      public function o19599() : Object
      {
         var _loc30_:* = null;
         var _loc11_:* = null;
         var _loc29_:* = null;
         var _loc21_:* = null;
         var _loc31_:* = null;
         var _loc25_:* = null;
         var _loc14_:* = null;
         var _loc5_:* = undefined;
         var _loc18_:* = null;
         var _loc33_:Object = {};
         _loc33_[55] = this.o20170;
         _loc33_[56] = this.o7211;
         _loc33_[57] = this.o17638.o14264();
         var _loc23_:Array = [];
         var _loc37_:int = 0;
         var _loc36_:* = this.o11620;
         for each(_loc30_ in this.o11620)
         {
            _loc23_.push(_loc30_.o14264());
         }
         _loc33_[58] = _loc23_;
         var _loc2_:Array = [];
         var _loc39_:int = 0;
         var _loc38_:* = this.o4256;
         for each(_loc11_ in this.o4256)
         {
            if(_loc11_ != null)
            {
               _loc2_.push(_loc11_.o14264());
            }
            else
            {
               _loc11_ = _loc11_;
            }
         }
         _loc33_[59] = _loc2_;
         _loc33_[60] = this.o3525.o14264();
         _loc33_[61] = o12110;
         _loc33_[56] = o7211;
         _loc33_[62] = o16122.value;
         var _loc32_:Array = [];
         var _loc41_:int = 0;
         var _loc40_:* = o7993;
         for each(_loc29_ in o7993)
         {
            if(_loc29_ == null)
            {
               _loc32_.push(-1);
            }
            else
            {
               _loc32_.push(this.o5517(_loc29_));
            }
         }
         _loc33_[63] = _loc32_;
         var _loc15_:Array = [];
         var _loc43_:int = 0;
         var _loc42_:* = o7993;
         for each(_loc29_ in o7993)
         {
            if(_loc29_ == null)
            {
               _loc15_.push(-1);
            }
            else
            {
               _loc15_.push(_loc29_.o5689);
            }
         }
         _loc33_[64] = _loc15_;
         var _loc34_:Array = [];
         var _loc45_:int = 0;
         var _loc44_:* = o420;
         for each(_loc21_ in o420)
         {
            if(_loc21_ == null)
            {
               _loc34_.push(-1);
            }
            else
            {
               _loc34_.push(this.o7986(_loc21_));
            }
         }
         _loc33_[65] = _loc34_;
         var _loc19_:Array = [];
         var _loc47_:int = 0;
         var _loc46_:* = o420;
         for each(_loc21_ in o420)
         {
            if(_loc21_ == null)
            {
               _loc19_.push(-1);
            }
            else
            {
               _loc19_.push(_loc21_.o5689);
            }
         }
         _loc33_[66] = _loc19_;
         var _loc1_:Array = [];
         var _loc49_:int = 0;
         var _loc48_:* = this.o2671;
         for each(var _loc16_ in this.o2671)
         {
            _loc31_ = {};
            _loc31_[67] = _loc16_.o20868.o10374;
            _loc31_[68] = _loc16_.level;
            _loc1_.push(_loc31_);
         }
         _loc33_[90] = _loc1_;
         var _loc20_:Array = [];
         var _loc51_:int = 0;
         var _loc50_:* = o8312;
         for each(var _loc8_ in o8312)
         {
            _loc20_.push(_loc8_);
         }
         _loc33_[8] = _loc20_;
         var _loc13_:Array = [];
         var _loc53_:int = 0;
         var _loc52_:* = this.o6864;
         for each(var _loc9_ in this.o6864)
         {
            _loc13_.push(_loc9_.o14264());
         }
         _loc33_[69] = _loc13_;
         var _loc35_:Array = [];
         var _loc55_:int = 0;
         var _loc54_:* = this.o2575;
         for each(var _loc3_ in this.o2575)
         {
            _loc35_.push(_loc3_.o14264());
         }
         _loc33_[70] = _loc35_;
         var _loc6_:Array = [];
         var _loc57_:int = 0;
         var _loc56_:* = this.o11248;
         for each(var _loc7_ in this.o11248)
         {
            _loc6_.push(_loc7_);
         }
         _loc33_[409] = _loc6_;
         _loc33_[72] = o15733;
         _loc33_[73] = o16611;
         _loc33_[74] = o1078;
         _loc33_[75] = o19697;
         _loc33_[76] = o7129;
         _loc33_[77] = o14575;
         _loc33_[78] = o8326;
         _loc33_[79] = o18704;
         _loc33_[80] = o6470;
         _loc33_[81] = o3710;
         _loc33_[82] = o12159;
         _loc33_[83] = o20831;
         _loc33_[84] = o2988;
         _loc33_[521] = o7768;
         var _loc27_:Array = [];
         var _loc61_:int = 0;
         var _loc60_:* = this.o17630;
         for(var _loc4_ in this.o17630)
         {
            _loc25_ = {};
            _loc25_[22] = _loc4_;
            _loc14_ = [];
            _loc5_ = this.o17630[_loc4_];
            var _loc59_:int = 0;
            var _loc58_:* = _loc5_;
            for each(var _loc10_ in _loc5_)
            {
               _loc14_.push(_loc10_.value);
            }
            _loc25_[23] = _loc14_;
            _loc27_.push(_loc25_);
         }
         _loc33_[24] = _loc27_;
         var _loc17_:Array = [];
         var _loc63_:int = 0;
         var _loc62_:* = this.o13649;
         for(var _loc28_ in this.o13649)
         {
            _loc18_ = {};
            _loc18_[25] = _loc28_;
            _loc18_[26] = this.o13649[_loc28_];
            _loc17_.push(_loc18_);
         }
         _loc33_[27] = _loc17_;
         _loc33_[85] = o18006;
         _loc33_[86] = o16996;
         _loc33_[87] = o2922;
         _loc33_[88] = o20770;
         _loc33_[89] = o19958;
         _loc33_[205] = o11661;
         _loc33_[300] = o13012.o14264();
         _loc33_[400] = o20068;
         _loc33_[429] = o20148;
         _loc33_[401] = o5532;
         _loc33_[402] = o14250;
         _loc33_[403] = o18104;
         _loc33_[426] = o263;
         _loc33_[407] = o5662;
         _loc33_[405] = o15202;
         _loc33_[408] = o18643;
         _loc33_[416] = o12569;
         _loc33_[417] = o17178;
         _loc33_[506] = o19910;
         _loc33_[430] = o12332;
         var _loc12_:Array = [];
         var _loc65_:int = 0;
         var _loc64_:* = o7188;
         for each(var _loc22_ in o7188)
         {
            _loc12_.push(_loc22_);
         }
         _loc33_[508] = _loc12_;
         var _loc26_:Array = [];
         var _loc67_:int = 0;
         var _loc66_:* = o13560;
         for each(var _loc24_ in o13560)
         {
            _loc26_.push(_loc24_);
         }
         _loc33_[509] = _loc26_;
         _loc33_[526] = o6333;
         _loc33_[528] = o10252;
         return _loc33_;
      }
      
      public function o14264() : Object
      {
         return o19599();
      }
      
      public function o20752(param1:int) : o14096
      {
         var _loc4_:int = 0;
         var _loc3_:* = o11620;
         for each(var _loc2_ in o11620)
         {
            if(_loc2_.o5689 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o6344(param1:int) : o1253
      {
         var _loc4_:int = 0;
         var _loc3_:* = o4256;
         for each(var _loc2_ in o4256)
         {
            if(_loc2_.o5689 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o1686(param1:o14200, param2:Object) : o9145
      {
         var _loc28_:* = null;
         var _loc13_:* = null;
         var _loc4_:* = null;
         var _loc45_:* = null;
         var _loc21_:* = null;
         var _loc46_:* = null;
         var _loc26_:* = null;
         var _loc22_:* = null;
         var _loc19_:* = 0;
         var _loc16_:* = null;
         var _loc38_:* = null;
         var _loc48_:* = null;
         var _loc17_:* = null;
         var _loc15_:* = null;
         var _loc10_:* = null;
         var _loc42_:* = null;
         var _loc12_:int = 0;
         var _loc20_:* = null;
         var _loc8_:* = undefined;
         var _loc30_:int = 0;
         var _loc32_:int = 0;
         var _loc23_:* = null;
         var _loc43_:int = 0;
         var _loc6_:int = 0;
         var _loc14_:* = null;
         var _loc39_:* = null;
         this.o19419 = param1;
         this.o20170 = param2[55];
         if(this.o20170 < 0)
         {
            this.o20170 = 0;
         }
         this.o7211 = param2[56];
         this.o17638 = new o590(this,param1.o5292.o18982);
         this.o17638.o8169(param2[57]);
         o12110 = param2[61];
         var _loc18_:Array = param2[58];
         this.o11620 = new Vector.<o14096>();
         var _loc50_:int = 0;
         var _loc49_:* = _loc18_;
         for each(_loc28_ in _loc18_)
         {
            _loc13_ = new o14096().o8169(this.o19419,_loc28_);
            if(_loc13_ != null && _loc13_.o2752.o5168 == false && _loc13_.o2752.o6947 == false)
            {
               this.o11620.push(_loc13_);
            }
         }
         var _loc24_:Array = param2[59];
         this.o4256 = new Vector.<o1253>();
         var _loc52_:int = 0;
         var _loc51_:* = _loc24_;
         for each(_loc4_ in _loc24_)
         {
            this.o4256.push(new o1253().o8169(this.o19419,_loc4_));
         }
         this.o3525.o8169(param2[60]);
         if(param2[56] == null)
         {
            this.o7211 = 0;
         }
         else
         {
            this.o7211 = param2[56];
         }
         o16122.value = param2[62];
         o7993 = new Vector.<o14096>();
         if(param2[64] == null)
         {
            _loc45_ = param2[63];
            var _loc54_:int = 0;
            var _loc53_:* = _loc45_;
            for each(var _loc36_ in _loc45_)
            {
               if(_loc36_ < 0 || _loc36_ >= this.o11620.length)
               {
                  o7993.push(null);
               }
               else
               {
                  o7993.push(this.o11620[_loc36_]);
               }
            }
         }
         else
         {
            _loc21_ = param2[64];
            var _loc56_:int = 0;
            var _loc55_:* = _loc21_;
            for each(var _loc47_ in _loc21_)
            {
               if(_loc47_ < 0)
               {
                  o7993.push(null);
               }
               else
               {
                  o7993.push(o20752(_loc47_));
               }
            }
         }
         this.o420 = new Vector.<o1253>();
         if(param2[66] == null)
         {
            _loc46_ = param2[65];
            var _loc58_:int = 0;
            var _loc57_:* = _loc46_;
            for each(var _loc5_ in _loc46_)
            {
               if(_loc5_ < 0 || _loc5_ >= this.o4256.length)
               {
                  o420.push(null);
               }
               else
               {
                  o420.push(this.o4256[_loc5_]);
               }
            }
         }
         else
         {
            _loc26_ = param2[66];
            var _loc60_:int = 0;
            var _loc59_:* = _loc26_;
            for each(var _loc7_ in _loc26_)
            {
               if(_loc7_ < 0)
               {
                  o420.push(null);
               }
               else
               {
                  o420.push(this.o6344(_loc7_));
               }
            }
            while(o420.length < 5)
            {
               o420.push(null);
            }
         }
         var _loc3_:Array = param2[90];
         var _loc62_:int = 0;
         var _loc61_:* = _loc3_;
         for each(var _loc44_ in _loc3_)
         {
            _loc22_ = new o6197();
            _loc22_.level = _loc44_[68];
            _loc19_ = int(_loc44_[67]);
            _loc22_.o20868 = param1.o5292.o6055.o11241(_loc19_);
            if(_loc19_ == 0)
            {
               _loc19_ = _loc19_;
               throw new Error("skill error");
            }
            this.o2671.push(_loc22_);
         }
         o11274();
         var _loc27_:Array = param2[8];
         this.o8312 = new Vector.<int>();
         var _loc64_:int = 0;
         var _loc63_:* = _loc27_;
         for each(var _loc11_ in _loc27_)
         {
            o8312.push(_loc11_);
         }
         if(this.o6864 != null)
         {
            _loc16_ = param2[69];
            this.o6864 = new Vector.<o14096>();
            var _loc66_:int = 0;
            var _loc65_:* = _loc16_;
            for each(var _loc35_ in _loc16_)
            {
               _loc38_ = new o14096();
               _loc38_.o8169(param1,_loc35_);
               _loc38_.o2397 = true;
               this.o6864.push(_loc38_);
            }
         }
         if(this.o2575 != null)
         {
            _loc48_ = param2[70];
            this.o2575 = new Vector.<o1253>();
            var _loc68_:int = 0;
            var _loc67_:* = _loc48_;
            for each(var _loc41_ in _loc48_)
            {
               _loc17_ = new o1253();
               _loc17_.o8169(param1,_loc41_);
               _loc17_.o2397 = true;
               this.o2575.push(_loc17_);
            }
         }
         if(param2[71] != null)
         {
            _loc15_ = param2[71];
            this.o11248 = new Vector.<int>();
            var _loc70_:int = 0;
            var _loc69_:* = _loc15_;
            for each(var _loc37_ in _loc15_)
            {
               this.o11248.push(!!_loc37_?0:1);
            }
         }
         if(param2[409] != null)
         {
            _loc10_ = param2[409];
            this.o11248 = new Vector.<int>();
            var _loc72_:int = 0;
            var _loc71_:* = _loc10_;
            for each(var _loc9_ in _loc10_)
            {
               this.o11248.push(_loc9_);
            }
         }
         if(param2[72] != null)
         {
            this.o15733 = param2[72];
         }
         if(param2[73] == null)
         {
            o16611 = 0;
            o1078 = 0;
            o19697 = 0;
         }
         else
         {
            o16611 = param2[73];
            o1078 = param2[74];
            o19697 = param2[75];
         }
         if(param2[76] == null)
         {
            o7129 = 0;
         }
         else
         {
            o7129 = param2[76];
         }
         if(param2[77] != null)
         {
            o14575 = param2[77];
            o8326 = param2[78];
         }
         if(param2[83] != null)
         {
            o20831 = param2[83];
            o2988 = param2[84];
         }
         if(param2[79] != null)
         {
            o18704 = param2[79];
            o6470 = param2[80];
            o3710 = param2[81];
            o12159 = param2[82];
         }
         if(param2[521] != null)
         {
            this.o7768 = param2[521];
         }
         this.o17630 = new Dictionary();
         if(param2[24] != null)
         {
            _loc42_ = param2[24];
            var _loc76_:int = 0;
            var _loc75_:* = _loc42_;
            for each(var _loc33_ in _loc42_)
            {
               _loc12_ = _loc33_[22];
               _loc20_ = _loc33_[23];
               _loc8_ = new Vector.<o16123>();
               _loc30_ = 0;
               while(_loc30_ < o16819.o8592)
               {
                  _loc8_.push(new o16123(0));
                  _loc30_++;
               }
               _loc32_ = 0;
               var _loc74_:int = 0;
               var _loc73_:* = _loc20_;
               for each(var _loc40_ in _loc20_)
               {
                  _loc8_[_loc32_].value = _loc40_;
                  _loc32_++;
               }
               this.o17630[_loc12_] = _loc8_;
            }
         }
         this.o13649 = new Dictionary();
         if(param2[27] != null)
         {
            _loc23_ = param2[27];
            var _loc78_:int = 0;
            var _loc77_:* = _loc23_;
            for each(var _loc25_ in _loc23_)
            {
               _loc43_ = _loc25_[25];
               _loc6_ = _loc25_[26];
               this.o13649[_loc43_] = _loc6_;
            }
         }
         if(param2[85] != null)
         {
            o18006 = param2[85];
            o16996 = param2[86];
            o2922 = param2[87];
            o20770 = param2[88];
         }
         if(param2[89] != null)
         {
            o19958 = param2[89];
         }
         if(param2[205] != null)
         {
            o11661 = param2[205];
         }
         else
         {
            o11661 = o19319() == 0;
         }
         if(param2[300] != null)
         {
            this.o13012 = new o11995();
            o13012.o8169(param2[300]);
         }
         if(param2[400] != null)
         {
            o20068 = param2[400];
         }
         if(param2[429] != null)
         {
            o20148 = param2[429];
         }
         if(param2[401] != null)
         {
            o5532 = param2[401];
            o16667.value = param2[402];
            o18104 = param2[403];
         }
         if(param2[426] != null)
         {
            o263 = param2[426];
         }
         if(param2[405] != null)
         {
            o15202 = param2[405];
         }
         if(param2[407] != null)
         {
            o5662 = param2[407];
         }
         if(param2[408] != null)
         {
            o18643 = param2[408];
         }
         else
         {
            o18643 = [];
         }
         if(param2[416] != null)
         {
            o12569 = param2[416];
            o17178 = param2[417];
         }
         if(param2[506] != null)
         {
            o19910 = param2[506];
         }
         if(param2[430] != null)
         {
            o12332 = param2[430];
         }
         var _loc34_:Object = param2[508];
         if(param2[508] == null || (param2[508] as Array).length < o4189.o16191 || param2[509] == null || (param2[509] as Array).length < o4189.o16191)
         {
            this.o10067();
         }
         else
         {
            _loc14_ = param2[508];
            o7188 = new Vector.<int>();
            var _loc80_:int = 0;
            var _loc79_:* = _loc14_;
            for each(var _loc29_ in _loc14_)
            {
               o7188.push(_loc29_);
            }
            _loc39_ = param2[509];
            o13560 = new Vector.<int>();
            var _loc82_:int = 0;
            var _loc81_:* = _loc39_;
            for each(var _loc31_ in _loc39_)
            {
               o13560.push(_loc31_);
            }
         }
         if(param2[528] != null)
         {
            this.o10252 = param2[528];
         }
         else
         {
            this.o10252 = 0;
         }
         if(param2[526] != null)
         {
            o6333 = param2[526];
         }
         return this;
      }
      
      public function o16754(param1:int) : Boolean
      {
         return o18643.indexOf(param1) >= 0;
      }
      
      public function o19896(param1:int) : void
      {
         if(o16754(param1) == false)
         {
            o18643.push(param1);
            o19419.saveData();
         }
      }
      
      public function o8169(param1:o14200, param2:Object) : o9145
      {
         return o1686(param1,param2);
      }
      
      public function o13360(param1:o14096) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:* = o7993;
         for each(var _loc2_ in o7993)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o18660(param1:int) : Vector.<o14096>
      {
         var _loc2_:* = null;
         var _loc3_:Vector.<o14096> = new Vector.<o14096>();
         var _loc5_:int = 0;
         var _loc4_:* = this.o11620;
         for each(_loc2_ in this.o11620)
         {
            if(_loc2_.o2752.o5168)
            {
               throw new Error("Don\'t include turrets in character weapons");
            }
         }
         var _loc7_:int = 0;
         var _loc6_:* = this.o11620;
         for each(_loc2_ in this.o11620)
         {
            if(param1 == 3)
            {
               if(_loc2_.o2752.o5168 == false && o13360(_loc2_) == false && _loc2_.o2752.o6947 == false)
               {
                  _loc3_.push(_loc2_);
               }
            }
            else if(param1 == 1)
            {
               if(_loc2_.o2752.o5168 == false && _loc2_.o19940 == false && o13360(_loc2_) == false && _loc2_.o2752.o6947 == false)
               {
                  _loc3_.push(_loc2_);
               }
            }
            else if(param1 == 0)
            {
               if(_loc2_.o2752.o5168 == false && _loc2_.o19940 && o13360(_loc2_) == false && _loc2_.o2752.o6947 == false)
               {
                  _loc3_.push(_loc2_);
               }
            }
         }
         return _loc3_;
      }
      
      public function o13895(param1:o14096) : int
      {
         var _loc5_:int = !!param1.o19940?0:1;
         var _loc4_:Vector.<o14096> = this.o18660(_loc5_);
         var _loc3_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = _loc4_;
         for each(var _loc2_ in _loc4_)
         {
            if(_loc2_ == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function o20853(param1:o14096) : void
      {
         var _loc2_:int = o5517(param1);
         this.o11620.splice(_loc2_,1);
         this.o11620.push(param1);
      }
      
      public function o6834(param1:o1253) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:* = o420;
         for each(var _loc2_ in o420)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o12203() : Vector.<o1253>
      {
         return o4256;
      }
      
      public function o18268(param1:int) : Vector.<o1253>
      {
         var _loc3_:* = null;
         var _loc2_:Vector.<o1253> = new Vector.<o1253>();
         var _loc5_:int = 0;
         var _loc4_:* = this.o4256;
         for each(_loc3_ in this.o4256)
         {
            if((param1 < 0 || _loc3_.o8395 == param1) && o6834(_loc3_) == false)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function o2947(param1:o1253) : int
      {
         var _loc5_:int = param1.o8395;
         var _loc2_:Vector.<o1253> = this.o18268(_loc5_);
         var _loc3_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = _loc2_;
         for each(var _loc4_ in _loc2_)
         {
            if(_loc4_ == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function o3784(param1:o1253) : int
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o4256;
         for each(var _loc2_ in o4256)
         {
            if(_loc2_ == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function o10973(param1:o1253) : void
      {
         var _loc2_:int = o3784(param1);
         this.o4256.splice(_loc2_,1);
         this.o4256.push(param1);
      }
      
      public function o17303(param1:Boolean, param2:int, param3:int) : o14096
      {
         var _loc4_:* = undefined;
         var _loc5_:* = null;
         if(param1)
         {
            return o7993[param2];
         }
         _loc4_ = o18660(param3);
         if(param2 >= _loc4_.length)
         {
            return null;
         }
         _loc5_ = _loc4_[param2];
         return _loc5_;
      }
      
      public function o16325(param1:Boolean, param2:int, param3:int) : o1253
      {
         var _loc5_:* = undefined;
         var _loc4_:* = null;
         if(param1)
         {
            return o420[param2];
         }
         _loc5_ = o18268(param3);
         if(param2 >= _loc5_.length)
         {
            return null;
         }
         _loc4_ = _loc5_[param2];
         return _loc4_;
      }
      
      public function o5517(param1:o14096) : int
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o11620;
         for each(var _loc2_ in o11620)
         {
            if(_loc2_ == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function o3779(param1:o14096) : int
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = this.o7993;
         for each(var _loc2_ in this.o7993)
         {
            if(_loc2_ == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function o6951(param1:o1253) : int
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = this.o420;
         for each(var _loc2_ in this.o420)
         {
            if(_loc2_ == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function o7986(param1:o1253) : int
      {
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = this.o4256;
         for each(var _loc3_ in this.o4256)
         {
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function o7683(param1:int) : Boolean
      {
         if(o20170 >= param1)
         {
            o20170 = o20170 - param1;
            return true;
         }
         return false;
      }
      
      public function o5259(param1:int) : Boolean
      {
         if(o20170 >= param1)
         {
            return true;
         }
         return false;
      }
      
      public function o15336(param1:int) : void
      {
         o20170 = o20170 + param1;
      }
      
      public function o2135(param1:int) : int
      {
         var _loc2_:Number = o19419.o19552.o17521("settings.sellCashPercentage");
         return param1 * _loc2_;
      }
      
      public function o19353(param1:o14096) : int
      {
         var _loc2_:Number = o2135(param1.o1060);
         if(param1.o2752.o11570 == 1)
         {
            if(_loc2_ > o19419.o5292.o11445)
            {
               _loc2_ = o19419.o5292.o11445;
            }
         }
         else if(_loc2_ > o19419.o5292.o656)
         {
            _loc2_ = o19419.o5292.o656;
         }
         return _loc2_;
      }
      
      public function o18824(param1:o14096) : void
      {
         o19419.data.o12466(param1);
         var _loc2_:int = this.o3779(param1);
         if(_loc2_ >= 0)
         {
            this.o7993[_loc2_] = null;
         }
         var _loc3_:int = this.o5517(param1);
         if(_loc3_ < 0)
         {
            this.o19419.o11453.o11285++;
            o15336(o19353(param1));
         }
         if(_loc3_ >= 0)
         {
            this.o19419.o11453.o11285++;
            o15336(o19353(param1));
            this.o11620.splice(_loc3_,1);
         }
         o19419.saveData();
      }
      
      public function o5523(param1:o1253) : int
      {
         var _loc2_:Number = o2135(param1.o10518);
         if(param1.o10239.o18072 == 1)
         {
            if(_loc2_ > o19419.o5292.o561)
            {
               _loc2_ = o19419.o5292.o561;
            }
         }
         else if(_loc2_ > o19419.o5292.o9203)
         {
            _loc2_ = o19419.o5292.o9203;
         }
         return _loc2_;
      }
      
      public function o11001(param1:o1253) : void
      {
         o19419.data.o19356(param1);
         var _loc2_:int = this.o6951(param1);
         if(_loc2_ >= 0)
         {
            this.o420[_loc2_] = null;
         }
         var _loc3_:int = this.o7986(param1);
         if(_loc3_ < 0)
         {
            this.o19419.o11453.o10488++;
            o15336(o5523(param1));
         }
         if(_loc3_ >= 0)
         {
            this.o19419.o11453.o10488++;
            o15336(o5523(param1));
            this.o4256.splice(_loc3_,1);
         }
         o19419.saveData();
      }
      
      public function o3326(param1:int) : o14096
      {
         var _loc4_:int = 0;
         var _loc3_:* = this.o11620;
         for each(var _loc2_ in this.o11620)
         {
            if(_loc2_.o10748 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o18936() : int
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = this.o7993;
         for each(var _loc2_ in this.o7993)
         {
            if(_loc2_ != null)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function o2392() : int
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = this.o420;
         for each(var _loc2_ in this.o420)
         {
            if(_loc2_ != null)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function o16689(param1:int) : o1253
      {
         var _loc4_:int = 0;
         var _loc3_:* = this.o4256;
         for each(var _loc2_ in this.o4256)
         {
            if(_loc2_.o10239.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function saveData() : void
      {
         this.o19419.saveData();
      }
      
      public function o7102(param1:int) : int
      {
         if(this.o8698.value == 100)
         {
            this.o7211 = o19419.o5292.o923.o10554(100);
            return 0;
         }
         var _loc3_:int = this.level;
         this.o7211 = this.o7211 + param1;
         var _loc2_:int = this.level - _loc3_;
         return _loc2_;
      }
      
      public function o18649() : Vector.<o1492>
      {
         if(this.o16122.value == 1)
         {
            return o19419.o5292.o6055.o20479;
         }
         if(this.o16122.value == 0)
         {
            return o19419.o5292.o6055.o17516;
         }
         if(this.o16122.value == 2)
         {
            return o19419.o5292.o6055.o15554;
         }
         return null;
      }
      
      public function o8271() : void
      {
         this.o2671 = new Vector.<o6197>();
         this.saveData();
      }
      
      public function o17050(param1:int) : Boolean
      {
         var _loc2_:Array = o17439.o6648[param1];
         return _loc2_.length <= 1;
      }
      
      public function o7661(param1:int, param2:int, param3:o18442 = null) : void
      {
         var _loc4_:int = 0;
         if(o19419.o202.o10211)
         {
            o20831 = Number(o20831) + 1;
         }
         else
         {
            o14575 = Number(o14575) + 1;
         }
         if(o17050(param1) && param2 > 1)
         {
            param2 = 1;
         }
         var _loc5_:Vector.<o16123> = o17630[param1];
         if(_loc5_ == null || _loc5_.length != o16819.o8592)
         {
            _loc5_ = new Vector.<o16123>();
            _loc4_ = 0;
            while(_loc4_ < o16819.o8592)
            {
               _loc5_.push(new o16123(0));
               _loc4_++;
            }
            o17630[param1] = _loc5_;
         }
         _loc5_[param2].value++;
         o19419.o5292.o16679.o7661(param1,param3);
      }
      
      public function o15572(param1:int) : void
      {
         if(o13649[param1] == null)
         {
            o13649[param1] = 0;
         }
         var _loc2_:* = o13649;
         var _loc3_:* = param1;
         var _loc4_:* = Number(_loc2_[_loc3_]) + 1;
         _loc2_[_loc3_] = _loc4_;
      }
      
      public function o6688(param1:int) : int
      {
         if(o13649[param1] == null)
         {
            o13649[param1] = 0;
         }
         return o13649[param1];
      }
      
      public function o226(param1:int, param2:int) : int
      {
         if(o17050(param1) > 1)
         {
            param2 = 1;
         }
         var _loc3_:Vector.<o16123> = o17630[param1];
         if(_loc3_ == null || _loc3_.length != o16819.o8592)
         {
            return 0;
         }
         return _loc3_[param2].value;
      }
      
      public function o15743(param1:int) : int
      {
         var _loc4_:int = 0;
         var _loc3_:Vector.<o16123> = o17630[param1];
         var _loc6_:int = 0;
         var _loc5_:* = _loc3_;
         for each(var _loc2_ in _loc3_)
         {
            _loc4_ = _loc4_ + _loc2_.value;
         }
         return _loc4_;
      }
      
      public function o9935() : int
      {
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc8_:int = 0;
         var _loc7_:* = o17630;
         for(var _loc2_ in o17630)
         {
            _loc3_ = o17630[_loc2_];
            var _loc6_:int = 0;
            var _loc5_:* = _loc3_;
            for each(var _loc1_ in _loc3_)
            {
               _loc4_ = _loc4_ + _loc1_.value;
            }
         }
         return _loc4_;
      }
      
      public function o20557() : int
      {
         return o19419.o7923.o18936() + o19419.o7923.o18660(3).length;
      }
      
      public function o16938() : int
      {
         return o19419.o7923.o2392() + o19419.o7923.o18268(-1).length;
      }
      
      private function o6235() : Dictionary
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:Dictionary = new Dictionary();
         _loc1_ = 1;
         while(_loc1_ < 35)
         {
            _loc2_ = o4519.o8116.profileData.o7923.o11241(_loc1_);
            if(!(_loc2_ == null || _loc2_.level <= 0))
            {
               _loc3_[_loc1_] = _loc2_.level;
            }
            _loc1_++;
         }
         return _loc3_;
      }
      
      public function o6337() : Dictionary
      {
         return o6235();
      }
      
      public function o9967(param1:Vector.<o1253>, param2:o4117) : Number
      {
         var _loc3_:Number = NaN;
         var _loc6_:* = 30;
         var _loc12_:* = 0;
         var _loc10_:* = 0;
         var _loc8_:* = 0;
         var _loc7_:o14018 = o19419.o5292.o5812(20);
         var _loc5_:* = 0;
         var _loc9_:o6197 = this.o11241(4);
         if(_loc9_ != null)
         {
            _loc3_ = _loc9_.o20868.o11827(_loc9_.level);
            _loc5_ = Number(_loc5_ + _loc3_);
         }
         var _loc14_:int = 0;
         var _loc13_:* = param1;
         for each(var _loc4_ in param1)
         {
            if(_loc4_ != null)
            {
               _loc8_ = Number(_loc7_.o5058(_loc4_));
               _loc8_ = Number(_loc8_ + _loc7_.o18548(_loc4_,param2));
               _loc5_ = Number(_loc5_ + _loc8_);
            }
         }
         var _loc11_:* = Number(_loc6_ / (_loc5_ + 1));
         if(_loc11_ < _loc12_)
         {
            _loc11_ = _loc12_;
         }
         return _loc11_;
      }
   }
}
