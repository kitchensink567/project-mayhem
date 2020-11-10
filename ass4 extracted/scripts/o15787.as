package
{
   public class o15787
   {
       
      
      private var o12395:Number;
      
      private var o17768:Number;
      
      private var o9412:Number;
      
      private var o4512:Number;
      
      public function o15787(param1:Number)
      {
         super();
         this.value = param1;
      }
      
      public function set value(param1:Number) : void
      {
         o12395 = o16038.o8040();
         o17768 = param1 - o12395;
         o9412 = o16038.o8040();
         o4512 = param1 - o9412;
      }
      
      public function get value() : Number
      {
         return o12395 + o17768;
      }
   }
}
