package
{
   public class o7226 extends o3052
   {
       
      
      private var o450:o15787;
      
      public function o7226(param1:String, param2:o2693)
      {
         o450 = new o15787(0);
         super();
         super.init(param1,param2);
         o450.value = param2.o17521(param1 + "fasterRecoveryTime");
      }
      
      public function get o5347() : Number
      {
         return o450.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o1711 = param1.o1711 + o5347;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o1711 = param1.o1711 - o5347;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[FASTER_RECOVERY_TIME]",o5347);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 20;
      }
      
      override protected function o17667(param1:Number) : Number
      {
         return o5347;
      }
   }
}
