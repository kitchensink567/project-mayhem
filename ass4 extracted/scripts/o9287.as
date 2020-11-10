package
{
   public class o9287 extends o3052
   {
       
      
      private var o2495:o15787;
      
      public function o9287(param1:String, param2:o2693)
      {
         o2495 = new o15787(0);
         super();
         super.init(param1,param2);
         o2495.value = param2.o17521(param1 + "rateOfFire");
      }
      
      public function get o4346() : Number
      {
         return o2495.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o5791 = param1.o5791 - o4346;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o5791 = param1.o5791 + o4346;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[RATE_OF_FIRE]",o4346);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 6;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         var _loc5_:Number = 1 / param1 * (1 - o4346);
         var _loc3_:* = param1;
         var _loc2_:Number = 1 / _loc5_;
         var _loc4_:Number = _loc2_ - _loc3_;
         return _loc4_;
      }
   }
}
