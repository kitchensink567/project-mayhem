package
{
   public class o7904 extends o3052
   {
       
      
      private var o3516:o16123;
      
      public function o7904(param1:String, param2:o2693)
      {
         o3516 = new o16123(0);
         super();
         super.init(param1,param2);
         o3516.value = param2.o3554(param1 + "bonusProjectilePerShot");
      }
      
      public function get o16435() : int
      {
         return o3516.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o17219 = param1.o13012.o17219 + o16435;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o17219 = param1.o13012.o17219 - o16435;
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[BONUS_PROJECTILE_PER_SHOT]",o16435);
      }
   }
}
