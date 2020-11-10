package
{
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class o1519 extends Event
   {
       
      
      public var o20488:o6212 = null;
      
      public var data:ByteArray = null;
      
      public var o9112:Boolean = false;
      
      public function o1519()
      {
         super(o3348.o5373.toString());
      }
      
      public function initialise(param1:o6212) : void
      {
         this.o20488 = param1;
      }
   }
}
