package
{
   import flash.events.Event;
   
   public class o18264 extends o9743
   {
       
      
      public var o6353:Function;
      
      public function o18264()
      {
         super();
      }
      
      override protected function o2635(param1:Event) : void
      {
         super.o2635(param1);
         if(o6353 != null)
         {
            o6353();
         }
      }
      
      override protected function set o11985(param1:int) : void
      {
         .super.o11985 = param1;
      }
      
      override public function o13640() : void
      {
         o6353 = null;
         super.o13640();
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
      }
   }
}
