package
{
   import flash.events.Event;
   
   public class o11273 extends Event
   {
      
      public static const TYPE:String = "FixtureEndContactEvent";
       
      
      public var o9712:uint = 0;
      
      public var o13724:uint = 0;
      
      public function o11273()
      {
         super(TYPE);
      }
      
      public function initialise(param1:uint, param2:uint, param3:Number = 0, param4:Number = 0) : void
      {
         this.o9712 = param1;
         this.o13724 = param2;
      }
   }
}
