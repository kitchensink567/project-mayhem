package
{
   public class o17981
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var o16990:Number;
      
      public function o17981(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.o16990 = param3;
      }
      
      public function o14195() : void
      {
         o16990 = 0;
         y = 0;
         x = 0;
      }
      
      public function o18596(param1:Number, param2:Number, param3:Number) : void
      {
         this.x = param1;
         this.y = param2;
         this.o16990 = param3;
      }
      
      public function o13101(param1:o17981) : void
      {
         x = param1.x;
         y = param1.y;
         o16990 = param1.o16990;
      }
      
      public function o4847() : o17981
      {
         return new o17981(-x,-y,-o16990);
      }
      
      public function o11223() : void
      {
         x = -x;
         y = -y;
         o16990 = -o16990;
      }
      
      public function o2747() : o17981
      {
         return new o17981(x,y,o16990);
      }
      
      public function o14473(param1:o17981) : void
      {
         x = x + param1.x;
         y = y + param1.y;
         o16990 = o16990 + param1.o16990;
      }
      
      public function o6227(param1:o17981) : void
      {
         x = x - param1.x;
         y = y - param1.y;
         o16990 = o16990 - param1.o16990;
      }
      
      public function o5041(param1:Number) : void
      {
         x = x * param1;
         y = y * param1;
         o16990 = o16990 * param1;
      }
   }
}
