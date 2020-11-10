package
{
   use namespace b2internal;
   
   public class o16958
   {
       
      
      public var o17937:o20021;
      
      public var o6942:Vector.<o20021>;
      
      public function o16958()
      {
         var _loc1_:int = 0;
         o17937 = new o20021();
         super();
         o6942 = new Vector.<o20021>(2);
         _loc1_ = 0;
         while(_loc1_ < 2)
         {
            o6942[_loc1_] = new o20021();
            _loc1_++;
         }
      }
      
      public function o3836(param1:o19967, param2:o12362, param3:Number, param4:o12362, param5:Number) : void
      {
         var _loc20_:int = 0;
         var _loc24_:* = null;
         var _loc14_:* = null;
         var _loc25_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc22_:Number = NaN;
         if(param1.o13593 == 0)
         {
            return;
         }
         loop2:
         switch(int(param1.o3804) - 1)
         {
            case 0:
               _loc14_ = param2.o13707;
               _loc24_ = param1.o11266;
               _loc18_ = param2.position.x + _loc14_.o19549.x * _loc24_.x + _loc14_.o20685.x * _loc24_.y;
               _loc9_ = param2.position.y + _loc14_.o19549.y * _loc24_.x + _loc14_.o20685.y * _loc24_.y;
               _loc14_ = param4.o13707;
               _loc24_ = param1.o6942[0].o11266;
               _loc21_ = param4.position.x + _loc14_.o19549.x * _loc24_.x + _loc14_.o20685.x * _loc24_.y;
               _loc8_ = param4.position.y + _loc14_.o19549.y * _loc24_.x + _loc14_.o20685.y * _loc24_.y;
               _loc10_ = _loc21_ - _loc18_;
               _loc6_ = _loc8_ - _loc9_;
               _loc7_ = _loc10_ * _loc10_ + _loc6_ * _loc6_;
               if(_loc7_ > Number.MIN_VALUE * Number.MIN_VALUE)
               {
                  _loc16_ = Math.sqrt(_loc7_);
                  o17937.x = _loc10_ / _loc16_;
                  o17937.y = _loc6_ / _loc16_;
               }
               else
               {
                  o17937.x = 1;
                  o17937.y = 0;
               }
               _loc11_ = _loc18_ + param3 * o17937.x;
               _loc26_ = _loc9_ + param3 * o17937.y;
               _loc19_ = _loc21_ - param5 * o17937.x;
               _loc22_ = _loc8_ - param5 * o17937.y;
               o6942[0].x = 0.5 * (_loc11_ + _loc19_);
               o6942[0].y = 0.5 * (_loc26_ + _loc22_);
               break;
            case 1:
               _loc14_ = param2.o13707;
               _loc24_ = param1.o17991;
               _loc25_ = _loc14_.o19549.x * _loc24_.x + _loc14_.o20685.x * _loc24_.y;
               _loc17_ = _loc14_.o19549.y * _loc24_.x + _loc14_.o20685.y * _loc24_.y;
               _loc14_ = param2.o13707;
               _loc24_ = param1.o11266;
               _loc23_ = param2.position.x + _loc14_.o19549.x * _loc24_.x + _loc14_.o20685.x * _loc24_.y;
               _loc12_ = param2.position.y + _loc14_.o19549.y * _loc24_.x + _loc14_.o20685.y * _loc24_.y;
               o17937.x = _loc25_;
               o17937.y = _loc17_;
               _loc20_ = 0;
               while(_loc20_ < param1.o13593)
               {
                  _loc14_ = param4.o13707;
                  _loc24_ = param1.o6942[_loc20_].o11266;
                  _loc15_ = param4.position.x + _loc14_.o19549.x * _loc24_.x + _loc14_.o20685.x * _loc24_.y;
                  _loc13_ = param4.position.y + _loc14_.o19549.y * _loc24_.x + _loc14_.o20685.y * _loc24_.y;
                  o6942[_loc20_].x = _loc15_ + 0.5 * (param3 - (_loc15_ - _loc23_) * _loc25_ - (_loc13_ - _loc12_) * _loc17_ - param5) * _loc25_;
                  o6942[_loc20_].y = _loc13_ + 0.5 * (param3 - (_loc15_ - _loc23_) * _loc25_ - (_loc13_ - _loc12_) * _loc17_ - param5) * _loc17_;
                  _loc20_++;
               }
               break;
            default:
               _loc14_ = param2.o13707;
               _loc24_ = param1.o17991;
               _loc25_ = _loc14_.o19549.x * _loc24_.x + _loc14_.o20685.x * _loc24_.y;
               _loc17_ = _loc14_.o19549.y * _loc24_.x + _loc14_.o20685.y * _loc24_.y;
               _loc14_ = param2.o13707;
               _loc24_ = param1.o11266;
               _loc23_ = param2.position.x + _loc14_.o19549.x * _loc24_.x + _loc14_.o20685.x * _loc24_.y;
               _loc12_ = param2.position.y + _loc14_.o19549.y * _loc24_.x + _loc14_.o20685.y * _loc24_.y;
               o17937.x = _loc25_;
               o17937.y = _loc17_;
               _loc20_ = 0;
               while(_loc20_ < param1.o13593)
               {
                  _loc14_ = param4.o13707;
                  _loc24_ = param1.o6942[_loc20_].o11266;
                  _loc15_ = param4.position.x + _loc14_.o19549.x * _loc24_.x + _loc14_.o20685.x * _loc24_.y;
                  _loc13_ = param4.position.y + _loc14_.o19549.y * _loc24_.x + _loc14_.o20685.y * _loc24_.y;
                  o6942[_loc20_].x = _loc15_ + 0.5 * (param3 - (_loc15_ - _loc23_) * _loc25_ - (_loc13_ - _loc12_) * _loc17_ - param5) * _loc25_;
                  o6942[_loc20_].y = _loc13_ + 0.5 * (param3 - (_loc15_ - _loc23_) * _loc25_ - (_loc13_ - _loc12_) * _loc17_ - param5) * _loc17_;
                  _loc20_++;
               }
               break;
            case 3:
               _loc14_ = param4.o13707;
               _loc24_ = param1.o17991;
               _loc25_ = _loc14_.o19549.x * _loc24_.x + _loc14_.o20685.x * _loc24_.y;
               _loc17_ = _loc14_.o19549.y * _loc24_.x + _loc14_.o20685.y * _loc24_.y;
               _loc14_ = param4.o13707;
               _loc24_ = param1.o11266;
               _loc23_ = param4.position.x + _loc14_.o19549.x * _loc24_.x + _loc14_.o20685.x * _loc24_.y;
               _loc12_ = param4.position.y + _loc14_.o19549.y * _loc24_.x + _loc14_.o20685.y * _loc24_.y;
               o17937.x = -_loc25_;
               o17937.y = -_loc17_;
               _loc20_ = 0;
               while(true)
               {
                  if(_loc20_ >= param1.o13593)
                  {
                     break loop2;
                  }
                  _loc14_ = param2.o13707;
                  _loc24_ = param1.o6942[_loc20_].o11266;
                  _loc15_ = param2.position.x + _loc14_.o19549.x * _loc24_.x + _loc14_.o20685.x * _loc24_.y;
                  _loc13_ = param2.position.y + _loc14_.o19549.y * _loc24_.x + _loc14_.o20685.y * _loc24_.y;
                  o6942[_loc20_].x = _loc15_ + 0.5 * (param5 - (_loc15_ - _loc23_) * _loc25_ - (_loc13_ - _loc12_) * _loc17_ - param3) * _loc25_;
                  o6942[_loc20_].y = _loc13_ + 0.5 * (param5 - (_loc15_ - _loc23_) * _loc25_ - (_loc13_ - _loc12_) * _loc17_ - param3) * _loc17_;
                  _loc20_++;
               }
         }
      }
   }
}
