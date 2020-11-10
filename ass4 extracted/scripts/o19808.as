package
{
   public class o19808 extends o3052
   {
       
      
      private var o6820:o16123;
      
      private var o13018:o16123;
      
      public function o19808(param1:String, param2:o2693)
      {
         o6820 = new o16123(0);
         o13018 = new o16123(0);
         super();
         super.init(param1,param2);
         o6820.value = param2.o3554(param1 + "consumableId");
         o13018.value = param2.o3554(param1 + "qty");
      }
      
      override public function get o2723() : Boolean
      {
         return false;
      }
      
      public function get o10903() : int
      {
         return o6820.value;
      }
      
      public function get o10808() : int
      {
         return o13018.value;
      }
      
      override public function o13260() : void
      {
         o4519.o8116.profileData.o7923.o3525.o780(o10903,o10808);
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[QTY]",o10808);
      }
   }
}
