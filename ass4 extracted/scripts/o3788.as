package
{
   public class o3788 extends o3052
   {
       
      
      private var o12269:o16123;
      
      public function o3788(param1:String, param2:o2693)
      {
         o12269 = new o16123(0);
         super();
         super.init(param1,param2);
         o12269.value = param2.o3554(param1 + "blackWeapon");
      }
      
      override public function get o2723() : Boolean
      {
         return false;
      }
      
      public function get o7810() : int
      {
         return o12269.value;
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
