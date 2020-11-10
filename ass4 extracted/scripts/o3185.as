package
{
   public class o3185 extends o3052
   {
       
      
      private var o15146:o16123;
      
      public function o3185(param1:String, param2:o2693)
      {
         o15146 = new o16123(0);
         super();
         super.init(param1,param2);
         o15146.value = param2.o3554(param1 + "fieldSupplyGrenades");
      }
      
      public function get o4797() : int
      {
         return o15146.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o4797 = param1.o13012.o4797 + o4797;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o4797 = param1.o13012.o4797 - o4797;
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[FIELD_SUPPLIES_GRENADES]",o4797);
      }
   }
}
