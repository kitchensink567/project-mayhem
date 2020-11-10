package
{
   public class o16186 extends o3052
   {
       
      
      private var o1582:o15787;
      
      public function o16186(param1:String, param2:o2693)
      {
         o1582 = new o15787(0);
         super();
         super.init(param1,param2);
         o1582.value = param2.o17521(param1 + "gibChance");
      }
      
      public function get o11933() : Number
      {
         return o1582.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o11933 = param1.o13012.o11933 + o11933;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o11933 = param1.o13012.o11933 - o11933;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[GIB_CHANCE]",o11933);
      }
   }
}
