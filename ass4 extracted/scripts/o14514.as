package
{
   public class o14514 extends o8023
   {
       
      
      private var o8698:o16123;
      
      private var o19402:o13624;
      
      private var o13818:Vector.<o13624>;
      
      private var o4257:Vector.<o6214>;
      
      private var o16408:o15787;
      
      private var o9520:o15787;
      
      private var o9026:o15787;
      
      private var o2402:o15787;
      
      public function o14514()
      {
         o8698 = new o16123(1);
         o19402 = new o13624();
         o13818 = new Vector.<o13624>();
         o4257 = new Vector.<o6214>();
         o16408 = new o15787(0);
         o9520 = new o15787(0);
         o9026 = new o15787(0);
         o2402 = new o15787(0);
         super();
      }
      
      public function get level() : int
      {
         return o8698.value;
      }
      
      public function set level(param1:int) : void
      {
         o8698.value = param1;
      }
      
      public function get o2752() : o13624
      {
         return o19402;
      }
      
      public function set o2752(param1:o13624) : void
      {
         if(param1 != o19402)
         {
            o19402 = param1;
            o15777(o19723.o19612);
         }
      }
      
      public function get o18717() : Number
      {
         return o16408.value;
      }
      
      public function set o18717(param1:Number) : void
      {
         if(param1 != o16408.value)
         {
            o16408.value = param1;
            o15777(o19723.o15503);
         }
      }
      
      public function get o15987() : Number
      {
         return o9520.value;
      }
      
      public function set o15987(param1:Number) : void
      {
         if(param1 != o9520.value)
         {
            o9520.value = param1;
            o15777(o19723.o3329);
         }
      }
      
      public function get o1589() : Number
      {
         return o9026.value;
      }
      
      public function set o1589(param1:Number) : void
      {
         if(param1 != o9026.value)
         {
            o9026.value = param1;
            o15777(o19723.o2531);
         }
      }
      
      public function set o10957(param1:Number) : void
      {
         if(param1 != o2402.value)
         {
            o2402.value = param1;
            o15777(o19723.o20576);
         }
      }
      
      public function get o10957() : Number
      {
         return o2402.value;
      }
   }
}
