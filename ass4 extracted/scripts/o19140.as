package
{
   public class o19140
   {
       
      
      private var o2526:o16123;
      
      public function o19140(param1:Object)
      {
         o2526 = new o16123(0);
         super();
         if(param1["MaxHighScoresRecorded"] != null)
         {
            o17679 = param1["MaxHighScoresRecorded"];
         }
      }
      
      public function get o17679() : int
      {
         return this.o2526.value;
      }
      
      public function set o17679(param1:int) : void
      {
         this.o2526.value = param1;
      }
   }
}
