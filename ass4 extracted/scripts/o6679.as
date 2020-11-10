package
{
   public class o6679
   {
       
      
      private var o1564:o16123;
      
      private var o7697:o16123;
      
      private var o515:o10411;
      
      private var o5234:o16123;
      
      private var o17523:o16123;
      
      private var o10250:o16123;
      
      public var o3440:o14844;
      
      public function o6679()
      {
         o1564 = new o16123(0);
         o7697 = new o16123(0);
         o515 = new o10411(false);
         o5234 = new o16123(0);
         o17523 = new o16123(0);
         o10250 = new o16123(0);
         super();
      }
      
      public function get o15851() : Boolean
      {
         return o515.value;
      }
      
      public function get o11119() : int
      {
         return o5234.value;
      }
      
      public function get o11570() : int
      {
         return o17523.value;
      }
      
      public function get o3() : int
      {
         return o10250.value;
      }
      
      public function set o15851(param1:Boolean) : void
      {
         o515.value = param1;
      }
      
      public function set o11119(param1:int) : void
      {
         o5234.value = param1;
      }
      
      public function set o11570(param1:int) : void
      {
         o17523.value = param1;
      }
      
      public function set o3(param1:int) : void
      {
         o10250.value = param1;
      }
      
      public function get o5109() : int
      {
         return o1564.value;
      }
      
      public function set o5109(param1:int) : void
      {
         o1564.value = param1;
      }
      
      public function get o17383() : int
      {
         return o7697.value;
      }
      
      public function set o17383(param1:int) : void
      {
         o7697.value = param1;
      }
      
      public function o18664(param1:int) : void
      {
         o1564.value = o1564.value - param1;
      }
      
      public function o20214(param1:int) : void
      {
         o7697.value = o7697.value - param1;
      }
   }
}
