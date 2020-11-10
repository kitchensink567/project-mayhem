package
{
   public class o19720
   {
       
      
      private var o10160:o16123;
      
      public var o17537:String;
      
      public var name:String;
      
      public var o10020:String;
      
      public var o2768:String;
      
      public function o19720(param1:int, param2:String, param3:String, param4:String, param5:String)
      {
         o10160 = new o16123(0);
         super();
         this.o16173 = param1;
         this.name = param2;
         this.o17537 = param3;
         this.o10020 = param4;
         this.o2768 = param5;
      }
      
      public function get o16173() : int
      {
         return this.o10160.value;
      }
      
      public function set o16173(param1:int) : void
      {
         this.o10160.value = param1;
      }
   }
}
