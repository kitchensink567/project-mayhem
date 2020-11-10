package
{
   use namespace b2internal;
   
   public class o10292 extends o2748
   {
       
      
      private var o18190:o20021;
      
      private var o20886:o20021;
      
      public var o7234:o9729;
      
      public var o11982:Number;
      
      private var o9688:o20021;
      
      private var o3219:Number;
      
      private var o6183:Number;
      
      private var o18836:Number;
      
      public function o10292(param1:o11737)
      {
         o18190 = new o20021();
         o20886 = new o20021();
         o7234 = new o9729();
         o9688 = new o20021();
         super(param1);
         o18190.o13101(param1.o7423);
         o20886.o13101(param1.o20551);
         o7234.o14195();
         o11982 = 0;
         o9688.o14195();
         o3219 = 0;
         o6183 = param1.o4354;
         o18836 = param1.o12816;
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
         return new o20021(param1 * o9688.x,param1 * o9688.y);
      }
      
      override public function o18986(param1:Number) : Number
      {
         return param1 * o3219;
      }
      
      public function o15556(param1:Number) : void
      {
         o6183 = param1;
      }
      
      public function o10524() : Number
      {
         return o6183;
      }
      
      public function o439(param1:Number) : void
      {
         o18836 = param1;
      }
      
      public function o7499() : Number
      {
         return o18836;
      }
      
      override b2internal function o8745(param1:o18851) : void
      {
         var _loc12_:* = null;
         var _loc7_:Number = NaN;
         var _loc10_:* = null;
         var _loc9_:o5173 = o8708;
         var _loc13_:o5173 = o4919;
         _loc12_ = _loc9_.o7718.o13707;
         var _loc14_:* = Number(o18190.x - _loc9_.o19080.o461.x);
         var _loc3_:Number = o18190.y - _loc9_.o19080.o461.y;
         _loc7_ = _loc12_.o19549.x * _loc14_ + _loc12_.o20685.x * _loc3_;
         _loc3_ = _loc12_.o19549.y * _loc14_ + _loc12_.o20685.y * _loc3_;
         _loc14_ = _loc7_;
         _loc12_ = _loc13_.o7718.o13707;
         var _loc4_:* = Number(o20886.x - _loc13_.o19080.o461.x);
         var _loc2_:Number = o20886.y - _loc13_.o19080.o461.y;
         _loc7_ = _loc12_.o19549.x * _loc4_ + _loc12_.o20685.x * _loc2_;
         _loc2_ = _loc12_.o19549.y * _loc4_ + _loc12_.o20685.y * _loc2_;
         _loc4_ = _loc7_;
         var _loc15_:Number = _loc9_.o15412;
         var _loc6_:Number = _loc13_.o15412;
         var _loc11_:Number = _loc9_.o4988;
         var _loc5_:Number = _loc13_.o4988;
         var _loc8_:o9729 = new o9729();
         _loc8_.o19549.x = _loc15_ + _loc6_;
         _loc8_.o20685.x = 0;
         _loc8_.o19549.y = 0;
         _loc8_.o20685.y = _loc15_ + _loc6_;
         _loc8_.o19549.x = _loc8_.o19549.x + _loc11_ * _loc3_ * _loc3_;
         _loc8_.o20685.x = _loc8_.o20685.x + -_loc11_ * _loc14_ * _loc3_;
         _loc8_.o19549.y = _loc8_.o19549.y + -_loc11_ * _loc14_ * _loc3_;
         _loc8_.o20685.y = _loc8_.o20685.y + _loc11_ * _loc14_ * _loc14_;
         _loc8_.o19549.x = _loc8_.o19549.x + _loc5_ * _loc2_ * _loc2_;
         _loc8_.o20685.x = _loc8_.o20685.x + -_loc5_ * _loc4_ * _loc2_;
         _loc8_.o19549.y = _loc8_.o19549.y + -_loc5_ * _loc4_ * _loc2_;
         _loc8_.o20685.y = _loc8_.o20685.y + _loc5_ * _loc4_ * _loc4_;
         _loc8_.o8330(o7234);
         o11982 = _loc11_ + _loc5_;
         if(o11982 > 0)
         {
            o11982 = 1 / o11982;
         }
         if(param1.o1821)
         {
            o9688.x = o9688.x * param1.o12930;
            o9688.y = o9688.y * param1.o12930;
            o3219 = o3219 * param1.o12930;
            _loc10_ = o9688;
            _loc9_.o18378.x = _loc9_.o18378.x - _loc15_ * _loc10_.x;
            _loc9_.o18378.y = _loc9_.o18378.y - _loc15_ * _loc10_.y;
            _loc9_.o11516 = _loc9_.o11516 - _loc11_ * (_loc14_ * _loc10_.y - _loc3_ * _loc10_.x + o3219);
            _loc13_.o18378.x = _loc13_.o18378.x + _loc6_ * _loc10_.x;
            _loc13_.o18378.y = _loc13_.o18378.y + _loc6_ * _loc10_.y;
            _loc13_.o11516 = _loc13_.o11516 + _loc5_ * (_loc4_ * _loc10_.y - _loc2_ * _loc10_.x + o3219);
         }
         else
         {
            o9688.o14195();
            o3219 = 0;
         }
      }
      
      override b2internal function o13623(param1:o18851) : void
      {
         var _loc7_:* = null;
         var _loc5_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc19_:o5173 = o8708;
         var _loc23_:o5173 = o4919;
         var _loc13_:o20021 = _loc19_.o18378;
         var _loc6_:Number = _loc19_.o11516;
         var _loc15_:o20021 = _loc23_.o18378;
         var _loc25_:Number = _loc23_.o11516;
         var _loc9_:Number = _loc19_.o15412;
         var _loc4_:Number = _loc23_.o15412;
         var _loc20_:Number = _loc19_.o4988;
         var _loc3_:Number = _loc23_.o4988;
         _loc7_ = _loc19_.o7718.o13707;
         var _loc10_:* = Number(o18190.x - _loc19_.o19080.o461.x);
         var _loc17_:Number = o18190.y - _loc19_.o19080.o461.y;
         _loc5_ = _loc7_.o19549.x * _loc10_ + _loc7_.o20685.x * _loc17_;
         _loc17_ = _loc7_.o19549.y * _loc10_ + _loc7_.o20685.y * _loc17_;
         _loc10_ = _loc5_;
         _loc7_ = _loc23_.o7718.o13707;
         var _loc18_:* = Number(o20886.x - _loc23_.o19080.o461.x);
         var _loc12_:Number = o20886.y - _loc23_.o19080.o461.y;
         _loc5_ = _loc7_.o19549.x * _loc18_ + _loc7_.o20685.x * _loc12_;
         _loc12_ = _loc7_.o19549.y * _loc18_ + _loc7_.o20685.y * _loc12_;
         _loc18_ = _loc5_;
         var _loc22_:Number = _loc25_ - _loc6_;
         var _loc24_:Number = -o11982 * _loc22_;
         var _loc11_:Number = o3219;
         _loc8_ = param1.o10009 * o18836;
         o3219 = o10852.o2404(o3219 + _loc24_,-_loc8_,_loc8_);
         _loc24_ = o3219 - _loc11_;
         _loc6_ = _loc6_ - _loc20_ * _loc24_;
         _loc25_ = _loc25_ + _loc3_ * _loc24_;
         var _loc16_:Number = _loc15_.x - _loc25_ * _loc12_ - _loc13_.x + _loc6_ * _loc17_;
         var _loc14_:Number = _loc15_.y + _loc25_ * _loc18_ - _loc13_.y - _loc6_ * _loc10_;
         var _loc21_:o20021 = o10852.o5842(o7234,new o20021(-_loc16_,-_loc14_));
         var _loc2_:o20021 = o9688.o2747();
         o9688.o14473(_loc21_);
         _loc8_ = param1.o10009 * o6183;
         if(o9688.o9792() > _loc8_ * _loc8_)
         {
            o9688.o5775();
            o9688.o5041(_loc8_);
         }
         _loc21_ = o10852.o6072(o9688,_loc2_);
         _loc13_.x = _loc13_.x - _loc9_ * _loc21_.x;
         _loc13_.y = _loc13_.y - _loc9_ * _loc21_.y;
         _loc6_ = _loc6_ - _loc20_ * (_loc10_ * _loc21_.y - _loc17_ * _loc21_.x);
         _loc15_.x = _loc15_.x + _loc4_ * _loc21_.x;
         _loc15_.y = _loc15_.y + _loc4_ * _loc21_.y;
         _loc25_ = _loc25_ + _loc3_ * (_loc18_ * _loc21_.y - _loc12_ * _loc21_.x);
         _loc19_.o11516 = _loc6_;
         _loc23_.o11516 = _loc25_;
      }
      
      override b2internal function o18754(param1:Number) : Boolean
      {
         return true;
      }
   }
}
