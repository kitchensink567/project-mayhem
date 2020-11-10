package
{
   public class o114 extends o3052
   {
       
      
      private var o10670:o15787;
      
      public function o114(param1:String, param2:o2693)
      {
         o10670 = new o15787(0);
         super();
         super.init(param1,param2);
         o10670.value = param2.o17521(param1 + "medkitHeal");
      }
      
      public function get o17839() : Number
      {
         return o10670.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o14845 = param1.o13012.o14845 + o17839;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o14845 = param1.o13012.o14845 - o17839;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[MEDKIT_HEAL]",o17839);
      }
   }
}
