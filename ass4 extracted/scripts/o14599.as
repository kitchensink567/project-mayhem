package
{
   public class o14599
   {
       
      
      public var o10472:o20021;
      
      public var o19294:Number;
      
      public var o4200:o20021;
      
      public var o9700:Number;
      
      public function o14599()
      {
         o10472 = new o20021();
         o4200 = new o20021();
         super();
      }
      
      public function o14195() : void
      {
         o10472.o14195();
         o19294 = 0;
         o4200.o14195();
         o9700 = 0;
      }
      
      public function o18596(param1:o20021, param2:Number, param3:o20021, param4:Number) : void
      {
         o10472.o13101(param1);
         o19294 = param2;
         o4200.o13101(param3);
         o9700 = param4;
      }
      
      public function o8343(param1:o20021, param2:Number, param3:o20021, param4:Number) : Number
      {
         return o10472.x * param1.x + o10472.y * param1.y + o19294 * param2 + (o4200.x * param3.x + o4200.y * param3.y) + o9700 * param4;
      }
   }
}
