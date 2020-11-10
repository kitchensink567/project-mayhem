package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class o17621 extends o6132
   {
       
      
      private var data:o14200;
      
      public function o17621(param1:o14200)
      {
         super();
         this.data = param1;
      }
      
      override public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         super.o16384(param1,param2,param3);
      }
      
      override protected function o8057(param1:Event) : void
      {
         var _loc2_:URLRequest = new URLRequest(data.o5292.o3475);
      }
      
      override protected function o17854(param1:Event) : void
      {
         var _loc2_:* = null;
         if(o4519.o17061)
         {
            o4519.kong.showRegistrationBox();
         }
         else
         {
            _loc2_ = new URLRequest(data.o5292.o12142);
            navigateToURL(_loc2_);
         }
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override public function o13640() : void
      {
         data = null;
         super.o13640();
      }
   }
}
