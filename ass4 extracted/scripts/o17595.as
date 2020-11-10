package
{
   public class o17595 extends o19406
   {
       
      
      private var o15853:o16123;
      
      public var o19419:o14200;
      
      public function o17595(param1:o14200)
      {
         o15853 = new o16123(0);
         super();
         o10846.o19505.o4115();
         this.o19419 = param1;
         param1.o202.o11275 = false;
         o15833 = param1.o202.o20461;
      }
      
      private function get o15833() : int
      {
         return o15853.value;
      }
      
      private function set o15833(param1:int) : void
      {
         o15853.value = param1;
      }
      
      override public function o13640() : void
      {
         o19419.o15894.o4848.o2719.o14220();
         o19419.o202.o18479 = true;
         if(!(o19419.o202.o10211 && o19419.o202.o18730))
         {
            o4519.o13206.o19115();
         }
         o15833 = 0;
         o19419 = null;
         super.o13640();
      }
      
      override protected function o17774() : o5853
      {
         return new o5571(o19419,o15833);
      }
      
      override protected function o4907() : o18703
      {
         return new o7013(o19419);
      }
      
      override protected function o16736() : o3376
      {
         return new o14671(o19419);
      }
      
      override protected function o154() : void
      {
         super.o154();
         o19419.o202.o18479 = true;
         o4519.o13206.o7914();
         if(o19419.o202.o8971 == false || o19419.o202.o2582)
         {
            o19419.o202.o19266(o19419.o7923);
         }
         this.screen = 2;
         o19419.o15894.o4848.o2719.o13760.o18339 = o19419.o202.o18339;
         o19419.o15894.o4848.o2719.o13760.o19189 = o19419.o202.o4800().o19189;
         o19419.o15894.o4848.o2719.o12519(o19419);
      }
      
      override protected function o11048() : void
      {
         o12729(o19419.o202.o8971 == false,o19419.o202.o1745);
      }
   }
}
