package
{
   public class o12048
   {
       
      
      public var o461:o20021;
      
      public var o1302:o20021;
      
      public var o9412:o20021;
      
      public var o17036:Number;
      
      public var o12395:Number;
      
      public var o8902:Number;
      
      public function o12048()
      {
         o461 = new o20021();
         o1302 = new o20021();
         o9412 = new o20021();
         super();
      }
      
      public function o18596(param1:o12048) : void
      {
         o461.o13101(param1.o461);
         o1302.o13101(param1.o1302);
         o9412.o13101(param1.o9412);
         o17036 = param1.o17036;
         o12395 = param1.o12395;
         o8902 = param1.o8902;
      }
      
      public function o2747() : o12048
      {
         var _loc1_:o12048 = new o12048();
         _loc1_.o461.o13101(o461);
         _loc1_.o1302.o13101(o1302);
         _loc1_.o9412.o13101(o9412);
         _loc1_.o17036 = o17036;
         _loc1_.o12395 = o12395;
         _loc1_.o8902 = o8902;
         return _loc1_;
      }
      
      public function o13749(param1:o12362, param2:Number) : void
      {
         param1.position.x = (1 - param2) * o1302.x + param2 * o9412.x;
         param1.position.y = (1 - param2) * o1302.y + param2 * o9412.y;
         var _loc4_:Number = (1 - param2) * o17036 + param2 * o12395;
         param1.o13707.o18596(_loc4_);
         var _loc3_:o9729 = param1.o13707;
         param1.position.x = param1.position.x - (_loc3_.o19549.x * o461.x + _loc3_.o20685.x * o461.y);
         param1.position.y = param1.position.y - (_loc3_.o19549.y * o461.x + _loc3_.o20685.y * o461.y);
      }
      
      public function o15695(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(o8902 < param1 && 1 - o8902 > Number.MIN_VALUE)
         {
            _loc2_ = (param1 - o8902) / (1 - o8902);
            o1302.x = (1 - _loc2_) * o1302.x + _loc2_ * o9412.x;
            o1302.y = (1 - _loc2_) * o1302.y + _loc2_ * o9412.y;
            o17036 = (1 - _loc2_) * o17036 + _loc2_ * o12395;
            o8902 = param1;
         }
      }
   }
}
