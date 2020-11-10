package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o1227 extends o9743
   {
       
      
      protected var o16989:o13064;
      
      private var o6050:o15625;
      
      private var o14113:o15625;
      
      private var o8317:o15625;
      
      private var o12503:o15625;
      
      public function o1227()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         super.init(param1);
         this.o16989 = param2;
         o14113 = o9679.o17578("btnQuality",container);
         o6050 = o9679.o17578("btnReplayIntros",container);
         o8317 = o9679.o17578("btnGore",container);
         o12503 = o9679.o17578("btnVFX",container);
         o14113.addEventListener("click",o5433,false,0,true);
         o6050.addEventListener("click",o5742,false,0,true);
         o8317.addEventListener("click",o3191,false,0,true);
         o12503.addEventListener("click",o11330,false,0,true);
         o11048();
      }
      
      protected function o11048() : void
      {
      }
      
      override public function o13640() : void
      {
         o14113.removeEventListener("click",o5433);
         o6050.removeEventListener("click",o5742);
         o8317.removeEventListener("click",o3191);
         o12503.removeEventListener("click",o11330);
         o16989 = null;
         o14113 = null;
         o6050 = null;
         o8317 = null;
         o12503 = null;
         super.o13640();
      }
      
      protected function o521() : void
      {
      }
      
      protected function o16284(param1:Boolean) : void
      {
         o14113.o3993 = param1;
      }
      
      protected function o11057(param1:Boolean) : void
      {
         o6050.o3993 = param1;
      }
      
      protected function o17228(param1:Boolean) : void
      {
         o8317.o3993 = param1;
      }
      
      protected function o17614(param1:Boolean) : void
      {
         o12503.o3993 = param1;
      }
      
      public function o5433(param1:Event) : void
      {
         this.o16284(!o14113.o3993);
         o521();
      }
      
      public function o5742(param1:Event) : void
      {
         this.o11057(!o6050.o3993);
         o521();
      }
      
      public function o3191(param1:Event) : void
      {
         this.o17228(!o8317.o3993);
         o521();
      }
      
      public function o11330(param1:Event) : void
      {
         this.o17614(!o12503.o3993);
         o521();
      }
   }
}
