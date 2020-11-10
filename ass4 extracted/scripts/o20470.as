package
{
   public class o20470 extends o3052
   {
       
      
      private var o2923:o15787;
      
      public function o20470(param1:String, param2:o2693)
      {
         o2923 = new o15787(0);
         super();
         super.init(param1,param2);
         o2923.value = param2.o17521(param1 + "turretDamage");
      }
      
      public function get o8438() : Number
      {
         return o2923.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o7909 = param1.o13012.o7909 + o8438;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o7909 = param1.o13012.o7909 - o8438;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[TURRET_DAMAGE]",o8438);
      }
   }
}
