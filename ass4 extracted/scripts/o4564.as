package
{
   public class o4564 extends o3052
   {
       
      
      private var o17393:o16123;
      
      public function o4564(param1:String, param2:o2693)
      {
         o17393 = new o16123(0);
         super();
         super.init(param1,param2);
         o17393.value = param2.o3554(param1 + "manufacturerId");
      }
      
      public function get o19365() : int
      {
         return o17393.value;
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
