package
{
   import assets.ui.dialog.ConfirmGuestAccountAsset;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o6132 extends o6539
   {
       
      
      private var o7750:o20565;
      
      protected var o16989:o13064;
      
      protected var o17999:o15625;
      
      protected var o14228:o15625;
      
      private var o14536:o15625;
      
      public function o6132()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         super.init(param1);
         this.o16989 = param2;
         o7750 = new o20565(this);
         o17999 = o7750.o17578("btnLogin");
         o14228 = o7750.o17578("btnPlayAsGuest");
         o14536 = o7750.o17578("btnWatchTrailer");
         o17999.addEventListener("click",o17854,false,0,true);
         o14228.addEventListener("click",o10587,false,0,true);
         o14536.addEventListener("click",o8057,false,0,true);
      }
      
      protected function o8057(param1:Event) : void
      {
      }
      
      protected function o17854(param1:Event) : void
      {
      }
      
      protected function o10587(param1:Event) : void
      {
         var _loc2_:* = null;
         if(o4519.o17061)
         {
            this.o16989.screen = 0;
         }
         else
         {
            _loc2_ = new o9743();
            _loc2_.init(new ConfirmGuestAccountAsset());
            _loc2_.o17920 = false;
            this.o9642(_loc2_);
            _loc2_.o13483("","",o14124,o17128);
         }
      }
      
      private function o14124() : void
      {
         this.o16989.screen = 0;
      }
      
      private function o17128() : void
      {
         o17854(null);
      }
      
      override public function o13640() : void
      {
         o17999.removeEventListener("click",o17854);
         o14228.removeEventListener("click",o10587);
         o14536.removeEventListener("click",o8057);
         o7750.o13640();
         o7750 = null;
         o16989 = null;
         o17999 = null;
         o14228 = null;
         o14536 = null;
         super.o13640();
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o674();
      }
   }
}
