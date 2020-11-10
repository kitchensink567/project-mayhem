package
{
   use namespace b2internal;
   
   public class o11710
   {
      
      public static const o16014:uint = 255;
      
      private static var o7503:Vector.<o19936> = o15279();
      
      private static var o7542:Vector.<o19936> = o15279();
      
      private static var o10906:Vector.<o19936> = o15279();
      
      private static var o14784:Vector.<int> = new Vector.<int>(1);
      
      private static var o5524:Vector.<int> = new Vector.<int>(1);
      
      private static var o9803:o20021 = new o20021();
      
      private static var o305:o20021 = new o20021();
      
      private static var o13733:o20021 = new o20021();
      
      private static var o1080:o20021 = new o20021();
      
      private static var o8010:o20021 = new o20021();
      
      private static var o17183:o20021 = new o20021();
      
      private static var o6825:o20021 = new o20021();
      
      private static var o4779:o20021 = new o20021();
      
      private static var o6090:o20021 = new o20021();
       
      
      public function o11710()
      {
         super();
      }
      
      public static function o7212(param1:Vector.<o19936>, param2:Vector.<o19936>, param3:o20021, param4:Number) : int
      {
         var _loc8_:* = null;
         var _loc5_:Number = NaN;
         var _loc9_:* = null;
         var _loc7_:* = null;
         var _loc12_:int = 0;
         _loc8_ = param2[0];
         var _loc11_:o20021 = _loc8_.o5121;
         _loc8_ = param2[1];
         var _loc13_:o20021 = _loc8_.o5121;
         var _loc6_:Number = param3.x * _loc11_.x + param3.y * _loc11_.y - param4;
         var _loc10_:Number = param3.x * _loc13_.x + param3.y * _loc13_.y - param4;
         if(_loc6_ <= 0)
         {
            _loc12_++;
            param1[_loc12_].o18596(param2[0]);
         }
         if(_loc10_ <= 0)
         {
            _loc12_++;
            param1[_loc12_].o18596(param2[1]);
         }
         if(_loc6_ * _loc10_ < 0)
         {
            _loc5_ = _loc6_ / (_loc6_ - _loc10_);
            _loc8_ = param1[_loc12_];
            _loc9_ = _loc8_.o5121;
            _loc9_.x = _loc11_.x + _loc5_ * (_loc13_.x - _loc11_.x);
            _loc9_.y = _loc11_.y + _loc5_ * (_loc13_.y - _loc11_.y);
            _loc8_ = param1[_loc12_];
            if(_loc6_ > 0)
            {
               _loc7_ = param2[0];
               _loc8_.id = _loc7_.id;
            }
            else
            {
               _loc7_ = param2[1];
               _loc8_.id = _loc7_.id;
            }
            _loc12_++;
         }
         return _loc12_;
      }
      
      public static function o4773(param1:o13884, param2:o12362, param3:int, param4:o13884, param5:o12362) : Number
      {
         var _loc15_:* = null;
         var _loc25_:* = null;
         var _loc21_:int = 0;
         var _loc24_:Number = NaN;
         var _loc14_:int = param1.o11880;
         var _loc20_:Vector.<o20021> = param1.o17252;
         var _loc13_:Vector.<o20021> = param1.o16671;
         var _loc8_:int = param4.o11880;
         var _loc17_:Vector.<o20021> = param4.o17252;
         _loc15_ = param2.o13707;
         _loc25_ = _loc13_[param3];
         var _loc19_:Number = _loc15_.o19549.x * _loc25_.x + _loc15_.o20685.x * _loc25_.y;
         var _loc9_:Number = _loc15_.o19549.y * _loc25_.x + _loc15_.o20685.y * _loc25_.y;
         _loc15_ = param5.o13707;
         var _loc18_:Number = _loc15_.o19549.x * _loc19_ + _loc15_.o19549.y * _loc9_;
         var _loc22_:Number = _loc15_.o20685.x * _loc19_ + _loc15_.o20685.y * _loc9_;
         var _loc23_:* = 0;
         var _loc6_:* = 1.79769313486232e308;
         _loc21_ = 0;
         while(_loc21_ < _loc8_)
         {
            _loc25_ = _loc17_[_loc21_];
            _loc24_ = _loc25_.x * _loc18_ + _loc25_.y * _loc22_;
            if(_loc24_ < _loc6_)
            {
               _loc6_ = _loc24_;
               _loc23_ = _loc21_;
            }
            _loc21_++;
         }
         _loc25_ = _loc20_[param3];
         _loc15_ = param2.o13707;
         var _loc16_:Number = param2.position.x + (_loc15_.o19549.x * _loc25_.x + _loc15_.o20685.x * _loc25_.y);
         var _loc7_:Number = param2.position.y + (_loc15_.o19549.y * _loc25_.x + _loc15_.o20685.y * _loc25_.y);
         _loc25_ = _loc17_[_loc23_];
         _loc15_ = param5.o13707;
         var _loc12_:Number = param5.position.x + (_loc15_.o19549.x * _loc25_.x + _loc15_.o20685.x * _loc25_.y);
         var _loc11_:Number = param5.position.y + (_loc15_.o19549.y * _loc25_.x + _loc15_.o20685.y * _loc25_.y);
         _loc12_ = _loc12_ - _loc16_;
         _loc11_ = _loc11_ - _loc7_;
         var _loc10_:Number = _loc12_ * _loc19_ + _loc11_ * _loc9_;
         return _loc10_;
      }
      
      public static function o3513(param1:Vector.<int>, param2:o13884, param3:o12362, param4:o13884, param5:o12362) : Number
      {
         var _loc22_:* = null;
         var _loc13_:* = null;
         var _loc19_:int = 0;
         var _loc21_:Number = NaN;
         var _loc17_:* = 0;
         var _loc8_:* = NaN;
         var _loc25_:int = 0;
         var _loc11_:int = param2.o11880;
         var _loc10_:Vector.<o20021> = param2.o16671;
         _loc13_ = param5.o13707;
         _loc22_ = param4.o8649;
         var _loc9_:Number = param5.position.x + (_loc13_.o19549.x * _loc22_.x + _loc13_.o20685.x * _loc22_.y);
         var _loc7_:Number = param5.position.y + (_loc13_.o19549.y * _loc22_.x + _loc13_.o20685.y * _loc22_.y);
         _loc13_ = param3.o13707;
         _loc22_ = param2.o8649;
         _loc9_ = _loc9_ - (param3.position.x + (_loc13_.o19549.x * _loc22_.x + _loc13_.o20685.x * _loc22_.y));
         _loc7_ = _loc7_ - (param3.position.y + (_loc13_.o19549.y * _loc22_.x + _loc13_.o20685.y * _loc22_.y));
         var _loc6_:Number = _loc9_ * param3.o13707.o19549.x + _loc7_ * param3.o13707.o19549.y;
         var _loc15_:Number = _loc9_ * param3.o13707.o20685.x + _loc7_ * param3.o13707.o20685.y;
         var _loc24_:* = 0;
         var _loc18_:* = -1.79769313486232e308;
         _loc19_ = 0;
         while(_loc19_ < _loc11_)
         {
            _loc22_ = _loc10_[_loc19_];
            _loc21_ = _loc22_.x * _loc6_ + _loc22_.y * _loc15_;
            if(_loc21_ > _loc18_)
            {
               _loc18_ = _loc21_;
               _loc24_ = _loc19_;
            }
            _loc19_++;
         }
         var _loc16_:Number = o4773(param2,param3,_loc24_,param4,param5);
         var _loc14_:int = _loc24_ - 1 >= 0?_loc24_ - 1:_loc11_ - 1;
         var _loc12_:Number = o4773(param2,param3,_loc14_,param4,param5);
         var _loc20_:int = _loc24_ + 1 < _loc11_?_loc24_ + 1:0;
         var _loc23_:Number = o4773(param2,param3,_loc20_,param4,param5);
         if(_loc12_ > _loc16_ && _loc12_ > _loc23_)
         {
            _loc25_ = -1;
            _loc17_ = _loc14_;
            _loc8_ = _loc12_;
         }
         else if(_loc23_ > _loc16_)
         {
            _loc25_ = 1;
            _loc17_ = _loc20_;
            _loc8_ = _loc23_;
         }
         else
         {
            param1[0] = _loc24_;
            return _loc16_;
         }
         while(true)
         {
            if(_loc25_ == -1)
            {
               _loc24_ = int(_loc17_ - 1 >= 0?_loc17_ - 1:_loc11_ - 1);
            }
            else
            {
               _loc24_ = int(_loc17_ + 1 < _loc11_?_loc17_ + 1:0);
            }
            _loc16_ = o4773(param2,param3,_loc24_,param4,param5);
            if(_loc16_ > _loc8_)
            {
               _loc17_ = _loc24_;
               _loc8_ = _loc16_;
               continue;
            }
            break;
         }
         param1[0] = _loc17_;
         return _loc8_;
      }
      
      public static function o12232(param1:Vector.<o19936>, param2:o13884, param3:o12362, param4:int, param5:o13884, param6:o12362) : void
      {
         var _loc21_:* = null;
         var _loc19_:* = null;
         var _loc10_:int = 0;
         var _loc16_:Number = NaN;
         var _loc20_:* = null;
         var _loc17_:int = param2.o11880;
         var _loc18_:Vector.<o20021> = param2.o16671;
         var _loc8_:int = param5.o11880;
         var _loc22_:Vector.<o20021> = param5.o17252;
         var _loc15_:Vector.<o20021> = param5.o16671;
         _loc21_ = param3.o13707;
         _loc19_ = _loc18_[param4];
         var _loc23_:* = Number(_loc21_.o19549.x * _loc19_.x + _loc21_.o20685.x * _loc19_.y);
         var _loc13_:Number = _loc21_.o19549.y * _loc19_.x + _loc21_.o20685.y * _loc19_.y;
         _loc21_ = param6.o13707;
         var _loc14_:Number = _loc21_.o19549.x * _loc23_ + _loc21_.o19549.y * _loc13_;
         _loc13_ = _loc21_.o20685.x * _loc23_ + _loc21_.o20685.y * _loc13_;
         _loc23_ = _loc14_;
         var _loc12_:* = 0;
         var _loc7_:* = 1.79769313486232e308;
         _loc10_ = 0;
         while(_loc10_ < _loc8_)
         {
            _loc19_ = _loc15_[_loc10_];
            _loc16_ = _loc23_ * _loc19_.x + _loc13_ * _loc19_.y;
            if(_loc16_ < _loc7_)
            {
               _loc7_ = _loc16_;
               _loc12_ = _loc10_;
            }
            _loc10_++;
         }
         var _loc11_:* = _loc12_;
         var _loc9_:int = _loc11_ + 1 < _loc8_?_loc11_ + 1:0;
         _loc20_ = param1[0];
         _loc19_ = _loc22_[_loc11_];
         _loc21_ = param6.o13707;
         _loc20_.o5121.x = param6.position.x + (_loc21_.o19549.x * _loc19_.x + _loc21_.o20685.x * _loc19_.y);
         _loc20_.o5121.y = param6.position.y + (_loc21_.o19549.y * _loc19_.x + _loc21_.o20685.y * _loc19_.y);
         _loc20_.id.o19305.o16983 = param4;
         _loc20_.id.o19305.o5061 = _loc11_;
         _loc20_.id.o19305.o10878 = 0;
         _loc20_ = param1[1];
         _loc19_ = _loc22_[_loc9_];
         _loc21_ = param6.o13707;
         _loc20_.o5121.x = param6.position.x + (_loc21_.o19549.x * _loc19_.x + _loc21_.o20685.x * _loc19_.y);
         _loc20_.o5121.y = param6.position.y + (_loc21_.o19549.y * _loc19_.x + _loc21_.o20685.y * _loc19_.y);
         _loc20_.id.o19305.o16983 = param4;
         _loc20_.id.o19305.o5061 = _loc9_;
         _loc20_.id.o19305.o10878 = 1;
      }
      
      private static function o15279() : Vector.<o19936>
      {
         var _loc1_:Vector.<o19936> = new Vector.<o19936>(2);
         _loc1_[0] = new o19936();
         _loc1_[1] = new o19936();
         return _loc1_;
      }
      
      public static function o3090(param1:o19967, param2:o13884, param3:o12362, param4:o13884, param5:o12362) : void
      {
         var _loc21_:* = null;
         var _loc39_:* = null;
         var _loc16_:* = null;
         var _loc25_:* = null;
         var _loc45_:* = null;
         var _loc10_:* = 0;
         var _loc38_:* = 0;
         var _loc28_:* = NaN;
         _loc28_ = 0.98;
         var _loc26_:* = NaN;
         _loc26_ = 0.001;
         var _loc24_:* = null;
         var _loc11_:* = null;
         var _loc41_:int = 0;
         var _loc33_:int = 0;
         var _loc8_:Number = NaN;
         var _loc44_:* = null;
         var _loc18_:Number = NaN;
         var _loc32_:Number = NaN;
         param1.o13593 = 0;
         var _loc42_:Number = param2.o4879 + param4.o4879;
         var _loc31_:int = 0;
         o14784[0] = _loc31_;
         var _loc7_:Number = o3513(o14784,param2,param3,param4,param5);
         _loc31_ = o14784[0];
         if(_loc7_ > _loc42_)
         {
            return;
         }
         var _loc40_:int = 0;
         o5524[0] = _loc40_;
         var _loc17_:Number = o3513(o5524,param4,param5,param2,param3);
         _loc40_ = o5524[0];
         if(_loc17_ > _loc42_)
         {
            return;
         }
         if(_loc17_ > 0.98 * _loc7_ + 0.001)
         {
            _loc39_ = param4;
            _loc16_ = param2;
            _loc25_ = param5;
            _loc45_ = param3;
            _loc10_ = _loc40_;
            param1.o3804 = 4;
            _loc38_ = uint(1);
         }
         else
         {
            _loc39_ = param2;
            _loc16_ = param4;
            _loc25_ = param3;
            _loc45_ = param5;
            _loc10_ = _loc31_;
            param1.o3804 = 2;
            _loc38_ = uint(0);
         }
         var _loc43_:Vector.<o19936> = o7503;
         o12232(_loc43_,_loc39_,_loc25_,_loc10_,_loc16_,_loc45_);
         var _loc22_:int = _loc39_.o11880;
         var _loc30_:Vector.<o20021> = _loc39_.o17252;
         var _loc35_:o20021 = _loc30_[_loc10_];
         if(_loc10_ + 1 < _loc22_)
         {
            _loc11_ = _loc30_[int(_loc10_ + 1)];
         }
         else
         {
            _loc11_ = _loc30_[0];
         }
         var _loc13_:o20021 = o9803;
         _loc13_.o18596(_loc11_.x - _loc35_.x,_loc11_.y - _loc35_.y);
         _loc13_.o5775();
         var _loc15_:o20021 = o305;
         _loc15_.x = _loc13_.y;
         _loc15_.y = -_loc13_.x;
         var _loc20_:o20021 = o13733;
         _loc20_.o18596(0.5 * (_loc35_.x + _loc11_.x),0.5 * (_loc35_.y + _loc11_.y));
         var _loc12_:o20021 = o8010;
         _loc24_ = _loc25_.o13707;
         _loc12_.x = _loc24_.o19549.x * _loc13_.x + _loc24_.o20685.x * _loc13_.y;
         _loc12_.y = _loc24_.o19549.y * _loc13_.x + _loc24_.o20685.y * _loc13_.y;
         var _loc9_:o20021 = o17183;
         _loc9_.x = -_loc12_.x;
         _loc9_.y = -_loc12_.y;
         var _loc6_:o20021 = o1080;
         _loc6_.x = _loc12_.y;
         _loc6_.y = -_loc12_.x;
         var _loc14_:o20021 = o6825;
         var _loc36_:o20021 = o4779;
         _loc14_.x = _loc25_.position.x + (_loc24_.o19549.x * _loc35_.x + _loc24_.o20685.x * _loc35_.y);
         _loc14_.y = _loc25_.position.y + (_loc24_.o19549.y * _loc35_.x + _loc24_.o20685.y * _loc35_.y);
         _loc36_.x = _loc25_.position.x + (_loc24_.o19549.x * _loc11_.x + _loc24_.o20685.x * _loc11_.y);
         _loc36_.y = _loc25_.position.y + (_loc24_.o19549.y * _loc11_.x + _loc24_.o20685.y * _loc11_.y);
         var _loc19_:Number = _loc6_.x * _loc14_.x + _loc6_.y * _loc14_.y;
         var _loc37_:Number = -_loc12_.x * _loc14_.x - _loc12_.y * _loc14_.y + _loc42_;
         var _loc29_:Number = _loc12_.x * _loc36_.x + _loc12_.y * _loc36_.y + _loc42_;
         var _loc23_:Vector.<o19936> = o7542;
         var _loc34_:Vector.<o19936> = o10906;
         _loc41_ = o7212(_loc23_,_loc43_,_loc9_,_loc37_);
         if(_loc41_ < 2)
         {
            return;
         }
         _loc41_ = o7212(_loc34_,_loc23_,_loc12_,_loc29_);
         if(_loc41_ < 2)
         {
            return;
         }
         param1.o17991.o13101(_loc15_);
         param1.o11266.o13101(_loc20_);
         var _loc27_:int = 0;
         _loc33_ = 0;
         while(_loc33_ < 2)
         {
            _loc21_ = _loc34_[_loc33_];
            _loc8_ = _loc6_.x * _loc21_.o5121.x + _loc6_.y * _loc21_.o5121.y - _loc19_;
            if(_loc8_ <= _loc42_)
            {
               _loc44_ = param1.o6942[_loc27_];
               _loc24_ = _loc45_.o13707;
               _loc18_ = _loc21_.o5121.x - _loc45_.position.x;
               _loc32_ = _loc21_.o5121.y - _loc45_.position.y;
               _loc44_.o11266.x = _loc18_ * _loc24_.o19549.x + _loc32_ * _loc24_.o19549.y;
               _loc44_.o11266.y = _loc18_ * _loc24_.o20685.x + _loc32_ * _loc24_.o20685.y;
               _loc44_.o2773.o18596(_loc21_.id);
               _loc44_.o2773.o19305.o5181 = _loc38_;
               _loc27_++;
            }
            _loc33_++;
         }
         param1.o13593 = _loc27_;
      }
      
      public static function o6032(param1:o19967, param2:o15114, param3:o12362, param4:o15114, param5:o12362) : void
      {
         var _loc14_:* = null;
         var _loc13_:* = null;
         param1.o13593 = 0;
         _loc14_ = param3.o13707;
         _loc13_ = param2.o17446;
         var _loc9_:Number = param3.position.x + (_loc14_.o19549.x * _loc13_.x + _loc14_.o20685.x * _loc13_.y);
         var _loc10_:Number = param3.position.y + (_loc14_.o19549.y * _loc13_.x + _loc14_.o20685.y * _loc13_.y);
         _loc14_ = param5.o13707;
         _loc13_ = param4.o17446;
         var _loc12_:Number = param5.position.x + (_loc14_.o19549.x * _loc13_.x + _loc14_.o20685.x * _loc13_.y);
         var _loc15_:Number = param5.position.y + (_loc14_.o19549.y * _loc13_.x + _loc14_.o20685.y * _loc13_.y);
         var _loc8_:Number = _loc12_ - _loc9_;
         var _loc6_:Number = _loc15_ - _loc10_;
         var _loc11_:Number = _loc8_ * _loc8_ + _loc6_ * _loc6_;
         var _loc7_:Number = param2.o4879 + param4.o4879;
         if(_loc11_ > _loc7_ * _loc7_)
         {
            return;
         }
         param1.o3804 = 1;
         param1.o11266.o13101(param2.o17446);
         param1.o17991.o14195();
         param1.o13593 = 1;
         param1.o6942[0].o11266.o13101(param4.o17446);
         param1.o6942[0].o2773.key = 0;
      }
      
      public static function o14395(param1:o19967, param2:o13884, param3:o12362, param4:o15114, param5:o12362) : void
      {
         var _loc9_:* = null;
         var _loc10_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc25_:* = null;
         var _loc14_:* = null;
         var _loc12_:Number = NaN;
         var _loc20_:int = 0;
         var _loc15_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc23_:Number = NaN;
         param1.o13593 = 0;
         _loc14_ = param5.o13707;
         _loc25_ = param4.o17446;
         var _loc27_:Number = param5.position.x + (_loc14_.o19549.x * _loc25_.x + _loc14_.o20685.x * _loc25_.y);
         var _loc11_:Number = param5.position.y + (_loc14_.o19549.y * _loc25_.x + _loc14_.o20685.y * _loc25_.y);
         _loc10_ = _loc27_ - param3.position.x;
         _loc6_ = _loc11_ - param3.position.y;
         _loc14_ = param3.o13707;
         var _loc18_:Number = _loc10_ * _loc14_.o19549.x + _loc6_ * _loc14_.o19549.y;
         var _loc16_:Number = _loc10_ * _loc14_.o20685.x + _loc6_ * _loc14_.o20685.y;
         var _loc28_:* = 0;
         var _loc8_:* = -1.79769313486232e308;
         var _loc21_:Number = param2.o4879 + param4.o4879;
         var _loc7_:int = param2.o11880;
         var _loc33_:Vector.<o20021> = param2.o17252;
         var _loc32_:Vector.<o20021> = param2.o16671;
         _loc20_ = 0;
         while(_loc20_ < _loc7_)
         {
            _loc25_ = _loc33_[_loc20_];
            _loc10_ = _loc18_ - _loc25_.x;
            _loc6_ = _loc16_ - _loc25_.y;
            _loc25_ = _loc32_[_loc20_];
            _loc15_ = _loc25_.x * _loc10_ + _loc25_.y * _loc6_;
            if(_loc15_ > _loc21_)
            {
               return;
            }
            if(_loc15_ > _loc8_)
            {
               _loc8_ = _loc15_;
               _loc28_ = _loc20_;
            }
            _loc20_++;
         }
         var _loc26_:* = _loc28_;
         var _loc19_:int = _loc26_ + 1 < _loc7_?_loc26_ + 1:0;
         var _loc13_:o20021 = _loc33_[_loc26_];
         var _loc22_:o20021 = _loc33_[_loc19_];
         if(_loc8_ < Number.MIN_VALUE)
         {
            param1.o13593 = 1;
            param1.o3804 = 2;
            param1.o17991.o13101(_loc32_[_loc28_]);
            param1.o11266.x = 0.5 * (_loc13_.x + _loc22_.x);
            param1.o11266.y = 0.5 * (_loc13_.y + _loc22_.y);
            param1.o6942[0].o11266.o13101(param4.o17446);
            param1.o6942[0].o2773.key = 0;
            return;
         }
         var _loc30_:Number = (_loc18_ - _loc13_.x) * (_loc22_.x - _loc13_.x) + (_loc16_ - _loc13_.y) * (_loc22_.y - _loc13_.y);
         var _loc29_:Number = (_loc18_ - _loc22_.x) * (_loc13_.x - _loc22_.x) + (_loc16_ - _loc22_.y) * (_loc13_.y - _loc22_.y);
         if(_loc30_ <= 0)
         {
            if((_loc18_ - _loc13_.x) * (_loc18_ - _loc13_.x) + (_loc16_ - _loc13_.y) * (_loc16_ - _loc13_.y) > _loc21_ * _loc21_)
            {
               return;
            }
            param1.o13593 = 1;
            param1.o3804 = 2;
            param1.o17991.x = _loc18_ - _loc13_.x;
            param1.o17991.y = _loc16_ - _loc13_.y;
            param1.o17991.o5775();
            param1.o11266.o13101(_loc13_);
            param1.o6942[0].o11266.o13101(param4.o17446);
            param1.o6942[0].o2773.key = 0;
         }
         else if(_loc29_ <= 0)
         {
            if((_loc18_ - _loc22_.x) * (_loc18_ - _loc22_.x) + (_loc16_ - _loc22_.y) * (_loc16_ - _loc22_.y) > _loc21_ * _loc21_)
            {
               return;
            }
            param1.o13593 = 1;
            param1.o3804 = 2;
            param1.o17991.x = _loc18_ - _loc22_.x;
            param1.o17991.y = _loc16_ - _loc22_.y;
            param1.o17991.o5775();
            param1.o11266.o13101(_loc22_);
            param1.o6942[0].o11266.o13101(param4.o17446);
            param1.o6942[0].o2773.key = 0;
         }
         else
         {
            _loc24_ = 0.5 * (_loc13_.x + _loc22_.x);
            _loc23_ = 0.5 * (_loc13_.y + _loc22_.y);
            _loc8_ = Number((_loc18_ - _loc24_) * _loc32_[_loc26_].x + (_loc16_ - _loc23_) * _loc32_[_loc26_].y);
            if(_loc8_ > _loc21_)
            {
               return;
            }
            param1.o13593 = 1;
            param1.o3804 = 2;
            param1.o17991.x = _loc32_[_loc26_].x;
            param1.o17991.y = _loc32_[_loc26_].y;
            param1.o17991.o5775();
            param1.o11266.o18596(_loc24_,_loc23_);
            param1.o6942[0].o11266.o13101(param4.o17446);
            param1.o6942[0].o2773.key = 0;
         }
      }
      
      public static function o15642(param1:o1693, param2:o1693) : Boolean
      {
         var _loc7_:o20021 = param2.o8628;
         var _loc8_:o20021 = param1.o18391;
         var _loc6_:Number = _loc7_.x - _loc8_.x;
         var _loc3_:Number = _loc7_.y - _loc8_.y;
         _loc7_ = param1.o8628;
         _loc8_ = param2.o18391;
         var _loc4_:Number = _loc7_.x - _loc8_.x;
         var _loc5_:Number = _loc7_.y - _loc8_.y;
         if(_loc6_ > 0 || _loc3_ > 0)
         {
            return false;
         }
         if(_loc4_ > 0 || _loc5_ > 0)
         {
            return false;
         }
         return true;
      }
   }
}
