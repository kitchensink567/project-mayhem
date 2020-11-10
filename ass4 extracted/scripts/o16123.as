package
{
   public class o16123
   {
       
      
      private var o12395:int;
      
      private var o17768:int;
      
      private var o9412:int;
      
      private var o4512:int;
      
      public function o16123(param1:int)
      {
         super();
         this.value = param1;
      }
      
      public function o19115() : void
      {
         o12395 = 0;
         o17768 = 0;
         o9412 = 0;
         o4512 = 0;
      }
      
      public function set value(param1:int) : void
      {
         o12395 = o16038.o8040();
         o17768 = param1 - o12395;
         o9412 = o16038.o8040();
         o4512 = param1 - o9412;
      }
      
      public function get value() : int
      {
         return o12395 + o17768;
      }
   }
}
