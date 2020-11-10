package
{
   public class o5746 extends o3052
   {
       
      
      private var o8029:o15787;
      
      public function o5746(param1:String, param2:o2693)
      {
         o8029 = new o15787(0);
         super();
         super.init(param1,param2);
         o8029.value = param2.o17521(param1 + "grenadeRadius");
      }
      
      public function get o13936() : Number
      {
         return o8029.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o9459 = param1.o13012.o9459 + o13936;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o9459 = param1.o13012.o9459 - o13936;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[GRENADE_RADIUS]",o13936);
      }
   }
}
