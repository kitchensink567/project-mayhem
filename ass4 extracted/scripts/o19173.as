package
{
   public class o19173 extends o5497
   {
       
      
      public var type:int = 0;
      
      public var o3354:String = null;
      
      public var o9938:Vector.<o7631> = null;
      
      public var o18188:Boolean;
      
      public var o3700:String;
      
      public var o19688:Boolean = true;
      
      public function o19173(param1:int, param2:String, param3:Vector.<o7631>, param4:o5072, param5:Boolean, param6:String = null, param7:String = null, param8:String = null, param9:int = 0)
      {
         o3700 = "";
         this.type = param1;
         this.o3354 = param2;
         this.o9938 = param3;
         this.o18188 = param5;
         this.o3700 = param8;
         o19688 = param1 != 3;
         super(param4,param6,param7,param9);
      }
      
      public function o20093() : Boolean
      {
         var _loc2_:o14754 = o4519.o8116;
         var _loc1_:Date = _loc2_.o15020;
         return o4519.o8116.o15020.getTime() > o5897.end.getTime();
      }
   }
}
