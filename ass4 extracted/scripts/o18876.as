package
{
   public class o18876
   {
      
      private static var o12117:int = 0;
      
      private static var o13152:int = 0;
      
      private static var o7399:int = 0;
      
      private static var o16232:int = 0;
      
      private static var o18862:int = 0;
      
      private static var o6684:o7731 = new o7731();
      
      private static var o12563:o3899 = new o3899();
      
      private static var o15234:o12362 = new o12362();
      
      private static var o11126:o12362 = new o12362();
      
      private static var o48:o16947 = new o16947();
      
      private static var o1460:o19 = new o19();
       
      
      public function o18876()
      {
         super();
      }
      
      public static function o5835(param1:o1255) : Number
      {
         var _loc14_:int = 0;
         _loc14_ = 1000;
         var _loc4_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc3_:* = NaN;
         var _loc19_:* = NaN;
         var _loc6_:* = NaN;
         var _loc13_:* = NaN;
         var _loc18_:int = 0;
         var _loc20_:Number = NaN;
         var _loc12_:Number = NaN;
         o12117 = o12117 + 1;
         var _loc2_:o10231 = param1.o9917;
         var _loc11_:o10231 = param1.o5256;
         var _loc15_:o12048 = param1.o16794;
         var _loc8_:o12048 = param1.o10099;
         o14980.o12199(_loc15_.o8902 == _loc8_.o8902);
         o14980.o12199(1 - _loc15_.o8902 > Number.MIN_VALUE);
         var _loc5_:Number = _loc2_.o4879 + _loc11_.o4879;
         var _loc10_:Number = param1.o3445;
         var _loc16_:* = 0;
         var _loc7_:int = 0;
         var _loc17_:* = 0;
         o6684.o16191 = 0;
         o12563.o14251 = false;
         while(true)
         {
            _loc15_.o13749(o15234,_loc16_);
            _loc8_.o13749(o11126,_loc16_);
            o12563.o9917 = _loc2_;
            o12563.o5256 = _loc11_;
            o12563.o11204 = o15234;
            o12563.o20039 = o11126;
            o17268.o1713(o1460,o6684,o12563);
            if(o1460.distance <= 0)
            {
               _loc16_ = 1;
               break;
            }
            o48.o3836(o6684,_loc2_,o15234,_loc11_,o11126);
            _loc4_ = o48.o5562(o15234,o11126);
            if(_loc4_ <= 0)
            {
               _loc16_ = 1;
               break;
            }
            if(_loc7_ == 0)
            {
               if(_loc4_ > _loc5_)
               {
                  _loc17_ = Number(o10852.o93(_loc5_ - _loc10_,0.75 * _loc5_));
               }
               else
               {
                  _loc17_ = Number(o10852.o93(_loc4_ - _loc10_,0.02 * _loc5_));
               }
            }
            if(_loc4_ - _loc17_ < 0.5 * _loc10_)
            {
               if(_loc7_ == 0)
               {
                  _loc16_ = 1;
                  break;
               }
               break;
            }
            _loc9_ = _loc16_;
            _loc3_ = _loc16_;
            _loc19_ = 1;
            _loc6_ = _loc4_;
            _loc15_.o13749(o15234,_loc19_);
            _loc8_.o13749(o11126,_loc19_);
            _loc13_ = Number(o48.o5562(o15234,o11126));
            if(_loc13_ >= _loc17_)
            {
               _loc16_ = 1;
               break;
            }
            _loc18_ = 0;
            while(true)
            {
               if(_loc18_ & 1)
               {
                  _loc20_ = _loc3_ + (_loc17_ - _loc6_) * (_loc19_ - _loc3_) / (_loc13_ - _loc6_);
               }
               else
               {
                  _loc20_ = 0.5 * (_loc3_ + _loc19_);
               }
               _loc15_.o13749(o15234,_loc20_);
               _loc8_.o13749(o11126,_loc20_);
               _loc12_ = o48.o5562(o15234,o11126);
               if(o10852.o17599(_loc12_ - _loc17_) < 0.025 * _loc10_)
               {
                  _loc9_ = _loc20_;
                  break;
               }
               if(_loc12_ > _loc17_)
               {
                  _loc3_ = _loc20_;
                  _loc6_ = _loc12_;
               }
               else
               {
                  _loc19_ = _loc20_;
                  _loc13_ = _loc12_;
               }
               _loc18_++;
               o16232 = o16232 + 1;
               if(_loc18_ != 50)
               {
                  continue;
               }
               break;
            }
            o18862 = o10852.o93(o18862,_loc18_);
            if(_loc9_ >= (1 + 100 * Number.MIN_VALUE) * _loc16_)
            {
               _loc16_ = _loc9_;
               _loc7_++;
               o13152 = o13152 + 1;
               if(_loc7_ != 1000)
               {
                  continue;
               }
               break;
            }
            break;
         }
         o7399 = o10852.o93(o7399,_loc7_);
         return _loc16_;
      }
   }
}
