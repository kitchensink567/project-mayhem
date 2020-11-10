package
{
   use namespace b2internal;
   
   public class o17056 extends o2748
   {
       
      
      private var K:o9729;
      
      private var o20454:o9729;
      
      private var o2127:o9729;
      
      private var o7572:o20021;
      
      private var o15255:o20021;
      
      private var o20844:o20021;
      
      private var o12897:o9729;
      
      private var o8838:o20021;
      
      private var o6183:Number;
      
      private var o16110:Number;
      
      private var o9696:Number;
      
      private var o7402:Number;
      
      private var o4150:Number;
      
      public function o17056(param1:o12838)
      {
         K = new o9729();
         o20454 = new o9729();
         o2127 = new o9729();
         o7572 = new o20021();
         o15255 = new o20021();
         o20844 = new o20021();
         o12897 = new o9729();
         o8838 = new o20021();
         super(param1);
         o15255.o13101(param1.target);
         var _loc4_:Number = o15255.x - o4919.o7718.position.x;
         var _loc2_:Number = o15255.y - o4919.o7718.position.y;
         var _loc3_:o9729 = o4919.o7718.o13707;
         o7572.x = _loc4_ * _loc3_.o19549.x + _loc2_ * _loc3_.o19549.y;
         o7572.y = _loc4_ * _loc3_.o20685.x + _loc2_ * _loc3_.o20685.y;
         o6183 = param1.o4354;
         o20844.o14195();
         o16110 = param1.o15425;
         o9696 = param1.o12647;
         o7402 = 0;
         o4150 = 0;
      }
      
      override public function o17339() : o20021
      {
         return o15255;
      }
      
      override public function o5566() : o20021
      {
         return o4919.o13627(o7572);
      }
      
      override public function o917(param1:Number) : o20021
      {
         return new o20021(param1 * o20844.x,param1 * o20844.y);
      }
      
      override public function o18986(param1:Number) : Number
      {
         return 0;
      }
      
      public function o7781() : o20021
      {
         return o15255;
      }
      
      public function o13772(param1:o20021) : void
      {
         if(o4919.o4675() == false)
         {
            o4919.o17676(true);
         }
         o15255 = param1;
      }
      
      public function o10524() : Number
      {
         return o6183;
      }
      
      public function o15556(param1:Number) : void
      {
         o6183 = param1;
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
         var _loc6_:* = null;
         var _loc9_:o5173 = o4919;
         var _loc11_:Number = _loc9_.o19096();
         var _loc7_:Number = 2 * 3.14159265358979 * o16110;
         var _loc8_:Number = 2 * _loc11_ * o9696 * _loc7_;
         var _loc3_:Number = _loc11_ * _loc7_ * _loc7_;
         o4150 = param1.o10009 * (_loc8_ + param1.o10009 * _loc3_);
         o4150 = o4150 != 0?1 / o4150:0;
         o7402 = param1.o10009 * _loc3_ * o4150;
         _loc6_ = _loc9_.o7718.o13707;
         var _loc4_:* = Number(o7572.x - _loc9_.o19080.o461.x);
         var _loc12_:Number = o7572.y - _loc9_.o19080.o461.y;
         var _loc10_:Number = _loc6_.o19549.x * _loc4_ + _loc6_.o20685.x * _loc12_;
         _loc12_ = _loc6_.o19549.y * _loc4_ + _loc6_.o20685.y * _loc12_;
         _loc4_ = _loc10_;
         var _loc5_:Number = _loc9_.o15412;
         var _loc2_:Number = _loc9_.o4988;
         o20454.o19549.x = _loc5_;
         o20454.o20685.x = 0;
         o20454.o19549.y = 0;
         o20454.o20685.y = _loc5_;
         o2127.o19549.x = _loc2_ * _loc12_ * _loc12_;
         o2127.o20685.x = -_loc2_ * _loc4_ * _loc12_;
         o2127.o19549.y = -_loc2_ * _loc4_ * _loc12_;
         o2127.o20685.y = _loc2_ * _loc4_ * _loc4_;
         K.o19487(o20454);
         K.o7248(o2127);
         K.o19549.x = K.o19549.x + o4150;
         K.o20685.y = K.o20685.y + o4150;
         K.o8330(o12897);
         o8838.x = _loc9_.o19080.o9412.x + _loc4_ - o15255.x;
         o8838.y = _loc9_.o19080.o9412.y + _loc12_ - o15255.y;
         _loc9_.o11516 = _loc9_.o11516 * 0.98;
         o20844.x = o20844.x * param1.o12930;
         o20844.y = o20844.y * param1.o12930;
         _loc9_.o18378.x = _loc9_.o18378.x + _loc5_ * o20844.x;
         _loc9_.o18378.y = _loc9_.o18378.y + _loc5_ * o20844.y;
         _loc9_.o11516 = _loc9_.o11516 + _loc2_ * (_loc4_ * o20844.y - _loc12_ * o20844.x);
      }
      
      override b2internal function o13623(param1:o18851) : void
      {
         var _loc11_:* = null;
         var _loc7_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:o5173 = o4919;
         _loc11_ = _loc6_.o7718.o13707;
         var _loc9_:* = Number(o7572.x - _loc6_.o19080.o461.x);
         var _loc14_:Number = o7572.y - _loc6_.o19080.o461.y;
         _loc7_ = _loc11_.o19549.x * _loc9_ + _loc11_.o20685.x * _loc14_;
         _loc14_ = _loc11_.o19549.y * _loc9_ + _loc11_.o20685.y * _loc14_;
         _loc9_ = _loc7_;
         var _loc4_:Number = _loc6_.o18378.x + -_loc6_.o11516 * _loc14_;
         var _loc3_:Number = _loc6_.o18378.y + _loc6_.o11516 * _loc9_;
         _loc11_ = o12897;
         _loc7_ = _loc4_ + o7402 * o8838.x + o4150 * o20844.x;
         _loc5_ = _loc3_ + o7402 * o8838.y + o4150 * o20844.y;
         var _loc2_:Number = -(_loc11_.o19549.x * _loc7_ + _loc11_.o20685.x * _loc5_);
         var _loc13_:Number = -(_loc11_.o19549.y * _loc7_ + _loc11_.o20685.y * _loc5_);
         var _loc8_:Number = o20844.x;
         var _loc10_:Number = o20844.y;
         o20844.x = o20844.x + _loc2_;
         o20844.y = o20844.y + _loc13_;
         var _loc12_:Number = param1.o10009 * o6183;
         if(o20844.o9792() > _loc12_ * _loc12_)
         {
            o20844.o5041(_loc12_ / o20844.o7648());
         }
         _loc2_ = o20844.x - _loc8_;
         _loc13_ = o20844.y - _loc10_;
         _loc6_.o18378.x = _loc6_.o18378.x + _loc6_.o15412 * _loc2_;
         _loc6_.o18378.y = _loc6_.o18378.y + _loc6_.o15412 * _loc13_;
         _loc6_.o11516 = _loc6_.o11516 + _loc6_.o4988 * (_loc9_ * _loc13_ - _loc14_ * _loc2_);
      }
      
      override b2internal function o18754(param1:Number) : Boolean
      {
         return true;
      }
   }
}
