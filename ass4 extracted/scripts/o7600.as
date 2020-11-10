package
{
   public class o7600
   {
       
      
      private var o11680:int = 0;
      
      public function o7600(param1:int)
      {
         super();
         this.o11680 = param1;
      }
      
      public function o11478(param1:int) : void
      {
         this.o11680 = param1;
      }
      
      public function o16682() : int
      {
         return o11680;
      }
      
      public function random() : Number
      {
         o11680 = Number(o11680) + 1;
         return o4519.o8116.random.o10418(Number(o11680));
      }
      
      public function o3471(param1:Number, param2:Number) : Number
      {
         o11680 = Number(o11680) + 1;
         return o4519.o8116.random.o10418(Number(o11680)) * (param2 - param1) + param1;
      }
   }
}
