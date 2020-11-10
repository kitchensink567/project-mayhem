package
{
   public class o473
   {
       
      
      public var o14556:int = 1;
      
      public var o12917:uint = 0;
      
      public var o16396:uint = 0;
      
      public var o8270:uint = 0;
      
      public var scale:uint = 0;
      
      public var o20917:o14748;
      
      public function o473()
      {
         super();
      }
      
      public function initialise(param1:*, param2:int, param3:Number, param4:Number, param5:int, param6:int, param7:uint, param8:uint, param9:uint, param10:uint, param11:int) : void
      {
         this.o12917 = param7;
         this.o16396 = param8;
         this.o8270 = param9;
         this.scale = param10;
         this.o20917 = o17541.o13617(param1,param2);
         this.o20917.initialise(param2,param3,param4,param5,param6,param11);
      }
      
      public function o5953() : void
      {
         o20917 = null;
      }
   }
}
