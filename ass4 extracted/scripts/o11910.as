package
{
   import flash.events.Event;
   
   public class o11910 extends Event
   {
      
      public static const TYPE:String = "ContactEvent";
       
      
      public var o6133:uint = 0;
      
      public var o3428:uint = 0;
      
      public var o4688:Number = 0;
      
      public var o20286:Number = 0;
      
      public function o11910()
      {
         super(TYPE);
      }
      
      public function initialise(param1:uint, param2:uint, param3:Number = 0, param4:Number = 0) : void
      {
         this.o6133 = param1;
         this.o3428 = param2;
         this.o4688 = param3;
         this.o20286 = param4;
      }
   }
}
