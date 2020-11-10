package
{
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class o5881
   {
       
      
      private var asset:MovieClip;
      
      private var o1604:Timer;
      
      private var o11153:Boolean = true;
      
      private var o16217:Boolean = false;
      
      public function o5881(param1:MovieClip)
      {
         super();
         this.asset = param1;
         o1604 = new Timer(5000);
         o1604.addEventListener("timer",o5975,false,0,true);
      }
      
      private function o5975(param1:TimerEvent) : void
      {
         if(o11153)
         {
            o16217 = true;
            asset.visible = true;
            o4519.o8116.profileData.o7923.o18006++;
         }
         o1604.stop();
      }
      
      public function start() : void
      {
         o1604.start();
      }
      
      public function get enabled() : Boolean
      {
         return o11153;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(o11153 != param1 && param1 == false)
         {
            asset.visible = false;
            o1604.stop();
         }
         o11153 = param1;
      }
      
      public function o13640() : void
      {
         o1604.removeEventListener("timer",o5975);
         o1604 = null;
         asset = null;
      }
   }
}
