package
{
   public class o4233
   {
       
      
      private var o10024:o16123;
      
      private var o2943:o16123;
      
      private var o18559:o16123;
      
      public function o4233()
      {
         o10024 = new o16123(0);
         o2943 = new o16123(0);
         o18559 = new o16123(0);
         super();
      }
      
      public function get o3662() : int
      {
         return o10024.value;
      }
      
      public function get o979() : int
      {
         return o2943.value;
      }
      
      public function get o2596() : int
      {
         return o18559.value;
      }
      
      public function set o3662(param1:int) : void
      {
         o10024.value = param1;
      }
      
      public function set o979(param1:int) : void
      {
         o2943.value = param1;
      }
      
      public function set o2596(param1:int) : void
      {
         o18559.value = param1;
      }
      
      public function o18048(param1:Object) : void
      {
         if(param1)
         {
            this.o3662 = param1["numDailyBonusWinsQty"];
            this.o979 = param1["cashBonusModifier"];
            this.o2596 = param1["xpBonusModifier"];
         }
      }
   }
}
