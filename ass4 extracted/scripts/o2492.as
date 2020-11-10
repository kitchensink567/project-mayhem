package
{
   public class o2492 extends o1492
   {
       
      
      private var o8541:o15787;
      
      private var o5487:o15787;
      
      public function o2492()
      {
         o8541 = new o15787(0);
         o5487 = new o15787(0);
         super();
      }
      
      public function get o18721() : Number
      {
         return o8541.value;
      }
      
      public function get o12412() : Number
      {
         return o5487.value;
      }
      
      public function set o18721(param1:Number) : void
      {
         o8541.value = param1;
      }
      
      public function set o12412(param1:Number) : void
      {
         o5487.value = param1;
      }
      
      public function o11868(param1:int) : int
      {
         if(param1 == 0)
         {
            return 0;
         }
         return o8541.value + o5487.value * (param1 - 1);
      }
      
      override public function o1220(param1:int) : String
      {
         var _loc2_:String = super.o1220(param1);
         _loc2_ = _loc2_.replace("[arcTotal]",o11868(param1));
         return _loc2_;
      }
   }
}
