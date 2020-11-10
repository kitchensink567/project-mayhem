package
{
   public class o1617 extends o3052
   {
       
      
      private var o19255:o15787;
      
      public function o1617(param1:String, param2:o2693)
      {
         o19255 = new o15787(0);
         super();
         super.init(param1,param2);
         o19255.value = param2.o17521(param1 + "reloadSpeed");
      }
      
      public function get o19973() : Number
      {
         return o19255.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o18931 = param1.o18931 - o19973;
         param1 = param1;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o18931 = param1.o18931 + o19973;
         param1 = param1;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[RELOAD_SPEED]",o19973);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 9 || param1 == 25;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return param1 * -o19973;
      }
      
      override protected function o17667(param1:Number) : Number
      {
         return -o19973;
      }
   }
}
