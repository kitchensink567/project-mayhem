package
{
   public class o12243 extends o3052
   {
       
      
      private var o13506:o15787;
      
      public function o12243(param1:String, param2:o2693)
      {
         o13506 = new o15787(0);
         super();
         super.init(param1,param2);
         o13506.value = param2.o17521(param1 + "freeTurrets");
      }
      
      public function get o70() : Number
      {
         return o13506.value;
      }
      
      override public function o13260() : void
      {
         var _loc1_:o9503 = o4519.o8116.profileData.o7923.o3525;
         _loc1_.o780(4,o70);
         _loc1_.o780(5,o70);
         _loc1_.o780(6,o70);
         _loc1_.o780(7,o70);
         _loc1_.o780(8,o70);
         _loc1_.o780(9,o70);
         _loc1_.o780(10,o70);
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[FREE_TURRETS]",o70);
      }
   }
}
