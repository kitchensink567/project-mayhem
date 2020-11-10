package
{
   use namespace b2internal;
   
   public class o17268
   {
      
      private static var o19453:int;
      
      private static var o7829:int;
      
      private static var o5170:int;
      
      private static var o8777:o10424 = new o10424();
      
      private static var o9843:Vector.<int> = new Vector.<int>(3);
      
      private static var o12096:Vector.<int> = new Vector.<int>(3);
       
      
      public function o17268()
      {
         super();
      }
      
      public static function o1713(param1:o19, param2:o7731, param3:o3899) : void
      {
         var _loc23_:int = 0;
         _loc23_ = 5;
         var _loc15_:int = 0;
         var _loc16_:* = null;
         var _loc12_:* = null;
         var _loc10_:* = null;
         var _loc22_:Boolean = false;
         var _loc19_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc5_:* = null;
         o19453 = o19453 + 1;
         var _loc4_:o10231 = param3.o9917;
         var _loc9_:o10231 = param3.o5256;
         var _loc25_:o12362 = param3.o11204;
         var _loc14_:o12362 = param3.o20039;
         var _loc17_:o10424 = o8777;
         _loc17_.o14820(param2,_loc4_,_loc25_,_loc9_,_loc14_);
         var _loc24_:Vector.<o11627> = _loc17_.o17252;
         var _loc20_:Vector.<int> = o9843;
         var _loc8_:Vector.<int> = o12096;
         var _loc13_:int = 0;
         var _loc21_:o20021 = _loc17_.o18610();
         var _loc7_:* = Number(_loc21_.o9792());
         var _loc11_:* = _loc7_;
         var _loc18_:int = 0;
         while(_loc18_ < 5)
         {
            _loc13_ = _loc17_.o15052;
            _loc15_ = 0;
            while(_loc15_ < _loc13_)
            {
               _loc20_[_loc15_] = _loc24_[_loc15_].o5855;
               _loc8_[_loc15_] = _loc24_[_loc15_].o16426;
               _loc15_++;
            }
            switch(int(_loc17_.o15052) - 1)
            {
               case 0:
                  break;
               case 1:
                  _loc17_.o10765();
                  break;
               case 2:
                  _loc17_.o9370();
            }
            if(_loc17_.o15052 != 3)
            {
               _loc16_ = _loc17_.o18610();
               _loc11_ = Number(_loc16_.o9792());
               if(_loc11_ <= _loc7_)
               {
                  _loc7_ = _loc11_;
                  _loc12_ = _loc17_.o7511();
                  if(_loc12_.o9792() >= Number.MIN_VALUE * Number.MIN_VALUE)
                  {
                     _loc10_ = _loc24_[_loc17_.o15052];
                     _loc10_.o5855 = _loc4_.o3616(o10852.o15236(_loc25_.o13707,_loc12_.o4847()));
                     _loc10_.o5863 = o10852.o1026(_loc25_,_loc4_.o5529(_loc10_.o5855));
                     _loc10_.o16426 = _loc9_.o3616(o10852.o15236(_loc14_.o13707,_loc12_));
                     _loc10_.o14203 = o10852.o1026(_loc14_,_loc9_.o5529(_loc10_.o16426));
                     _loc10_.w = o10852.o6072(_loc10_.o14203,_loc10_.o5863);
                     _loc18_++;
                     o7829 = o7829 + 1;
                     _loc22_ = false;
                     _loc15_ = 0;
                     while(_loc15_ < _loc13_)
                     {
                        if(_loc10_.o5855 == _loc20_[_loc15_] && _loc10_.o16426 == _loc8_[_loc15_])
                        {
                           _loc22_ = true;
                           break;
                        }
                        _loc15_++;
                     }
                     if(!_loc22_)
                     {
                        _loc17_.o15052 = _loc17_.o15052 + 1;
                        continue;
                     }
                     break;
                  }
                  break;
               }
               break;
            }
            break;
         }
         o5170 = o10852.o93(o5170,_loc18_);
         _loc17_.o20065(param1.o13575,param1.o18785);
         param1.distance = o10852.o6072(param1.o13575,param1.o18785).o7648();
         param1.o2396 = _loc18_;
         _loc17_.o2450(param2);
         if(param3.o14251)
         {
            _loc19_ = _loc4_.o4879;
            _loc6_ = _loc9_.o4879;
            if(param1.distance > _loc19_ + _loc6_ && param1.distance > Number.MIN_VALUE)
            {
               param1.distance = param1.distance - (_loc19_ + _loc6_);
               _loc5_ = o10852.o6072(param1.o18785,param1.o13575);
               _loc5_.o5775();
               param1.o13575.x = param1.o13575.x + _loc19_ * _loc5_.x;
               param1.o13575.y = param1.o13575.y + _loc19_ * _loc5_.y;
               param1.o18785.x = param1.o18785.x - _loc6_ * _loc5_.x;
               param1.o18785.y = param1.o18785.y - _loc6_ * _loc5_.y;
            }
            else
            {
               _loc16_ = new o20021();
               _loc16_.x = 0.5 * (param1.o13575.x + param1.o18785.x);
               _loc16_.y = 0.5 * (param1.o13575.y + param1.o18785.y);
               var _loc26_:* = _loc16_.x;
               param1.o18785.x = _loc26_;
               param1.o13575.x = _loc26_;
               _loc26_ = _loc16_.y;
               param1.o18785.y = _loc26_;
               param1.o13575.y = _loc26_;
               param1.distance = 0;
            }
         }
      }
   }
}
