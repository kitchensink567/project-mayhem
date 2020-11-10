package
{
   public class o6635 extends o3052
   {
       
      
      private var o12209:o15787;
      
      public function o6635(param1:String, param2:o2693)
      {
         o12209 = new o15787(0);
         super();
         super.init(param1,param2);
         o12209.value = param2.o17521(param1 + "critChance");
      }
      
      public function get o19483() : Number
      {
         return o12209.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o8138 = param1.o8138 + o19483;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o8138 = param1.o8138 - o19483;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[CRIT_CHANCE]",o19483);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 5;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return o19483;
      }
   }
}
