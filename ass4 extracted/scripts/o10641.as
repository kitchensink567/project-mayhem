package
{
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class o10641 extends Event
   {
       
      
      public var o20488:o6212 = null;
      
      public var data:ByteArray = null;
      
      public var o9112:Boolean = false;
      
      public var o15752:Boolean = false;
      
      public var o4385:int = -1;
      
      public var o5081:Boolean = true;
      
      public function o10641()
      {
         super(o3348.o20630.toString());
      }
      
      public function initialise(param1:o6212, param2:ByteArray, param3:Boolean = false, param4:Boolean = false, param5:int = -1, param6:Boolean = true) : void
      {
         this.o20488 = param1;
         this.data = param2;
         this.o9112 = param3;
         this.o15752 = param4;
         this.o4385 = param5;
         this.o5081 = param6;
      }
   }
}
