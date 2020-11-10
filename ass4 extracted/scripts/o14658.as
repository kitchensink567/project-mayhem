package
{
   public class o14658 extends o3052
   {
       
      
      private var o2679:o15787;
      
      public function o14658(param1:String, param2:o2693)
      {
         o2679 = new o15787(0);
         super();
         super.init(param1,param2);
         o2679.value = param2.o17521(param1 + "critDamage");
      }
      
      public function get o4045() : Number
      {
         return o2679.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13789 = param1.o13789 + o4045;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13789 = param1.o13789 - o4045;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[CRIT_DAMAGE]",o4045);
      }
   }
}
