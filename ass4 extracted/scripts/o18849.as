package
{
   public class o18849
   {
       
      
      public var o19417:Scene = null;
      
      public var o19927:uint = 0;
      
      public var o15110:uint = 0;
      
      public var o13546:uint = 0;
      
      public var o15889:uint = 0;
      
      public var o19501:uint = 0;
      
      private var o3727:Number = 0;
      
      public function o18849()
      {
         super();
      }
      
      public function initialise(param1:Scene, param2:uint, param3:uint, param4:uint, param5:uint, param6:uint) : void
      {
         this.o19417 = param1;
         this.o19927 = param2;
         this.o15110 = param3;
         this.o13546 = param4;
         this.o15889 = param5;
         this.o19501 = param5;
         param1.o16687(param3,0);
         param1.o3845(param4,1,1);
      }
      
      public function set rotation(param1:Number) : void
      {
         o3727 = param1;
         o19417.o16687(o15110,o3727);
      }
   }
}
