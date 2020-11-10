package
{
   use namespace b2internal;
   
   public class o2178 extends o2748
   {
       
      
      private var o15068:o5173;
      
      private var o171:o5173;
      
      private var o8981:o9718;
      
      private var o12824:o3919;
      
      private var o14364:o9718;
      
      private var o4863:o3919;
      
      private var o5353:o20021;
      
      private var o9368:o20021;
      
      private var o8764:o20021;
      
      private var o5786:o20021;
      
      private var o11258:o14599;
      
      private var o16395:Number;
      
      private var o1401:Number;
      
      private var o12897:Number;
      
      private var o20844:Number;
      
      public function o2178(param1:o12495)
      {
         var _loc2_:Number = NaN;
         var _loc4_:Number = NaN;
         o5353 = new o20021();
         o9368 = new o20021();
         o8764 = new o20021();
         o5786 = new o20021();
         o11258 = new o14599();
         super(param1);
         var _loc5_:int = param1.o20518.o3804;
         var _loc3_:int = param1.o17712.o3804;
         o8981 = null;
         o12824 = null;
         o14364 = null;
         o4863 = null;
         o15068 = param1.o20518.o1670();
         o8708 = param1.o20518.o4568();
         if(_loc5_ == 1)
         {
            o8981 = param1.o20518 as o9718;
            o5353.o13101(o8981.o8764);
            o8764.o13101(o8981.o5786);
            _loc2_ = o8981.o17254();
         }
         else
         {
            o12824 = param1.o20518 as o3919;
            o5353.o13101(o12824.o8764);
            o8764.o13101(o12824.o5786);
            _loc2_ = o12824.o3675();
         }
         o171 = param1.o17712.o1670();
         o4919 = param1.o17712.o4568();
         if(_loc3_ == 1)
         {
            o14364 = param1.o17712 as o9718;
            o9368.o13101(o14364.o8764);
            o5786.o13101(o14364.o5786);
            _loc4_ = o14364.o17254();
         }
         else
         {
            o4863 = param1.o17712 as o3919;
            o9368.o13101(o4863.o8764);
            o5786.o13101(o4863.o5786);
            _loc4_ = o4863.o3675();
         }
         o1401 = param1.o6425;
         o16395 = _loc2_ + o1401 * _loc4_;
         o20844 = 0;
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
         return new o20021(param1 * o20844 * o11258.o4200.x,param1 * o20844 * o11258.o4200.y);
      }
      
      override public function o18986(param1:Number) : Number
      {
         var _loc4_:o9729 = o4919.o7718.o13707;
         var _loc2_:* = Number(o8764.x - o4919.o19080.o461.x);
         var _loc7_:Number = o8764.y - o4919.o19080.o461.y;
         var _loc6_:Number = _loc4_.o19549.x * _loc2_ + _loc4_.o20685.x * _loc7_;
         _loc7_ = _loc4_.o19549.y * _loc2_ + _loc4_.o20685.y * _loc7_;
         _loc2_ = _loc6_;
         var _loc3_:Number = o20844 * o11258.o4200.x;
         var _loc5_:Number = o20844 * o11258.o4200.y;
         return param1 * (o20844 * o11258.o9700 - _loc2_ * _loc5_ + _loc7_ * _loc3_);
      }
      
      public function o10394() : Number
      {
         return o1401;
      }
      
      public function o15921(param1:Number) : void
      {
         o1401 = param1;
      }
      
      override b2internal function o8745(param1:o18851) : void
      {
         var _loc10_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc11_:* = null;
         var _loc9_:* = null;
         var _loc13_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:o5173 = o15068;
         var _loc7_:o5173 = o171;
         var _loc6_:o5173 = o8708;
         var _loc12_:o5173 = o4919;
         var _loc5_:* = 0;
         o11258.o14195();
         if(o8981)
         {
            o11258.o19294 = -1;
            _loc5_ = Number(_loc5_ + _loc6_.o4988);
         }
         else
         {
            _loc11_ = _loc2_.o7718.o13707;
            _loc9_ = o12824.o12053;
            _loc10_ = _loc11_.o19549.x * _loc9_.x + _loc11_.o20685.x * _loc9_.y;
            _loc3_ = _loc11_.o19549.y * _loc9_.x + _loc11_.o20685.y * _loc9_.y;
            _loc11_ = _loc6_.o7718.o13707;
            _loc8_ = Number(o8764.x - _loc6_.o19080.o461.x);
            _loc14_ = o8764.y - _loc6_.o19080.o461.y;
            _loc4_ = _loc11_.o19549.x * _loc8_ + _loc11_.o20685.x * _loc14_;
            _loc14_ = _loc11_.o19549.y * _loc8_ + _loc11_.o20685.y * _loc14_;
            _loc8_ = _loc4_;
            _loc13_ = _loc8_ * _loc3_ - _loc14_ * _loc10_;
            o11258.o10472.o18596(-_loc10_,-_loc3_);
            o11258.o19294 = -_loc13_;
            _loc5_ = Number(_loc5_ + (_loc6_.o15412 + _loc6_.o4988 * _loc13_ * _loc13_));
         }
         if(o14364)
         {
            o11258.o9700 = -o1401;
            _loc5_ = Number(_loc5_ + o1401 * o1401 * _loc12_.o4988);
         }
         else
         {
            _loc11_ = _loc7_.o7718.o13707;
            _loc9_ = o4863.o12053;
            _loc10_ = _loc11_.o19549.x * _loc9_.x + _loc11_.o20685.x * _loc9_.y;
            _loc3_ = _loc11_.o19549.y * _loc9_.x + _loc11_.o20685.y * _loc9_.y;
            _loc11_ = _loc12_.o7718.o13707;
            _loc8_ = Number(o5786.x - _loc12_.o19080.o461.x);
            _loc14_ = o5786.y - _loc12_.o19080.o461.y;
            _loc4_ = _loc11_.o19549.x * _loc8_ + _loc11_.o20685.x * _loc14_;
            _loc14_ = _loc11_.o19549.y * _loc8_ + _loc11_.o20685.y * _loc14_;
            _loc8_ = _loc4_;
            _loc13_ = _loc8_ * _loc3_ - _loc14_ * _loc10_;
            o11258.o4200.o18596(-o1401 * _loc10_,-o1401 * _loc3_);
            o11258.o9700 = -o1401 * _loc13_;
            _loc5_ = Number(_loc5_ + o1401 * o1401 * (_loc12_.o15412 + _loc12_.o4988 * _loc13_ * _loc13_));
         }
         o12897 = _loc5_ > 0?1 / _loc5_:0;
         if(param1.o1821)
         {
            _loc6_.o18378.x = _loc6_.o18378.x + _loc6_.o15412 * o20844 * o11258.o10472.x;
            _loc6_.o18378.y = _loc6_.o18378.y + _loc6_.o15412 * o20844 * o11258.o10472.y;
            _loc6_.o11516 = _loc6_.o11516 + _loc6_.o4988 * o20844 * o11258.o19294;
            _loc12_.o18378.x = _loc12_.o18378.x + _loc12_.o15412 * o20844 * o11258.o4200.x;
            _loc12_.o18378.y = _loc12_.o18378.y + _loc12_.o15412 * o20844 * o11258.o4200.y;
            _loc12_.o11516 = _loc12_.o11516 + _loc12_.o4988 * o20844 * o11258.o9700;
         }
         else
         {
            o20844 = 0;
         }
      }
      
      override b2internal function o13623(param1:o18851) : void
      {
         var _loc2_:o5173 = o8708;
         var _loc4_:o5173 = o4919;
         var _loc3_:Number = o11258.o8343(_loc2_.o18378,_loc2_.o11516,_loc4_.o18378,_loc4_.o11516);
         var _loc5_:Number = -o12897 * _loc3_;
         o20844 = o20844 + _loc5_;
         _loc2_.o18378.x = _loc2_.o18378.x + _loc2_.o15412 * _loc5_ * o11258.o10472.x;
         _loc2_.o18378.y = _loc2_.o18378.y + _loc2_.o15412 * _loc5_ * o11258.o10472.y;
         _loc2_.o11516 = _loc2_.o11516 + _loc2_.o4988 * _loc5_ * o11258.o19294;
         _loc4_.o18378.x = _loc4_.o18378.x + _loc4_.o15412 * _loc5_ * o11258.o4200.x;
         _loc4_.o18378.y = _loc4_.o18378.y + _loc4_.o15412 * _loc5_ * o11258.o4200.y;
         _loc4_.o11516 = _loc4_.o11516 + _loc4_.o4988 * _loc5_ * o11258.o9700;
      }
      
      override b2internal function o18754(param1:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc3_:* = 0;
         var _loc2_:o5173 = o8708;
         var _loc7_:o5173 = o4919;
         if(o8981)
         {
            _loc5_ = o8981.o17254();
         }
         else
         {
            _loc5_ = o12824.o3675();
         }
         if(o14364)
         {
            _loc6_ = o14364.o17254();
         }
         else
         {
            _loc6_ = o4863.o3675();
         }
         var _loc4_:Number = o16395 - (_loc5_ + o1401 * _loc6_);
         var _loc8_:Number = -o12897 * _loc4_;
         _loc2_.o19080.o9412.x = _loc2_.o19080.o9412.x + _loc2_.o15412 * _loc8_ * o11258.o10472.x;
         _loc2_.o19080.o9412.y = _loc2_.o19080.o9412.y + _loc2_.o15412 * _loc8_ * o11258.o10472.y;
         _loc2_.o19080.o12395 = _loc2_.o19080.o12395 + _loc2_.o4988 * _loc8_ * o11258.o19294;
         _loc7_.o19080.o9412.x = _loc7_.o19080.o9412.x + _loc7_.o15412 * _loc8_ * o11258.o4200.x;
         _loc7_.o19080.o9412.y = _loc7_.o19080.o9412.y + _loc7_.o15412 * _loc8_ * o11258.o4200.y;
         _loc7_.o19080.o12395 = _loc7_.o19080.o12395 + _loc7_.o4988 * _loc8_ * o11258.o9700;
         _loc2_.o14187();
         _loc7_.o14187();
         return _loc3_ < 0.005;
      }
   }
}
