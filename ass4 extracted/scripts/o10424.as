package
{
   class o10424
   {
       
      
      public var o15574:o11627;
      
      public var o14749:o11627;
      
      public var o6444:o11627;
      
      public var o17252:Vector.<o11627>;
      
      public var o15052:int;
      
      function o10424()
      {
         o15574 = new o11627();
         o14749 = new o11627();
         o6444 = new o11627();
         o17252 = new Vector.<o11627>(3);
         super();
         o17252[0] = o15574;
         o17252[1] = o14749;
         o17252[2] = o6444;
      }
      
      public function o14820(param1:o7731, param2:o10231, param3:o12362, param4:o10231, param5:o12362) : void
      {
         var _loc7_:* = null;
         var _loc6_:* = null;
         var _loc8_:int = 0;
         var _loc11_:* = null;
         var _loc10_:Number = NaN;
         var _loc9_:Number = NaN;
         o14980.o12199(0 <= param1.o16191 && param1.o16191 <= 3);
         o15052 = param1.o16191;
         var _loc12_:Vector.<o11627> = o17252;
         _loc8_ = 0;
         while(_loc8_ < o15052)
         {
            _loc11_ = _loc12_[_loc8_];
            _loc11_.o5855 = param1.o5855[_loc8_];
            _loc11_.o16426 = param1.o16426[_loc8_];
            _loc7_ = param2.o5529(_loc11_.o5855);
            _loc6_ = param4.o5529(_loc11_.o16426);
            _loc11_.o5863 = o10852.o1026(param3,_loc7_);
            _loc11_.o14203 = o10852.o1026(param5,_loc6_);
            _loc11_.w = o10852.o6072(_loc11_.o14203,_loc11_.o5863);
            _loc11_.o12395 = 0;
            _loc8_++;
         }
         if(o15052 > 1)
         {
            _loc10_ = param1.o2322;
            _loc9_ = o14621();
            if(_loc9_ < 0.5 * _loc10_ || 2 * _loc10_ < _loc9_ || _loc9_ < Number.MIN_VALUE)
            {
               o15052 = 0;
            }
         }
         if(o15052 == 0)
         {
            _loc11_ = _loc12_[0];
            _loc11_.o5855 = 0;
            _loc11_.o16426 = 0;
            _loc7_ = param2.o5529(0);
            _loc6_ = param4.o5529(0);
            _loc11_.o5863 = o10852.o1026(param3,_loc7_);
            _loc11_.o14203 = o10852.o1026(param5,_loc6_);
            _loc11_.w = o10852.o6072(_loc11_.o14203,_loc11_.o5863);
            o15052 = 1;
         }
      }
      
      public function o2450(param1:o7731) : void
      {
         var _loc2_:int = 0;
         param1.o2322 = o14621();
         param1.o16191 = uint(o15052);
         var _loc3_:Vector.<o11627> = o17252;
         _loc2_ = 0;
         while(_loc2_ < o15052)
         {
            param1.o5855[_loc2_] = uint(_loc3_[_loc2_].o5855);
            param1.o16426[_loc2_] = uint(_loc3_[_loc2_].o16426);
            _loc2_++;
         }
      }
      
      public function o7511() : o20021
      {
         var _loc1_:* = null;
         var _loc2_:Number = NaN;
         switch(int(o15052) - 1)
         {
            case 0:
               return o15574.w.o4847();
            case 1:
               _loc1_ = o10852.o6072(o14749.w,o15574.w);
               _loc2_ = o10852.o14266(_loc1_,o15574.w.o4847());
               if(_loc2_ > 0)
               {
                  return o10852.o18626(1,_loc1_);
               }
               return o10852.o9716(_loc1_,1);
         }
      }
      
      public function o18610() : o20021
      {
         switch(int(o15052))
         {
            case 0:
               o14980.o12199(false);
               return new o20021();
            case 1:
               return o15574.w;
            case 2:
               return new o20021(o15574.o12395 * o15574.w.x + o14749.o12395 * o14749.w.x,o15574.o12395 * o15574.w.y + o14749.o12395 * o14749.w.y);
         }
      }
      
      public function o20065(param1:o20021, param2:o20021) : void
      {
         switch(int(o15052))
         {
            case 0:
               o14980.o12199(false);
               break;
            case 1:
               param1.o13101(o15574.o5863);
               param2.o13101(o15574.o14203);
               break;
            case 2:
               param1.x = o15574.o12395 * o15574.o5863.x + o14749.o12395 * o14749.o5863.x;
               param1.y = o15574.o12395 * o15574.o5863.y + o14749.o12395 * o14749.o5863.y;
               param2.x = o15574.o12395 * o15574.o14203.x + o14749.o12395 * o14749.o14203.x;
               param2.y = o15574.o12395 * o15574.o14203.y + o14749.o12395 * o14749.o14203.y;
               break;
            case 3:
               var _loc3_:* = o15574.o12395 * o15574.o5863.x + o14749.o12395 * o14749.o5863.x + o6444.o12395 * o6444.o5863.x;
               param1.x = _loc3_;
               param2.x = _loc3_;
               _loc3_ = o15574.o12395 * o15574.o5863.y + o14749.o12395 * o14749.o5863.y + o6444.o12395 * o6444.o5863.y;
               param1.y = _loc3_;
               param2.y = _loc3_;
         }
      }
      
      public function o14621() : Number
      {
         switch(int(o15052))
         {
            case 0:
               o14980.o12199(false);
               return 0;
            case 1:
               return 0;
            case 2:
               return o10852.o6072(o15574.w,o14749.w).o7648();
            case 3:
               return o10852.o14266(o10852.o6072(o14749.w,o15574.w),o10852.o6072(o6444.w,o15574.w));
         }
      }
      
      public function o10765() : void
      {
         var _loc3_:o20021 = o15574.w;
         var _loc6_:o20021 = o14749.w;
         var _loc5_:o20021 = o10852.o6072(_loc6_,_loc3_);
         var _loc4_:Number = -(_loc3_.x * _loc5_.x + _loc3_.y * _loc5_.y);
         if(_loc4_ <= 0)
         {
            o15574.o12395 = 1;
            o15052 = 1;
            return;
         }
         var _loc2_:Number = _loc6_.x * _loc5_.x + _loc6_.y * _loc5_.y;
         if(_loc2_ <= 0)
         {
            o14749.o12395 = 1;
            o15052 = 1;
            o15574.o18596(o14749);
            return;
         }
         var _loc1_:Number = 1 / (_loc2_ + _loc4_);
         o15574.o12395 = _loc2_ * _loc1_;
         o14749.o12395 = _loc4_ * _loc1_;
         o15052 = 2;
      }
      
      public function o9370() : void
      {
         var _loc10_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc12_:o20021 = o15574.w;
         var _loc21_:o20021 = o14749.w;
         var _loc3_:o20021 = o6444.w;
         var _loc9_:o20021 = o10852.o6072(_loc21_,_loc12_);
         var _loc25_:Number = o10852.o10111(_loc12_,_loc9_);
         var _loc8_:Number = o10852.o10111(_loc21_,_loc9_);
         var _loc2_:* = _loc8_;
         var _loc15_:Number = -_loc25_;
         var _loc24_:o20021 = o10852.o6072(_loc3_,_loc12_);
         var _loc20_:Number = o10852.o10111(_loc12_,_loc24_);
         var _loc16_:Number = o10852.o10111(_loc3_,_loc24_);
         var _loc5_:* = _loc16_;
         var _loc18_:Number = -_loc20_;
         var _loc7_:o20021 = o10852.o6072(_loc3_,_loc21_);
         var _loc22_:Number = o10852.o10111(_loc21_,_loc7_);
         var _loc4_:Number = o10852.o10111(_loc3_,_loc7_);
         var _loc1_:* = _loc4_;
         var _loc14_:Number = -_loc22_;
         var _loc19_:Number = o10852.o14266(_loc9_,_loc24_);
         var _loc11_:Number = _loc19_ * o10852.o14266(_loc21_,_loc3_);
         var _loc17_:Number = _loc19_ * o10852.o14266(_loc3_,_loc12_);
         var _loc26_:Number = _loc19_ * o10852.o14266(_loc12_,_loc21_);
         if(_loc15_ <= 0 && _loc18_ <= 0)
         {
            o15574.o12395 = 1;
            o15052 = 1;
            return;
         }
         if(_loc2_ > 0 && _loc15_ > 0 && _loc26_ <= 0)
         {
            _loc10_ = 1 / (_loc2_ + _loc15_);
            o15574.o12395 = _loc2_ * _loc10_;
            o14749.o12395 = _loc15_ * _loc10_;
            o15052 = 2;
            return;
         }
         if(_loc5_ > 0 && _loc18_ > 0 && _loc17_ <= 0)
         {
            _loc23_ = 1 / (_loc5_ + _loc18_);
            o15574.o12395 = _loc5_ * _loc23_;
            o6444.o12395 = _loc18_ * _loc23_;
            o15052 = 2;
            o14749.o18596(o6444);
            return;
         }
         if(_loc2_ <= 0 && _loc14_ <= 0)
         {
            o14749.o12395 = 1;
            o15052 = 1;
            o15574.o18596(o14749);
            return;
         }
         if(_loc5_ <= 0 && _loc1_ <= 0)
         {
            o6444.o12395 = 1;
            o15052 = 1;
            o15574.o18596(o6444);
            return;
         }
         if(_loc1_ > 0 && _loc14_ > 0 && _loc11_ <= 0)
         {
            _loc6_ = 1 / (_loc1_ + _loc14_);
            o14749.o12395 = _loc1_ * _loc6_;
            o6444.o12395 = _loc14_ * _loc6_;
            o15052 = 2;
            o15574.o18596(o6444);
            return;
         }
         var _loc13_:Number = 1 / (_loc11_ + _loc17_ + _loc26_);
         o15574.o12395 = _loc11_ * _loc13_;
         o14749.o12395 = _loc17_ * _loc13_;
         o6444.o12395 = _loc26_ * _loc13_;
         o15052 = 3;
      }
   }
}
