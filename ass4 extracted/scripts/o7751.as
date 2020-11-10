package
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class o7751 extends EventDispatcher
   {
      
      public static const o20041:String = "sasMoneyChanged";
      
      public static const o13945:String = "premiumNightmareTickets";
       
      
      private var o19419:o14200;
      
      public var o7209:Dictionary;
      
      public var o938:Vector.<o18960>;
      
      public var o5618:Vector.<o16123>;
      
      public var o1843:Boolean = false;
      
      public var o20866:Vector.<o16123>;
      
      private var o5633:o16123;
      
      public var o8118:int = -1;
      
      public var o15335:int = 1;
      
      public var o18325:int = 1;
      
      private var o11132:Date;
      
      public var o13955:Vector.<o14801>;
      
      public var o3280:int = 30;
      
      public var o14403:Dictionary;
      
      public var o1402:Dictionary;
      
      public var o433:o19626;
      
      private var o11554:Number = 0;
      
      private var o1725:o16123;
      
      private var o17724:o16123;
      
      public var o14296:Boolean = false;
      
      public var o18924:Boolean = false;
      
      public var o10320:Boolean = false;
      
      public var o11400:Vector.<o9145>;
      
      public var o2070:Boolean = false;
      
      private var o20635:o10411;
      
      private var o5709:o16123;
      
      private var o3267:o16123;
      
      private var o9156:o16123;
      
      private var o8590:o16123;
      
      private var o12145:o16123;
      
      public var o11086:Number = 0;
      
      public function o7751(param1:o14200)
      {
         o938 = new Vector.<o18960>();
         o5618 = new Vector.<o16123>();
         o20866 = new Vector.<o16123>();
         o5633 = new o16123(1);
         o11132 = new Date(0,0,0,0,0,0,0);
         o13955 = new Vector.<o14801>();
         o14403 = new Dictionary();
         o1402 = new Dictionary();
         o433 = new o19626();
         o1725 = new o16123(1);
         o17724 = new o16123(0);
         o20635 = new o10411(true);
         o5709 = new o16123(0);
         o3267 = new o16123(0);
         o9156 = new o16123(0);
         o8590 = new o16123(0);
         o12145 = new o16123(0);
         super();
         this.o19419 = param1;
      }
      
      public function get o11993() : int
      {
         return o5633.value;
      }
      
      public function set o11993(param1:int) : void
      {
         o5633.value = param1;
      }
      
      public function get o911() : int
      {
         return o1725.value;
      }
      
      public function set o911(param1:int) : void
      {
         var _loc2_:* = o1725.value != param1;
         o1725.value = param1;
         if(_loc2_)
         {
            dispatchEvent(new Event(o20041));
         }
      }
      
      public function get o15459() : int
      {
         return o17724.value;
      }
      
      public function set o15459(param1:int) : void
      {
         var _loc2_:* = o17724.value != param1;
         o17724.value = param1;
         if(o17724.value < 0)
         {
            o17724.value = 0;
         }
         if(_loc2_)
         {
            dispatchEvent(new Event(o13945));
         }
      }
      
      public function o2901(param1:int) : o9145
      {
         if(param1 >= o11400.length)
         {
            return null;
         }
         return o11400[param1];
      }
      
      public function get o9279() : Boolean
      {
         return o20635.value;
      }
      
      public function set o9279(param1:Boolean) : void
      {
         o20635.value = param1;
      }
      
      public function get o12368() : Date
      {
         return this.o11132;
      }
      
      public function set o12368(param1:Date) : void
      {
         this.o11132.time = param1.time;
      }
      
      public function get o3811() : int
      {
         return o5709.value;
      }
      
      public function set o3811(param1:int) : void
      {
         o5709.value = param1;
      }
      
      public function get o13060() : int
      {
         return o3267.value;
      }
      
      public function set o13060(param1:int) : void
      {
         o3267.value = param1;
      }
      
      public function get o6234() : int
      {
         return o9156.value;
      }
      
      public function set o6234(param1:int) : void
      {
         o9156.value = param1;
      }
      
      public function get o7686() : int
      {
         return o8590.value;
      }
      
      public function set o7686(param1:int) : void
      {
         o8590.value = param1;
      }
      
      public function get o1553() : int
      {
         return o12145.value;
      }
      
      public function set o1553(param1:int) : void
      {
         o12145.value = param1;
      }
      
      public function o9622(param1:Date) : o14801
      {
         var _loc3_:* = new o14801();
         var _loc5_:int = 0;
         var _loc4_:* = o19419.data.o13955;
         for each(var _loc2_ in o19419.data.o13955)
         {
            if(_loc2_.o11392 != null)
            {
               if(_loc2_.o11392 is o14128 && _loc2_.o11392.type == 3 && _loc2_.o11392.o5897.o4574(param1))
               {
                  _loc3_ = _loc2_;
               }
            }
         }
         return _loc3_;
      }
      
      public function o5178(param1:o14801, param2:Array) : void
      {
         var _loc4_:* = null;
         var _loc3_:Vector.<o19173> = o4519.o8116.o476.o16679;
         var _loc6_:o15645 = param1.o2395();
         var _loc8_:int = 0;
         var _loc7_:* = _loc3_;
         for each(var _loc5_ in _loc3_)
         {
            if(_loc5_ != null)
            {
               _loc4_ = new Date(_loc5_.o5897.end.time);
               _loc4_.o16529 = _loc4_.o16529 + o19419.data.o3280;
               if(_loc5_.type != 3 && param1.o11392.o5897.o4574(_loc4_))
               {
                  if(_loc5_ as o14128 is o14128 && (_loc5_ as o14128).o19534(param1.o11392 as o14128))
                  {
                     param2.push(_loc5_);
                  }
               }
            }
         }
      }
      
      public function get o13004() : Date
      {
         var _loc1_:Date = new Date();
         _loc1_.setTime(o11554);
         return _loc1_;
      }
      
      public function o12648(param1:Number) : void
      {
         var _loc3_:Date = new Date();
         _loc3_.setTime(param1);
         var _loc2_:String = _loc3_.toDateString();
         o11554 = param1;
      }
      
      public function o19738(param1:int) : void
      {
         if(param1 <= 0)
         {
            return;
         }
         o11554 = o4519.o8116.o15020.time + param1 * 60 * 60 * 1000;
      }
      
      public function o12697() : Boolean
      {
         var _loc2_:Number = o4519.o8116.o15020.time;
         var _loc3_:Number = o19419.data.o13004.time;
         var _loc5_:Number = _loc3_ - _loc2_;
         var _loc4_:String = o4519.o8116.o15020.toString();
         var _loc1_:String = o19419.data.o13004.toString();
         return _loc5_ > 0;
      }
      
      public function o14047() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         o19419.o202.o11032.length = 0;
         _loc2_ = 0;
         while(_loc2_ < o19419.o5292.o11370.o10961.length)
         {
            _loc1_ = o19419.o5292.o11370.o10961[_loc2_];
            o19419.o202.o11032.push(_loc1_);
            _loc2_++;
         }
      }
      
      public function o1334(param1:int) : o14432
      {
         var _loc2_:* = null;
         var _loc3_:o14432 = o14403[param1] as o14432;
         if(_loc3_ == null)
         {
            _loc3_ = new o14432();
            _loc2_ = o19419.o7923.o3326(param1);
            if(_loc2_ == null)
            {
               return null;
            }
            _loc3_.o2734(_loc2_);
            o14403[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public function o7128(param1:int) : o15520
      {
         return o1402[param1] as o15520;
      }
      
      public function o16940(param1:Dictionary) : Array
      {
         var _loc2_:Array = [];
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc2_.push(_loc3_.o13379());
         }
         return _loc2_;
      }
      
      public function o10040(param1:Array, param2:Dictionary) : void
      {
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc4_ = new o15520();
            _loc4_.o17060(_loc3_);
            param2[_loc4_.id] = _loc4_;
         }
      }
      
      public function o18000(param1:Array, param2:Dictionary) : void
      {
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc4_ = new o14432();
            _loc4_.o17060(_loc3_);
            param2[_loc4_.id] = _loc4_;
         }
      }
      
      public function o20953() : int
      {
         o15335 = Number(o15335) + 1;
         return o15335;
      }
      
      public function o8334() : int
      {
         o18325 = Number(o18325) + 1;
         return o18325;
      }
      
      public function get o8732() : int
      {
         if(o19419.o15894.o4539 != null)
         {
            return o19419.o15894.o4848.o18278.o20638();
         }
         return 0;
      }
      
      public function o4026(param1:int) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:* = o5618;
         for each(var _loc2_ in o5618)
         {
            if(_loc2_.value == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o9361(param1:int) : void
      {
         if(o4026(param1) == false)
         {
            o5618.push(new o16123(param1));
            o19419.saveData();
         }
      }
      
      public function get o7923() : o9145
      {
         if(this.o11400.length == 0)
         {
            o19419.o202.o11075 = -1;
         }
         if(o19419.o202.o11075 < 0)
         {
            return null;
         }
         return this.o11400[o19419.o202.o11075];
      }
      
      public function o9557(param1:o9145) : int
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < this.o11400.length)
         {
            if(this.o11400[_loc2_] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function o19063() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < this.o11400.length)
         {
            if(this.o11400[_loc2_] != null)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function o1190() : void
      {
         if(this.o20866.length > 0)
         {
            o19419.o202.o11362();
            var _loc3_:int = 0;
            var _loc2_:* = this.o20866;
            for each(var _loc1_ in this.o20866)
            {
               o19419.o202.o11612(_loc1_);
            }
            o19419.o202.o19266(this.o7923);
            o19419.o202.o11362();
            this.o20866 = new Vector.<o16123>();
            o19419.o202.o4590();
            o19419.saveData();
         }
      }
      
      public function o4054() : int
      {
         var _loc1_:int = o6412();
         _loc1_ = _loc1_ + o18426();
         _loc1_ = _loc1_ + o8732;
         return _loc1_;
      }
      
      public function o15531() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = this.o11400;
         for each(var _loc1_ in this.o11400)
         {
            if(_loc1_ != null && _loc1_.level >= o11993)
            {
               o11993 = _loc1_.level;
            }
         }
      }
      
      public function o6412() : int
      {
         return 2;
      }
      
      public function o20238() : int
      {
         return 2;
      }
      
      public function o9767() : int
      {
         return 2;
      }
      
      public function o18426() : int
      {
         var _loc1_:int = 0;
         var _loc2_:Vector.<int> = o18775();
         if(o11993 >= _loc2_[0])
         {
            _loc1_++;
         }
         if(o11993 >= _loc2_[1])
         {
            _loc1_++;
         }
         return _loc1_;
      }
      
      public function o18775() : Vector.<int>
      {
         var _loc1_:Vector.<int> = new Vector.<int>();
         _loc1_.push(20);
         _loc1_.push(60);
         return _loc1_;
      }
      
      public function o18676(param1:o19173) : o14801
      {
         var _loc5_:int = 0;
         var _loc4_:* = o13955;
         for each(var _loc2_ in o13955)
         {
            if(_loc2_.o7376 == param1.o3354)
            {
               _loc2_.o11392 = param1;
               _loc2_.o7376 = param1.o3354;
               return _loc2_;
            }
         }
         var _loc3_:o14801 = new o14801();
         _loc3_.o11392 = param1;
         _loc3_.o7376 = param1.o3354;
         o13955.push(_loc3_);
         return _loc3_;
      }
      
      public function o6800(param1:o19173, param2:int) : o14801
      {
         var _loc3_:o14801 = o18676(param1);
         _loc3_.o19189 = param2;
         return _loc3_;
      }
      
      public function o4297() : Vector.<o14801>
      {
         var _loc1_:Vector.<o14801> = new Vector.<o14801>();
         var _loc2_:Number = o4519.o8116.o15020.getTime();
         var _loc5_:int = 0;
         var _loc4_:* = o13955;
         for each(var _loc3_ in o13955)
         {
            if(_loc3_.o17811 == false && _loc3_.o3593.getTime() >= _loc2_)
            {
               _loc1_.push(_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function o12466(param1:o14096) : void
      {
         var _loc2_:* = null;
         if(o14403[param1.o10748] == null)
         {
            _loc2_ = new o14432();
            _loc2_.o2734(param1);
            o14403[param1.o10748] = _loc2_;
         }
         else
         {
            _loc2_ = o14403[param1.o10748];
            _loc2_.o7658(param1.grade,param1.o5520,param1.o4680);
         }
      }
      
      public function o19356(param1:o1253) : void
      {
         var _loc2_:* = null;
         if(o1402[param1.o15372] == null)
         {
            _loc2_ = new o15520();
            _loc2_.o15382(param1);
            o1402[param1.o15372] = _loc2_;
         }
         else
         {
            _loc2_ = o1402[param1.o15372];
            _loc2_.o7658(param1.grade,param1.o5520,param1.o4680);
         }
      }
      
      private function o2148(param1:o14432, param2:o14432) : int
      {
         return param1.o10935 < param2.o10935?1:-1;
      }
      
      private function o2631(param1:o14432, param2:o14432) : int
      {
         return param1.o5451 < param2.o5451?1:-1;
      }
      
      private function o10921(param1:o14432, param2:o14432) : int
      {
         return param1.o1991 < param2.o1991?1:-1;
      }
      
      private function o8196(param1:o14432, param2:o14432) : int
      {
         return param1.o13019 < param2.o13019?1:-1;
      }
      
      private function o4330(param1:o14432, param2:o14432) : int
      {
         return param1.o12546 < param2.o12546?1:-1;
      }
      
      private function o705(param1:o14432, param2:o14432) : int
      {
         return param1.o10753 < param2.o10753?1:-1;
      }
      
      public function o8636(param1:int) : Vector.<o14432>
      {
         var _loc4_:Vector.<int> = o19419.o5292.o20827.o15285;
         var _loc2_:Vector.<o14432> = new Vector.<o14432>();
         var _loc6_:int = 0;
         var _loc5_:* = this.o14403;
         for each(var _loc3_ in this.o14403)
         {
            if(_loc4_.indexOf(_loc3_.id) < 0)
            {
               _loc2_.push(_loc3_);
            }
         }
         switch(int(param1))
         {
            case 0:
               return _loc2_.sort(o2148);
            case 1:
               return _loc2_.sort(o2631);
            case 2:
               return _loc2_.sort(o10921);
            case 3:
               return _loc2_.sort(o8196);
            case 4:
               return _loc2_.sort(o4330);
            case 5:
               return _loc2_.sort(o705);
         }
      }
   }
}
