package
{
   public class o827 extends o3052
   {
       
      
      private var o14723:o15787;
      
      public function o827(param1:String, param2:o2693)
      {
         o14723 = new o15787(0);
         super();
         super.init(param1,param2);
         o14723.value = param2.o17521(param1 + "hdAmmoDamagePercent");
      }
      
      public function get o4851() : Number
      {
         return o14723.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         if(param1.o13012.o3141 < 1 + o4851)
         {
            param1.o13012.o3141 = 1 + o4851;
         }
      }
      
      override public function o11882(param1:o17517) : void
      {
         throw new Error("Can\'t assign to weapon");
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[HD_AMMO_DAMAGE_PERCENT]",o4851);
      }
   }
}
