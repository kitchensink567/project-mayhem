package
{
   public class o10411
   {
       
      
      private var o5671:o16123;
      
      public function o10411(param1:Boolean)
      {
         super();
         o5671 = new o16123(!!param1?1:0);
      }
      
      public function o19115() : void
      {
         o5671 = null;
      }
      
      public function set value(param1:Boolean) : void
      {
         o5671.value = !!param1?1:0;
      }
      
      public function get value() : Boolean
      {
         return o5671.value != 0;
      }
   }
}
