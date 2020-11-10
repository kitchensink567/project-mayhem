package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o4023 extends o6539
   {
       
      
      protected var o16989:o13064;
      
      private var o9679:o20565;
      
      private var o13364:MovieClip;
      
      private var o6595:TextField;
      
      private var o13702:TextField;
      
      private var o557:MovieClip;
      
      private var o9234:TextField;
      
      private var o15238:o15625;
      
      private var o1790:TextField;
      
      public function o4023()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         this.init(param1);
         this.o16989 = param2;
         var _loc4_:MovieClip = param1.getChildByName("loading") as MovieClip;
         o13364 = _loc4_.getChildByName("levelLoading") as MovieClip;
         o6595 = o13364.getChildByName("lblLevelName") as TextField;
         o13702 = o13364.getChildByName("lblPreMission") as TextField;
         o9234 = o13364.getChildByName("lblLoadingIntro") as TextField;
         o557 = o13364.getChildByName("loadingBar") as MovieClip;
         var _loc5_:MovieClip = o13364.getChildByName("lblLoading") as MovieClip;
         o1790 = _loc5_.getChildByName("label") as TextField;
         o9679 = new o20565(this);
         o15238 = o9679.o17578("btnSkipIntro",o13364);
         o15238.addEventListener("click",o9893,false,0,true);
         o3243(0,false);
         o11048();
      }
      
      public function o3243(param1:Number, param2:Boolean) : void
      {
         var _loc3_:int = param1 * 100 + 1;
         if(_loc3_ < 1)
         {
            _loc3_ = 1;
         }
         else if(_loc3_ > 100)
         {
            _loc3_ = 100;
         }
         if(param2)
         {
            o1790.text = "Building...";
         }
         else
         {
            o1790.text = "Loading...";
         }
         o557.gotoAndStop(_loc3_);
      }
      
      override public function o13640() : void
      {
         o15238.removeEventListener("click",o9893);
         o9679.o13640();
         o16989 = null;
         o9679 = null;
         o13364 = null;
         o6595 = null;
         o13702 = null;
         o557 = null;
         o9234 = null;
         o15238 = null;
         o1790 = null;
         super.o13640();
      }
      
      private function o9893(param1:Event) : void
      {
         o9492();
      }
      
      protected function o11048() : void
      {
      }
      
      protected function o9492() : void
      {
      }
      
      protected function o4095(param1:String, param2:String, param3:String, param4:Boolean) : void
      {
         o13364.gotoAndStop(param3);
         o6595 = o13364.getChildByName("lblLevelName") as TextField;
         o13702 = o13364.getChildByName("lblPreMission") as TextField;
         o1256(o6595,param1);
         o1256(o13702,param2);
         o9234.visible = param4;
         o15238.visible = param4;
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o674();
         super.o14009(param1,param2,param3,param4);
      }
   }
}
