package
{
   public class o3231 extends o3052
   {
       
      
      private var o19073:o16123;
      
      public function o3231(param1:String, param2:o2693)
      {
         o19073 = new o16123(0);
         super();
         super.init(param1,param2);
         o19073.value = param2.o3554(param1 + "keyCount");
      }
      
      override public function get o2723() : Boolean
      {
         return false;
      }
      
      public function get o12989() : int
      {
         return o19073.value;
      }
      
      override public function o13260() : void
      {
         o4519.o8116.profileData.o7923.o5532 = o4519.o8116.profileData.o7923.o5532 + o12989;
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[BLACK_KEYS]",o12989);
      }
   }
}
