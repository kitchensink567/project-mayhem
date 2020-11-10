package
{
   public class o20021
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public function o20021(param1:Number = 0, param2:Number = 0)
      {
         super();
         x = param1;
         y = param2;
      }
      
      public static function o8416(param1:Number, param2:Number) : o20021
      {
         return new o20021(param1,param2);
      }
      
      public function initialise(param1:Number = 0, param2:Number = 0) : void
      {
         x = param1;
         y = param2;
      }
      
      public function o14195() : void
      {
         x = 0;
         y = 0;
      }
      
      public function o18596(param1:Number = 0, param2:Number = 0) : void
      {
         x = param1;
         y = param2;
      }
      
      public function o13101(param1:o20021) : void
      {
         x = param1.x;
         y = param1.y;
      }
      
      public function o4847() : o20021
      {
         return new o20021(-x,-y);
      }
      
      public function o11223() : void
      {
         x = -x;
         y = -y;
      }
      
      public function o2747() : o20021
      {
         return new o20021(x,y);
      }
      
      public function o14473(param1:o20021) : void
      {
         x = x + param1.x;
         y = y + param1.y;
      }
      
      public function o6227(param1:o20021) : void
      {
         x = x - param1.x;
         y = y - param1.y;
      }
      
      public function o5041(param1:Number) : void
      {
         x = x * param1;
         y = y * param1;
      }
      
      public function o9580(param1:o9729) : void
      {
         var _loc2_:Number = x;
         x = param1.o19549.x * _loc2_ + param1.o20685.x * y;
         y = param1.o19549.y * _loc2_ + param1.o20685.y * y;
      }
      
      public function o522(param1:o9729) : void
      {
         var _loc2_:Number = o10852.o10111(this,param1.o19549);
         y = o10852.o10111(this,param1.o20685);
         x = _loc2_;
      }
      
      public function o9716(param1:Number) : void
      {
         var _loc2_:Number = x;
         x = param1 * y;
         y = -param1 * _loc2_;
      }
      
      public function o18626(param1:Number) : void
      {
         var _loc2_:Number = x;
         x = -param1 * y;
         y = param1 * _loc2_;
      }
      
      public function o8192(param1:o20021) : void
      {
         x = x < param1.x?x:param1.x;
         y = y < param1.y?y:param1.y;
      }
      
      public function o6918(param1:o20021) : void
      {
         x = x > param1.x?x:param1.x;
         y = y > param1.y?y:param1.y;
      }
      
      public function o17599() : void
      {
         if(x < 0)
         {
            x = -x;
         }
         if(y < 0)
         {
            y = -y;
         }
      }
      
      public function o7648() : Number
      {
         return Math.sqrt(x * x + y * y);
      }
      
      public function o9792() : Number
      {
         return x * x + y * y;
      }
      
      public function o5775() : Number
      {
         var _loc1_:Number = Math.sqrt(x * x + y * y);
         if(_loc1_ < Number.MIN_VALUE)
         {
            return 0;
         }
         var _loc2_:Number = 1 / _loc1_;
         x = x * _loc2_;
         y = y * _loc2_;
         return _loc1_;
      }
      
      public function o8744() : Boolean
      {
         return o10852.o8744(x) && o10852.o8744(y);
      }
   }
}
