package
{
   import flash.events.Event;
   
   public class o8860 extends Event
   {
      
      public static var o291:int = o19504.o4386();
       
      
      public var o1024:String;
      
      public var o32:o17517;
      
      public var o815:int;
      
      public function o8860(param1:String, param2:o17517, param3:int = 0)
      {
         super(o291.toString());
         this.o1024 = param1;
         this.o32 = param2;
         this.o815 = param3;
      }
      
      public function o18407() : Boolean
      {
         return o815 > 0;
      }
   }
}
