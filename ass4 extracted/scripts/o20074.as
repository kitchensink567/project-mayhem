package
{
   public class o20074
   {
       
      
      private var o10039:o16123;
      
      private var o448:o15787;
      
      private var o20197:o16123;
      
      public var o3753:Boolean = true;
      
      public function o20074(param1:int, param2:Number, param3:int)
      {
         o10039 = new o16123(0);
         o448 = new o15787(0);
         o20197 = new o16123(0);
         super();
         this.o10039.value = param1;
         this.o448.value = param2;
         this.o20197.value = param3;
      }
      
      public function get o16146() : int
      {
         return o10039.value;
      }
      
      public function get o18177() : Number
      {
         return o448.value;
      }
      
      public function get o17913() : int
      {
         return o20197.value;
      }
      
      public function apply(param1:Number) : Number
      {
         if(o17913 == 1)
         {
            return param1 * o18177;
         }
         if(o17913 == 2)
         {
            return param1 + o18177;
         }
         return 0;
      }
      
      public function o19115() : void
      {
         if(o3753 == false)
         {
            return;
         }
         o10039 = null;
         o448 = null;
         o20197 = null;
      }
   }
}
