package
{
   public class o10852
   {
      
      public static const o6654:o20021 = new o20021(0,0);
      
      public static const o18784:o9729 = o9729.o11695(new o20021(1,0),new o20021(0,1));
      
      public static const o3928:o12362 = new o12362(o6654,o18784);
       
      
      public function o10852()
      {
         super();
      }
      
      public static function o8744(param1:Number) : Boolean
      {
         return isFinite(param1);
      }
      
      public static function o10111(param1:o20021, param2:o20021) : Number
      {
         return param1.x * param2.x + param1.y * param2.y;
      }
      
      public static function o14266(param1:o20021, param2:o20021) : Number
      {
         return param1.x * param2.y - param1.y * param2.x;
      }
      
      public static function o9716(param1:o20021, param2:Number) : o20021
      {
         var _loc3_:o20021 = new o20021(param2 * param1.y,-param2 * param1.x);
         return _loc3_;
      }
      
      public static function o18626(param1:Number, param2:o20021) : o20021
      {
         var _loc3_:o20021 = new o20021(-param1 * param2.y,param1 * param2.x);
         return _loc3_;
      }
      
      public static function o5842(param1:o9729, param2:o20021) : o20021
      {
         var _loc3_:o20021 = new o20021(param1.o19549.x * param2.x + param1.o20685.x * param2.y,param1.o19549.y * param2.x + param1.o20685.y * param2.y);
         return _loc3_;
      }
      
      public static function o15236(param1:o9729, param2:o20021) : o20021
      {
         var _loc3_:o20021 = new o20021(o10111(param2,param1.o19549),o10111(param2,param1.o20685));
         return _loc3_;
      }
      
      public static function o1026(param1:o12362, param2:o20021) : o20021
      {
         var _loc3_:o20021 = o5842(param1.o13707,param2);
         _loc3_.x = _loc3_.x + param1.position.x;
         _loc3_.y = _loc3_.y + param1.position.y;
         return _loc3_;
      }
      
      public static function o15120(param1:o12362, param2:o20021) : o20021
      {
         var _loc4_:o20021 = o6072(param2,param1.position);
         var _loc3_:Number = _loc4_.x * param1.o13707.o19549.x + _loc4_.y * param1.o13707.o19549.y;
         _loc4_.y = _loc4_.x * param1.o13707.o20685.x + _loc4_.y * param1.o13707.o20685.y;
         _loc4_.x = _loc3_;
         return _loc4_;
      }
      
      public static function o12469(param1:o20021, param2:o20021) : o20021
      {
         var _loc3_:o20021 = new o20021(param1.x + param2.x,param1.y + param2.y);
         return _loc3_;
      }
      
      public static function o6072(param1:o20021, param2:o20021) : o20021
      {
         var _loc3_:o20021 = new o20021(param1.x - param2.x,param1.y - param2.y);
         return _loc3_;
      }
      
      public static function o1713(param1:o20021, param2:o20021) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         return Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_);
      }
      
      public static function o6423(param1:o20021, param2:o20021) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         return _loc3_ * _loc3_ + _loc4_ * _loc4_;
      }
      
      public static function o7150(param1:Number, param2:o20021) : o20021
      {
         var _loc3_:o20021 = new o20021(param1 * param2.x,param1 * param2.y);
         return _loc3_;
      }
      
      public static function o19480(param1:o9729, param2:o9729) : o9729
      {
         var _loc3_:o9729 = o9729.o11695(o12469(param1.o19549,param2.o19549),o12469(param1.o20685,param2.o20685));
         return _loc3_;
      }
      
      public static function o17473(param1:o9729, param2:o9729) : o9729
      {
         var _loc3_:o9729 = o9729.o11695(o5842(param1,param2.o19549),o5842(param1,param2.o20685));
         return _loc3_;
      }
      
      public static function o16474(param1:o9729, param2:o9729) : o9729
      {
         var _loc4_:o20021 = new o20021(o10111(param1.o19549,param2.o19549),o10111(param1.o20685,param2.o19549));
         var _loc5_:o20021 = new o20021(o10111(param1.o19549,param2.o20685),o10111(param1.o20685,param2.o20685));
         var _loc3_:o9729 = o9729.o11695(_loc4_,_loc5_);
         return _loc3_;
      }
      
      public static function o17599(param1:Number) : Number
      {
         return param1 > 0?param1:-param1;
      }
      
      public static function o3387(param1:o20021) : o20021
      {
         var _loc2_:o20021 = new o20021(o17599(param1.x),o17599(param1.y));
         return _loc2_;
      }
      
      public static function o3989(param1:o9729) : o9729
      {
         var _loc2_:o9729 = o9729.o11695(o3387(param1.o19549),o3387(param1.o20685));
         return _loc2_;
      }
      
      public static function o4883(param1:Number, param2:Number) : Number
      {
         return param1 < param2?param1:param2;
      }
      
      public static function o8192(param1:o20021, param2:o20021) : o20021
      {
         var _loc3_:o20021 = new o20021(o4883(param1.x,param2.x),o4883(param1.y,param2.y));
         return _loc3_;
      }
      
      public static function o93(param1:Number, param2:Number) : Number
      {
         return param1 > param2?param1:param2;
      }
      
      public static function o6918(param1:o20021, param2:o20021) : o20021
      {
         var _loc3_:o20021 = new o20021(o93(param1.x,param2.x),o93(param1.y,param2.y));
         return _loc3_;
      }
      
      public static function o2404(param1:Number, param2:Number, param3:Number) : Number
      {
         return param1 < param2?param2:param1 > param3?param3:param1;
      }
      
      public static function o11998(param1:o20021, param2:o20021, param3:o20021) : o20021
      {
         return o6918(param2,o8192(param1,param3));
      }
      
      public static function o8652(param1:Array, param2:Array) : void
      {
         var _loc3_:* = param1[0];
         param1[0] = param2[0];
         param2[0] = _loc3_;
      }
      
      public static function o9607() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      public static function o14904(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = Math.random();
         _loc3_ = (param2 - param1) * _loc3_ + param1;
         return _loc3_;
      }
      
      public static function o15962(param1:uint) : uint
      {
         param1 = param1 | param1 >> 1 & 2147483647;
         param1 = param1 | param1 >> 2 & 1073741823;
         param1 = param1 | param1 >> 4 & 268435455;
         param1 = param1 | param1 >> 8 & 16777215;
         param1 = param1 | param1 >> 16 & 65535;
         return param1 + 1;
      }
      
      public static function o10834(param1:uint) : Boolean
      {
         var _loc2_:Boolean = param1 > 0 && (param1 & param1 - 1) == 0;
         return _loc2_;
      }
   }
}
