package
{
   use namespace b2internal;
   
   public class o3362 extends o17586
   {
       
      
      private var o7080:o20021;
      
      b2internal var o15574:o20021;
      
      b2internal var o14749:o20021;
      
      b2internal var o10200:o20021;
      
      b2internal var o12630:o20021;
      
      b2internal var o19151:Number;
      
      b2internal var o17937:o20021;
      
      b2internal var o14924:o20021;
      
      b2internal var o7445:o20021;
      
      b2internal var o2985:o20021;
      
      b2internal var o4020:Boolean;
      
      b2internal var o10470:Boolean;
      
      b2internal var o13810:o3362;
      
      b2internal var o7782:o3362;
      
      public function o3362(param1:o20021, param2:o20021)
      {
         o7080 = new o20021();
         o15574 = new o20021();
         o14749 = new o20021();
         o10200 = new o20021();
         o12630 = new o20021();
         o17937 = new o20021();
         o14924 = new o20021();
         o7445 = new o20021();
         o2985 = new o20021();
         super();
         o3804 = 2;
         o7782 = null;
         o13810 = null;
         o15574 = param1;
         o14749 = param2;
         o14924.o18596(o14749.x - o15574.x,o14749.y - o15574.y);
         o19151 = o14924.o5775();
         o17937.o18596(o14924.y,-o14924.x);
         o10200.o18596(-0.04 * (o17937.x - o14924.x) + o15574.x,-0.04 * (o17937.y - o14924.y) + o15574.y);
         o12630.o18596(-0.04 * (o17937.x + o14924.x) + o14749.x,-0.04 * (o17937.y + o14924.y) + o14749.y);
         o7445 = o17937;
         o2985.o18596(-o17937.x,-o17937.y);
      }
      
      override public function o14704(param1:o12362, param2:o20021) : Boolean
      {
         return false;
      }
      
      override public function o4566(param1:o14303, param2:o13148, param3:o12362) : Boolean
      {
         var _loc15_:* = null;
         var _loc14_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc12_:Number = param2.o14457.x - param2.o12282.x;
         var _loc17_:Number = param2.o14457.y - param2.o12282.y;
         _loc15_ = param3.o13707;
         var _loc16_:Number = param3.position.x + (_loc15_.o19549.x * o15574.x + _loc15_.o20685.x * o15574.y);
         var _loc4_:Number = param3.position.y + (_loc15_.o19549.y * o15574.x + _loc15_.o20685.y * o15574.y);
         var _loc9_:Number = param3.position.y + (_loc15_.o19549.y * o14749.x + _loc15_.o20685.y * o14749.y) - _loc4_;
         var _loc8_:Number = -(param3.position.x + (_loc15_.o19549.x * o14749.x + _loc15_.o20685.x * o14749.y) - _loc16_);
         var _loc5_:Number = 100 * Number.MIN_VALUE;
         var _loc11_:Number = -(_loc12_ * _loc9_ + _loc17_ * _loc8_);
         if(_loc11_ > _loc5_)
         {
            _loc14_ = param2.o12282.x - _loc16_;
            _loc7_ = param2.o12282.y - _loc4_;
            _loc10_ = _loc14_ * _loc9_ + _loc7_ * _loc8_;
            if(0 <= _loc10_ && _loc10_ <= param2.o544 * _loc11_)
            {
               _loc13_ = -_loc12_ * _loc7_ + _loc17_ * _loc14_;
               if(-_loc5_ * _loc11_ <= _loc13_ && _loc13_ <= _loc11_ * (1 + _loc5_))
               {
                  _loc10_ = _loc10_ / _loc11_;
                  param1.o9664 = _loc10_;
                  _loc6_ = Math.sqrt(_loc9_ * _loc9_ + _loc8_ * _loc8_);
                  param1.o1654.x = _loc9_ / _loc6_;
                  param1.o1654.y = _loc8_ / _loc6_;
                  return true;
               }
            }
         }
         return false;
      }
      
      override public function o7379(param1:o1693, param2:o12362) : void
      {
         var _loc5_:o9729 = param2.o13707;
         var _loc6_:Number = param2.position.x + (_loc5_.o19549.x * o15574.x + _loc5_.o20685.x * o15574.y);
         var _loc3_:Number = param2.position.y + (_loc5_.o19549.y * o15574.x + _loc5_.o20685.y * o15574.y);
         var _loc7_:Number = param2.position.x + (_loc5_.o19549.x * o14749.x + _loc5_.o20685.x * o14749.y);
         var _loc4_:Number = param2.position.y + (_loc5_.o19549.y * o14749.x + _loc5_.o20685.y * o14749.y);
         if(_loc6_ < _loc7_)
         {
            param1.o8628.x = _loc6_;
            param1.o18391.x = _loc7_;
         }
         else
         {
            param1.o8628.x = _loc7_;
            param1.o18391.x = _loc6_;
         }
         if(_loc3_ < _loc4_)
         {
            param1.o8628.y = _loc3_;
            param1.o18391.y = _loc4_;
         }
         else
         {
            param1.o8628.y = _loc4_;
            param1.o18391.y = _loc3_;
         }
      }
      
      override public function o14604(param1:o14127, param2:Number) : void
      {
         param1.o7191 = 0;
         param1.o1906.o13101(o15574);
         param1.I = 0;
      }
      
      override public function o5496(param1:o20021, param2:Number, param3:o12362, param4:o20021) : Number
      {
         var _loc7_:o20021 = new o20021(param1.x * param2,param1.y * param2);
         var _loc6_:o20021 = o10852.o1026(param3,o15574);
         var _loc8_:o20021 = o10852.o1026(param3,o14749);
         var _loc9_:Number = o10852.o10111(param1,_loc6_) - param2;
         var _loc5_:Number = o10852.o10111(param1,_loc8_) - param2;
         if(_loc9_ > 0)
         {
            if(_loc5_ > 0)
            {
               return 0;
            }
            _loc6_.x = -_loc5_ / (_loc9_ - _loc5_) * _loc6_.x + _loc9_ / (_loc9_ - _loc5_) * _loc8_.x;
            _loc6_.y = -_loc5_ / (_loc9_ - _loc5_) * _loc6_.y + _loc9_ / (_loc9_ - _loc5_) * _loc8_.y;
         }
         else if(_loc5_ > 0)
         {
            _loc8_.x = -_loc5_ / (_loc9_ - _loc5_) * _loc6_.x + _loc9_ / (_loc9_ - _loc5_) * _loc8_.x;
            _loc8_.y = -_loc5_ / (_loc9_ - _loc5_) * _loc6_.y + _loc9_ / (_loc9_ - _loc5_) * _loc8_.y;
         }
         param4.x = (_loc7_.x + _loc6_.x + _loc8_.x) / 3;
         param4.y = (_loc7_.y + _loc6_.y + _loc8_.y) / 3;
         return 0.5 * ((_loc6_.x - _loc7_.x) * (_loc8_.y - _loc7_.y) - (_loc6_.y - _loc7_.y) * (_loc8_.x - _loc7_.x));
      }
      
      public function o7967() : Number
      {
         return o19151;
      }
      
      public function o15097() : o20021
      {
         return o15574;
      }
      
      public function o6600() : o20021
      {
         return o14749;
      }
      
      public function o14422() : o20021
      {
         return o10200;
      }
      
      public function o14920() : o20021
      {
         return o12630;
      }
      
      public function o19733() : o20021
      {
         return o17937;
      }
      
      public function o7926() : o20021
      {
         return o14924;
      }
      
      public function o16289() : o20021
      {
         return o7445;
      }
      
      public function o19594() : o20021
      {
         return o2985;
      }
      
      public function o10701() : Boolean
      {
         return o4020;
      }
      
      public function o16150() : Boolean
      {
         return o10470;
      }
      
      public function o4955(param1:o12362) : o20021
      {
         var _loc2_:o9729 = param1.o13707;
         return new o20021(param1.position.x + (_loc2_.o19549.x * o10200.x + _loc2_.o20685.x * o10200.y),param1.position.y + (_loc2_.o19549.y * o10200.x + _loc2_.o20685.y * o10200.y));
      }
      
      public function o6852() : o3362
      {
         return o13810;
      }
      
      public function o8863() : o3362
      {
         return o7782;
      }
      
      public function o20584(param1:o12362, param2:Number, param3:Number) : o20021
      {
         var _loc6_:o9729 = param1.o13707;
         var _loc7_:Number = param1.position.x + (_loc6_.o19549.x * o10200.x + _loc6_.o20685.x * o10200.y);
         var _loc4_:Number = param1.position.y + (_loc6_.o19549.y * o10200.x + _loc6_.o20685.y * o10200.y);
         var _loc8_:Number = param1.position.x + (_loc6_.o19549.x * o12630.x + _loc6_.o20685.x * o12630.y);
         var _loc5_:Number = param1.position.y + (_loc6_.o19549.y * o12630.x + _loc6_.o20685.y * o12630.y);
         if(_loc7_ * param2 + _loc4_ * param3 > _loc8_ * param2 + _loc5_ * param3)
         {
            o7080.x = _loc7_;
            o7080.y = _loc4_;
         }
         else
         {
            o7080.x = _loc8_;
            o7080.y = _loc5_;
         }
         return o7080;
      }
      
      b2internal function o1338(param1:o3362, param2:o20021, param3:o20021, param4:Boolean) : void
      {
         o7782 = param1;
         o10200 = param2;
         o7445 = param3;
         o4020 = param4;
      }
      
      b2internal function o14408(param1:o3362, param2:o20021, param3:o20021, param4:Boolean) : void
      {
         o13810 = param1;
         o12630 = param2;
         o2985 = param3;
         o10470 = param4;
      }
   }
}
