package
{
   public class o9169 extends o3052
   {
       
      
      private var o425:o15787;
      
      public function o9169(param1:String, param2:o2693)
      {
         o425 = new o15787(0);
         super();
         super.init(param1,param2);
         o425.value = param2.o17521(param1 + "notMovingFasterReload");
      }
      
      public function get o14434() : Number
      {
         return o425.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o14434 = param1.o13012.o14434 + o14434;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o14434 = param1.o13012.o14434 - o14434;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[NOT_MOVING_FASTER_RELOAD]",o14434);
      }
   }
}
