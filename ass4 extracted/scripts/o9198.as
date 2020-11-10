package
{
   public class o9198 extends o3052
   {
       
      
      private var o8431:o15787;
      
      public function o9198(param1:String, param2:o2693)
      {
         o8431 = new o15787(0);
         super();
         super.init(param1,param2);
         o8431.value = param2.o17521(param1 + "turretAttackSpeed");
      }
      
      public function get o6930() : Number
      {
         return o8431.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o6930 = param1.o13012.o6930 + o6930;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o6930 = param1.o13012.o6930 - o6930;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[TURRET_ATTACK_SPEED]",o6930);
      }
   }
}
