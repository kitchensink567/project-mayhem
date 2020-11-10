package
{
   public class o4016
   {
      
      private static var o10696:Vector.<o4016> = new Vector.<o4016>();
       
      
      public var amount:Number = 0;
      
      public var o3:int = 0;
      
      public var o16334:o7848 = null;
      
      public var o7869:o7848 = null;
      
      public var o4835:o7848 = null;
      
      public var o1487:Number = 0;
      
      public var o20248:Number = 0;
      
      public var o9273:Number = 0;
      
      public var o4128:Number = 0;
      
      public var o9968:Boolean = false;
      
      public var isCrit:Boolean = false;
      
      public var o19367:Boolean = false;
      
      public var o6522:int = 0;
      
      public var o2720:Boolean = true;
      
      public var o2344:Boolean = false;
      
      public var o9486:Number = 0;
      
      public var o13589:int = -1;
      
      public var o1783:int = -1;
      
      public function o4016()
      {
         super();
      }
      
      public static function o10062() : o4016
      {
         if(o10696.length == 0)
         {
            return new o4016();
         }
         return o10696.pop();
      }
      
      public function initialise(param1:Number, param2:int, param3:o7848, param4:o7848 = null, param5:Number = 0, param6:Number = 0, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:int = 0, param12:Boolean = false, param13:Number = 0, param14:int = -1, param15:Boolean = false, param16:int = -1) : o4016
      {
         this.amount = param1;
         this.o3 = param2;
         this.o16334 = param3;
         this.o7869 = param4;
         this.o1487 = param5;
         this.o20248 = param6;
         this.o9273 = param7;
         this.o4128 = param8;
         this.o9968 = param9;
         this.isCrit = param10;
         this.o19367 = param15;
         this.o6522 = param11;
         this.o2344 = param12;
         this.o9486 = param13;
         this.o13589 = param14;
         this.o1783 = param16;
         return this;
      }
      
      public function o13640() : void
      {
         o10696.push(this);
      }
   }
}
