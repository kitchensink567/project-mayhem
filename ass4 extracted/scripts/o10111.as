package
{
   public class o10111
   {
      
      private static var o10696:Vector.<o10111> = new Vector.<o10111>();
       
      
      public var id:int;
      
      public var o11436:Number;
      
      public var o6193:Number;
      
      public var o3:int;
      
      public var o19754:o7848;
      
      public var o7869:o7848;
      
      public var o14661:int;
      
      public var o11244:Number;
      
      public var o1783:int;
      
      public var o18236:int;
      
      public function o10111()
      {
         super();
      }
      
      public static function o1346() : o10111
      {
         if(o10696.length == 0)
         {
            return new o10111();
         }
         return o10696.pop();
      }
      
      public function init(param1:int, param2:Number, param3:Number, param4:int, param5:o7848, param6:o7848 = null, param7:Number = 0, param8:int = -1, param9:int = 0) : o10111
      {
         this.id = param1;
         this.o11436 = param2;
         o6193 = param3;
         this.o3 = param4;
         this.o19754 = param5;
         this.o7869 = param6;
         this.o11244 = param7;
         this.o1783 = param8;
         this.o18236 = param9;
         return this;
      }
      
      public function o13640() : void
      {
         o10696.push(this);
      }
   }
}
