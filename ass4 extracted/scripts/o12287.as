package
{
   public class o12287 extends o3052
   {
       
      
      private var o16133:o15787;
      
      public function o12287(param1:String, param2:o2693)
      {
         o16133 = new o15787(0);
         super();
         super.init(param1,param2);
         o16133.value = param2.o17521(param1 + "flameDuration");
      }
      
      public function get o8280() : Number
      {
         return o16133.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o15918 = param1.o13012.o15918 + o8280;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o15918 = param1.o13012.o15918 - o8280;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[FLAME_DURATION]",o8280);
      }
   }
}
