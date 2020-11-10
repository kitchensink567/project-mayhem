package
{
   public class o2940
   {
      
      public static const o12796:int = 1;
      
      public static const o10074:int = 2;
      
      public static const o6928:int = 3;
      
      private static var o10696:Vector.<o2940> = new Vector.<o2940>();
       
      
      public var o5092:int = 0;
      
      public var o3079:int = 0;
      
      public var o6355:Number = 0;
      
      public var o2031:Number = 0;
      
      public function o2940()
      {
         super();
      }
      
      public static function o19216() : o2940
      {
         if(o10696.length == 0)
         {
            return new o2940();
         }
         return o10696.pop();
      }
      
      public function initialise(param1:int, param2:int, param3:Number, param4:Number) : o2940
      {
         this.o5092 = param1;
         this.o3079 = param2;
         this.o6355 = param3;
         this.o2031 = param4;
         return this;
      }
      
      public function o13640() : void
      {
         o10696.push(this);
      }
   }
}
