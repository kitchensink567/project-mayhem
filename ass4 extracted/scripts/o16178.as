package
{
   public class o16178
   {
       
      
      public var o19549:o17981;
      
      public var o20685:o17981;
      
      public var o5716:o17981;
      
      public function o16178(param1:o17981 = null, param2:o17981 = null, param3:o17981 = null)
      {
         o19549 = new o17981();
         o20685 = new o17981();
         o5716 = new o17981();
         super();
         if(!param1 && !param2 && !param3)
         {
            o19549.o14195();
            o20685.o14195();
            o5716.o14195();
         }
         else
         {
            o19549.o13101(param1);
            o20685.o13101(param2);
            o5716.o13101(param3);
         }
      }
      
      public function o2365(param1:o17981, param2:o17981, param3:o17981) : void
      {
         o19549.o13101(param1);
         o20685.o13101(param2);
         o5716.o13101(param3);
      }
      
      public function o2747() : o16178
      {
         return new o16178(o19549,o20685,o5716);
      }
      
      public function o19487(param1:o16178) : void
      {
         o19549.o13101(param1.o19549);
         o20685.o13101(param1.o20685);
         o5716.o13101(param1.o5716);
      }
      
      public function o7248(param1:o16178) : void
      {
         o19549.x = o19549.x + param1.o19549.x;
         o19549.y = o19549.y + param1.o19549.y;
         o19549.o16990 = o19549.o16990 + param1.o19549.o16990;
         o20685.x = o20685.x + param1.o20685.x;
         o20685.y = o20685.y + param1.o20685.y;
         o20685.o16990 = o20685.o16990 + param1.o20685.o16990;
         o5716.x = o5716.x + param1.o5716.x;
         o5716.y = o5716.y + param1.o5716.y;
         o5716.o16990 = o5716.o16990 + param1.o5716.o16990;
      }
      
      public function o4911() : void
      {
         o19549.x = 1;
         o20685.x = 0;
         o5716.x = 0;
         o19549.y = 0;
         o20685.y = 1;
         o5716.y = 0;
         o19549.o16990 = 0;
         o20685.o16990 = 0;
         o5716.o16990 = 1;
      }
      
      public function o14195() : void
      {
         o19549.x = 0;
         o20685.x = 0;
         o5716.x = 0;
         o19549.y = 0;
         o20685.y = 0;
         o5716.y = 0;
         o19549.o16990 = 0;
         o20685.o16990 = 0;
         o5716.o16990 = 0;
      }
      
      public function o13393(param1:o20021, param2:Number, param3:Number) : o20021
      {
         var _loc5_:Number = o19549.x;
         var _loc6_:Number = o20685.x;
         var _loc7_:Number = o19549.y;
         var _loc4_:Number = o20685.y;
         var _loc8_:Number = _loc5_ * _loc4_ - _loc6_ * _loc7_;
         if(_loc8_ != 0)
         {
            _loc8_ = 1 / _loc8_;
         }
         param1.x = _loc8_ * (_loc4_ * param2 - _loc6_ * param3);
         param1.y = _loc8_ * (_loc5_ * param3 - _loc7_ * param2);
         return param1;
      }
      
      public function o516(param1:o17981, param2:Number, param3:Number, param4:Number) : o17981
      {
         var _loc12_:Number = o19549.x;
         var _loc13_:Number = o19549.y;
         var _loc6_:Number = o19549.o16990;
         var _loc8_:Number = o20685.x;
         var _loc11_:Number = o20685.y;
         var _loc5_:Number = o20685.o16990;
         var _loc7_:Number = o5716.x;
         var _loc10_:Number = o5716.y;
         var _loc9_:Number = o5716.o16990;
         var _loc14_:Number = _loc12_ * (_loc11_ * _loc9_ - _loc5_ * _loc10_) + _loc13_ * (_loc5_ * _loc7_ - _loc8_ * _loc9_) + _loc6_ * (_loc8_ * _loc10_ - _loc11_ * _loc7_);
         if(_loc14_ != 0)
         {
            _loc14_ = 1 / _loc14_;
         }
         param1.x = _loc14_ * (param2 * (_loc11_ * _loc9_ - _loc5_ * _loc10_) + param3 * (_loc5_ * _loc7_ - _loc8_ * _loc9_) + param4 * (_loc8_ * _loc10_ - _loc11_ * _loc7_));
         param1.y = _loc14_ * (_loc12_ * (param3 * _loc9_ - param4 * _loc10_) + _loc13_ * (param4 * _loc7_ - param2 * _loc9_) + _loc6_ * (param2 * _loc10_ - param3 * _loc7_));
         param1.o16990 = _loc14_ * (_loc12_ * (_loc11_ * param4 - _loc5_ * param3) + _loc13_ * (_loc5_ * param2 - _loc8_ * param4) + _loc6_ * (_loc8_ * param3 - _loc11_ * param2));
         return param1;
      }
   }
}
