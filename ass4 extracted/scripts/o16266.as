package
{
   import flash.events.Event;
   
   public class o16266 extends Event
   {
      
      public static const TYPE:String = "BodyDestroyEvent";
       
      
      public var body:uint = 0;
      
      public function o16266()
      {
         super(TYPE);
      }
      
      public function initialise(param1:uint) : void
      {
         this.body = param1;
      }
   }
}
