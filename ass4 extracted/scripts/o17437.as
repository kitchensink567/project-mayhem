package
{
   import flash.events.Event;
   
   public class o17437 extends Event
   {
       
      
      public var asset:Class = null;
      
      public var id:String = null;
      
      public function o17437()
      {
         super(o11719.o5422.toString());
      }
      
      public function initialise(param1:Class, param2:String) : void
      {
         this.asset = param1;
         this.id = param2;
      }
   }
}
