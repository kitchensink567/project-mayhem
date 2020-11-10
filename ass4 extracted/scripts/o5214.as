package
{
   public class o5214 extends o3052
   {
       
      
      private var o16488:o16123;
      
      public function o5214(param1:String, param2:o2693)
      {
         o16488 = new o16123(0);
         super();
         super.init(param1,param2);
         o16488.value = param2.o3554(param1 + "blackArmor");
      }
      
      override public function get o2723() : Boolean
      {
         return false;
      }
      
      public function get o16130() : int
      {
         return o16488.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
      }
      
      override public function o11882(param1:o17517) : void
      {
      }
      
      override public function o3309(param1:String) : String
      {
         return param1;
      }
   }
}
