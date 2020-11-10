package
{
   import flash.events.Event;
   
   public class o19869 extends Event
   {
      
      public static var o6389:int = o19504.o4386();
      
      public static var o17670:int = o19504.o4386();
      
      public static var o391:int = o19504.o4386();
       
      
      public var o19898:o444;
      
      public var error:String;
      
      public var o1216:String;
      
      public function o19869(param1:int, param2:o444, param3:String = null, param4:String = null)
      {
         error = "ERROR NOT SET";
         o1216 = "MESSAGE NOT SET";
         super(param1.toString());
         this.error = param3 == null?"Unknown error":param3;
         this.o1216 = param4 == null?"Unknown error":param4;
         this.o19898 = param2;
      }
   }
}
