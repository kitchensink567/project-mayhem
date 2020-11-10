package
{
   public class o6532
   {
       
      
      private var o8878:uint = 0;
      
      private var o785:uint = 0;
      
      private var o6963:uint = 0;
      
      public function o6532(param1:Number, param2:Number, param3:Number)
      {
         super();
         o8878 = uint(255 * o10852.o2404(param1,0,1));
         o785 = uint(255 * o10852.o2404(param2,0,1));
         o6963 = uint(255 * o10852.o2404(param3,0,1));
      }
      
      public function o18596(param1:Number, param2:Number, param3:Number) : void
      {
         o8878 = uint(255 * o10852.o2404(param1,0,1));
         o785 = uint(255 * o10852.o2404(param2,0,1));
         o6963 = uint(255 * o10852.o2404(param3,0,1));
      }
      
      public function set o8775(param1:Number) : void
      {
         o8878 = uint(255 * o10852.o2404(param1,0,1));
      }
      
      public function set g(param1:Number) : void
      {
         o785 = uint(255 * o10852.o2404(param1,0,1));
      }
      
      public function set o17768(param1:Number) : void
      {
         o6963 = uint(255 * o10852.o2404(param1,0,1));
      }
      
      public function get color() : uint
      {
         return o8878 << 16 | o785 << 8 | o6963;
      }
   }
}
