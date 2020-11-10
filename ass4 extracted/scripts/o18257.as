package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o18257 extends o6539
   {
       
      
      protected var o6023:o17904;
      
      protected var o16989:o13064;
      
      private var o7750:o20565;
      
      private var o3663:MovieClip;
      
      private var o12986:MovieClip;
      
      private var o2692:o15625;
      
      private var o557:MovieClip;
      
      protected var o20488:int = -1;
      
      protected var o1643:Boolean = false;
      
      private var o1934:o15625;
      
      protected var o13780:Boolean = false;
      
      public function o18257()
      {
         super();
      }
      
      public function o781() : void
      {
         o1643 = true;
         o20488 = 10;
         var _loc1_:int = o3663.framesLoaded;
         o3663.gotoAndStop(o3663.framesLoaded);
         if(o6023 != null)
         {
            this.o10877(o6023);
            o6023 = null;
         }
         o12986.visible = true;
         o13780 = true;
      }
      
      protected function o3941() : o17904
      {
         return new o17904();
      }
      
      protected function o2052() : void
      {
         o20488 = Number(o20488) + 1;
         switch(int(o20488))
         {
            case 0:
               o3663.gotoAndStop("FirstTimePlaying");
               break;
            case 1:
               o3663.gotoAndStop("Event1");
               break;
            case 2:
               o3663.gotoAndStop("Event2");
               break;
            case 3:
               o3663.gotoAndPlay("Fade to map");
               break;
            case 4:
               o3663.gotoAndStop("Event3");
               break;
            case 5:
               o3663.gotoAndStop("Event4");
               break;
            case 6:
               o3663.gotoAndStop("Event5");
               break;
            case 7:
               o3663.gotoAndStop("Event7");
               break;
            case 8:
               o3663.gotoAndPlay("Event8");
               break;
            case 9:
               o3663.gotoAndPlay("Event9");
         }
         o9331(o20488);
      }
      
      protected function o9331(param1:int) : void
      {
      }
      
      protected function o8441() : void
      {
      }
      
      protected function o11080(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = asset.getChildByName("introContainer") as MovieClip;
         _loc2_.addChild(param1);
         o3663 = param1;
         o7750 = new o20565(this);
         o12986 = o3663.getChildByName("lblLoading") as MovieClip;
         o557 = o3663.getChildByName("loadingBar") as MovieClip;
         o2692 = o7750.o17578("btnSkip",o3663);
         o2692.addEventListener("click",o16563,false,0,true);
         o2692.visible = true;
         o1934 = o7750.o17578("btnNext",o3663);
         o1934.addEventListener("click",o5552,false,0,true);
         var _loc3_:MovieClip = o3663.getChildByName("combot") as MovieClip;
         o6023 = o3941();
         o6023.o16384(_loc3_,true);
         this.o5452(o6023);
         o3663.addEventListener("FadeToMapComplete",o12791,false,0,true);
         o3663.addEventListener("Event8Complete",o17606,false,0,true);
         o3243(0);
         o11048();
      }
      
      public function o3243(param1:Number) : void
      {
         if(o557 == null)
         {
            return;
         }
         var _loc2_:int = param1 * 100 + 1;
         if(_loc2_ < 1)
         {
            _loc2_ = 1;
         }
         else if(_loc2_ > 100)
         {
            _loc2_ = 100;
         }
         o11771(param1 >= 1);
         o557.gotoAndStop(_loc2_);
      }
      
      public function o9017(param1:Number) : void
      {
         if(o557 == null)
         {
            return;
         }
         this.o557.visible = true;
         var _loc2_:int = param1 * 100 + 1;
         if(_loc2_ < 1)
         {
            _loc2_ = 1;
         }
         else if(_loc2_ > 100)
         {
            _loc2_ = 100;
         }
         o557.gotoAndStop(_loc2_);
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         super.init(param1);
         this.o16989 = param2;
         o8441();
      }
      
      private function o11771(param1:Boolean) : void
      {
         if(o12986 != null)
         {
            o12986.visible = o13780 || param1 == false;
            if(o13780)
            {
               (o12986.getChildByName("lblLoading") as TextField).text = "Building...";
            }
         }
         if(o557 != null)
         {
            o557.visible = param1 == false;
         }
         if(o2692 != null)
         {
            o2692.visible = param1 && o1643 == false;
         }
      }
      
      protected function o16563(param1:MouseEvent) : void
      {
      }
      
      protected function o5552(param1:MouseEvent) : void
      {
      }
      
      protected function o11048() : void
      {
      }
      
      protected function o12791(param1:Event) : void
      {
      }
      
      protected function o17606(param1:Event) : void
      {
      }
      
      override public function o13640() : void
      {
         o8867(o3663);
         o3663.visible = false;
         o3663.parent.removeChild(o3663);
         o3663.removeEventListener("FadeToMapComplete",o12791);
         o3663.removeEventListener("Event8Complete",o17606);
         o1934.removeEventListener("click",o5552);
         o2692.removeEventListener("click",o16563);
         o7750.o13640();
         o6023 = null;
         o16989 = null;
         o7750 = null;
         o3663 = null;
         o12986 = null;
         o2692 = null;
         o557 = null;
         o20488 = 0;
         o1643 = false;
         o1934 = null;
         super.o13640();
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o674();
      }
   }
}
