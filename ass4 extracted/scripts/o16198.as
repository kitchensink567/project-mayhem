package
{
   import flash.events.Event;
   
   public class o16198 extends Event
   {
      
      public static const TYPE:String = "EndContactEvent";
       
      
      public var o6133:uint = 0;
      
      public var o3428:uint = 0;
      
      public function o16198()
      {
         super(TYPE);
      }
      
      public function initialise(param1:uint, param2:uint) : void
      {
         this.o6133 = param1;
         this.o3428 = param2;
      }
   }
}
