package
{
   public class o10010 extends o3052
   {
       
      
      private var o4731:o15787;
      
      public function o10010(param1:String, param2:o2693)
      {
         o4731 = new o15787(0);
         super();
         super.init(param1,param2);
         o4731.value = param2.o17521(param1 + "grenadeDamage");
      }
      
      public function get o19830() : Number
      {
         return o4731.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o14099 = param1.o14099 + o19830;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o14099 = param1.o14099 - o19830;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[GRENADE_DAMAGE]",o19830);
      }
   }
}
