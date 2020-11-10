package
{
   import flash.events.Event;
   
   public class o708 extends Event
   {
      
      public static const TYPE:String = "BodyPosition";
       
      
      public var body:uint = 0;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public function o708(param1:uint, param2:Number, param3:Number)
      {
         this.body = param1;
         this.x = param2;
         this.y = param3;
         super(TYPE);
      }
   }
}
