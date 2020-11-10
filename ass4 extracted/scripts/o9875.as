package
{
   public class o9875 extends o1492
   {
       
      
      private var o20125:o15787;
      
      public function o9875()
      {
         o20125 = new o15787(0);
         super();
      }
      
      public function get o2310() : Number
      {
         return o20125.value;
      }
      
      public function set o2310(param1:Number) : void
      {
         o20125.value = param1;
      }
      
      public function o2185(param1:int) : Number
      {
         if(param1 == 0)
         {
            return 0;
         }
         return o20125.value * param1;
      }
      
      override public function o1220(param1:int) : String
      {
         var _loc2_:String = super.o1220(param1);
         _loc2_ = _loc2_.replace("[augmentationXPBonusTotalPercent]",o11342(o2185(param1)));
         return _loc2_;
      }
   }
}
