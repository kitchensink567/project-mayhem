package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o11855 extends MovieClip
   {
       
      
      public var o4546:Function;
      
      public function o11855()
      {
         super();
      }
      
      public function init(param1:int, param2:Function) : void
      {
         this.addEventListener("removedFromStage",o7675,false,0,true);
         this.o4546 = param2;
         var _loc3_:String = o4519.o8116.o5830.o9009(param1);
         if(_loc3_ != null)
         {
            o4519.o8116.o1234.o11690(_loc3_).defer(o2622);
         }
      }
      
      private function o2622(param1:Class) : void
      {
         var _loc2_:Object = new param1();
         this.addChild(_loc2_ as MovieClip);
         if(o4546 != null)
         {
            o4546(_loc2_ as MovieClip);
            o4546 = null;
         }
      }
      
      private function o7675(param1:Event) : void
      {
         this.removeEventListener("removedFromStage",o7675);
         o4546 = null;
      }
      
      public function o19115() : void
      {
         o4546 = null;
      }
   }
}
