package
{
   public class o1928
   {
       
      
      private var o5685:o16123;
      
      private var o13452:o16123;
      
      private var o12277:o16123;
      
      public function o1928(param1:int, param2:int, param3:int)
      {
         o5685 = new o16123(0);
         o13452 = new o16123(0);
         o12277 = new o16123(0);
         super();
         this.o5685.value = param1;
         this.o13452.value = param2;
         this.o12277.value = param3;
      }
      
      public function get o10748() : int
      {
         return o5685.value;
      }
      
      public function get grade() : int
      {
         return o13452.value;
      }
      
      public function get o11314() : int
      {
         return o12277.value;
      }
      
      public function o229() : o14096
      {
         var _loc1_:o14200 = o14200.o19505;
         var _loc2_:o14096 = _loc1_.o15894.o19318(o10748,0,0,true);
         _loc2_.grade = grade;
         _loc2_.o17656.length = 0;
         _loc2_.o4680 = o11314;
         return _loc2_;
      }
   }
}
