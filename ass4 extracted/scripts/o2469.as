package
{
   public class o2469 extends o1492
   {
       
      
      private var o927:o15787;
      
      public function o2469()
      {
         o927 = new o15787(0);
         super();
      }
      
      public function get o12894() : Number
      {
         return o927.value;
      }
      
      public function set o12894(param1:Number) : void
      {
         o927.value = param1;
      }
      
      override public function o1220(param1:int) : String
      {
         var _loc2_:String = super.o1220(param1);
         _loc2_ = _loc2_.replace("[healAmountTotalPercent]",o11801(param1 * o927.value));
         return _loc2_;
      }
   }
}
