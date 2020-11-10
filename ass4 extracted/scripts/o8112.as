package
{
   public class o8112
   {
       
      
      private var o16649:o16123;
      
      private var o8157:o10411;
      
      public function o8112(param1:Object)
      {
         o16649 = new o16123(0);
         o8157 = new o10411(false);
         super();
         o3848(param1);
      }
      
      public function get o11065() : int
      {
         return this.o16649.value;
      }
      
      public function get o13917() : Boolean
      {
         return this.o8157.value;
      }
      
      public function set o11065(param1:int) : void
      {
         this.o16649.value = param1;
      }
      
      public function set o13917(param1:Boolean) : void
      {
         this.o8157.value = param1;
      }
      
      public function o3848(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.o13917 = param1 != null;
         this.o11065 = o17485(o11065,param1,"EventPoints") as int;
      }
      
      private function o17485(param1:*, param2:Object, param3:String) : *
      {
         if(isNaN(param2[param3]) == false)
         {
            return param2[param3];
         }
         return param1;
      }
      
      public function o10001() : String
      {
         return o11065 > 0?" Points: " + o11065.toString():"";
      }
      
      public function o19115() : void
      {
         o8157.o19115();
         o8157 = null;
         o16649 = null;
      }
   }
}
