package
{
   public class o20544
   {
       
      
      private var o20657:o16123;
      
      public function o20544(param1:Object)
      {
         o20657 = new o16123(0);
         super();
         if(param1["MaxGlobalEventScore"] != null)
         {
            o20022 = param1["MaxGlobalEventScore"];
         }
      }
      
      public function get o20022() : int
      {
         return this.o20657.value;
      }
      
      public function set o20022(param1:int) : void
      {
         this.o20657.value = param1;
      }
   }
}
