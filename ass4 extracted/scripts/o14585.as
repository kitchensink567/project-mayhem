package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o14585 extends o6539
   {
       
      
      protected var o16989:o13064;
      
      private var o7750:o20565;
      
      protected var o15935:MovieClip;
      
      private var o12986:MovieClip;
      
      private var o2692:o15625;
      
      private var o557:MovieClip;
      
      protected var o8228:Boolean = false;
      
      protected var o1643:Boolean = false;
      
      protected var o13780:Boolean = false;
      
      private var o1934:o15625;
      
      private var o4279:int = 0;
      
      private var o20756:int = 26;
      
      public function o14585()
      {
         super();
      }
      
      public function o781() : void
      {
         o1643 = true;
         var _loc1_:int = o15935.framesLoaded;
         o15935.gotoAndStop(o15935.framesLoaded);
         o12986.visible = true;
         o13780 = true;
      }
      
      protected function o3941() : o17904
      {
         return new o17904();
      }
      
      protected function o8441() : void
      {
      }
      
      protected function o11080(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = asset.getChildByName("introContainer") as MovieClip;
         _loc2_.addChild(param1);
         o15935 = param1;
         o13064.o13834(param1);
         o7750 = new o20565(this);
         o12986 = o15935.getChildByName("lblLoading") as MovieClip;
         o557 = o15935.getChildByName("loadingBar") as MovieClip;
         o2692 = o7750.o17578("btnSkip",o15935);
         o2692.addEventListener("click",o16563,false,0,true);
         o2692.visible = true;
         o1934 = o7750.o17578("btnNext",o15935);
         o1934.addEventListener("click",o5552,false,0,true);
         o1934.visible = true;
         o3243(0);
         o15935.addEventListener("VaccineIntroComplete",o5020,false,0,true);
         o15935.addEventListener("NextState",o13809,false,0,true);
         o11048();
      }
      
      protected function o5020(param1:Event) : void
      {
         o8228 = true;
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
         if(o4279 < o20756)
         {
            o15935.gotoAndPlay("state" + (o4279 + 1));
         }
         if(o4279 >= o20756 - 2)
         {
            o4279 = o4279;
         }
      }
      
      private function o13809(param1:Event) : void
      {
         o4279 = Number(o4279) + 1;
      }
      
      protected function o11048() : void
      {
      }
      
      override public function o13640() : void
      {
         o8867(o15935);
         o15935.visible = false;
         o15935.parent.removeChild(o15935);
         o15935.removeEventListener("VaccineIntroComplete",o5020);
         o15935.removeEventListener("NextState",o13809);
         o2692.removeEventListener("click",o16563);
         o1934.removeEventListener("click",o5552);
         o7750.o13640();
         o16989 = null;
         o7750 = null;
         o15935 = null;
         o12986 = null;
         o2692 = null;
         o557 = null;
         o8228 = false;
         o1643 = false;
         o13780 = false;
         o1934 = null;
         o4279 = 0;
         o20756 = 26;
         super.o13640();
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o674();
      }
   }
}
