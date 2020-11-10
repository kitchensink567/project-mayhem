package
{
   public class o5792 extends o3052
   {
       
      
      private var o9446:o16123;
      
      public function o5792(param1:String, param2:o2693)
      {
         o9446 = new o16123(0);
         super();
         super.init(param1,param2);
         o9446.value = param2.o3554(param1 + "maxGrenades");
      }
      
      public function get o17888() : int
      {
         return o9446.value;
      }
      
      override public function o13260() : void
      {
         if(o4519.o8116.profileData.o7923.o13012.o220 < o17888)
         {
            o4519.o8116.profileData.o7923.o13012.o220 = o17888;
         }
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[MAX_GRENADES]",o17888);
      }
   }
}
