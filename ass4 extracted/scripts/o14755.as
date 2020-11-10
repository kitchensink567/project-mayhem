package
{
   public class o14755 extends o3052
   {
       
      
      private var o18745:o15787;
      
      public function o14755(param1:String, param2:o2693)
      {
         o18745 = new o15787(0);
         super();
         super.init(param1,param2);
         o18745.value = param2.o17521(param1 + "energyRegenPerSec");
      }
      
      public function get o14394() : Number
      {
         return o18745.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o5034 = param1.o5034 + o14394;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o5034 = param1.o5034 - o14394;
      }
      
      override public function o3309(param1:String) : String
      {
         return o3014(param1,"[ENERGY_REGEN_PER_SEC]",o14394);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 19;
      }
      
      override protected function o17667(param1:Number) : Number
      {
         return o14394;
      }
   }
}
