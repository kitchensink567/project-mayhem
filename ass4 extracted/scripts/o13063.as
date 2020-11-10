package
{
   use namespace b2internal;
   
   public class o13063 extends o2748
   {
       
      
      private var o18190:o20021;
      
      private var o20886:o20021;
      
      private var o11567:Number;
      
      private var o20844:o17981;
      
      private var o12897:o16178;
      
      public function o13063(param1:o957)
      {
         o18190 = new o20021();
         o20886 = new o20021();
         o20844 = new o17981();
         o12897 = new o16178();
         super(param1);
         o18190.o13101(param1.o7423);
         o20886.o13101(param1.o20551);
         o11567 = param1.o15659;
         o20844.o14195();
         o12897 = new o16178();
      }
      
      override public function o17339() : o20021
      {
         return o8708.o13627(o18190);
      }
      
      override public function o5566() : o20021
      {
         return o4919.o13627(o20886);
      }
      
      override public function o917(param1:Number) : o20021
      {
         return new o20021(param1 * o20844.x,param1 * o20844.y);
      }
      
      override public function o18986(param1:Number) : Number
      {
         return param1 * o20844.o16990;
      }
      
      override b2internal function o8745(param1:o18851) : void
      {
         var _loc10_:* = null;
         var _loc7_:Number = NaN;
         var _loc8_:o5173 = o8708;
         var _loc11_:o5173 = o4919;
         _loc10_ = _loc8_.o7718.o13707;
         var _loc12_:* = Number(o18190.x - _loc8_.o19080.o461.x);
         var _loc3_:Number = o18190.y - _loc8_.o19080.o461.y;
         _loc7_ = _loc10_.o19549.x * _loc12_ + _loc10_.o20685.x * _loc3_;
         _loc3_ = _loc10_.o19549.y * _loc12_ + _loc10_.o20685.y * _loc3_;
         _loc12_ = _loc7_;
         _loc10_ = _loc11_.o7718.o13707;
         var _loc4_:* = Number(o20886.x - _loc11_.o19080.o461.x);
         var _loc2_:Number = o20886.y - _loc11_.o19080.o461.y;
         _loc7_ = _loc10_.o19549.x * _loc4_ + _loc10_.o20685.x * _loc2_;
         _loc2_ = _loc10_.o19549.y * _loc4_ + _loc10_.o20685.y * _loc2_;
         _loc4_ = _loc7_;
         var _loc13_:Number = _loc8_.o15412;
         var _loc6_:Number = _loc11_.o15412;
         var _loc9_:Number = _loc8_.o4988;
         var _loc5_:Number = _loc11_.o4988;
         o12897.o19549.x = _loc13_ + _loc6_ + _loc3_ * _loc3_ * _loc9_ + _loc2_ * _loc2_ * _loc5_;
         o12897.o20685.x = -_loc3_ * _loc12_ * _loc9_ - _loc2_ * _loc4_ * _loc5_;
         o12897.o5716.x = -_loc3_ * _loc9_ - _loc2_ * _loc5_;
         o12897.o19549.y = o12897.o20685.x;
         o12897.o20685.y = _loc13_ + _loc6_ + _loc12_ * _loc12_ * _loc9_ + _loc4_ * _loc4_ * _loc5_;
         o12897.o5716.y = _loc12_ * _loc9_ + _loc4_ * _loc5_;
         o12897.o19549.o16990 = o12897.o5716.x;
         o12897.o20685.o16990 = o12897.o5716.y;
         o12897.o5716.o16990 = _loc9_ + _loc5_;
         if(param1.o1821)
         {
            o20844.x = o20844.x * param1.o12930;
            o20844.y = o20844.y * param1.o12930;
            o20844.o16990 = o20844.o16990 * param1.o12930;
            _loc8_.o18378.x = _loc8_.o18378.x - _loc13_ * o20844.x;
            _loc8_.o18378.y = _loc8_.o18378.y - _loc13_ * o20844.y;
            _loc8_.o11516 = _loc8_.o11516 - _loc9_ * (_loc12_ * o20844.y - _loc3_ * o20844.x + o20844.o16990);
            _loc11_.o18378.x = _loc11_.o18378.x + _loc6_ * o20844.x;
            _loc11_.o18378.y = _loc11_.o18378.y + _loc6_ * o20844.y;
            _loc11_.o11516 = _loc11_.o11516 + _loc5_ * (_loc4_ * o20844.y - _loc2_ * o20844.x + o20844.o16990);
         }
         else
         {
            o20844.o14195();
         }
      }
      
      override b2internal function o13623(param1:o18851) : void
      {
         var _loc16_:* = null;
         var _loc10_:Number = NaN;
         var _loc12_:o5173 = o8708;
         var _loc18_:o5173 = o4919;
         var _loc3_:o20021 = _loc12_.o18378;
         var _loc11_:Number = _loc12_.o11516;
         var _loc4_:o20021 = _loc18_.o18378;
         var _loc21_:Number = _loc18_.o11516;
         var _loc19_:Number = _loc12_.o15412;
         var _loc9_:Number = _loc18_.o15412;
         var _loc14_:Number = _loc12_.o4988;
         var _loc8_:Number = _loc18_.o4988;
         _loc16_ = _loc12_.o7718.o13707;
         var _loc17_:* = Number(o18190.x - _loc12_.o19080.o461.x);
         var _loc6_:Number = o18190.y - _loc12_.o19080.o461.y;
         _loc10_ = _loc16_.o19549.x * _loc17_ + _loc16_.o20685.x * _loc6_;
         _loc6_ = _loc16_.o19549.y * _loc17_ + _loc16_.o20685.y * _loc6_;
         _loc17_ = _loc10_;
         _loc16_ = _loc18_.o7718.o13707;
         var _loc5_:* = Number(o20886.x - _loc18_.o19080.o461.x);
         var _loc2_:Number = o20886.y - _loc18_.o19080.o461.y;
         _loc10_ = _loc16_.o19549.x * _loc5_ + _loc16_.o20685.x * _loc2_;
         _loc2_ = _loc16_.o19549.y * _loc5_ + _loc16_.o20685.y * _loc2_;
         _loc5_ = _loc10_;
         var _loc7_:Number = _loc4_.x - _loc21_ * _loc2_ - _loc3_.x + _loc11_ * _loc6_;
         var _loc13_:Number = _loc4_.y + _loc21_ * _loc5_ - _loc3_.y - _loc11_ * _loc17_;
         var _loc15_:Number = _loc21_ - _loc11_;
         var _loc20_:o17981 = new o17981();
         o12897.o516(_loc20_,-_loc7_,-_loc13_,-_loc15_);
         o20844.o14473(_loc20_);
         _loc3_.x = _loc3_.x - _loc19_ * _loc20_.x;
         _loc3_.y = _loc3_.y - _loc19_ * _loc20_.y;
         _loc11_ = _loc11_ - _loc14_ * (_loc17_ * _loc20_.y - _loc6_ * _loc20_.x + _loc20_.o16990);
         _loc4_.x = _loc4_.x + _loc9_ * _loc20_.x;
         _loc4_.y = _loc4_.y + _loc9_ * _loc20_.y;
         _loc21_ = _loc21_ + _loc8_ * (_loc5_ * _loc20_.y - _loc2_ * _loc20_.x + _loc20_.o16990);
         _loc12_.o11516 = _loc11_;
         _loc18_.o11516 = _loc21_;
      }
      
      override b2internal function o18754(param1:Number) : Boolean
      {
         var _loc14_:* = null;
         var _loc10_:Number = NaN;
         var _loc11_:o5173 = o8708;
         var _loc16_:o5173 = o4919;
         _loc14_ = _loc11_.o7718.o13707;
         var _loc17_:* = Number(o18190.x - _loc11_.o19080.o461.x);
         var _loc4_:Number = o18190.y - _loc11_.o19080.o461.y;
         _loc10_ = _loc14_.o19549.x * _loc17_ + _loc14_.o20685.x * _loc4_;
         _loc4_ = _loc14_.o19549.y * _loc17_ + _loc14_.o20685.y * _loc4_;
         _loc17_ = _loc10_;
         _loc14_ = _loc16_.o7718.o13707;
         var _loc5_:* = Number(o20886.x - _loc16_.o19080.o461.x);
         var _loc2_:Number = o20886.y - _loc16_.o19080.o461.y;
         _loc10_ = _loc14_.o19549.x * _loc5_ + _loc14_.o20685.x * _loc2_;
         _loc2_ = _loc14_.o19549.y * _loc5_ + _loc14_.o20685.y * _loc2_;
         _loc5_ = _loc10_;
         var _loc18_:Number = _loc11_.o15412;
         var _loc9_:Number = _loc16_.o15412;
         var _loc13_:Number = _loc11_.o4988;
         var _loc7_:Number = _loc16_.o4988;
         var _loc15_:Number = _loc16_.o19080.o9412.x + _loc5_ - _loc11_.o19080.o9412.x - _loc17_;
         var _loc12_:Number = _loc16_.o19080.o9412.y + _loc2_ - _loc11_.o19080.o9412.y - _loc4_;
         var _loc20_:Number = _loc16_.o19080.o12395 - _loc11_.o19080.o12395 - o11567;
         var _loc8_:* = 0.05;
         var _loc3_:Number = Math.sqrt(_loc15_ * _loc15_ + _loc12_ * _loc12_);
         var _loc6_:Number = o10852.o17599(_loc20_);
         if(_loc3_ > _loc8_)
         {
            _loc13_ = _loc13_ * 1;
            _loc7_ = _loc7_ * 1;
         }
         o12897.o19549.x = _loc18_ + _loc9_ + _loc4_ * _loc4_ * _loc13_ + _loc2_ * _loc2_ * _loc7_;
         o12897.o20685.x = -_loc4_ * _loc17_ * _loc13_ - _loc2_ * _loc5_ * _loc7_;
         o12897.o5716.x = -_loc4_ * _loc13_ - _loc2_ * _loc7_;
         o12897.o19549.y = o12897.o20685.x;
         o12897.o20685.y = _loc18_ + _loc9_ + _loc17_ * _loc17_ * _loc13_ + _loc5_ * _loc5_ * _loc7_;
         o12897.o5716.y = _loc17_ * _loc13_ + _loc5_ * _loc7_;
         o12897.o19549.o16990 = o12897.o5716.x;
         o12897.o20685.o16990 = o12897.o5716.y;
         o12897.o5716.o16990 = _loc13_ + _loc7_;
         var _loc19_:o17981 = new o17981();
         o12897.o516(_loc19_,-_loc15_,-_loc12_,-_loc20_);
         _loc11_.o19080.o9412.x = _loc11_.o19080.o9412.x - _loc18_ * _loc19_.x;
         _loc11_.o19080.o9412.y = _loc11_.o19080.o9412.y - _loc18_ * _loc19_.y;
         _loc11_.o19080.o12395 = _loc11_.o19080.o12395 - _loc13_ * (_loc17_ * _loc19_.y - _loc4_ * _loc19_.x + _loc19_.o16990);
         _loc16_.o19080.o9412.x = _loc16_.o19080.o9412.x + _loc9_ * _loc19_.x;
         _loc16_.o19080.o9412.y = _loc16_.o19080.o9412.y + _loc9_ * _loc19_.y;
         _loc16_.o19080.o12395 = _loc16_.o19080.o12395 + _loc7_ * (_loc5_ * _loc19_.y - _loc2_ * _loc19_.x + _loc19_.o16990);
         _loc11_.o14187();
         _loc16_.o14187();
         return _loc3_ <= 0.005 && _loc6_ <= 0.0349065850398866;
      }
   }
}
