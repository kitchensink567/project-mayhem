package
{
   class o16947
   {
      
      public static const o19497:int = 1;
      
      public static const o573:int = 2;
      
      public static const o4659:int = 4;
       
      
      public var o3583:o10231;
      
      public var o9757:o10231;
      
      public var o3804:int;
      
      public var o11266:o20021;
      
      public var o2837:o20021;
      
      function o16947()
      {
         o11266 = new o20021();
         o2837 = new o20021();
         super();
      }
      
      public function o3836(param1:o7731, param2:o10231, param3:o12362, param4:o10231, param5:o12362) : void
      {
         var _loc33_:* = null;
         var _loc18_:* = null;
         var _loc28_:* = null;
         var _loc10_:* = null;
         var _loc23_:* = null;
         var _loc22_:* = null;
         var _loc15_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc13_:* = null;
         var _loc29_:* = null;
         var _loc17_:* = NaN;
         var _loc34_:Number = NaN;
         var _loc32_:* = null;
         var _loc7_:* = null;
         var _loc19_:* = null;
         var _loc24_:* = null;
         var _loc25_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc30_:* = null;
         var _loc16_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc9_:* = NaN;
         o3583 = param2;
         o9757 = param4;
         var _loc12_:int = param1.o16191;
         o14980.o12199(0 < _loc12_ && _loc12_ < 3);
         if(_loc12_ == 1)
         {
            o3804 = 1;
            _loc33_ = o3583.o5529(param1.o5855[0]);
            _loc10_ = o9757.o5529(param1.o16426[0]);
            _loc29_ = _loc33_;
            _loc13_ = param3.o13707;
            _loc15_ = param3.position.x + (_loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y);
            _loc8_ = param3.position.y + (_loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y);
            _loc29_ = _loc10_;
            _loc13_ = param5.o13707;
            _loc21_ = param5.position.x + (_loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y);
            _loc6_ = param5.position.y + (_loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y);
            o2837.x = _loc21_ - _loc15_;
            o2837.y = _loc6_ - _loc8_;
            o2837.o5775();
         }
         else if(param1.o16426[0] == param1.o16426[1])
         {
            o3804 = 2;
            _loc18_ = o3583.o5529(param1.o5855[0]);
            _loc28_ = o3583.o5529(param1.o5855[1]);
            _loc10_ = o9757.o5529(param1.o16426[0]);
            o11266.x = 0.5 * (_loc18_.x + _loc28_.x);
            o11266.y = 0.5 * (_loc18_.y + _loc28_.y);
            o2837 = o10852.o9716(o10852.o6072(_loc28_,_loc18_),1);
            o2837.o5775();
            _loc29_ = o2837;
            _loc13_ = param3.o13707;
            _loc31_ = _loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y;
            _loc14_ = _loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y;
            _loc29_ = o11266;
            _loc13_ = param3.o13707;
            _loc15_ = param3.position.x + (_loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y);
            _loc8_ = param3.position.y + (_loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y);
            _loc29_ = _loc10_;
            _loc13_ = param5.o13707;
            _loc21_ = param5.position.x + (_loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y);
            _loc6_ = param5.position.y + (_loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y);
            _loc17_ = Number((_loc21_ - _loc15_) * _loc31_ + (_loc6_ - _loc8_) * _loc14_);
            if(_loc17_ < 0)
            {
               o2837.o11223();
            }
         }
         else if(param1.o5855[0] == param1.o5855[0])
         {
            o3804 = 4;
            _loc23_ = o9757.o5529(param1.o16426[0]);
            _loc22_ = o9757.o5529(param1.o16426[1]);
            _loc33_ = o3583.o5529(param1.o5855[0]);
            o11266.x = 0.5 * (_loc23_.x + _loc22_.x);
            o11266.y = 0.5 * (_loc23_.y + _loc22_.y);
            o2837 = o10852.o9716(o10852.o6072(_loc22_,_loc23_),1);
            o2837.o5775();
            _loc29_ = o2837;
            _loc13_ = param5.o13707;
            _loc31_ = _loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y;
            _loc14_ = _loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y;
            _loc29_ = o11266;
            _loc13_ = param5.o13707;
            _loc21_ = param5.position.x + (_loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y);
            _loc6_ = param5.position.y + (_loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y);
            _loc29_ = _loc33_;
            _loc13_ = param3.o13707;
            _loc15_ = param3.position.x + (_loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y);
            _loc8_ = param3.position.y + (_loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y);
            _loc17_ = Number((_loc15_ - _loc21_) * _loc31_ + (_loc8_ - _loc6_) * _loc14_);
            if(_loc17_ < 0)
            {
               o2837.o11223();
            }
         }
         else
         {
            _loc18_ = o3583.o5529(param1.o5855[0]);
            _loc28_ = o3583.o5529(param1.o5855[1]);
            _loc23_ = o9757.o5529(param1.o16426[0]);
            _loc22_ = o9757.o5529(param1.o16426[1]);
            _loc32_ = o10852.o1026(param3,_loc33_);
            _loc7_ = o10852.o5842(param3.o13707,o10852.o6072(_loc28_,_loc18_));
            _loc19_ = o10852.o1026(param5,_loc10_);
            _loc24_ = o10852.o5842(param5.o13707,o10852.o6072(_loc22_,_loc23_));
            _loc25_ = _loc7_.x * _loc7_.x + _loc7_.y * _loc7_.y;
            _loc11_ = _loc24_.x * _loc24_.x + _loc24_.y * _loc24_.y;
            _loc30_ = o10852.o6072(_loc24_,_loc7_);
            _loc16_ = _loc7_.x * _loc30_.x + _loc7_.y * _loc30_.y;
            _loc26_ = _loc24_.x * _loc30_.x + _loc24_.y * _loc30_.y;
            _loc20_ = _loc7_.x * _loc24_.x + _loc7_.y * _loc24_.y;
            _loc27_ = _loc25_ * _loc11_ - _loc20_ * _loc20_;
            _loc17_ = 0;
            if(_loc27_ != 0)
            {
               _loc17_ = Number(o10852.o2404((_loc20_ * _loc26_ - _loc16_ * _loc11_) / _loc27_,0,1));
            }
            _loc9_ = Number((_loc20_ * _loc17_ + _loc26_) / _loc11_);
            if(_loc9_ < 0)
            {
               _loc9_ = 0;
               _loc17_ = Number(o10852.o2404((_loc20_ - _loc16_) / _loc25_,0,1));
            }
            _loc33_ = new o20021();
            _loc33_.x = _loc18_.x + _loc17_ * (_loc28_.x - _loc18_.x);
            _loc33_.y = _loc18_.y + _loc17_ * (_loc28_.y - _loc18_.y);
            _loc10_ = new o20021();
            _loc10_.x = _loc23_.x + _loc17_ * (_loc22_.x - _loc23_.x);
            _loc10_.y = _loc23_.y + _loc17_ * (_loc22_.y - _loc23_.y);
            if(_loc17_ == 0 || _loc17_ == 1)
            {
               o3804 = 4;
               o2837 = o10852.o9716(o10852.o6072(_loc22_,_loc23_),1);
               o2837.o5775();
               o11266 = _loc10_;
               _loc29_ = o2837;
               _loc13_ = param5.o13707;
               _loc31_ = _loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y;
               _loc14_ = _loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y;
               _loc29_ = o11266;
               _loc13_ = param5.o13707;
               _loc21_ = param5.position.x + (_loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y);
               _loc6_ = param5.position.y + (_loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y);
               _loc29_ = _loc33_;
               _loc13_ = param3.o13707;
               _loc15_ = param3.position.x + (_loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y);
               _loc8_ = param3.position.y + (_loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y);
               _loc34_ = (_loc15_ - _loc21_) * _loc31_ + (_loc8_ - _loc6_) * _loc14_;
               if(_loc17_ < 0)
               {
                  o2837.o11223();
               }
            }
            else
            {
               o3804 = 2;
               o2837 = o10852.o9716(o10852.o6072(_loc28_,_loc18_),1);
               o11266 = _loc33_;
               _loc29_ = o2837;
               _loc13_ = param3.o13707;
               _loc31_ = _loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y;
               _loc14_ = _loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y;
               _loc29_ = o11266;
               _loc13_ = param3.o13707;
               _loc15_ = param3.position.x + (_loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y);
               _loc8_ = param3.position.y + (_loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y);
               _loc29_ = _loc10_;
               _loc13_ = param5.o13707;
               _loc21_ = param5.position.x + (_loc13_.o19549.x * _loc29_.x + _loc13_.o20685.x * _loc29_.y);
               _loc6_ = param5.position.y + (_loc13_.o19549.y * _loc29_.x + _loc13_.o20685.y * _loc29_.y);
               _loc34_ = (_loc21_ - _loc15_) * _loc31_ + (_loc6_ - _loc8_) * _loc14_;
               if(_loc17_ < 0)
               {
                  o2837.o11223();
               }
            }
         }
      }
      
      public function o5562(param1:o12362, param2:o12362) : Number
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc10_:* = null;
         var _loc9_:* = null;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc7_:Number = NaN;
         var _loc3_:* = null;
         switch(int(o3804) - 1)
         {
            case 0:
               _loc4_ = o10852.o15236(param1.o13707,o2837);
               _loc5_ = o10852.o15236(param2.o13707,o2837.o4847());
               _loc10_ = o3583.o6047(_loc4_);
               _loc9_ = o9757.o6047(_loc5_);
               _loc6_ = o10852.o1026(param1,_loc10_);
               _loc8_ = o10852.o1026(param2,_loc9_);
               _loc7_ = (_loc8_.x - _loc6_.x) * o2837.x + (_loc8_.y - _loc6_.y) * o2837.y;
               return _loc7_;
            case 1:
               _loc3_ = o10852.o5842(param1.o13707,o2837);
               _loc6_ = o10852.o1026(param1,o11266);
               _loc5_ = o10852.o15236(param2.o13707,_loc3_.o4847());
               _loc9_ = o9757.o6047(_loc5_);
               _loc8_ = o10852.o1026(param2,_loc9_);
               _loc7_ = (_loc8_.x - _loc6_.x) * _loc3_.x + (_loc8_.y - _loc6_.y) * _loc3_.y;
               return _loc7_;
            default:
               o14980.o12199(false);
               return 0;
            case 3:
               _loc3_ = o10852.o5842(param2.o13707,o2837);
               _loc8_ = o10852.o1026(param2,o11266);
               _loc4_ = o10852.o15236(param1.o13707,_loc3_.o4847());
               _loc10_ = o3583.o6047(_loc4_);
               _loc6_ = o10852.o1026(param1,_loc10_);
               _loc7_ = (_loc6_.x - _loc8_.x) * _loc3_.x + (_loc6_.y - _loc8_.y) * _loc3_.y;
               return _loc7_;
         }
      }
   }
}
