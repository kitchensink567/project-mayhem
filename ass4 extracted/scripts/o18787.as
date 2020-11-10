package
{
   import flash.events.Event;
   
   public class o18787 extends Event
   {
      
      public static const TYPE:String = "FixtureContactEvent";
       
      
      public var o9712:uint = 0;
      
      public var o13724:uint = 0;
      
      public var o16210:Vector.<o18509> = null;
      
      public function o18787()
      {
         super(TYPE);
      }
      
      public function initialise(param1:uint, param2:uint, param3:Vector.<o18509>) : void
      {
         this.o9712 = param1;
         this.o13724 = param2;
         this.o16210 = param3;
      }
   }
}
