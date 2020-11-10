package
{
   use namespace b2internal;
   
   public class o15114 extends o17586
   {
       
      
      b2internal var o17446:o20021;
      
      public function o15114(param1:Number = 0)
      {
         o17446 = new o20021();
         super();
         o3804 = 0;
      }
      
      override public function o2747() : o17586
      {
         var _loc1_:o17586 = new o15114();
         _loc1_.o18596(this);
         return _loc1_;
      }
      
      override public function o18596(param1:o17586) : void
      {
         var _loc2_:* = null;
         super.o18596(param1);
         if(param1 is o15114)
         {
            _loc2_ = param1 as o15114;
            o17446.o13101(_loc2_.o17446);
         }
      }
      
      override public function o14704(param1:o12362, param2:o20021) : Boolean
      {
         var _loc4_:o9729 = param1.o13707;
         var _loc5_:Number = param1.position.x + (_loc4_.o19549.x * o17446.x + _loc4_.o20685.x * o17446.y);
         var _loc3_:Number = param1.position.y + (_loc4_.o19549.y * o17446.x + _loc4_.o20685.y * o17446.y);
         _loc5_ = param2.x - _loc5_;
         _loc3_ = param2.y - _loc3_;
         return _loc5_ * _loc5_ + _loc3_ * _loc3_ <= o4879 * o4879;
      }
      
      override public function o4566(param1:o14303, param2:o13148, param3:o12362) : Boolean
      {
         var _loc13_:o9729 = param3.o13707;
         var _loc14_:Number = param3.position.x + (_loc13_.o19549.x * o17446.x + _loc13_.o20685.x * o17446.y);
         var _loc5_:Number = param3.position.y + (_loc13_.o19549.y * o17446.x + _loc13_.o20685.y * o17446.y);
         var _loc12_:Number = param2.o12282.x - _loc14_;
         var _loc9_:Number = param2.o12282.y - _loc5_;
         var _loc7_:Number = _loc12_ * _loc12_ + _loc9_ * _loc9_ - o4879 * o4879;
         var _loc11_:Number = param2.o14457.x - param2.o12282.x;
         var _loc15_:Number = param2.o14457.y - param2.o12282.y;
         var _loc4_:Number = _loc12_ * _loc11_ + _loc9_ * _loc15_;
         var _loc6_:Number = _loc11_ * _loc11_ + _loc15_ * _loc15_;
         var _loc10_:Number = _loc4_ * _loc4_ - _loc6_ * _loc7_;
         if(_loc10_ < 0 || _loc6_ < Number.MIN_VALUE)
         {
            return false;
         }
         var _loc8_:Number = -(_loc4_ + Math.sqrt(_loc10_));
         if(0 <= _loc8_ && _loc8_ <= param2.o544 * _loc6_)
         {
            _loc8_ = _loc8_ / _loc6_;
            param1.o9664 = _loc8_;
            return true;
         }
         return false;
      }
      
      override public function o7379(param1:o1693, param2:o12362) : void
      {
         var _loc5_:o9729 = param2.o13707;
         var _loc4_:Number = param2.position.x + (_loc5_.o19549.x * o17446.x + _loc5_.o20685.x * o17446.y);
         var _loc3_:Number = param2.position.y + (_loc5_.o19549.y * o17446.x + _loc5_.o20685.y * o17446.y);
         param1.o8628.o18596(_loc4_ - o4879,_loc3_ - o4879);
         param1.o18391.o18596(_loc4_ + o4879,_loc3_ + o4879);
      }
      
      override public function o14604(param1:o14127, param2:Number) : void
      {
         param1.o7191 = param2 * 3.14159265358979 * o4879 * o4879;
         param1.o1906.o13101(o17446);
         param1.I = param1.o7191 * (0.5 * o4879 * o4879 + (o17446.x * o17446.x + o17446.y * o17446.y));
      }
      
      override public function o5496(param1:o20021, param2:Number, param3:o12362, param4:o20021) : Number
      {
         var _loc8_:o20021 = o10852.o1026(param3,o17446);
         var _loc7_:Number = -(o10852.o10111(param1,_loc8_) - param2);
         if(_loc7_ < -o4879 + Number.MIN_VALUE)
         {
            return 0;
         }
         if(_loc7_ > o4879)
         {
            param4.o13101(_loc8_);
            return 3.14159265358979 * o4879 * o4879;
         }
         var _loc10_:Number = o4879 * o4879;
         var _loc5_:Number = _loc7_ * _loc7_;
         var _loc9_:Number = _loc10_ * (Math.asin(_loc7_ / o4879) + 3.14159265358979 / 2) + _loc7_ * Math.sqrt(_loc10_ - _loc5_);
         var _loc6_:Number = -0.666666666666667 * Math.pow(_loc10_ - _loc5_,1.5) / _loc9_;
         param4.x = _loc8_.x + param1.x * _loc6_;
         param4.y = _loc8_.y + param1.y * _loc6_;
         return _loc9_;
      }
      
      public function o17927() : o20021
      {
         return o17446;
      }
      
      public function o12888(param1:o20021) : void
      {
         o17446.o13101(param1);
      }
      
      public function o10060() : Number
      {
         return o4879;
      }
      
      public function o16580(param1:Number) : void
      {
         o4879 = param1;
      }
      
      public function initialise(param1:Number = 0) : void
      {
         o4879 = param1;
      }
   }
}
