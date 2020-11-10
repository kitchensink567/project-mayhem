package
{
   use namespace b2internal;
   
   public class o13884 extends o17586
   {
      
      private static var o6676:o9729 = new o9729();
       
      
      b2internal var o8649:o20021;
      
      b2internal var o17252:Vector.<o20021>;
      
      b2internal var o16671:Vector.<o20021>;
      
      b2internal var o11880:int;
      
      public function o13884()
      {
         super();
         o3804 = 1;
         o8649 = new o20021();
         o17252 = new Vector.<o20021>();
         o16671 = new Vector.<o20021>();
      }
      
      public static function o20386(param1:Array, param2:Number) : o13884
      {
         var _loc3_:o13884 = new o13884();
         _loc3_.o11917(param1,param2);
         return _loc3_;
      }
      
      public static function o7550(param1:Vector.<o20021>, param2:Number) : o13884
      {
         var _loc3_:o13884 = new o13884();
         _loc3_.o4336(param1,param2);
         return _loc3_;
      }
      
      public static function o13850(param1:Number, param2:Number) : o13884
      {
         var _loc3_:o13884 = new o13884();
         _loc3_.o1599(param1,param2);
         return _loc3_;
      }
      
      public static function o3498(param1:Number, param2:Number, param3:o20021 = null, param4:Number = 0.0) : o13884
      {
         var _loc5_:o13884 = new o13884();
         _loc5_.o2909(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function o14268(param1:o20021, param2:o20021) : o13884
      {
         var _loc3_:o13884 = new o13884();
         _loc3_.o10485(param1,param2);
         return _loc3_;
      }
      
      public static function o12141(param1:Vector.<o20021>, param2:uint) : o20021
      {
         var _loc7_:int = 0;
         var _loc11_:* = null;
         var _loc13_:* = null;
         var _loc12_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc4_:o20021 = new o20021();
         var _loc14_:* = 0;
         var _loc8_:* = 0;
         var _loc10_:* = 0;
         var _loc6_:* = 0.333333333333333;
         _loc7_ = 0;
         while(_loc7_ < param2)
         {
            _loc11_ = param1[_loc7_];
            _loc13_ = _loc7_ + 1 < param2?param1[int(_loc7_ + 1)]:param1[0];
            _loc12_ = _loc11_.x - _loc8_;
            _loc5_ = _loc11_.y - _loc10_;
            _loc9_ = _loc13_.x - _loc8_;
            _loc16_ = _loc13_.y - _loc10_;
            _loc3_ = _loc12_ * _loc16_ - _loc5_ * _loc9_;
            _loc15_ = 0.5 * _loc3_;
            _loc14_ = Number(_loc14_ + _loc15_);
            _loc4_.x = _loc4_.x + _loc15_ * _loc6_ * (_loc8_ + _loc11_.x + _loc13_.x);
            _loc4_.y = _loc4_.y + _loc15_ * _loc6_ * (_loc10_ + _loc11_.y + _loc13_.y);
            _loc7_++;
         }
         _loc4_.x = _loc4_.x * (1 / _loc14_);
         _loc4_.y = _loc4_.y * (1 / _loc14_);
         return _loc4_;
      }
      
      b2internal static function o12924(param1:o11740, param2:Vector.<o20021>, param3:int) : void
      {
         var _loc19_:int = 0;
         var _loc6_:* = null;
         var _loc17_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc25_:* = NaN;
         var _loc23_:* = NaN;
         var _loc7_:* = NaN;
         var _loc12_:* = NaN;
         var _loc16_:int = 0;
         var _loc8_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc14_:* = null;
         var _loc21_:Vector.<o20021> = new Vector.<o20021>(param3 + 1);
         _loc19_ = 0;
         while(_loc19_ < param3)
         {
            _loc21_[_loc19_] = param2[_loc19_];
            _loc19_++;
         }
         _loc21_[param3] = _loc21_[0];
         var _loc9_:* = 1.79769313486232e308;
         _loc19_ = 1;
         while(_loc19_ <= param3)
         {
            _loc6_ = _loc21_[int(_loc19_ - 1)];
            _loc17_ = _loc21_[_loc19_].x - _loc6_.x;
            _loc20_ = _loc21_[_loc19_].y - _loc6_.y;
            _loc13_ = Math.sqrt(_loc17_ * _loc17_ + _loc20_ * _loc20_);
            _loc17_ = _loc17_ / _loc13_;
            _loc20_ = _loc20_ / _loc13_;
            _loc18_ = -_loc20_;
            _loc5_ = _loc17_;
            _loc25_ = 1.79769313486232e308;
            _loc23_ = 1.79769313486232e308;
            _loc7_ = -1.79769313486232e308;
            _loc12_ = -1.79769313486232e308;
            _loc16_ = 0;
            while(_loc16_ < param3)
            {
               _loc8_ = _loc21_[_loc16_].x - _loc6_.x;
               _loc4_ = _loc21_[_loc16_].y - _loc6_.y;
               _loc10_ = _loc17_ * _loc8_ + _loc20_ * _loc4_;
               _loc15_ = _loc18_ * _loc8_ + _loc5_ * _loc4_;
               if(_loc10_ < _loc25_)
               {
                  _loc25_ = _loc10_;
               }
               if(_loc15_ < _loc23_)
               {
                  _loc23_ = _loc15_;
               }
               if(_loc10_ > _loc7_)
               {
                  _loc7_ = _loc10_;
               }
               if(_loc15_ > _loc12_)
               {
                  _loc12_ = _loc15_;
               }
               _loc16_++;
            }
            _loc24_ = (_loc7_ - _loc25_) * (_loc12_ - _loc23_);
            if(_loc24_ < 0.95 * _loc9_)
            {
               _loc9_ = _loc24_;
               param1.o13707.o19549.x = _loc17_;
               param1.o13707.o19549.y = _loc20_;
               param1.o13707.o20685.x = _loc18_;
               param1.o13707.o20685.y = _loc5_;
               _loc11_ = 0.5 * (_loc25_ + _loc7_);
               _loc22_ = 0.5 * (_loc23_ + _loc12_);
               _loc14_ = param1.o13707;
               param1.o1906.x = _loc6_.x + (_loc14_.o19549.x * _loc11_ + _loc14_.o20685.x * _loc22_);
               param1.o1906.y = _loc6_.y + (_loc14_.o19549.y * _loc11_ + _loc14_.o20685.y * _loc22_);
               param1.o14651.x = 0.5 * (_loc7_ - _loc25_);
               param1.o14651.y = 0.5 * (_loc12_ - _loc23_);
            }
            _loc19_++;
         }
      }
      
      override public function o2747() : o17586
      {
         var _loc1_:o13884 = new o13884();
         _loc1_.o18596(this);
         return _loc1_;
      }
      
      override public function o18596(param1:o17586) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         super.o18596(param1);
         if(param1 is o13884)
         {
            _loc2_ = param1 as o13884;
            o8649.o13101(_loc2_.o8649);
            o11880 = _loc2_.o11880;
            o4975(o11880);
            _loc3_ = 0;
            while(_loc3_ < o11880)
            {
               o17252[_loc3_].o13101(_loc2_.o17252[_loc3_]);
               o16671[_loc3_].o13101(_loc2_.o16671[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function o11917(param1:Array, param2:Number = 0) : void
      {
         var _loc4_:Vector.<o20021> = new Vector.<o20021>();
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc4_.push(_loc3_);
         }
         o4336(_loc4_,param2);
      }
      
      public function o4336(param1:Vector.<o20021>, param2:Number = 0) : void
      {
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         var _loc4_:int = 0;
         var _loc3_:* = null;
         if(param2 == 0)
         {
            param2 = param1.length;
         }
         o14980.o12199(2 <= param2);
         o11880 = param2;
         o4975(param2);
         _loc5_ = 0;
         while(_loc5_ < o11880)
         {
            o17252[_loc5_].o13101(param1[_loc5_]);
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < o11880)
         {
            _loc6_ = _loc5_;
            _loc4_ = _loc5_ + 1 < o11880?_loc5_ + 1:0;
            _loc3_ = o10852.o6072(o17252[_loc4_],o17252[_loc6_]);
            o14980.o12199(_loc3_.o9792() > Number.MIN_VALUE);
            o16671[_loc5_].o13101(o10852.o9716(_loc3_,1));
            o16671[_loc5_].o5775();
            _loc5_++;
         }
         o8649 = o12141(o17252,o11880);
      }
      
      public function o1599(param1:Number, param2:Number) : void
      {
         o11880 = 4;
         o4975(4);
         o17252[0].o18596(-param1,-param2);
         o17252[1].o18596(param1,-param2);
         o17252[2].o18596(param1,param2);
         o17252[3].o18596(-param1,param2);
         o16671[0].o18596(0,-1);
         o16671[1].o18596(1,0);
         o16671[2].o18596(0,1);
         o16671[3].o18596(-1,0);
         o8649.o14195();
      }
      
      public function o2909(param1:Number, param2:Number, param3:o20021 = null, param4:Number = 0.0) : void
      {
         var _loc6_:int = 0;
         o11880 = 4;
         o4975(4);
         o17252[0].o18596(-param1,-param2);
         o17252[1].o18596(param1,-param2);
         o17252[2].o18596(param1,param2);
         o17252[3].o18596(-param1,param2);
         o16671[0].o18596(0,-1);
         o16671[1].o18596(1,0);
         o16671[2].o18596(0,1);
         o16671[3].o18596(-1,0);
         o8649 = param3;
         var _loc5_:o12362 = new o12362();
         _loc5_.position = param3;
         _loc5_.o13707.o18596(param4);
         _loc6_ = 0;
         while(_loc6_ < o11880)
         {
            o17252[_loc6_] = o10852.o1026(_loc5_,o17252[_loc6_]);
            o16671[_loc6_] = o10852.o5842(_loc5_.o13707,o16671[_loc6_]);
            _loc6_++;
         }
      }
      
      public function o10485(param1:o20021, param2:o20021) : void
      {
         o11880 = 2;
         o4975(2);
         o17252[0].o13101(param1);
         o17252[1].o13101(param2);
         o8649.x = 0.5 * (param1.x + param2.x);
         o8649.y = 0.5 * (param1.y + param2.y);
         o16671[0] = o10852.o9716(o10852.o6072(param2,param1),1);
         o16671[0].o5775();
         o16671[1].x = -o16671[0].x;
         o16671[1].y = -o16671[0].y;
      }
      
      override public function o14704(param1:o12362, param2:o20021) : Boolean
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc4_:Number = NaN;
         var _loc8_:o9729 = param1.o13707;
         var _loc10_:Number = param2.x - param1.position.x;
         var _loc7_:Number = param2.y - param1.position.y;
         var _loc9_:Number = _loc10_ * _loc8_.o19549.x + _loc7_ * _loc8_.o19549.y;
         var _loc3_:Number = _loc10_ * _loc8_.o20685.x + _loc7_ * _loc8_.o20685.y;
         _loc6_ = 0;
         while(_loc6_ < o11880)
         {
            _loc5_ = o17252[_loc6_];
            _loc10_ = _loc9_ - _loc5_.x;
            _loc7_ = _loc3_ - _loc5_.y;
            _loc5_ = o16671[_loc6_];
            _loc4_ = _loc5_.x * _loc10_ + _loc5_.y * _loc7_;
            if(_loc4_ > 0)
            {
               return false;
            }
            _loc6_++;
         }
         return true;
      }
      
      override public function o4566(param1:o14303, param2:o13148, param3:o12362) : Boolean
      {
         var _loc13_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc18_:* = null;
         var _loc16_:* = null;
         var _loc5_:int = 0;
         var _loc9_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc15_:* = 0;
         var _loc10_:Number = param2.o544;
         _loc13_ = param2.o12282.x - param3.position.x;
         _loc6_ = param2.o12282.y - param3.position.y;
         _loc18_ = param3.o13707;
         var _loc11_:Number = _loc13_ * _loc18_.o19549.x + _loc6_ * _loc18_.o19549.y;
         var _loc12_:Number = _loc13_ * _loc18_.o20685.x + _loc6_ * _loc18_.o20685.y;
         _loc13_ = param2.o14457.x - param3.position.x;
         _loc6_ = param2.o14457.y - param3.position.y;
         _loc18_ = param3.o13707;
         var _loc14_:Number = _loc13_ * _loc18_.o19549.x + _loc6_ * _loc18_.o19549.y;
         var _loc19_:Number = _loc13_ * _loc18_.o20685.x + _loc6_ * _loc18_.o20685.y;
         var _loc8_:Number = _loc14_ - _loc11_;
         var _loc4_:Number = _loc19_ - _loc12_;
         var _loc7_:* = -1;
         _loc5_ = 0;
         while(_loc5_ < o11880)
         {
            _loc16_ = o17252[_loc5_];
            _loc13_ = _loc16_.x - _loc11_;
            _loc6_ = _loc16_.y - _loc12_;
            _loc16_ = o16671[_loc5_];
            _loc9_ = _loc16_.x * _loc13_ + _loc16_.y * _loc6_;
            _loc17_ = _loc16_.x * _loc8_ + _loc16_.y * _loc4_;
            if(_loc17_ == 0)
            {
               if(_loc9_ < 0)
               {
                  return false;
               }
            }
            else if(_loc17_ < 0 && _loc9_ < _loc15_ * _loc17_)
            {
               _loc15_ = Number(_loc9_ / _loc17_);
               _loc7_ = _loc5_;
            }
            else if(_loc17_ > 0 && _loc9_ < _loc10_ * _loc17_)
            {
               _loc10_ = _loc9_ / _loc17_;
            }
            if(_loc10_ < _loc15_ - Number.MIN_VALUE)
            {
               return false;
            }
            _loc5_++;
         }
         if(_loc7_ >= 0)
         {
            param1.o9664 = _loc15_;
            _loc18_ = param3.o13707;
            _loc16_ = o16671[_loc7_];
            param1.o1654.x = _loc18_.o19549.x * _loc16_.x + _loc18_.o20685.x * _loc16_.y;
            param1.o1654.y = _loc18_.o19549.y * _loc16_.x + _loc18_.o20685.y * _loc16_.y;
            return true;
         }
         return false;
      }
      
      override public function o7379(param1:o1693, param2:o12362) : void
      {
         var _loc8_:int = 0;
         var _loc11_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc9_:o9729 = param2.o13707;
         var _loc4_:o20021 = o17252[0];
         var _loc10_:* = Number(param2.position.x + (_loc9_.o19549.x * _loc4_.x + _loc9_.o20685.x * _loc4_.y));
         var _loc7_:* = Number(param2.position.y + (_loc9_.o19549.y * _loc4_.x + _loc9_.o20685.y * _loc4_.y));
         var _loc6_:* = _loc10_;
         var _loc5_:* = _loc7_;
         _loc8_ = 1;
         while(_loc8_ < o11880)
         {
            _loc4_ = o17252[_loc8_];
            _loc11_ = param2.position.x + (_loc9_.o19549.x * _loc4_.x + _loc9_.o20685.x * _loc4_.y);
            _loc3_ = param2.position.y + (_loc9_.o19549.y * _loc4_.x + _loc9_.o20685.y * _loc4_.y);
            _loc10_ = _loc10_ < _loc11_?_loc10_:_loc11_;
            _loc7_ = _loc7_ < _loc3_?_loc7_:_loc3_;
            _loc6_ = _loc6_ > _loc11_?_loc6_:_loc11_;
            _loc5_ = _loc5_ > _loc3_?_loc5_:_loc3_;
            _loc8_++;
         }
         param1.o8628.x = _loc10_ - o4879;
         param1.o8628.y = _loc7_ - o4879;
         param1.o18391.x = _loc6_ + o4879;
         param1.o18391.y = _loc5_ + o4879;
      }
      
      override public function o14604(param1:o14127, param2:Number) : void
      {
         var _loc17_:int = 0;
         var _loc10_:* = null;
         var _loc24_:* = null;
         var _loc20_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc5_:* = NaN;
         var _loc7_:* = NaN;
         var _loc11_:* = NaN;
         var _loc22_:* = NaN;
         var _loc6_:* = NaN;
         var _loc26_:Number = NaN;
         var _loc16_:Number = NaN;
         if(o11880 == 2)
         {
            param1.o1906.x = 0.5 * (o17252[0].x + o17252[1].x);
            param1.o1906.y = 0.5 * (o17252[0].y + o17252[1].y);
            param1.o7191 = 0;
            param1.I = 0;
            return;
         }
         var _loc12_:* = 0;
         var _loc21_:* = 0;
         var _loc25_:* = 0;
         var _loc9_:* = 0;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         var _loc23_:* = 0.333333333333333;
         _loc17_ = 0;
         while(_loc17_ < o11880)
         {
            _loc10_ = o17252[_loc17_];
            _loc24_ = _loc17_ + 1 < o11880?o17252[int(_loc17_ + 1)]:o17252[0];
            _loc20_ = _loc10_.x - _loc18_;
            _loc4_ = _loc10_.y - _loc19_;
            _loc8_ = _loc24_.x - _loc18_;
            _loc15_ = _loc24_.y - _loc19_;
            _loc3_ = _loc20_ * _loc15_ - _loc4_ * _loc8_;
            _loc14_ = 0.5 * _loc3_;
            _loc25_ = Number(_loc25_ + _loc14_);
            _loc12_ = Number(_loc12_ + _loc14_ * _loc23_ * (_loc18_ + _loc10_.x + _loc24_.x));
            _loc21_ = Number(_loc21_ + _loc14_ * _loc23_ * (_loc19_ + _loc10_.y + _loc24_.y));
            _loc13_ = _loc18_;
            _loc5_ = _loc19_;
            _loc7_ = _loc20_;
            _loc11_ = _loc4_;
            _loc22_ = _loc8_;
            _loc6_ = _loc15_;
            _loc26_ = _loc23_ * (0.25 * (_loc7_ * _loc7_ + _loc22_ * _loc7_ + _loc22_ * _loc22_) + (_loc13_ * _loc7_ + _loc13_ * _loc22_)) + 0.5 * _loc13_ * _loc13_;
            _loc16_ = _loc23_ * (0.25 * (_loc11_ * _loc11_ + _loc6_ * _loc11_ + _loc6_ * _loc6_) + (_loc5_ * _loc11_ + _loc5_ * _loc6_)) + 0.5 * _loc5_ * _loc5_;
            _loc9_ = Number(_loc9_ + _loc3_ * (_loc26_ + _loc16_));
            _loc17_++;
         }
         param1.o7191 = param2 * _loc25_;
         _loc12_ = Number(_loc12_ * (1 / _loc25_));
         _loc21_ = Number(_loc21_ * (1 / _loc25_));
         param1.o1906.o18596(_loc12_,_loc21_);
         param1.I = param2 * _loc9_;
      }
      
      override public function o5496(param1:o20021, param2:Number, param3:o12362, param4:o20021) : Number
      {
         var _loc14_:int = 0;
         var _loc18_:* = false;
         var _loc8_:* = null;
         var _loc21_:* = null;
         var _loc12_:Number = NaN;
         var _loc7_:o20021 = o10852.o15236(param3.o13707,param1);
         var _loc10_:Number = param2 - o10852.o10111(param1,param3.position);
         var _loc20_:Vector.<Number> = new Vector.<Number>();
         var _loc15_:int = 0;
         var _loc6_:int = -1;
         var _loc25_:int = -1;
         var _loc24_:* = false;
         _loc14_ = 0;
         while(_loc14_ < o11880)
         {
            _loc20_[_loc14_] = o10852.o10111(_loc7_,o17252[_loc14_]) - _loc10_;
            _loc18_ = _loc20_[_loc14_] < -Number.MIN_VALUE;
            if(_loc14_ > 0)
            {
               if(_loc18_)
               {
                  if(!_loc24_)
                  {
                     _loc6_ = _loc14_ - 1;
                     _loc15_++;
                  }
               }
               else if(_loc24_)
               {
                  _loc25_ = _loc14_ - 1;
                  _loc15_++;
               }
            }
            _loc24_ = _loc18_;
            _loc14_++;
         }
         switch(int(_loc15_))
         {
            case 0:
               if(_loc24_)
               {
                  _loc8_ = new o14127();
                  o14604(_loc8_,1);
                  param4.o13101(o10852.o1026(param3,_loc8_.o1906));
                  return _loc8_.o7191;
               }
               return 0;
            case 1:
               if(_loc6_ == -1)
               {
                  _loc6_ = o11880 - 1;
               }
               else
               {
                  _loc25_ = o11880 - 1;
               }
         }
      }
      
      public function o16646() : int
      {
         return o11880;
      }
      
      public function o4122() : Vector.<o20021>
      {
         return o17252;
      }
      
      public function o5637() : Vector.<o20021>
      {
         return o16671;
      }
      
      public function o3616(param1:o20021) : int
      {
         var _loc5_:int = 0;
         var _loc4_:Number = NaN;
         var _loc3_:* = 0;
         var _loc2_:* = Number(o17252[0].x * param1.x + o17252[0].y * param1.y);
         _loc5_ = 1;
         while(_loc5_ < o11880)
         {
            _loc4_ = o17252[_loc5_].x * param1.x + o17252[_loc5_].y * param1.y;
            if(_loc4_ > _loc2_)
            {
               _loc3_ = _loc5_;
               _loc2_ = _loc4_;
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function o6047(param1:o20021) : o20021
      {
         var _loc5_:int = 0;
         var _loc4_:Number = NaN;
         var _loc3_:* = 0;
         var _loc2_:* = Number(o17252[0].x * param1.x + o17252[0].y * param1.y);
         _loc5_ = 1;
         while(_loc5_ < o11880)
         {
            _loc4_ = o17252[_loc5_].x * param1.x + o17252[_loc5_].y * param1.y;
            if(_loc4_ > _loc2_)
            {
               _loc3_ = _loc5_;
               _loc2_ = _loc4_;
            }
            _loc5_++;
         }
         return o17252[_loc3_];
      }
      
      private function o17106() : Boolean
      {
         return false;
      }
      
      private function o4975(param1:int) : void
      {
         var _loc2_:int = 0;
         _loc2_ = o17252.length;
         while(_loc2_ < param1)
         {
            o17252[_loc2_] = new o20021();
            o16671[_loc2_] = new o20021();
            _loc2_++;
         }
      }
   }
}
