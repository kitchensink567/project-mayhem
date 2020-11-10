package
{
   public class o19780 extends o3052
   {
       
      
      private var o3912:o15787;
      
      public function o19780(param1:String, param2:o2693)
      {
         o3912 = new o15787(0);
         super();
         super.init(param1,param2);
         o3912.value = param2.o17521(param1 + "obstacleDamage");
      }
      
      public function get o5334() : Number
      {
         return o3912.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o13072 = param1.o13012.o13072 + o5334;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o13072 = param1.o13012.o13072 - o5334;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[OBSTACLE_DAMAGE]",o5334);
      }
   }
}
