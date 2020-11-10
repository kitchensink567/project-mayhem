package
{
   public class o20566 extends o3052
   {
       
      
      private var o5129:o16123;
      
      public function o20566(param1:String, param2:o2693)
      {
         o5129 = new o16123(0);
         super();
         super.init(param1,param2);
         o5129.value = param2.o3554(param1 + "pierce");
      }
      
      public function get o18640() : int
      {
         return o5129.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o12231 = param1.o13012.o12231 + o18640;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o12231 = param1.o13012.o12231 - o18640;
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[PIERCE]",o18640);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 2;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return o18640;
      }
   }
}
