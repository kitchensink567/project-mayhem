package
{
   import flash.utils.Dictionary;
   
   public class o5638
   {
       
      
      private var o10404:Vector.<o3001>;
      
      private var o7854:Dictionary;
      
      private var o3245:o3001;
      
      private var o19419:o14200;
      
      public var o9788:Dictionary;
      
      private var o20827:o4609;
      
      private var o5533:Boolean = false;
      
      public var o15281:Boolean = false;
      
      private var o18124:o16123;
      
      private var o19544:o16123;
      
      private var o10211:Boolean = false;
      
      public function o5638(param1:o14200)
      {
         o18124 = new o16123(0);
         o19544 = new o16123(0);
         super();
         this.o19419 = param1;
      }
      
      private function o5931(param1:int) : o12805
      {
         return o7854[param1] as o12805;
      }
      
      public function reset(param1:Vector.<int>, param2:Vector.<int>, param3:Boolean) : void
      {
         var _loc5_:* = null;
         o9788 = new Dictionary();
         o20827 = o19419.o5292.o20827;
         o18124.value = 0;
         o19544.value = 0;
         o15281 = false;
         o10211 = o19419.o202.o10211;
         this.o5533 = param3;
         o7854 = new Dictionary();
         var _loc9_:int = 0;
         var _loc8_:* = o19419.o5292.o19908;
         for each(var _loc7_ in o19419.o5292.o19908)
         {
            _loc5_ = new o12805(_loc7_.o2752.o5806,_loc7_.o2752.o11412);
            o7854[_loc7_.o2752.o5806] = _loc5_;
         }
         o10404 = new Vector.<o3001>();
         var _loc6_:int = 0;
         var _loc11_:int = 0;
         var _loc10_:* = param2;
         for each(var _loc4_ in param2)
         {
            if(_loc4_ < 0)
            {
               o10404.push(null);
            }
            else
            {
               o10404.push(new o3001(_loc4_,o19419.data.o1334(param1[_loc6_])));
            }
            _loc6_++;
         }
      }
      
      public function o8158(param1:int) : void
      {
         if(param1 >= 0)
         {
            o3245 = o10404[param1];
         }
      }
      
      public function o3180(param1:int) : void
      {
         o5931(param1).o16527++;
      }
      
      public function o6571(param1:int) : void
      {
         o5931(param1).o20915++;
      }
      
      public function o17886(param1:int) : void
      {
         if(o3245.o607.o10935 + param1 < 0 || o3245.o607.o10935 + param1 > 2147483647)
         {
            o3245.o607.o10935 = 2147483647;
         }
         else
         {
            o3245.o607.o10935 = o3245.o607.o10935 + param1;
         }
         if(param1 > o3245.o607.o10753)
         {
            o3245.o607.o10753 = param1;
         }
      }
      
      public function o7661(param1:o18442) : void
      {
         if(o10211)
         {
            o3245.o607.o1991++;
         }
         else
         {
            o3245.o607.o5451++;
         }
         if(param1.o17050)
         {
            o3245.o607.o13019++;
         }
         if(o15281)
         {
            o3245.o5630++;
         }
         else
         {
            o3245.o8510++;
         }
      }
      
      public function o20217() : void
      {
         o18124.value++;
      }
      
      public function o8929() : void
      {
         o19544.value++;
      }
      
      private function o20194(param1:o1253) : Number
      {
         if(o14200.o19505.o202.o10220 != null)
         {
            return 0;
         }
         var _loc4_:Number = o20827.o13418 - o20827.o5887;
         var _loc3_:Number = o20827.o5887 + Math.random() * _loc4_;
         var _loc2_:* = 0;
         if(param1.o10239.o18072 == 2)
         {
            _loc2_ = Number(_loc2_ + o20827.o19204);
         }
         else if(param1.o10239.o18072 == 3)
         {
            _loc2_ = Number(_loc2_ + o20827.o8953);
         }
         if(param1.grade >= 10)
         {
            _loc2_ = Number(_loc2_ + o20827.o4348);
         }
         _loc3_ = _loc3_ * (1 + _loc2_);
         return _loc3_;
      }
      
      public function o6546(param1:Boolean) : void
      {
         var _loc16_:* = null;
         var _loc17_:Number = NaN;
         var _loc15_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc9_:* = null;
         var _loc18_:int = 0;
         var _loc3_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc4_:o9145 = o19419.o7923;
         var _loc21_:* = 0;
         var _loc20_:* = o20827.o20687;
         for each(_loc16_ in o20827.o20687)
         {
            o9788[_loc16_.id] = 0;
         }
         var _loc23_:* = 0;
         var _loc22_:* = o10404;
         for each(var _loc10_ in o10404)
         {
            if(_loc10_ != null)
            {
               if(param1 == false)
               {
                  _loc10_.o607.o12546++;
               }
               if(!(_loc10_.o11119 == 11 || _loc10_.o11119 == 10))
               {
                  _loc16_ = o20827.o15484(_loc10_.o11119);
                  _loc17_ = _loc10_.o3562 as Number;
                  if(!o19419.o5292.o418.o7765(_loc10_.o607.id))
                  {
                  }
                  _loc17_ = Math.floor(_loc17_ * 1.5);
                  _loc21_ = _loc16_.id;
                  _loc20_ = o9788[_loc21_] + _loc17_ * o20827.o16491;
                  o9788[_loc21_] = _loc20_;
               }
            }
         }
         var _loc5_:Vector.<o1253> = new Vector.<o1253>();
         var _loc25_:* = 0;
         var _loc24_:* = _loc4_.o420;
         for each(_loc15_ in _loc4_.o420)
         {
            if(_loc15_ != null)
            {
               _loc16_ = o20827.o9445(_loc15_.o8395);
               if(_loc4_.o13012.o13628(_loc16_.id) == false)
               {
                  _loc5_.push(_loc15_);
               }
            }
         }
         if(_loc5_.length > 0 && param1 == false)
         {
            _loc6_ = Math.random() * _loc5_.length;
            _loc7_ = _loc5_[_loc6_];
            _loc16_ = o20827.o9445(_loc7_.o8395);
            _loc20_ = _loc16_.id;
            _loc21_ = o9788[_loc20_] + o20194(_loc7_);
            o9788[_loc20_] = _loc21_;
         }
         if(o5533 == false)
         {
            var _loc27_:int = 0;
            var _loc26_:* = _loc4_.o420;
            for each(_loc15_ in _loc4_.o420)
            {
               _loc16_ = o20827.o14524(_loc7_.o10239.o11412);
               _loc23_ = _loc16_.id;
               _loc22_ = o9788[_loc23_] + o20194(_loc7_) * o20827.o7819;
               o9788[_loc23_] = _loc22_;
            }
         }
         var _loc11_:int = 0;
         var _loc29_:int = 0;
         var _loc28_:* = o7854;
         for(var _loc12_ in o7854)
         {
            _loc9_ = o7854[_loc12_];
            _loc18_ = _loc9_.o16527 * o20827.o12335 + _loc9_.o20915 * o20827.o13843;
            _loc11_ = _loc11_ + _loc18_;
            if(o5533 == false)
            {
               _loc16_ = o20827.o14524(_loc9_.o14678);
               _loc25_ = _loc16_.id;
               _loc24_ = o9788[_loc25_] + _loc18_ * o20827.o20246;
               o9788[_loc25_] = _loc24_;
            }
         }
         o9788[8] = _loc11_;
         o9788[10] = o18124.value * o20827.o2295 + o19544.value * o20827.o9117;
         var _loc8_:* = 0;
         var _loc14_:int = 0;
         var _loc31_:int = 0;
         var _loc30_:* = o10404;
         for each(var _loc13_ in o10404)
         {
            if(_loc13_ != null)
            {
               _loc14_ = _loc14_ + _loc13_.o5630;
            }
         }
         o9788[9] = _loc14_ * o20827.o16491;
         if(param1 == true)
         {
            _loc3_ = o20827.o4707;
            var _loc33_:int = 0;
            var _loc32_:* = o9788;
            for(var _loc19_ in o9788)
            {
               _loc2_ = o9788[_loc19_];
               _loc2_ = _loc2_ * _loc3_;
               o9788[_loc19_] = _loc2_;
            }
         }
      }
      
      public function o18334(param1:Dictionary) : void
      {
         var _loc4_:* = null;
         var _loc3_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = o20827.o9238();
         var _loc8_:int = 0;
         var _loc7_:* = o20827.o20687;
         for each(_loc4_ in o20827.o20687)
         {
            if(o9788[_loc4_.id] != null && param1[_loc4_.id] != null)
            {
               _loc3_ = param1[_loc4_.id];
               _loc6_ = o9788[_loc4_.id];
               _loc5_ = _loc3_ + _loc6_;
               if(_loc3_ >= _loc2_)
               {
                  o9788[_loc4_.id] = 0;
                  param1[_loc4_.id] = _loc2_;
               }
               else if(_loc5_ >= _loc2_)
               {
                  o9788[_loc4_.id] = _loc2_ - _loc3_;
               }
            }
         }
      }
   }
}
