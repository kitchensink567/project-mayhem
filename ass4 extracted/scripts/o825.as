package
{
   public class o825
   {
       
      
      public var o10236:o7705;
      
      public var o11718:o7705;
      
      public var o12328:o7705;
      
      public function o825()
      {
         super();
         o10236 = new o7705();
         o11718 = new o7705();
         o12328 = new o7705();
      }
      
      public function o19126(param1:int) : o7705
      {
         switch(int(param1) - 1)
         {
            case 0:
               return o10236;
            case 1:
               return o11718;
            case 2:
               return o12328;
         }
      }
   }
}
