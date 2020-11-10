package
{
   public class o7548 extends o3052
   {
       
      
      private var o20846:o15787;
      
      public function o7548(param1:String, param2:o2693)
      {
         o20846 = new o15787(0);
         super();
         super.init(param1,param2);
         o20846.value = param2.o17521(param1 + "turretAmmoPercent");
      }
      
      public function get o11104() : Number
      {
         return o20846.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o13553 = param1.o13012.o13553 + o11104;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o13553 = param1.o13012.o13553 - o11104;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[TURRET_AMMO_PERCENT]",o11104);
      }
   }
}
