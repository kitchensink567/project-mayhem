package
{
   public class o19880 extends o3052
   {
       
      
      private var o10332:o15787;
      
      private var o10254:o16123;
      
      public function o19880(param1:String, param2:o2693)
      {
         o10332 = new o15787(0);
         o10254 = new o16123(0);
         super();
         super.init(param1,param2);
         o10332.value = param2.o17521(param1 + "largerClipPercent");
         o10254.value = param2.o17521(param1 + "largerClipMinExtraBullets");
      }
      
      public function get o19900() : Number
      {
         return o10332.value;
      }
      
      public function get o8686() : Number
      {
         return o10254.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o6749 = param1.o13012.o6749 + o19900;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o6749 = param1.o13012.o6749 - o19900;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[LARGER_CLIP_PERCENT]",o19900);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 8;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         if(o19900 < 0.001)
         {
            return 0;
         }
         var _loc2_:* = Number(param1 * o19900);
         if(_loc2_ < 1)
         {
            _loc2_ = 1;
         }
         return _loc2_;
      }
   }
}
