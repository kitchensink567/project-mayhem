package
{
   use namespace b2internal;
   
   public class o12525 extends o2748
   {
      
      b2internal static const o7937:Number = 2.0;
       
      
      private var o4809:o5173;
      
      private var o5353:o20021;
      
      private var o9368:o20021;
      
      private var o8764:o20021;
      
      private var o5786:o20021;
      
      private var o11540:o20021;
      
      private var o7360:o20021;
      
      private var o16395:Number;
      
      private var o1401:Number;
      
      private var o19563:Number;
      
      private var o7719:Number;
      
      private var o17291:Number;
      
      private var o2370:Number;
      
      private var o19372:Number;
      
      private var o20844:Number;
      
      private var o14471:Number;
      
      private var o299:Number;
      
      private var o17949:int;
      
      private var o17922:int;
      
      private var o5527:int;
      
      public function o12525(param1:o5146)
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc2_:Number = NaN;
         o5353 = new o20021();
         o9368 = new o20021();
         o8764 = new o20021();
         o5786 = new o20021();
         o11540 = new o20021();
         o7360 = new o20021();
         super(param1);
         o4809 = o8708.o20914.o20326;
         o5353.x = param1.o4120.x - o4809.o7718.position.x;
         o5353.y = param1.o4120.y - o4809.o7718.position.y;
         o9368.x = param1.o16046.x - o4809.o7718.position.x;
         o9368.y = param1.o16046.y - o4809.o7718.position.y;
         o8764.o13101(param1.o7423);
         o5786.o13101(param1.o20551);
         o1401 = param1.o6425;
         o16395 = param1.o2507 + o1401 * param1.o18450;
         o19563 = o10852.o4883(param1.o1328,o16395 - o1401 * 2);
         o7719 = o10852.o4883(param1.o12776,(o16395 - 2) / o1401);
         o20844 = 0;
         o14471 = 0;
         o299 = 0;
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
         return new o20021(param1 * o20844 * o7360.x,param1 * o20844 * o7360.y);
      }
      
      override public function o18986(param1:Number) : Number
      {
         return 0;
      }
      
      public function o7422() : o20021
      {
         var _loc1_:o20021 = o4809.o7718.position.o2747();
         _loc1_.o14473(o5353);
         return _loc1_;
      }
      
      public function o14121() : o20021
      {
         var _loc1_:o20021 = o4809.o7718.position.o2747();
         _loc1_.o14473(o9368);
         return _loc1_;
      }
      
      public function o5434() : Number
      {
         var _loc4_:o20021 = o8708.o13627(o8764);
         var _loc3_:Number = o4809.o7718.position.x + o5353.x;
         var _loc2_:Number = o4809.o7718.position.y + o5353.y;
         var _loc5_:Number = _loc4_.x - _loc3_;
         var _loc1_:Number = _loc4_.y - _loc2_;
         return Math.sqrt(_loc5_ * _loc5_ + _loc1_ * _loc1_);
      }
      
      public function o11775() : Number
      {
         var _loc4_:o20021 = o4919.o13627(o5786);
         var _loc3_:Number = o4809.o7718.position.x + o9368.x;
         var _loc2_:Number = o4809.o7718.position.y + o9368.y;
         var _loc5_:Number = _loc4_.x - _loc3_;
         var _loc1_:Number = _loc4_.y - _loc2_;
         return Math.sqrt(_loc5_ * _loc5_ + _loc1_ * _loc1_);
      }
      
      public function o10394() : Number
      {
         return o1401;
      }
      
      override b2internal function o8745(param1:o18851) : void
      {
         var _loc10_:* = null;
         var _loc20_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc23_:o5173 = o8708;
         var _loc25_:o5173 = o4919;
         _loc10_ = _loc23_.o7718.o13707;
         var _loc16_:* = Number(o8764.x - _loc23_.o19080.o461.x);
         var _loc4_:Number = o8764.y - _loc23_.o19080.o461.y;
         var _loc6_:Number = _loc10_.o19549.x * _loc16_ + _loc10_.o20685.x * _loc4_;
         _loc4_ = _loc10_.o19549.y * _loc16_ + _loc10_.o20685.y * _loc4_;
         _loc16_ = _loc6_;
         _loc10_ = _loc25_.o7718.o13707;
         var _loc2_:* = Number(o5786.x - _loc25_.o19080.o461.x);
         var _loc15_:Number = o5786.y - _loc25_.o19080.o461.y;
         _loc6_ = _loc10_.o19549.x * _loc2_ + _loc10_.o20685.x * _loc15_;
         _loc15_ = _loc10_.o19549.y * _loc2_ + _loc10_.o20685.y * _loc15_;
         _loc2_ = _loc6_;
         var _loc18_:Number = _loc23_.o19080.o9412.x + _loc16_;
         var _loc21_:Number = _loc23_.o19080.o9412.y + _loc4_;
         var _loc8_:Number = _loc25_.o19080.o9412.x + _loc2_;
         var _loc13_:Number = _loc25_.o19080.o9412.y + _loc15_;
         var _loc11_:Number = o4809.o7718.position.x + o5353.x;
         var _loc22_:Number = o4809.o7718.position.y + o5353.y;
         var _loc19_:Number = o4809.o7718.position.x + o9368.x;
         var _loc24_:Number = o4809.o7718.position.y + o9368.y;
         o11540.o18596(_loc18_ - _loc11_,_loc21_ - _loc22_);
         o7360.o18596(_loc8_ - _loc19_,_loc13_ - _loc24_);
         var _loc26_:Number = o11540.o7648();
         var _loc9_:Number = o7360.o7648();
         if(_loc26_ > 0.005)
         {
            o11540.o5041(1 / _loc26_);
         }
         else
         {
            o11540.o14195();
         }
         if(_loc9_ > 0.005)
         {
            o7360.o5041(1 / _loc9_);
         }
         else
         {
            o7360.o14195();
         }
         var _loc5_:Number = o16395 - _loc26_ - o1401 * _loc9_;
         if(_loc5_ > 0)
         {
            o17949 = 0;
            o20844 = 0;
         }
         else
         {
            o17949 = 2;
         }
         if(_loc26_ < o19563)
         {
            o17922 = 0;
            o14471 = 0;
         }
         else
         {
            o17922 = 2;
         }
         if(_loc9_ < o7719)
         {
            o5527 = 0;
            o299 = 0;
         }
         else
         {
            o5527 = 2;
         }
         var _loc14_:Number = _loc16_ * o11540.y - _loc4_ * o11540.x;
         var _loc3_:Number = _loc2_ * o7360.y - _loc15_ * o7360.x;
         o2370 = _loc23_.o15412 + _loc23_.o4988 * _loc14_ * _loc14_;
         o19372 = _loc25_.o15412 + _loc25_.o4988 * _loc3_ * _loc3_;
         o17291 = o2370 + o1401 * o1401 * o19372;
         o2370 = 1 / o2370;
         o19372 = 1 / o19372;
         o17291 = 1 / o17291;
         if(param1.o1821)
         {
            o20844 = o20844 * param1.o12930;
            o14471 = o14471 * param1.o12930;
            o299 = o299 * param1.o12930;
            _loc20_ = (-o20844 - o14471) * o11540.x;
            _loc12_ = (-o20844 - o14471) * o11540.y;
            _loc7_ = (-o1401 * o20844 - o299) * o7360.x;
            _loc17_ = (-o1401 * o20844 - o299) * o7360.y;
            _loc23_.o18378.x = _loc23_.o18378.x + _loc23_.o15412 * _loc20_;
            _loc23_.o18378.y = _loc23_.o18378.y + _loc23_.o15412 * _loc12_;
            _loc23_.o11516 = _loc23_.o11516 + _loc23_.o4988 * (_loc16_ * _loc12_ - _loc4_ * _loc20_);
            _loc25_.o18378.x = _loc25_.o18378.x + _loc25_.o15412 * _loc7_;
            _loc25_.o18378.y = _loc25_.o18378.y + _loc25_.o15412 * _loc17_;
            _loc25_.o11516 = _loc25_.o11516 + _loc25_.o4988 * (_loc2_ * _loc17_ - _loc15_ * _loc7_);
         }
         else
         {
            o20844 = 0;
            o14471 = 0;
            o299 = 0;
         }
      }
      
      override b2internal function o13623(param1:o18851) : void
      {
         var _loc16_:* = null;
         var _loc17_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc13_:o5173 = o8708;
         var _loc19_:o5173 = o4919;
         _loc16_ = _loc13_.o7718.o13707;
         var _loc7_:* = Number(o8764.x - _loc13_.o19080.o461.x);
         var _loc5_:Number = o8764.y - _loc13_.o19080.o461.y;
         var _loc11_:Number = _loc16_.o19549.x * _loc7_ + _loc16_.o20685.x * _loc5_;
         _loc5_ = _loc16_.o19549.y * _loc7_ + _loc16_.o20685.y * _loc5_;
         _loc7_ = _loc11_;
         _loc16_ = _loc19_.o7718.o13707;
         var _loc2_:* = Number(o5786.x - _loc19_.o19080.o461.x);
         var _loc4_:Number = o5786.y - _loc19_.o19080.o461.y;
         _loc11_ = _loc16_.o19549.x * _loc2_ + _loc16_.o20685.x * _loc4_;
         _loc4_ = _loc16_.o19549.y * _loc2_ + _loc16_.o20685.y * _loc4_;
         _loc2_ = _loc11_;
         if(o17949 == 2)
         {
            _loc17_ = _loc13_.o18378.x + -_loc13_.o11516 * _loc5_;
            _loc3_ = _loc13_.o18378.y + _loc13_.o11516 * _loc7_;
            _loc10_ = _loc19_.o18378.x + -_loc19_.o11516 * _loc4_;
            _loc6_ = _loc19_.o18378.y + _loc19_.o11516 * _loc2_;
            _loc14_ = -(o11540.x * _loc17_ + o11540.y * _loc3_) - o1401 * (o7360.x * _loc10_ + o7360.y * _loc6_);
            _loc20_ = o17291 * -_loc14_;
            _loc18_ = o20844;
            o20844 = o10852.o93(0,o20844 + _loc20_);
            _loc20_ = o20844 - _loc18_;
            _loc9_ = -_loc20_ * o11540.x;
            _loc15_ = -_loc20_ * o11540.y;
            _loc12_ = -o1401 * _loc20_ * o7360.x;
            _loc8_ = -o1401 * _loc20_ * o7360.y;
            _loc13_.o18378.x = _loc13_.o18378.x + _loc13_.o15412 * _loc9_;
            _loc13_.o18378.y = _loc13_.o18378.y + _loc13_.o15412 * _loc15_;
            _loc13_.o11516 = _loc13_.o11516 + _loc13_.o4988 * (_loc7_ * _loc15_ - _loc5_ * _loc9_);
            _loc19_.o18378.x = _loc19_.o18378.x + _loc19_.o15412 * _loc12_;
            _loc19_.o18378.y = _loc19_.o18378.y + _loc19_.o15412 * _loc8_;
            _loc19_.o11516 = _loc19_.o11516 + _loc19_.o4988 * (_loc2_ * _loc8_ - _loc4_ * _loc12_);
         }
         if(o17922 == 2)
         {
            _loc17_ = _loc13_.o18378.x + -_loc13_.o11516 * _loc5_;
            _loc3_ = _loc13_.o18378.y + _loc13_.o11516 * _loc7_;
            _loc14_ = -(o11540.x * _loc17_ + o11540.y * _loc3_);
            _loc20_ = -o2370 * _loc14_;
            _loc18_ = o14471;
            o14471 = o10852.o93(0,o14471 + _loc20_);
            _loc20_ = o14471 - _loc18_;
            _loc9_ = -_loc20_ * o11540.x;
            _loc15_ = -_loc20_ * o11540.y;
            _loc13_.o18378.x = _loc13_.o18378.x + _loc13_.o15412 * _loc9_;
            _loc13_.o18378.y = _loc13_.o18378.y + _loc13_.o15412 * _loc15_;
            _loc13_.o11516 = _loc13_.o11516 + _loc13_.o4988 * (_loc7_ * _loc15_ - _loc5_ * _loc9_);
         }
         if(o5527 == 2)
         {
            _loc10_ = _loc19_.o18378.x + -_loc19_.o11516 * _loc4_;
            _loc6_ = _loc19_.o18378.y + _loc19_.o11516 * _loc2_;
            _loc14_ = -(o7360.x * _loc10_ + o7360.y * _loc6_);
            _loc20_ = -o19372 * _loc14_;
            _loc18_ = o299;
            o299 = o10852.o93(0,o299 + _loc20_);
            _loc20_ = o299 - _loc18_;
            _loc12_ = -_loc20_ * o7360.x;
            _loc8_ = -_loc20_ * o7360.y;
            _loc19_.o18378.x = _loc19_.o18378.x + _loc19_.o15412 * _loc12_;
            _loc19_.o18378.y = _loc19_.o18378.y + _loc19_.o15412 * _loc8_;
            _loc19_.o11516 = _loc19_.o11516 + _loc19_.o4988 * (_loc2_ * _loc8_ - _loc4_ * _loc12_);
         }
      }
      
      override b2internal function o18754(param1:Number) : Boolean
      {
         var _loc18_:* = null;
         var _loc6_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc14_:o5173 = o8708;
         var _loc21_:o5173 = o4919;
         var _loc19_:Number = o4809.o7718.position.x + o5353.x;
         var _loc13_:Number = o4809.o7718.position.y + o5353.y;
         var _loc8_:Number = o4809.o7718.position.x + o9368.x;
         var _loc15_:Number = o4809.o7718.position.y + o9368.y;
         var _loc16_:* = 0;
         if(o17949 == 2)
         {
            _loc18_ = _loc14_.o7718.o13707;
            _loc6_ = Number(o8764.x - _loc14_.o19080.o461.x);
            _loc4_ = o8764.y - _loc14_.o19080.o461.y;
            _loc10_ = _loc18_.o19549.x * _loc6_ + _loc18_.o20685.x * _loc4_;
            _loc4_ = _loc18_.o19549.y * _loc6_ + _loc18_.o20685.y * _loc4_;
            _loc6_ = _loc10_;
            _loc18_ = _loc21_.o7718.o13707;
            _loc2_ = Number(o5786.x - _loc21_.o19080.o461.x);
            _loc3_ = o5786.y - _loc21_.o19080.o461.y;
            _loc10_ = _loc18_.o19549.x * _loc2_ + _loc18_.o20685.x * _loc3_;
            _loc3_ = _loc18_.o19549.y * _loc2_ + _loc18_.o20685.y * _loc3_;
            _loc2_ = _loc10_;
            _loc7_ = _loc14_.o19080.o9412.x + _loc6_;
            _loc9_ = _loc14_.o19080.o9412.y + _loc4_;
            _loc12_ = _loc21_.o19080.o9412.x + _loc2_;
            _loc24_ = _loc21_.o19080.o9412.y + _loc3_;
            o11540.o18596(_loc7_ - _loc19_,_loc9_ - _loc13_);
            o7360.o18596(_loc12_ - _loc8_,_loc24_ - _loc15_);
            _loc23_ = o11540.o7648();
            _loc11_ = o7360.o7648();
            if(_loc23_ > 0.005)
            {
               o11540.o5041(1 / _loc23_);
            }
            else
            {
               o11540.o14195();
            }
            if(_loc11_ > 0.005)
            {
               o7360.o5041(1 / _loc11_);
            }
            else
            {
               o7360.o14195();
            }
            _loc5_ = o16395 - _loc23_ - o1401 * _loc11_;
            _loc16_ = Number(o10852.o93(_loc16_,-_loc5_));
            _loc5_ = o10852.o2404(_loc5_ + 0.005,-0.2,0);
            _loc22_ = -o17291 * _loc5_;
            _loc7_ = -_loc22_ * o11540.x;
            _loc9_ = -_loc22_ * o11540.y;
            _loc12_ = -o1401 * _loc22_ * o7360.x;
            _loc24_ = -o1401 * _loc22_ * o7360.y;
            _loc14_.o19080.o9412.x = _loc14_.o19080.o9412.x + _loc14_.o15412 * _loc7_;
            _loc14_.o19080.o9412.y = _loc14_.o19080.o9412.y + _loc14_.o15412 * _loc9_;
            _loc14_.o19080.o12395 = _loc14_.o19080.o12395 + _loc14_.o4988 * (_loc6_ * _loc9_ - _loc4_ * _loc7_);
            _loc21_.o19080.o9412.x = _loc21_.o19080.o9412.x + _loc21_.o15412 * _loc12_;
            _loc21_.o19080.o9412.y = _loc21_.o19080.o9412.y + _loc21_.o15412 * _loc24_;
            _loc21_.o19080.o12395 = _loc21_.o19080.o12395 + _loc21_.o4988 * (_loc2_ * _loc24_ - _loc3_ * _loc12_);
            _loc14_.o14187();
            _loc21_.o14187();
         }
         if(o17922 == 2)
         {
            _loc18_ = _loc14_.o7718.o13707;
            _loc6_ = Number(o8764.x - _loc14_.o19080.o461.x);
            _loc4_ = o8764.y - _loc14_.o19080.o461.y;
            _loc10_ = _loc18_.o19549.x * _loc6_ + _loc18_.o20685.x * _loc4_;
            _loc4_ = _loc18_.o19549.y * _loc6_ + _loc18_.o20685.y * _loc4_;
            _loc6_ = _loc10_;
            _loc7_ = _loc14_.o19080.o9412.x + _loc6_;
            _loc9_ = _loc14_.o19080.o9412.y + _loc4_;
            o11540.o18596(_loc7_ - _loc19_,_loc9_ - _loc13_);
            _loc23_ = o11540.o7648();
            if(_loc23_ > 0.005)
            {
               o11540.x = o11540.x * (1 / _loc23_);
               o11540.y = o11540.y * (1 / _loc23_);
            }
            else
            {
               o11540.o14195();
            }
            _loc5_ = o19563 - _loc23_;
            _loc16_ = Number(o10852.o93(_loc16_,-_loc5_));
            _loc5_ = o10852.o2404(_loc5_ + 0.005,-0.2,0);
            _loc22_ = -o2370 * _loc5_;
            _loc7_ = -_loc22_ * o11540.x;
            _loc9_ = -_loc22_ * o11540.y;
            _loc14_.o19080.o9412.x = _loc14_.o19080.o9412.x + _loc14_.o15412 * _loc7_;
            _loc14_.o19080.o9412.y = _loc14_.o19080.o9412.y + _loc14_.o15412 * _loc9_;
            _loc14_.o19080.o12395 = _loc14_.o19080.o12395 + _loc14_.o4988 * (_loc6_ * _loc9_ - _loc4_ * _loc7_);
            _loc14_.o14187();
         }
         if(o5527 == 2)
         {
            _loc18_ = _loc21_.o7718.o13707;
            _loc2_ = Number(o5786.x - _loc21_.o19080.o461.x);
            _loc3_ = o5786.y - _loc21_.o19080.o461.y;
            _loc10_ = _loc18_.o19549.x * _loc2_ + _loc18_.o20685.x * _loc3_;
            _loc3_ = _loc18_.o19549.y * _loc2_ + _loc18_.o20685.y * _loc3_;
            _loc2_ = _loc10_;
            _loc12_ = _loc21_.o19080.o9412.x + _loc2_;
            _loc24_ = _loc21_.o19080.o9412.y + _loc3_;
            o7360.o18596(_loc12_ - _loc8_,_loc24_ - _loc15_);
            _loc11_ = o7360.o7648();
            if(_loc11_ > 0.005)
            {
               o7360.x = o7360.x * (1 / _loc11_);
               o7360.y = o7360.y * (1 / _loc11_);
            }
            else
            {
               o7360.o14195();
            }
            _loc5_ = o7719 - _loc11_;
            _loc16_ = Number(o10852.o93(_loc16_,-_loc5_));
            _loc5_ = o10852.o2404(_loc5_ + 0.005,-0.2,0);
            _loc22_ = -o19372 * _loc5_;
            _loc12_ = -_loc22_ * o7360.x;
            _loc24_ = -_loc22_ * o7360.y;
            _loc21_.o19080.o9412.x = _loc21_.o19080.o9412.x + _loc21_.o15412 * _loc12_;
            _loc21_.o19080.o9412.y = _loc21_.o19080.o9412.y + _loc21_.o15412 * _loc24_;
            _loc21_.o19080.o12395 = _loc21_.o19080.o12395 + _loc21_.o4988 * (_loc2_ * _loc24_ - _loc3_ * _loc12_);
            _loc21_.o14187();
         }
         return _loc16_ < 0.005;
      }
   }
}
