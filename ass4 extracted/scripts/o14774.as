package
{
   import flash.display.DisplayObject;
   import flash.display.LoaderInfo;
   import flash.events.ErrorEvent;
   import flash.events.UncaughtErrorEvent;
   
   public class o14774
   {
       
      
      private var o1168:DisplayObject;
      
      private var o19976:LoaderInfo;
      
      public var o16316:Function;
      
      public function o14774()
      {
         super();
      }
      
      public function o8858(param1:DisplayObject, param2:LoaderInfo) : void
      {
         this.o1168 = param1;
         if(this.o19976 != null)
         {
            return;
         }
         this.o19976 = param2;
         param2.uncaughtErrorEvents.addEventListener("uncaughtError",o16903);
      }
      
      private function o16903(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:* = null;
         if(o16316 != null)
         {
            o16316(param1);
         }
         if(!(param1.error is Error))
         {
            if(param1.error is ErrorEvent)
            {
               _loc2_ = param1.error as ErrorEvent;
               o8339(_loc2_.errorID);
            }
            else
            {
               o8339(param1.error);
            }
         }
      }
   }
}
