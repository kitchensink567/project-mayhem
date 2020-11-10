package
{
   import flash.events.Event;
   
   public class o14689 extends Event
   {
       
      
      public var o7060:String;
      
      public var visible:Boolean;
      
      public var x:Number;
      
      public var y:Number;
      
      public function o14689(param1:int, param2:String = null, param3:Boolean = false, param4:Number = 0, param5:Number = 0)
      {
         this.o7060 = param2;
         this.visible = param3;
         this.x = param4;
         this.y = param5;
         super(String(param1));
      }
   }
}
