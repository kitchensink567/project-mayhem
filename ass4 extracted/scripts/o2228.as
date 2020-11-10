package
{
   use namespace b2internal;
   
   public class o2228 extends o2748
   {
       
      
      private var o8764:o20021;
      
      private var o5786:o20021;
      
      private var o17331:o20021;
      
      private var o16110:Number;
      
      private var o9696:Number;
      
      private var o4150:Number;
      
      private var o1577:Number;
      
      private var o20844:Number;
      
      private var o12897:Number;
      
      private var o19151:Number;
      
      public function o2228(param1:o12221)
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc2_:Number = NaN;
         o8764 = new o20021();
         o5786 = new o20021();
         o17331 = new o20021();
         super(param1);
         o8764.o13101(param1.o7423);
         o5786.o13101(param1.o20551);
         o19151 = param1.length;
         o16110 = param1.o15425;
         o9696 = param1.o12647;
         o20844 = 0;
         o4150 = 0;
         o1577 = 0;
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
         return new o20021(param1 * o20844 * o17331.x,param1 * o20844 * o17331.y);
      }
      
      override public function o18986(param1:Number) : Number
      {
         return 0;
      }
      
      public function o7967() : Number
      {
         return o19151;
      }
      
      public function o12941(param1:Number) : void
      {
         o19151 = param1;
      }
      
      public function o479() : Number
      {
         return o16110;
      }
      
      public function o16(param1:Number) : void
      {
         o16110 = param1;
      }
      
      public function o5243() : Number
      {
         return o9696;
      }
      
      public function o20439(param1:Number) : void
      {
         o9696 = param1;
      }
      
      override b2internal function o8745(param1:o18851) : void
      {
         var _loc15_:* = null;
         var _loc10_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc11_:o5173 = o8708;
         var _loc19_:o5173 = o4919;
         _loc15_ = _loc11_.o7718.o13707;
         var _loc7_:* = Number(o8764.x - _loc11_.o19080.o461.x);
         var _loc4_:Number = o8764.y - _loc11_.o19080.o461.y;
         _loc10_ = _loc15_.o19549.x * _loc7_ + _loc15_.o20685.x * _loc4_;
         _loc4_ = _loc15_.o19549.y * _loc7_ + _loc15_.o20685.y * _loc4_;
         _loc7_ = _loc10_;
         _loc15_ = _loc19_.o7718.o13707;
         var _loc2_:* = Number(o5786.x - _loc19_.o19080.o461.x);
         var _loc3_:Number = o5786.y - _loc19_.o19080.o461.y;
         _loc10_ = _loc15_.o19549.x * _loc2_ + _loc15_.o20685.x * _loc3_;
         _loc3_ = _loc15_.o19549.y * _loc2_ + _loc15_.o20685.y * _loc3_;
         _loc2_ = _loc10_;
         o17331.x = _loc19_.o19080.o9412.x + _loc2_ - _loc11_.o19080.o9412.x - _loc7_;
         o17331.y = _loc19_.o19080.o9412.y + _loc3_ - _loc11_.o19080.o9412.y - _loc4_;
         var _loc14_:Number = Math.sqrt(o17331.x * o17331.x + o17331.y * o17331.y);
         if(_loc14_ > 0.005)
         {
            o17331.o5041(1 / _loc14_);
         }
         else
         {
            o17331.o14195();
         }
         var _loc8_:Number = _loc7_ * o17331.y - _loc4_ * o17331.x;
         var _loc9_:Number = _loc2_ * o17331.y - _loc3_ * o17331.x;
         var _loc16_:Number = _loc11_.o15412 + _loc11_.o4988 * _loc8_ * _loc8_ + _loc19_.o15412 + _loc19_.o4988 * _loc9_ * _loc9_;
         o12897 = _loc16_ != 0?1 / _loc16_:0;
         if(o16110 > 0)
         {
            _loc5_ = _loc14_ - o19151;
            _loc6_ = 2 * 3.14159265358979 * o16110;
            _loc17_ = 2 * o12897 * o9696 * _loc6_;
            _loc12_ = o12897 * _loc6_ * _loc6_;
            o4150 = param1.o10009 * (_loc17_ + param1.o10009 * _loc12_);
            o4150 = o4150 != 0?1 / o4150:0;
            o1577 = _loc5_ * param1.o10009 * _loc12_ * o4150;
            o12897 = _loc16_ + o4150;
            o12897 = o12897 != 0?1 / o12897:0;
         }
         if(param1.o1821)
         {
            o20844 = o20844 * param1.o12930;
            _loc13_ = o20844 * o17331.x;
            _loc18_ = o20844 * o17331.y;
            _loc11_.o18378.x = _loc11_.o18378.x - _loc11_.o15412 * _loc13_;
            _loc11_.o18378.y = _loc11_.o18378.y - _loc11_.o15412 * _loc18_;
            _loc11_.o11516 = _loc11_.o11516 - _loc11_.o4988 * (_loc7_ * _loc18_ - _loc4_ * _loc13_);
            _loc19_.o18378.x = _loc19_.o18378.x + _loc19_.o15412 * _loc13_;
            _loc19_.o18378.y = _loc19_.o18378.y + _loc19_.o15412 * _loc18_;
            _loc19_.o11516 = _loc19_.o11516 + _loc19_.o4988 * (_loc2_ * _loc18_ - _loc3_ * _loc13_);
         }
         else
         {
            o20844 = 0;
         }
      }
      
      override b2internal function o13623(param1:o18851) : void
      {
         var _loc13_:* = null;
         var _loc10_:o5173 = o8708;
         var _loc16_:o5173 = o4919;
         _loc13_ = _loc10_.o7718.o13707;
         var _loc7_:* = Number(o8764.x - _loc10_.o19080.o461.x);
         var _loc5_:Number = o8764.y - _loc10_.o19080.o461.y;
         var _loc9_:Number = _loc13_.o19549.x * _loc7_ + _loc13_.o20685.x * _loc5_;
         _loc5_ = _loc13_.o19549.y * _loc7_ + _loc13_.o20685.y * _loc5_;
         _loc7_ = _loc9_;
         _loc13_ = _loc16_.o7718.o13707;
         var _loc2_:* = Number(o5786.x - _loc16_.o19080.o461.x);
         var _loc4_:Number = o5786.y - _loc16_.o19080.o461.y;
         _loc9_ = _loc13_.o19549.x * _loc2_ + _loc13_.o20685.x * _loc4_;
         _loc4_ = _loc13_.o19549.y * _loc2_ + _loc13_.o20685.y * _loc4_;
         _loc2_ = _loc9_;
         var _loc14_:Number = _loc10_.o18378.x + -_loc10_.o11516 * _loc5_;
         var _loc3_:Number = _loc10_.o18378.y + _loc10_.o11516 * _loc7_;
         var _loc8_:Number = _loc16_.o18378.x + -_loc16_.o11516 * _loc4_;
         var _loc6_:Number = _loc16_.o18378.y + _loc16_.o11516 * _loc2_;
         var _loc12_:Number = o17331.x * (_loc8_ - _loc14_) + o17331.y * (_loc6_ - _loc3_);
         var _loc17_:Number = -o12897 * (_loc12_ + o1577 + o4150 * o20844);
         o20844 = o20844 + _loc17_;
         var _loc11_:Number = _loc17_ * o17331.x;
         var _loc15_:Number = _loc17_ * o17331.y;
         _loc10_.o18378.x = _loc10_.o18378.x - _loc10_.o15412 * _loc11_;
         _loc10_.o18378.y = _loc10_.o18378.y - _loc10_.o15412 * _loc15_;
         _loc10_.o11516 = _loc10_.o11516 - _loc10_.o4988 * (_loc7_ * _loc15_ - _loc5_ * _loc11_);
         _loc16_.o18378.x = _loc16_.o18378.x + _loc16_.o15412 * _loc11_;
         _loc16_.o18378.y = _loc16_.o18378.y + _loc16_.o15412 * _loc15_;
         _loc16_.o11516 = _loc16_.o11516 + _loc16_.o4988 * (_loc2_ * _loc15_ - _loc4_ * _loc11_);
      }
      
      override b2internal function o18754(param1:Number) : Boolean
      {
         var _loc13_:* = null;
         if(o16110 > 0)
         {
            return true;
         }
         var _loc10_:o5173 = o8708;
         var _loc15_:o5173 = o4919;
         _loc13_ = _loc10_.o7718.o13707;
         var _loc7_:* = Number(o8764.x - _loc10_.o19080.o461.x);
         var _loc5_:Number = o8764.y - _loc10_.o19080.o461.y;
         var _loc9_:Number = _loc13_.o19549.x * _loc7_ + _loc13_.o20685.x * _loc5_;
         _loc5_ = _loc13_.o19549.y * _loc7_ + _loc13_.o20685.y * _loc5_;
         _loc7_ = _loc9_;
         _loc13_ = _loc15_.o7718.o13707;
         var _loc3_:* = Number(o5786.x - _loc15_.o19080.o461.x);
         var _loc4_:Number = o5786.y - _loc15_.o19080.o461.y;
         _loc9_ = _loc13_.o19549.x * _loc3_ + _loc13_.o20685.x * _loc4_;
         _loc4_ = _loc13_.o19549.y * _loc3_ + _loc13_.o20685.y * _loc4_;
         _loc3_ = _loc9_;
         var _loc8_:Number = _loc15_.o19080.o9412.x + _loc3_ - _loc10_.o19080.o9412.x - _loc7_;
         var _loc2_:Number = _loc15_.o19080.o9412.y + _loc4_ - _loc10_.o19080.o9412.y - _loc5_;
         var _loc12_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc2_ * _loc2_);
         _loc8_ = _loc8_ / _loc12_;
         _loc2_ = _loc2_ / _loc12_;
         var _loc6_:Number = _loc12_ - o19151;
         _loc6_ = o10852.o2404(_loc6_,-0.2,0.2);
         var _loc16_:Number = -o12897 * _loc6_;
         o17331.o18596(_loc8_,_loc2_);
         var _loc11_:Number = _loc16_ * o17331.x;
         var _loc14_:Number = _loc16_ * o17331.y;
         _loc10_.o19080.o9412.x = _loc10_.o19080.o9412.x - _loc10_.o15412 * _loc11_;
         _loc10_.o19080.o9412.y = _loc10_.o19080.o9412.y - _loc10_.o15412 * _loc14_;
         _loc10_.o19080.o12395 = _loc10_.o19080.o12395 - _loc10_.o4988 * (_loc7_ * _loc14_ - _loc5_ * _loc11_);
         _loc15_.o19080.o9412.x = _loc15_.o19080.o9412.x + _loc15_.o15412 * _loc11_;
         _loc15_.o19080.o9412.y = _loc15_.o19080.o9412.y + _loc15_.o15412 * _loc14_;
         _loc15_.o19080.o12395 = _loc15_.o19080.o12395 + _loc15_.o4988 * (_loc3_ * _loc14_ - _loc4_ * _loc11_);
         _loc10_.o14187();
         _loc15_.o14187();
         return o10852.o17599(_loc6_) < 0.005;
      }
   }
}
