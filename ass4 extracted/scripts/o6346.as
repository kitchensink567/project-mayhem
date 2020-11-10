package
{
   public class o6346 extends o1492
   {
       
      
      private var o1757:o16123;
      
      private var o2958:o15787;
      
      public function o6346()
      {
         o1757 = new o16123(0);
         o2958 = new o15787(0);
         super();
      }
      
      public function get o1543() : int
      {
         return o1757.value;
      }
      
      public function get o808() : Number
      {
         return o2958.value;
      }
      
      public function set o1543(param1:int) : void
      {
         o1757.value = param1;
      }
      
      public function set o808(param1:Number) : void
      {
         o2958.value = param1;
      }
      
      override public function o11827(param1:int) : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(param1 == 0)
         {
            return 0;
         }
         if(param1 > o1757.value)
         {
            _loc2_ = o1757.value * o16409.value;
            _loc3_ = param1 - o1757.value;
            return _loc2_ + _loc3_ * o2958.value;
         }
         return o20290.value + (param1 - 1) * o16409.value;
      }
   }
}
