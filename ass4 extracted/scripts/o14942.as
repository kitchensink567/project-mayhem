package
{
   public class o14942 extends o3052
   {
       
      
      private var o15151:o15787;
      
      public function o14942(param1:String, param2:o2693)
      {
         o15151 = new o15787(0);
         super();
         super.init(param1,param2);
         o15151.value = param2.o17521(param1 + "hpRegenPerSec");
      }
      
      public function get o6737() : Number
      {
         return o15151.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o2477 = param1.o2477 + o6737;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o2477 = param1.o2477 - o6737;
      }
      
      override public function o3309(param1:String) : String
      {
         return o3014(param1,"[HP_REGEN_PER_SEC]",o6737);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 18;
      }
      
      override protected function o17667(param1:Number) : Number
      {
         return o6737;
      }
   }
}
