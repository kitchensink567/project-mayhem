package
{
   public class o4605 extends o3052
   {
       
      
      private var o20109:o15787;
      
      public function o4605(param1:String, param2:o2693)
      {
         o20109 = new o15787(0);
         super();
         super.init(param1,param2);
         o20109.value = param2.o17521(param1 + "bossDamage");
      }
      
      public function get o3099() : Number
      {
         return o20109.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o3099 = param1.o13012.o3099 + o3099;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o3099 = param1.o13012.o3099 - o3099;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[BOSS_DAMAGE]",o3099);
      }
   }
}
