package
{
   use namespace b2internal;
   
   public class o15506 extends o2748
   {
       
      
      b2internal var o8764:o20021;
      
      b2internal var o5786:o20021;
      
      b2internal var o12053:o20021;
      
      private var o13949:o20021;
      
      private var o2837:o20021;
      
      private var o6799:o20021;
      
      private var o16723:Number;
      
      private var o18393:Number;
      
      private var o20456:Number;
      
      private var o6469:Number;
      
      private var o18978:o9729;
      
      private var o20844:o20021;
      
      private var o11047:Number;
      
      private var o5483:Number;
      
      private var o16170:Number;
      
      private var o9280:Number;
      
      private var o7383:Number;
      
      private var o15605:Number;
      
      private var o2037:Boolean;
      
      private var o2442:Boolean;
      
      private var o7551:int;
      
      public function o15506(param1:o12643)
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc2_:Number = NaN;
         o8764 = new o20021();
         o5786 = new o20021();
         o12053 = new o20021();
         o13949 = new o20021();
         o2837 = new o20021();
         o6799 = new o20021();
         o18978 = new o9729();
         o20844 = new o20021();
         super(param1);
         o8764.o13101(param1.o7423);
         o5786.o13101(param1.o20551);
         o12053.o13101(param1.o3069);
         o13949.x = -o12053.y;
         o13949.y = o12053.x;
         o20844.o14195();
         o11047 = 0;
         o5483 = 0;
         o16170 = param1.o10087;
         o9280 = param1.o2559;
         o7383 = param1.o10522;
         o15605 = param1.o18436;
         o2037 = param1.o7318;
         o2442 = param1.o18158;
         o7551 = 0;
         o2837.o14195();
         o6799.o14195();
      }
      
      override public function o17339() : o20021
      {
         return o8708.o13627(o8764);
      }
      
      override public function o5566() : o20021
      {
         return o4919.o13627(o5786);
      }
      
      override public function o917(param1:Number) : o20021
      {
         return new o20021(param1 * (o20844.x * o6799.x + (o5483 + o20844.y) * o2837.x),param1 * (o20844.x * o6799.y + (o5483 + o20844.y) * o2837.y));
      }
      
      override public function o18986(param1:Number) : Number
      {
         return param1 * o20844.y;
      }
      
      public function o3675() : Number
      {
         var _loc6_:* = null;
         var _loc5_:o5173 = o8708;
         var _loc8_:o5173 = o4919;
         var _loc4_:o20021 = _loc5_.o13627(o8764);
         var _loc9_:o20021 = _loc8_.o13627(o5786);
         var _loc7_:Number = _loc9_.x - _loc4_.x;
         var _loc1_:Number = _loc9_.y - _loc4_.y;
         var _loc3_:o20021 = _loc5_.o4028(o12053);
         var _loc2_:Number = _loc3_.x * _loc7_ + _loc3_.y * _loc1_;
         return _loc2_;
      }
      
      public function o757() : Number
      {
         var _loc17_:* = null;
         var _loc14_:o5173 = o8708;
         var _loc18_:o5173 = o4919;
         _loc17_ = _loc14_.o7718.o13707;
         var _loc6_:* = Number(o8764.x - _loc14_.o19080.o461.x);
         var _loc5_:Number = o8764.y - _loc14_.o19080.o461.y;
         var _loc12_:Number = _loc17_.o19549.x * _loc6_ + _loc17_.o20685.x * _loc5_;
         _loc5_ = _loc17_.o19549.y * _loc6_ + _loc17_.o20685.y * _loc5_;
         _loc6_ = _loc12_;
         _loc17_ = _loc18_.o7718.o13707;
         var _loc2_:* = Number(o5786.x - _loc18_.o19080.o461.x);
         var _loc4_:Number = o5786.y - _loc18_.o19080.o461.y;
         _loc12_ = _loc17_.o19549.x * _loc2_ + _loc17_.o20685.x * _loc4_;
         _loc4_ = _loc17_.o19549.y * _loc2_ + _loc17_.o20685.y * _loc4_;
         _loc2_ = _loc12_;
         var _loc9_:Number = _loc14_.o19080.o9412.x + _loc6_;
         var _loc11_:Number = _loc14_.o19080.o9412.y + _loc5_;
         var _loc13_:Number = _loc18_.o19080.o9412.x + _loc2_;
         var _loc20_:Number = _loc18_.o19080.o9412.y + _loc4_;
         var _loc7_:Number = _loc13_ - _loc9_;
         var _loc1_:Number = _loc20_ - _loc11_;
         var _loc3_:o20021 = _loc14_.o4028(o12053);
         var _loc16_:o20021 = _loc14_.o18378;
         var _loc8_:o20021 = _loc18_.o18378;
         var _loc15_:Number = _loc14_.o11516;
         var _loc10_:Number = _loc18_.o11516;
         var _loc19_:Number = _loc7_ * (-_loc15_ * _loc3_.y) + _loc1_ * (_loc15_ * _loc3_.x) + (_loc3_.x * (_loc8_.x + -_loc10_ * _loc4_ - _loc16_.x - -_loc15_ * _loc5_) + _loc3_.y * (_loc8_.y + _loc10_ * _loc2_ - _loc16_.y - _loc15_ * _loc6_));
         return _loc19_;
      }
      
      public function o17520() : Boolean
      {
         return o2037;
      }
      
      public function o12686(param1:Boolean) : void
      {
         o8708.o17676(true);
         o4919.o17676(true);
         o2037 = param1;
      }
      
      public function o17288() : Number
      {
         return o16170;
      }
      
      public function o3872() : Number
      {
         return o9280;
      }
      
      public function o4367(param1:Number, param2:Number) : void
      {
         o8708.o17676(true);
         o4919.o17676(true);
         o16170 = param1;
         o9280 = param2;
      }
      
      public function o11624() : Boolean
      {
         return o2442;
      }
      
      public function o13050(param1:Boolean) : void
      {
         o8708.o17676(true);
         o4919.o17676(true);
         o2442 = param1;
      }
      
      public function o4190(param1:Number) : void
      {
         o8708.o17676(true);
         o4919.o17676(true);
         o15605 = param1;
      }
      
      public function o19208() : Number
      {
         return o15605;
      }
      
      public function o14742(param1:Number) : void
      {
         o8708.o17676(true);
         o4919.o17676(true);
         o7383 = param1;
      }
      
      public function o633() : Number
      {
         return o7383;
      }
      
      public function o11207() : Number
      {
         return o5483;
      }
      
      override b2internal function o8745(param1:o18851) : void
      {
         var _loc18_:* = null;
         var _loc14_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc15_:o5173 = o8708;
         var _loc21_:o5173 = o4919;
         o16190.o13101(_loc15_.o17398());
         o19100.o13101(_loc21_.o17398());
         var _loc19_:o12362 = _loc15_.o13749();
         var _loc22_:o12362 = _loc21_.o13749();
         _loc18_ = _loc15_.o7718.o13707;
         var _loc12_:* = Number(o8764.x - o16190.x);
         var _loc7_:Number = o8764.y - o16190.y;
         _loc14_ = _loc18_.o19549.x * _loc12_ + _loc18_.o20685.x * _loc7_;
         _loc7_ = _loc18_.o19549.y * _loc12_ + _loc18_.o20685.y * _loc7_;
         _loc12_ = _loc14_;
         _loc18_ = _loc21_.o7718.o13707;
         var _loc4_:* = Number(o5786.x - o19100.x);
         var _loc6_:Number = o5786.y - o19100.y;
         _loc14_ = _loc18_.o19549.x * _loc4_ + _loc18_.o20685.x * _loc6_;
         _loc6_ = _loc18_.o19549.y * _loc4_ + _loc18_.o20685.y * _loc6_;
         _loc4_ = _loc14_;
         var _loc13_:Number = _loc21_.o19080.o9412.x + _loc4_ - _loc15_.o19080.o9412.x - _loc12_;
         var _loc2_:Number = _loc21_.o19080.o9412.y + _loc6_ - _loc15_.o19080.o9412.y - _loc7_;
         o20394 = _loc15_.o15412;
         o19229 = _loc21_.o15412;
         o7570 = _loc15_.o4988;
         o4025 = _loc21_.o4988;
         o2837.o13101(o10852.o5842(_loc19_.o13707,o12053));
         o20456 = (_loc13_ + _loc12_) * o2837.y - (_loc2_ + _loc7_) * o2837.x;
         o6469 = _loc4_ * o2837.y - _loc6_ * o2837.x;
         o11047 = o20394 + o19229 + o7570 * o20456 * o20456 + o4025 * o6469 * o6469;
         o11047 = o11047 > Number.MIN_VALUE?1 / o11047:0;
         o6799.o13101(o10852.o5842(_loc19_.o13707,o13949));
         o16723 = (_loc13_ + _loc12_) * o6799.y - (_loc2_ + _loc7_) * o6799.x;
         o18393 = _loc4_ * o6799.y - _loc6_ * o6799.x;
         var _loc3_:Number = o20394;
         var _loc8_:Number = o19229;
         var _loc11_:Number = o7570;
         var _loc9_:Number = o4025;
         o18978.o19549.x = _loc3_ + _loc8_ + _loc11_ * o16723 * o16723 + _loc9_ * o18393 * o18393;
         o18978.o19549.y = _loc11_ * o16723 * o20456 + _loc9_ * o18393 * o6469;
         o18978.o20685.x = o18978.o19549.y;
         o18978.o20685.y = _loc3_ + _loc8_ + _loc11_ * o20456 * o20456 + _loc9_ * o6469 * o6469;
         if(o2037)
         {
            _loc5_ = o2837.x * _loc13_ + o2837.y * _loc2_;
            if(o10852.o17599(o9280 - o16170) < 2 * 0.005)
            {
               o7551 = 3;
            }
            else if(_loc5_ <= o16170)
            {
               if(o7551 != 1)
               {
                  o7551 = 1;
                  o20844.y = 0;
               }
            }
            else if(_loc5_ >= o9280)
            {
               if(o7551 != 2)
               {
                  o7551 = 2;
                  o20844.y = 0;
               }
            }
            else
            {
               o7551 = 0;
               o20844.y = 0;
            }
         }
         else
         {
            o7551 = 0;
         }
         if(o2442 == false)
         {
            o5483 = 0;
         }
         if(param1.o1821)
         {
            o20844.x = o20844.x * param1.o12930;
            o20844.y = o20844.y * param1.o12930;
            o5483 = o5483 * param1.o12930;
            _loc17_ = o20844.x * o6799.x + (o5483 + o20844.y) * o2837.x;
            _loc20_ = o20844.x * o6799.y + (o5483 + o20844.y) * o2837.y;
            _loc10_ = o20844.x * o16723 + (o5483 + o20844.y) * o20456;
            _loc16_ = o20844.x * o18393 + (o5483 + o20844.y) * o6469;
            _loc15_.o18378.x = _loc15_.o18378.x - o20394 * _loc17_;
            _loc15_.o18378.y = _loc15_.o18378.y - o20394 * _loc20_;
            _loc15_.o11516 = _loc15_.o11516 - o7570 * _loc10_;
            _loc21_.o18378.x = _loc21_.o18378.x + o19229 * _loc17_;
            _loc21_.o18378.y = _loc21_.o18378.y + o19229 * _loc20_;
            _loc21_.o11516 = _loc21_.o11516 + o4025 * _loc16_;
         }
         else
         {
            o20844.o14195();
            o5483 = 0;
         }
      }
      
      override b2internal function o13623(param1:o18851) : void
      {
         var _loc12_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc3_:* = null;
         var _loc16_:* = null;
         var _loc4_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc9_:o5173 = o8708;
         var _loc20_:o5173 = o4919;
         var _loc13_:o20021 = _loc9_.o18378;
         var _loc10_:Number = _loc9_.o11516;
         var _loc6_:o20021 = _loc20_.o18378;
         var _loc8_:Number = _loc20_.o11516;
         if(o2442 && o7551 != 3)
         {
            _loc15_ = o2837.x * (_loc6_.x - _loc13_.x) + o2837.y * (_loc6_.y - _loc13_.y) + o6469 * _loc8_ - o20456 * _loc10_;
            _loc22_ = o11047 * (o15605 - _loc15_);
            _loc19_ = o5483;
            _loc18_ = param1.o10009 * o7383;
            o5483 = o10852.o2404(o5483 + _loc22_,-_loc18_,_loc18_);
            _loc22_ = o5483 - _loc19_;
            _loc12_ = _loc22_ * o2837.x;
            _loc21_ = _loc22_ * o2837.y;
            _loc2_ = _loc22_ * o20456;
            _loc11_ = _loc22_ * o6469;
            _loc13_.x = _loc13_.x - o20394 * _loc12_;
            _loc13_.y = _loc13_.y - o20394 * _loc21_;
            _loc10_ = _loc10_ - o7570 * _loc2_;
            _loc6_.x = _loc6_.x + o19229 * _loc12_;
            _loc6_.y = _loc6_.y + o19229 * _loc21_;
            _loc8_ = _loc8_ + o4025 * _loc11_;
         }
         var _loc5_:Number = o6799.x * (_loc6_.x - _loc13_.x) + o6799.y * (_loc6_.y - _loc13_.y) + o18393 * _loc8_ - o16723 * _loc10_;
         if(o2037 && o7551 != 0)
         {
            _loc17_ = o2837.x * (_loc6_.x - _loc13_.x) + o2837.y * (_loc6_.y - _loc13_.y) + o6469 * _loc8_ - o20456 * _loc10_;
            _loc3_ = o20844.o2747();
            _loc16_ = o18978.o6052(new o20021(),-_loc5_,-_loc17_);
            o20844.o14473(_loc16_);
            if(o7551 == 1)
            {
               o20844.y = o10852.o93(o20844.y,0);
            }
            else if(o7551 == 2)
            {
               o20844.y = o10852.o4883(o20844.y,0);
            }
            _loc4_ = -_loc5_ - (o20844.y - _loc3_.y) * o18978.o20685.x;
            if(o18978.o19549.x != 0)
            {
               _loc14_ = _loc4_ / o18978.o19549.x + _loc3_.x;
            }
            else
            {
               _loc14_ = _loc3_.x;
            }
            o20844.x = _loc14_;
            _loc16_.x = o20844.x - _loc3_.x;
            _loc16_.y = o20844.y - _loc3_.y;
            _loc12_ = _loc16_.x * o6799.x + _loc16_.y * o2837.x;
            _loc21_ = _loc16_.x * o6799.y + _loc16_.y * o2837.y;
            _loc2_ = _loc16_.x * o16723 + _loc16_.y * o20456;
            _loc11_ = _loc16_.x * o18393 + _loc16_.y * o6469;
            _loc13_.x = _loc13_.x - o20394 * _loc12_;
            _loc13_.y = _loc13_.y - o20394 * _loc21_;
            _loc10_ = _loc10_ - o7570 * _loc2_;
            _loc6_.x = _loc6_.x + o19229 * _loc12_;
            _loc6_.y = _loc6_.y + o19229 * _loc21_;
            _loc8_ = _loc8_ + o4025 * _loc11_;
         }
         else
         {
            if(o18978.o19549.x != 0)
            {
               _loc7_ = Number(-_loc5_ / o18978.o19549.x);
            }
            else
            {
               _loc7_ = 0;
            }
            o20844.x = o20844.x + _loc7_;
            _loc12_ = _loc7_ * o6799.x;
            _loc21_ = _loc7_ * o6799.y;
            _loc2_ = _loc7_ * o16723;
            _loc11_ = _loc7_ * o18393;
            _loc13_.x = _loc13_.x - o20394 * _loc12_;
            _loc13_.y = _loc13_.y - o20394 * _loc21_;
            _loc10_ = _loc10_ - o7570 * _loc2_;
            _loc6_.x = _loc6_.x + o19229 * _loc12_;
            _loc6_.y = _loc6_.y + o19229 * _loc21_;
            _loc8_ = _loc8_ + o4025 * _loc11_;
         }
         _loc9_.o18378.o13101(_loc13_);
         _loc9_.o11516 = _loc10_;
         _loc20_.o18378.o13101(_loc6_);
         _loc20_.o11516 = _loc8_;
      }
      
      override b2internal function o18754(param1:Number) : Boolean
      {
         var _loc17_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc18_:* = null;
         var _loc14_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc27_:o5173 = o8708;
         var _loc35_:o5173 = o4919;
         var _loc26_:o20021 = _loc27_.o19080.o9412;
         var _loc5_:Number = _loc27_.o19080.o12395;
         var _loc13_:o20021 = _loc35_.o19080.o9412;
         var _loc33_:Number = _loc35_.o19080.o12395;
         var _loc32_:* = 0;
         var _loc11_:* = 0;
         var _loc24_:Boolean = false;
         var _loc19_:* = 0;
         var _loc6_:o9729 = o9729.o7036(_loc5_);
         var _loc29_:o9729 = o9729.o7036(_loc33_);
         _loc18_ = _loc6_;
         var _loc25_:* = Number(o8764.x - o16190.x);
         var _loc7_:Number = o8764.y - o16190.y;
         _loc14_ = _loc18_.o19549.x * _loc25_ + _loc18_.o20685.x * _loc7_;
         _loc7_ = _loc18_.o19549.y * _loc25_ + _loc18_.o20685.y * _loc7_;
         _loc25_ = _loc14_;
         _loc18_ = _loc29_;
         var _loc3_:* = Number(o5786.x - o19100.x);
         var _loc21_:Number = o5786.y - o19100.y;
         _loc14_ = _loc18_.o19549.x * _loc3_ + _loc18_.o20685.x * _loc21_;
         _loc21_ = _loc18_.o19549.y * _loc3_ + _loc18_.o20685.y * _loc21_;
         _loc3_ = _loc14_;
         var _loc12_:Number = _loc13_.x + _loc3_ - _loc26_.x - _loc25_;
         var _loc2_:Number = _loc13_.y + _loc21_ - _loc26_.y - _loc7_;
         if(o2037)
         {
            o2837 = o10852.o5842(_loc6_,o12053);
            o20456 = (_loc12_ + _loc25_) * o2837.y - (_loc2_ + _loc7_) * o2837.x;
            o6469 = _loc3_ * o2837.y - _loc21_ * o2837.x;
            _loc15_ = o2837.x * _loc12_ + o2837.y * _loc2_;
            if(o10852.o17599(o9280 - o16170) < 2 * 0.005)
            {
               _loc19_ = Number(o10852.o2404(_loc15_,-0.2,0.2));
               _loc32_ = Number(o10852.o17599(_loc15_));
               _loc24_ = true;
            }
            else if(_loc15_ <= o16170)
            {
               _loc19_ = Number(o10852.o2404(_loc15_ - o16170 + 0.005,-0.2,0));
               _loc32_ = Number(o16170 - _loc15_);
               _loc24_ = true;
            }
            else if(_loc15_ >= o9280)
            {
               _loc19_ = Number(o10852.o2404(_loc15_ - o9280 + 0.005,0,0.2));
               _loc32_ = Number(_loc15_ - o9280);
               _loc24_ = true;
            }
         }
         o6799 = o10852.o5842(_loc6_,o13949);
         o16723 = (_loc12_ + _loc25_) * o6799.y - (_loc2_ + _loc7_) * o6799.x;
         o18393 = _loc3_ * o6799.y - _loc21_ * o6799.x;
         var _loc36_:o20021 = new o20021();
         var _loc31_:Number = o6799.x * _loc12_ + o6799.y * _loc2_;
         _loc32_ = Number(o10852.o93(_loc32_,o10852.o17599(_loc31_)));
         _loc11_ = 0;
         if(_loc24_)
         {
            _loc20_ = o20394;
            _loc8_ = o19229;
            _loc23_ = o7570;
            _loc9_ = o4025;
            o18978.o19549.x = _loc20_ + _loc8_ + _loc23_ * o16723 * o16723 + _loc9_ * o18393 * o18393;
            o18978.o19549.y = _loc23_ * o16723 * o20456 + _loc9_ * o18393 * o6469;
            o18978.o20685.x = o18978.o19549.y;
            o18978.o20685.y = _loc20_ + _loc8_ + _loc23_ * o20456 * o20456 + _loc9_ * o6469 * o6469;
            o18978.o6052(_loc36_,-_loc31_,-_loc19_);
         }
         else
         {
            _loc20_ = o20394;
            _loc8_ = o19229;
            _loc23_ = o7570;
            _loc9_ = o4025;
            _loc4_ = _loc20_ + _loc8_ + _loc23_ * o16723 * o16723 + _loc9_ * o18393 * o18393;
            if(_loc4_ != 0)
            {
               _loc22_ = Number(-_loc31_ / _loc4_);
            }
            else
            {
               _loc22_ = 0;
            }
            _loc36_.x = _loc22_;
            _loc36_.y = 0;
         }
         var _loc30_:Number = _loc36_.x * o6799.x + _loc36_.y * o2837.x;
         var _loc34_:Number = _loc36_.x * o6799.y + _loc36_.y * o2837.y;
         var _loc10_:Number = _loc36_.x * o16723 + _loc36_.y * o20456;
         var _loc16_:Number = _loc36_.x * o18393 + _loc36_.y * o6469;
         _loc26_.x = _loc26_.x - o20394 * _loc30_;
         _loc26_.y = _loc26_.y - o20394 * _loc34_;
         _loc5_ = _loc5_ - o7570 * _loc10_;
         _loc13_.x = _loc13_.x + o19229 * _loc30_;
         _loc13_.y = _loc13_.y + o19229 * _loc34_;
         _loc33_ = _loc33_ + o4025 * _loc16_;
         _loc27_.o19080.o12395 = _loc5_;
         _loc35_.o19080.o12395 = _loc33_;
         _loc27_.o14187();
         _loc35_.o14187();
         return _loc32_ <= 0.005 && _loc11_ <= 0.0349065850398866;
      }
   }
}
