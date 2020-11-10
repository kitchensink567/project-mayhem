package
{
   public class o8755 extends o1492
   {
       
      
      private var o20571:o15787;
      
      public function o8755()
      {
         o20571 = new o15787(0);
         super();
      }
      
      public function get o8203() : Number
      {
         return o20571.value;
      }
      
      public function set o8203(param1:Number) : void
      {
         o20571.value = param1;
      }
      
      override public function o1220(param1:int) : String
      {
         var _loc2_:String = super.o1220(param1);
         _loc2_ = _loc2_.replace("[minHealth]",o11801(o20571.value));
         return _loc2_;
      }
   }
}
