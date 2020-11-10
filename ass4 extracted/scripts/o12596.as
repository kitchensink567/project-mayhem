package
{
   public class o12596 extends o3052
   {
       
      
      private var o17495:o16123;
      
      public function o12596(param1:String, param2:o2693)
      {
         o17495 = new o16123(0);
         super();
         super.init(param1,param2);
         o17495.value = param2.o3554(param1 + "clipSize");
      }
      
      public function get o3603() : int
      {
         return o17495.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o11026 = param1.o13012.o11026 + o3603;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o11026 = param1.o13012.o11026 - o3603;
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[CLIP_SIZE]",o3603);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 8;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return o3603;
      }
   }
}
