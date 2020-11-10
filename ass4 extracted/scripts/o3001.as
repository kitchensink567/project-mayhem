package
{
   public class o3001
   {
       
      
      public var o607:o14432;
      
      public var o11119:int;
      
      private var o6723:o16123;
      
      private var o9305:o16123;
      
      public function o3001(param1:int, param2:o14432)
      {
         o6723 = new o16123(0);
         o9305 = new o16123(0);
         super();
         this.o607 = param2;
         this.o11119 = param1;
         o8510 = 0;
         o5630 = 0;
      }
      
      public function get o8510() : int
      {
         return o6723.value;
      }
      
      public function get o5630() : int
      {
         return o9305.value;
      }
      
      public function get o3562() : int
      {
         return o8510 + o5630;
      }
      
      public function set o8510(param1:int) : void
      {
         o6723.value = param1;
      }
      
      public function set o5630(param1:int) : void
      {
         o9305.value = param1;
      }
   }
}
