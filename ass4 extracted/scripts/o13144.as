package
{
   import flash.events.Event;
   
   public class o13144 extends Event
   {
       
      
      public var width:int = 0;
      
      public var height:int = 0;
      
      public function o13144()
      {
         super(o9363.o12455.toString());
      }
      
      public function initialise(param1:int, param2:int) : void
      {
         this.width = param1;
         this.height = param2;
      }
   }
}
