package
{
   public class o12755 extends o3052
   {
       
      
      private var o3730:o15787;
      
      private var o14015:o15787;
      
      public function o12755(param1:String, param2:o2693)
      {
         o3730 = new o15787(0);
         o14015 = new o15787(0);
         super();
         super.init(param1,param2);
         o3730.value = param2.o17521(param1 + "superCritChance");
         o14015.value = param2.o17521(param1 + "superCritDamageMultiplier") - 1;
      }
      
      public function get o13904() : Number
      {
         return o3730.value;
      }
      
      public function get o11932() : Number
      {
         return o14015.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o13904 = param1.o13012.o13904 + o13904;
         param1.o13012.o11932 = param1.o13012.o11932 + o11932;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o13904 = param1.o13012.o13904 - o13904;
         param1.o13012.o11932 = param1.o13012.o11932 - o11932;
      }
      
      override public function o3309(param1:String) : String
      {
         var _loc2_:String = o12267(param1,"[SUPER_CRIT_CHANCE]",o13904);
         _loc2_ = o679(_loc2_,"[SUPER_CRIT_DAMAGE_MULTIPLIER]",o11932);
         return _loc2_;
      }
   }
}
