package
{
   public class o20938
   {
       
      
      public function o20938()
      {
         super();
      }
      
      public static function o5908(param1:o7406) : Array
      {
         var _loc18_:* = 0;
         var _loc17_:* = null;
         var _loc10_:* = null;
         var _loc13_:int = 0;
         var _loc12_:int = 0;
         var _loc11_:int = 0;
         var _loc4_:* = null;
         var _loc15_:Array = [];
         var _loc5_:Array = [];
         var _loc21_:int = 0;
         var _loc20_:* = param1.o2625;
         for each(var _loc7_ in param1.o2625)
         {
            _loc15_.push(_loc7_.x);
            _loc5_.push(_loc7_.y);
         }
         if(_loc15_.length < 3 || _loc5_.length < 3 || _loc5_.length != _loc15_.length)
         {
            return null;
         }
         var _loc6_:int = 0;
         var _loc14_:int = _loc15_.length;
         var _loc3_:Array = [];
         var _loc19_:int = 0;
         var _loc16_:* = [];
         var _loc9_:* = [];
         _loc6_ = 0;
         while(_loc6_ < _loc14_)
         {
            _loc16_[_loc6_] = _loc15_[_loc6_];
            _loc9_[_loc6_] = _loc5_[_loc6_];
            _loc6_++;
         }
         while(true)
         {
            if(_loc14_ <= 3)
            {
               var _loc2_:o13020 = new o13020(_loc16_[1],_loc9_[1],_loc16_[2],_loc9_[2],_loc16_[0],_loc9_[0]);
               _loc3_[_loc19_] = _loc2_;
               _loc19_++;
               var _loc8_:Array = [];
               _loc6_ = 0;
               while(_loc6_ < _loc19_)
               {
                  _loc8_[_loc6_] = _loc3_[_loc6_];
                  _loc6_++;
               }
               return _loc8_;
            }
            _loc18_ = -1;
            _loc6_ = 0;
            while(_loc6_ < _loc14_)
            {
               if(o10811(_loc6_,_loc16_,_loc9_))
               {
                  _loc18_ = _loc6_;
                  break;
               }
               _loc6_++;
            }
            if(_loc18_ == -1)
            {
               break;
            }
            _loc14_--;
            _loc17_ = [];
            _loc10_ = [];
            _loc13_ = 0;
            _loc6_ = 0;
            while(_loc6_ < _loc14_)
            {
               if(_loc13_ == _loc18_)
               {
                  _loc13_++;
               }
               _loc17_[_loc6_] = _loc16_[_loc13_];
               _loc10_[_loc6_] = _loc9_[_loc13_];
               _loc13_++;
               _loc6_++;
            }
            _loc12_ = _loc18_ == 0?_loc16_.length - 1:_loc18_ - 1;
            _loc11_ = _loc18_ == _loc16_.length - 1?0:_loc18_ + 1;
            _loc4_ = new o13020(_loc16_[_loc18_],_loc9_[_loc18_],_loc16_[_loc11_],_loc9_[_loc11_],_loc16_[_loc12_],_loc9_[_loc12_]);
            _loc3_[_loc19_] = _loc4_;
            _loc19_++;
            _loc16_ = _loc17_;
            _loc9_ = _loc10_;
         }
         return null;
      }
      
      public static function o13361(param1:Array) : Array
      {
         var _loc7_:* = null;
         var _loc9_:* = null;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc5_:* = null;
         var _loc10_:* = null;
         var _loc4_:int = 0;
         var _loc8_:int = 0;
         if(param1 == null)
         {
            return null;
         }
         _loc7_ = [];
         _loc9_ = [];
         _loc8_ = 0;
         while(_loc8_ < param1.length)
         {
            _loc9_[_loc8_] = false;
            _loc8_++;
         }
         _loc6_ = true;
         while(_loc6_)
         {
            _loc2_ = -1;
            _loc8_ = 0;
            while(_loc8_ < param1.length)
            {
               if(!_loc9_[_loc8_])
               {
                  _loc2_ = _loc8_;
                  break;
               }
               _loc8_++;
            }
            if(_loc2_ == -1)
            {
               _loc6_ = false;
            }
            else
            {
               _loc5_ = o7406.o4960(param1[_loc2_].x,param1[_loc2_].y);
               _loc9_[_loc2_] = true;
               _loc8_ = 0;
               while(_loc8_ < param1.length)
               {
                  if(!_loc9_[_loc8_])
                  {
                     _loc10_ = _loc5_.add(param1[_loc8_]);
                     if(_loc10_ != null)
                     {
                        if(_loc10_.o12813())
                        {
                           _loc5_ = _loc10_;
                           _loc9_[_loc8_] = true;
                        }
                     }
                  }
                  _loc8_++;
               }
            }
            _loc7_[_loc4_] = _loc5_;
            _loc4_++;
         }
         var _loc3_:Array = [];
         _loc8_ = 0;
         while(_loc8_ < _loc4_)
         {
            _loc3_[_loc8_] = _loc7_[_loc8_];
            _loc8_++;
         }
         return _loc3_;
      }
      
      public static function o10811(param1:int, param2:Array, param3:Array) : Boolean
      {
         var _loc7_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc4_:int = 0;
         _loc9_ = 0;
         _loc6_ = 0;
         _loc7_ = 0;
         _loc5_ = 0;
         if(param1 >= param2.length || param1 < 0 || param2.length < 3)
         {
            return false;
         }
         var _loc11_:int = param1 + 1;
         var _loc8_:int = param1 - 1;
         if(param1 == 0)
         {
            _loc5_ = param2[0] - param2[param2.length - 1];
            _loc7_ = param3[0] - param3[param3.length - 1];
            _loc6_ = param2[1] - param2[0];
            _loc9_ = param3[1] - param3[0];
            _loc8_ = param2.length - 1;
         }
         else if(param1 == param2.length - 1)
         {
            _loc5_ = param2[param1] - param2[param1 - 1];
            _loc7_ = param3[param1] - param3[param1 - 1];
            _loc6_ = param2[0] - param2[param1];
            _loc9_ = param3[0] - param3[param1];
            _loc11_ = 0;
         }
         else
         {
            _loc5_ = param2[param1] - param2[param1 - 1];
            _loc7_ = param3[param1] - param3[param1 - 1];
            _loc6_ = param2[param1 + 1] - param2[param1];
            _loc9_ = param3[param1 + 1] - param3[param1];
         }
         var _loc12_:Number = _loc5_ * _loc9_ - _loc6_ * _loc7_;
         if(_loc12_ > 0)
         {
            return false;
         }
         var _loc10_:o13020 = new o13020(param2[param1],param3[param1],param2[_loc11_],param3[_loc11_],param2[_loc8_],param3[_loc8_]);
         _loc4_ = 0;
         while(_loc4_ < param2.length)
         {
            if(!(_loc4_ == param1 || _loc4_ == _loc8_ || _loc4_ == _loc11_))
            {
               if(_loc10_.o8729(param2[_loc4_],param3[_loc4_]))
               {
                  return false;
               }
            }
            _loc4_++;
         }
         return true;
      }
   }
}
