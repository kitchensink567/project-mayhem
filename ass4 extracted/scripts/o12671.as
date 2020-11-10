package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.Timer;
   
   public class o12671 extends o15625
   {
       
      
      public var o8737:Function;
      
      private var o8238:Timer;
      
      private var o10432:Timer;
      
      public function o12671()
      {
         super();
         o8238;
         o10432 = new Timer(166.666666666667);
         o10432.addEventListener("timer",o20701,false,0,true);
         o8238 = new Timer(1000);
         o8238.addEventListener("timer",o17582,false,0,true);
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         (param1 as MovieClip).addEventListener("deactivate",o5403,false,0,true);
      }
      
      private function o5403(param1:Event) : void
      {
         o8238.stop();
         o10432.stop();
      }
      
      private function o17582(param1:Event) : void
      {
         o8238.stop();
         o10432.reset();
         o10432.start();
      }
      
      private function o20701(param1:Event) : void
      {
      }
      
      override public function o9173(param1:String) : void
      {
         var _loc2_:String = this.o501;
         super.o9173(param1);
         if(_loc2_ != param1)
         {
            if(param1 == "down")
            {
               o10432.stop();
               o8238.reset();
               o8238.start();
            }
            else
            {
               o8238.stop();
               o10432.stop();
            }
         }
      }
      
      override public function o13640() : void
      {
         o8238.stop();
         o10432.stop();
         (asset as MovieClip).removeEventListener("deactivate",o5403);
         o10432.removeEventListener("timer",o20701);
         o8238.removeEventListener("timer",o17582);
         o8238 = null;
         o10432 = null;
         o8737 = null;
         super.o13640();
      }
   }
}
