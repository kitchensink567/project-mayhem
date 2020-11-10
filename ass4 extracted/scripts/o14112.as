package
{
   public class o14112 extends o3052
   {
       
      
      private var o12017:o16123;
      
      public function o14112(param1:String, param2:o2693)
      {
         o12017 = new o16123(0);
         super();
         super.init(param1,param2);
         o12017.value = param2.o3554(param1 + "meleeAttackerDamage");
      }
      
      public function get o16560() : int
      {
         return o12017.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o16560 = param1.o13012.o16560 + o16560;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o16560 = param1.o13012.o16560 - o16560;
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[MELEE_ATTACKER_DAMAGE]",o16560);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 21;
      }
      
      override protected function o17667(param1:Number) : Number
      {
         return o16560;
      }
   }
}
