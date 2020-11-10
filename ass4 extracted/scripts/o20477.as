package
{
   public class o20477 extends o3052
   {
       
      
      private var o18790:o15787;
      
      public function o20477(param1:String, param2:o2693)
      {
         o18790 = new o15787(0);
         super();
         super.init(param1,param2);
         o18790.value = param2.o17521(param1 + "ignoreKilledChance");
      }
      
      public function get o16594() : Number
      {
         return o18790.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o16594 = param1.o13012.o16594 + o16594;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o16594 = param1.o13012.o16594 - o16594;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[IGNORE_KILLED_CHANCE]",o16594);
      }
   }
}
