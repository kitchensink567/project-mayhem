package
{
   public class o12642 extends o3052
   {
       
      
      private var o12303:o16123;
      
      public function o12642(param1:String, param2:o2693)
      {
         o12303 = new o16123(0);
         super();
         super.init(param1,param2);
         o12303.value = param2.o3554(param1 + "sasCash");
      }
      
      override public function get o2723() : Boolean
      {
         return false;
      }
      
      public function get o18409() : int
      {
         return o12303.value;
      }
      
      override public function o13260() : void
      {
         o4519.o8116.profileData.o7923.o20170 = o4519.o8116.profileData.o7923.o20170 + o18409;
      }
      
      override public function o3309(param1:String) : String
      {
         return o16512(param1,"[SAS_CASH]",o18409);
      }
   }
}
