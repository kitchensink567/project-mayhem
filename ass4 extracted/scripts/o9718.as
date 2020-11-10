package
{
   use namespace b2internal;
   
   public class o9718 extends o2748
   {
      
      private static var o11385:o20021 = new o20021();
       
      
      private var K:o9729;
      
      private var o20454:o9729;
      
      private var o2127:o9729;
      
      private var o3534:o9729;
      
      private var o898:o17981;
      
      private var o20003:o20021;
      
      private var o9920:o20021;
      
      b2internal var o8764:o20021;
      
      b2internal var o5786:o20021;
      
      private var o20844:o17981;
      
      private var o5483:Number;
      
      private var o12897:o16178;
      
      private var o11047:Number;
      
      private var o2442:Boolean;
      
      private var o16750:Number;
      
      private var o15605:Number;
      
      private var o2037:Boolean;
      
      private var o11567:Number;
      
      private var o19597:Number;
      
      private var o1316:Number;
      
      private var o7551:int;
      
      public function o9718(param1:o8078)
      {
         K = new o9729();
         o20454 = new o9729();
         o2127 = new o9729();
         o3534 = new o9729();
         o898 = new o17981();
         o20003 = new o20021();
         o9920 = new o20021();
         o8764 = new o20021();
         o5786 = new o20021();
         o20844 = new o17981();
         o12897 = new o16178();
         super(param1);
         o8764.o13101(param1.o7423);
         o5786.o13101(param1.o20551);
         o11567 = param1.o15659;
         o20844.o14195();
         o5483 = 0;
         o19597 = param1.o18713;
         o1316 = param1.o4858;
         o16750 = param1.o1989;
         o15605 = param1.o18436;
         o2037 = param1.o7318;
         o2442 = param1.o18158;
         o7551 = 0;
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
         return new o20021(param1 * o20844.x,param1 * o20844.y);
      }
      
      override public function o18986(param1:Number) : Number
      {
         return param1 * o20844.o16990;
      }
      
      public function o17254() : Number
      {
         return o4919.o19080.o12395 - o8708.o19080.o12395 - o11567;
      }
      
      public function o757() : Number
      {
         return o4919.o11516 - o8708.o11516;
      }
      
      public function o17520() : Boolean
      {
         return o2037;
      }
      
      public function o12686(param1:Boolean) : void
      {
         o2037 = param1;
      }
      
      public function o17288() : Number
      {
         return o19597;
      }
      
      public function o3872() : Number
      {
         return o1316;
      }
      
      public function o4367(param1:Number, param2:Number) : void
      {
         o19597 = param1;
         o1316 = param2;
      }
      
      public function o11624() : Boolean
      {
         o8708.o17676(true);
         o4919.o17676(true);
         return o2442;
      }
      
      public function o13050(param1:Boolean) : void
      {
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
      
      public function o9791(param1:Number) : void
      {
         o16750 = param1;
      }
      
      public function o3582() : Number
      {
         return o16750;
      }
      
      override b2internal function o8745(param1:o18851) : void
      {
         var _loc14_:* = null;
         var _loc10_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc11_:o5173 = o8708;
         var _loc16_:o5173 = o4919;
         if(o2442 || o2037)
         {
         }
         _loc14_ = _loc11_.o7718.o13707;
         var _loc9_:* = Number(o8764.x - _loc11_.o19080.o461.x);
         var _loc5_:Number = o8764.y - _loc11_.o19080.o461.y;
         _loc10_ = _loc14_.o19549.x * _loc9_ + _loc14_.o20685.x * _loc5_;
         _loc5_ = _loc14_.o19549.y * _loc9_ + _loc14_.o20685.y * _loc5_;
         _loc9_ = _loc10_;
         _loc14_ = _loc16_.o7718.o13707;
         var _loc2_:* = Number(o5786.x - _loc16_.o19080.o461.x);
         var _loc4_:Number = o5786.y - _loc16_.o19080.o461.y;
         _loc10_ = _loc14_.o19549.x * _loc2_ + _loc14_.o20685.x * _loc4_;
         _loc4_ = _loc14_.o19549.y * _loc2_ + _loc14_.o20685.y * _loc4_;
         _loc2_ = _loc10_;
         var _loc3_:Number = _loc11_.o15412;
         var _loc6_:Number = _loc16_.o15412;
         var _loc8_:Number = _loc11_.o4988;
         var _loc7_:Number = _loc16_.o4988;
         o12897.o19549.x = _loc3_ + _loc6_ + _loc5_ * _loc5_ * _loc8_ + _loc4_ * _loc4_ * _loc7_;
         o12897.o20685.x = -_loc5_ * _loc9_ * _loc8_ - _loc4_ * _loc2_ * _loc7_;
         o12897.o5716.x = -_loc5_ * _loc8_ - _loc4_ * _loc7_;
         o12897.o19549.y = o12897.o20685.x;
         o12897.o20685.y = _loc3_ + _loc6_ + _loc9_ * _loc9_ * _loc8_ + _loc2_ * _loc2_ * _loc7_;
         o12897.o5716.y = _loc9_ * _loc8_ + _loc2_ * _loc7_;
         o12897.o19549.o16990 = o12897.o5716.x;
         o12897.o20685.o16990 = o12897.o5716.y;
         o12897.o5716.o16990 = _loc8_ + _loc7_;
         o11047 = 1 / (_loc8_ + _loc7_);
         if(o2442 == false)
         {
            o5483 = 0;
         }
         if(o2037)
         {
            _loc13_ = _loc16_.o19080.o12395 - _loc11_.o19080.o12395 - o11567;
            if(o10852.o17599(o1316 - o19597) < 2 * 0.0349065850398866)
            {
               o7551 = 3;
            }
            else if(_loc13_ <= o19597)
            {
               if(o7551 != 1)
               {
                  o20844.o16990 = 0;
               }
               o7551 = 1;
            }
            else if(_loc13_ >= o1316)
            {
               if(o7551 != 2)
               {
                  o20844.o16990 = 0;
               }
               o7551 = 2;
            }
            else
            {
               o7551 = 0;
               o20844.o16990 = 0;
            }
         }
         else
         {
            o7551 = 0;
         }
         if(param1.o1821)
         {
            o20844.x = o20844.x * param1.o12930;
            o20844.y = o20844.y * param1.o12930;
            o5483 = o5483 * param1.o12930;
            _loc12_ = o20844.x;
            _loc15_ = o20844.y;
            _loc11_.o18378.x = _loc11_.o18378.x - _loc3_ * _loc12_;
            _loc11_.o18378.y = _loc11_.o18378.y - _loc3_ * _loc15_;
            _loc11_.o11516 = _loc11_.o11516 - _loc8_ * (_loc9_ * _loc15_ - _loc5_ * _loc12_ + o5483 + o20844.o16990);
            _loc16_.o18378.x = _loc16_.o18378.x + _loc6_ * _loc12_;
            _loc16_.o18378.y = _loc16_.o18378.y + _loc6_ * _loc15_;
            _loc16_.o11516 = _loc16_.o11516 + _loc7_ * (_loc2_ * _loc15_ - _loc4_ * _loc12_ + o5483 + o20844.o16990);
         }
         else
         {
            o20844.o14195();
            o5483 = 0;
         }
      }
      
      override b2internal function o13623(param1:o18851) : void
      {
         var _loc11_:* = null;
         var _loc8_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc22_:o5173 = o8708;
         var _loc26_:o5173 = o4919;
         var _loc10_:o20021 = _loc22_.o18378;
         var _loc9_:Number = _loc22_.o11516;
         var _loc20_:o20021 = _loc26_.o18378;
         var _loc21_:Number = _loc26_.o11516;
         var _loc14_:Number = _loc22_.o15412;
         var _loc5_:Number = _loc26_.o15412;
         var _loc18_:Number = _loc22_.o4988;
         var _loc6_:Number = _loc26_.o4988;
         if(o2442 && o7551 != 3)
         {
            _loc24_ = _loc21_ - _loc9_ - o15605;
            _loc27_ = o11047 * -_loc24_;
            _loc13_ = o5483;
            _loc12_ = param1.o10009 * o16750;
            o5483 = o10852.o2404(o5483 + _loc27_,-_loc12_,_loc12_);
            _loc27_ = o5483 - _loc13_;
            _loc9_ = _loc9_ - _loc18_ * _loc27_;
            _loc21_ = _loc21_ + _loc6_ * _loc27_;
         }
         if(o2037 && o7551 != 0)
         {
            _loc11_ = _loc22_.o7718.o13707;
            _loc19_ = Number(o8764.x - _loc22_.o19080.o461.x);
            _loc4_ = o8764.y - _loc22_.o19080.o461.y;
            _loc8_ = _loc11_.o19549.x * _loc19_ + _loc11_.o20685.x * _loc4_;
            _loc4_ = _loc11_.o19549.y * _loc19_ + _loc11_.o20685.y * _loc4_;
            _loc19_ = _loc8_;
            _loc11_ = _loc26_.o7718.o13707;
            _loc2_ = Number(o5786.x - _loc26_.o19080.o461.x);
            _loc16_ = o5786.y - _loc26_.o19080.o461.y;
            _loc8_ = _loc11_.o19549.x * _loc2_ + _loc11_.o20685.x * _loc16_;
            _loc16_ = _loc11_.o19549.y * _loc2_ + _loc11_.o20685.y * _loc16_;
            _loc2_ = _loc8_;
            _loc7_ = _loc20_.x + -_loc21_ * _loc16_ - _loc10_.x - -_loc9_ * _loc4_;
            _loc23_ = _loc20_.y + _loc21_ * _loc2_ - _loc10_.y - _loc9_ * _loc19_;
            _loc25_ = _loc21_ - _loc9_;
            o12897.o516(o898,-_loc7_,-_loc23_,-_loc25_);
            if(o7551 == 3)
            {
               o20844.o14473(o898);
            }
            else if(o7551 == 1)
            {
               _loc3_ = o20844.o16990 + o898.o16990;
               if(_loc3_ < 0)
               {
                  o12897.o13393(o9920,-_loc7_,-_loc23_);
                  o898.x = o9920.x;
                  o898.y = o9920.y;
                  o898.o16990 = -o20844.o16990;
                  o20844.x = o20844.x + o9920.x;
                  o20844.y = o20844.y + o9920.y;
                  o20844.o16990 = 0;
               }
            }
            else if(o7551 == 2)
            {
               _loc3_ = o20844.o16990 + o898.o16990;
               if(_loc3_ > 0)
               {
                  o12897.o13393(o9920,-_loc7_,-_loc23_);
                  o898.x = o9920.x;
                  o898.y = o9920.y;
                  o898.o16990 = -o20844.o16990;
                  o20844.x = o20844.x + o9920.x;
                  o20844.y = o20844.y + o9920.y;
                  o20844.o16990 = 0;
               }
            }
            _loc10_.x = _loc10_.x - _loc14_ * o898.x;
            _loc10_.y = _loc10_.y - _loc14_ * o898.y;
            _loc9_ = _loc9_ - _loc18_ * (_loc19_ * o898.y - _loc4_ * o898.x + o898.o16990);
            _loc20_.x = _loc20_.x + _loc5_ * o898.x;
            _loc20_.y = _loc20_.y + _loc5_ * o898.y;
            _loc21_ = _loc21_ + _loc6_ * (_loc2_ * o898.y - _loc16_ * o898.x + o898.o16990);
         }
         else
         {
            _loc11_ = _loc22_.o7718.o13707;
            _loc19_ = Number(o8764.x - _loc22_.o19080.o461.x);
            _loc4_ = o8764.y - _loc22_.o19080.o461.y;
            _loc8_ = _loc11_.o19549.x * _loc19_ + _loc11_.o20685.x * _loc4_;
            _loc4_ = _loc11_.o19549.y * _loc19_ + _loc11_.o20685.y * _loc4_;
            _loc19_ = _loc8_;
            _loc11_ = _loc26_.o7718.o13707;
            _loc2_ = Number(o5786.x - _loc26_.o19080.o461.x);
            _loc16_ = o5786.y - _loc26_.o19080.o461.y;
            _loc8_ = _loc11_.o19549.x * _loc2_ + _loc11_.o20685.x * _loc16_;
            _loc16_ = _loc11_.o19549.y * _loc2_ + _loc11_.o20685.y * _loc16_;
            _loc2_ = _loc8_;
            _loc17_ = _loc20_.x + -_loc21_ * _loc16_ - _loc10_.x - -_loc9_ * _loc4_;
            _loc15_ = _loc20_.y + _loc21_ * _loc2_ - _loc10_.y - _loc9_ * _loc19_;
            o12897.o13393(o20003,-_loc17_,-_loc15_);
            o20844.x = o20844.x + o20003.x;
            o20844.y = o20844.y + o20003.y;
            _loc10_.x = _loc10_.x - _loc14_ * o20003.x;
            _loc10_.y = _loc10_.y - _loc14_ * o20003.y;
            _loc9_ = _loc9_ - _loc18_ * (_loc19_ * o20003.y - _loc4_ * o20003.x);
            _loc20_.x = _loc20_.x + _loc5_ * o20003.x;
            _loc20_.y = _loc20_.y + _loc5_ * o20003.y;
            _loc21_ = _loc21_ + _loc6_ * (_loc2_ * o20003.y - _loc16_ * o20003.x);
         }
         _loc22_.o18378.o13101(_loc10_);
         _loc22_.o11516 = _loc9_;
         _loc26_.o18378.o13101(_loc20_);
         _loc26_.o11516 = _loc21_;
      }
      
      override b2internal function o18754(param1:Number) : Boolean
      {
         var _loc30_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc19_:* = null;
         var _loc14_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc26_:* = NaN;
         var _loc13_:* = NaN;
         _loc13_ = 0.05;
         var _loc3_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc15_:* = NaN;
         _loc15_ = 0.5;
         var _loc29_:o5173 = o8708;
         var _loc31_:o5173 = o4919;
         var _loc12_:* = 0;
         var _loc9_:* = 0;
         if(o2037 && o7551 != 0)
         {
            _loc11_ = _loc31_.o19080.o12395 - _loc29_.o19080.o12395 - o11567;
            _loc26_ = 0;
            if(o7551 == 3)
            {
               _loc10_ = o10852.o2404(_loc11_ - o19597,-0.139626340159546,0.139626340159546);
               _loc26_ = Number(-o11047 * _loc10_);
               _loc12_ = Number(o10852.o17599(_loc10_));
            }
            else if(o7551 == 1)
            {
               _loc10_ = _loc11_ - o19597;
               _loc12_ = Number(-_loc10_);
               _loc10_ = o10852.o2404(_loc10_ + 0.0349065850398866,-0.139626340159546,0);
               _loc26_ = Number(-o11047 * _loc10_);
            }
            else if(o7551 == 2)
            {
               _loc10_ = _loc11_ - o1316;
               _loc12_ = _loc10_;
               _loc10_ = o10852.o2404(_loc10_ - 0.0349065850398866,0,0.139626340159546);
               _loc26_ = Number(-o11047 * _loc10_);
            }
            _loc29_.o19080.o12395 = _loc29_.o19080.o12395 - _loc29_.o4988 * _loc26_;
            _loc31_.o19080.o12395 = _loc31_.o19080.o12395 + _loc31_.o4988 * _loc26_;
            _loc29_.o14187();
            _loc31_.o14187();
         }
         _loc19_ = _loc29_.o7718.o13707;
         var _loc24_:* = Number(o8764.x - _loc29_.o19080.o461.x);
         var _loc8_:Number = o8764.y - _loc29_.o19080.o461.y;
         _loc14_ = _loc19_.o19549.x * _loc24_ + _loc19_.o20685.x * _loc8_;
         _loc8_ = _loc19_.o19549.y * _loc24_ + _loc19_.o20685.y * _loc8_;
         _loc24_ = _loc14_;
         _loc19_ = _loc31_.o7718.o13707;
         var _loc4_:* = Number(o5786.x - _loc31_.o19080.o461.x);
         var _loc22_:Number = o5786.y - _loc31_.o19080.o461.y;
         _loc14_ = _loc19_.o19549.x * _loc4_ + _loc19_.o20685.x * _loc22_;
         _loc22_ = _loc19_.o19549.y * _loc4_ + _loc19_.o20685.y * _loc22_;
         _loc4_ = _loc14_;
         var _loc18_:Number = _loc31_.o19080.o9412.x + _loc4_ - _loc29_.o19080.o9412.x - _loc24_;
         var _loc5_:Number = _loc31_.o19080.o9412.y + _loc22_ - _loc29_.o19080.o9412.y - _loc8_;
         var _loc2_:Number = _loc18_ * _loc18_ + _loc5_ * _loc5_;
         var _loc16_:Number = Math.sqrt(_loc2_);
         _loc9_ = _loc16_;
         var _loc28_:Number = _loc29_.o15412;
         var _loc27_:Number = _loc31_.o15412;
         var _loc6_:Number = _loc29_.o4988;
         var _loc23_:Number = _loc31_.o4988;
         if(_loc2_ > 0.05 * 0.05)
         {
            _loc3_ = _loc18_ / _loc16_;
            _loc7_ = _loc5_ / _loc16_;
            _loc17_ = _loc28_ + _loc27_;
            _loc25_ = 1 / _loc17_;
            _loc21_ = _loc25_ * -_loc18_;
            _loc20_ = _loc25_ * -_loc5_;
            _loc29_.o19080.o9412.x = _loc29_.o19080.o9412.x - _loc15_ * _loc28_ * _loc21_;
            _loc29_.o19080.o9412.y = _loc29_.o19080.o9412.y - _loc15_ * _loc28_ * _loc20_;
            _loc31_.o19080.o9412.x = _loc31_.o19080.o9412.x + _loc15_ * _loc27_ * _loc21_;
            _loc31_.o19080.o9412.y = _loc31_.o19080.o9412.y + _loc15_ * _loc27_ * _loc20_;
            _loc18_ = _loc31_.o19080.o9412.x + _loc4_ - _loc29_.o19080.o9412.x - _loc24_;
            _loc5_ = _loc31_.o19080.o9412.y + _loc22_ - _loc29_.o19080.o9412.y - _loc8_;
         }
         o20454.o19549.x = _loc28_ + _loc27_;
         o20454.o20685.x = 0;
         o20454.o19549.y = 0;
         o20454.o20685.y = _loc28_ + _loc27_;
         o2127.o19549.x = _loc6_ * _loc8_ * _loc8_;
         o2127.o20685.x = -_loc6_ * _loc24_ * _loc8_;
         o2127.o19549.y = -_loc6_ * _loc24_ * _loc8_;
         o2127.o20685.y = _loc6_ * _loc24_ * _loc24_;
         o3534.o19549.x = _loc23_ * _loc22_ * _loc22_;
         o3534.o20685.x = -_loc23_ * _loc4_ * _loc22_;
         o3534.o19549.y = -_loc23_ * _loc4_ * _loc22_;
         o3534.o20685.y = _loc23_ * _loc4_ * _loc4_;
         K.o19487(o20454);
         K.o7248(o2127);
         K.o7248(o3534);
         K.o6052(o11385,-_loc18_,-_loc5_);
         _loc21_ = o11385.x;
         _loc20_ = o11385.y;
         _loc29_.o19080.o9412.x = _loc29_.o19080.o9412.x - _loc29_.o15412 * _loc21_;
         _loc29_.o19080.o9412.y = _loc29_.o19080.o9412.y - _loc29_.o15412 * _loc20_;
         _loc29_.o19080.o12395 = _loc29_.o19080.o12395 - _loc29_.o4988 * (_loc24_ * _loc20_ - _loc8_ * _loc21_);
         _loc31_.o19080.o9412.x = _loc31_.o19080.o9412.x + _loc31_.o15412 * _loc21_;
         _loc31_.o19080.o9412.y = _loc31_.o19080.o9412.y + _loc31_.o15412 * _loc20_;
         _loc31_.o19080.o12395 = _loc31_.o19080.o12395 + _loc31_.o4988 * (_loc4_ * _loc20_ - _loc22_ * _loc21_);
         _loc29_.o14187();
         _loc31_.o14187();
         return _loc9_ <= 0.005 && _loc12_ <= 0.0349065850398866;
      }
   }
}
