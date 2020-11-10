package
{
   public class o8062 extends o3052
   {
       
      
      private var o17979:o16123;
      
      public function o8062(param1:String, param2:o2693)
      {
         o17979 = new o16123(0);
         super();
         super.init(param1,param2);
         o17979.value = param2.o3554(param1 + "extraActiveTurrets");
      }
      
      public function get o6452() : int
      {
         return o17979.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o6452 = param1.o13012.o6452 + o6452;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o6452 = param1.o13012.o6452 - o6452;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[EXTRA_ACTIVE_TURRETS]",o6452);
      }
   }
}
