package
{
   public class o9861 extends o13660
   {
       
      
      private var o8027:o14200;
      
      public function o9861(param1:o14200)
      {
         super();
         o8027 = param1;
      }
      
      override protected function o5138() : o328
      {
         return new o5899(o8027);
      }
      
      override protected function o8132(param1:int) : void
      {
         var _loc2_:o1832 = o8027.o5292.o16413(param1);
         this.o16989.o13483(_loc2_.name,_loc2_.o7962,o4223,o11135,false);
      }
      
      private function o4223() : void
      {
         o16571();
      }
      
      private function o11135() : void
      {
         o16366();
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override public function o13640() : void
      {
         o8027 = null;
         super.o13640();
      }
   }
}
