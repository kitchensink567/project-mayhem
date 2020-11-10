package
{
   public class o9202 extends o3052
   {
       
      
      private var o9132:o15787;
      
      public function o9202(param1:String, param2:o2693)
      {
         o9132 = new o15787(0);
         super();
         super.init(param1,param2);
         o9132.value = param2.o17521(param1 + "reducedSpreed");
      }
      
      public function get o12504() : Number
      {
         return o9132.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o5798 = param1.o13012.o5798 - o12504;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o5798 = param1.o13012.o5798 + o12504;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[REDUCED_SPREAD]",o12504);
      }
   }
}
