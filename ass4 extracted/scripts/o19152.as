package
{
   import assets.ui.screen.GameQuitDialogAsset;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o19152 extends o9743
   {
       
      
      protected var o158:o12239;
      
      protected var o16989:o13064;
      
      protected var o13158:o12290;
      
      protected var o12216:o12290;
      
      protected var o17287:o12290;
      
      protected var o10580:TextField;
      
      protected var o1052:o15625;
      
      protected var o17356:o15625;
      
      private var o8803:int = 6;
      
      private var o13915:Vector.<MovieClip>;
      
      protected var o8268:o12290;
      
      protected var o8317:o15625;
      
      protected var o12503:o15625;
      
      protected var o19070:o15625;
      
      protected var o18125:o15625;
      
      protected var o14113:o15625;
      
      protected var o7273:TextField;
      
      protected var o19235:TextField;
      
      public function o19152()
      {
         super();
      }
      
      public function o2789(param1:String) : void
      {
         var _loc4_:Array = param1.split("\n");
         var _loc3_:int = 0;
         var _loc6_:String = "";
         var _loc2_:String = "";
         var _loc8_:int = 0;
         var _loc7_:* = _loc4_;
         for each(var _loc5_ in _loc4_)
         {
            if(_loc3_ < 4)
            {
               _loc6_ = _loc6_ + (_loc5_ + "\n");
            }
            else
            {
               _loc2_ = _loc2_ + (_loc5_ + "\n");
            }
            _loc3_++;
         }
         o7273.text = _loc6_;
         o19235.text = _loc2_;
      }
      
      public function o16384(param1:MovieClip, param2:o12239, param3:o13064) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = null;
         super.init(param1);
         this.o158 = param2;
         this.o16989 = param3;
         param1.stop();
         param1.visible = false;
         o7273 = container.getChildByName("lblPowerUpsCol0") as TextField;
         o19235 = container.getChildByName("lblPowerUpsCol1") as TextField;
         o7273.text = "";
         o19235.text = "";
         o13158 = o9679.o15961("btnSoundFx","Sound FX",container);
         o12216 = o9679.o15961("btnMusic","Music",container);
         o17287 = o9679.o15961("btnReplayIntros","Replay Intros",container);
         o8268 = o9679.o15961("btnPauseOnFocusLost","Pause on focus lost",container);
         o14113 = o9679.o17578("btnQuality",container);
         o8317 = o9679.o17578("btnGore",container);
         o12503 = o9679.o17578("btnVFX",container);
         o19070 = o9679.o17578("btnControls",container);
         o18125 = o9679.o17578("btnEnemyStats",container);
         o8317.addEventListener("click",o3191,false,0,true);
         o12503.addEventListener("click",o11330,false,0,true);
         o19070.addEventListener("click",o5924,false,0,true);
         o18125.addEventListener("click",o10080,false,0,true);
         o10580 = container.getChildByName("lblHistory") as TextField;
         o1052 = o9679.o17578("btnUp",container);
         o17356 = o9679.o17578("btnDown",container);
         o13158.addEventListener("click",o12520,false,0,true);
         o12216.addEventListener("click",o2346,false,0,true);
         o17287.addEventListener("click",o9263,false,0,true);
         o8268.addEventListener("click",o4324,false,0,true);
         o1052.addEventListener("click",o5767,false,0,true);
         o17356.addEventListener("click",o18799,false,0,true);
         o14113.addEventListener("click",o5433,false,0,true);
         o13915 = new Vector.<MovieClip>();
         _loc5_ = 0;
         while(_loc5_ < 8)
         {
            _loc4_ = container.getChildByName("objectiveTick" + _loc5_.toString()) as MovieClip;
            o13915.push(_loc4_);
            _loc4_.visible = false;
            _loc4_.stop();
            _loc5_++;
         }
         o11048();
      }
      
      public function o618() : void
      {
         o1052.enabled = o10580.scrollV > 1;
         o17356.enabled = o10580.scrollV < o10580.maxScrollV;
      }
      
      protected function o5767(param1:MouseEvent) : void
      {
         o10580.scrollV = o10580.scrollV - o8803;
         o618();
      }
      
      protected function o18799(param1:MouseEvent) : void
      {
         o10580.scrollV = o10580.scrollV + o8803;
         o618();
      }
      
      protected function o5924(param1:MouseEvent) : void
      {
      }
      
      protected function o10080(param1:MouseEvent) : void
      {
      }
      
      public function o8688(param1:int) : void
      {
         if(param1 >= 8)
         {
            throw new Error("Max of 8 objective support in options dialog");
         }
         o13915[param1].visible = true;
         o13915[param1].gotoAndStop("complete");
      }
      
      public function o20460(param1:int) : void
      {
         if(param1 >= 8)
         {
            throw new Error("Max of 8 objective support in options dialog");
         }
         o13915[param1].visible = true;
         o13915[param1].gotoAndStop("active");
      }
      
      public function o11394(param1:String) : void
      {
         o10580.htmlText = param1;
         o618();
      }
      
      protected function o11048() : void
      {
      }
      
      protected function o521() : void
      {
      }
      
      override public function o13640() : void
      {
         o13158.removeEventListener("click",o12520);
         o12216.removeEventListener("click",o2346);
         o17287.removeEventListener("click",o9263);
         o8268.removeEventListener("click",o4324);
         o8317.removeEventListener("click",o3191);
         o12503.removeEventListener("click",o11330);
         o19070.removeEventListener("click",o5924);
         o18125.removeEventListener("click",o10080);
         o14113.removeEventListener("click",o5433);
         o1052.removeEventListener("click",o5767);
         o17356.removeEventListener("click",o18799);
         o158 = null;
         o16989 = null;
         o13158 = null;
         o12216 = null;
         o17287 = null;
         o8268 = null;
         o10580 = null;
         o1052 = null;
         o17356 = null;
         o8803 = 0;
         o13915 = null;
         o8317 = null;
         o12503 = null;
         o19070 = null;
         o18125 = null;
         o14113 = null;
         o7273 = null;
         o19235 = null;
         super.o13640();
      }
      
      protected function o19466(param1:Boolean) : void
      {
         o13158.o3993 = param1;
      }
      
      protected function o20254(param1:Boolean) : void
      {
         o12216.o3993 = param1;
      }
      
      protected function o15845(param1:Boolean) : void
      {
         o17287.o3993 = param1;
      }
      
      protected function o1479(param1:Boolean) : void
      {
         o8268.o3993 = param1;
      }
      
      protected function o17228(param1:Boolean) : void
      {
         o8317.o3993 = param1;
      }
      
      protected function o17614(param1:Boolean) : void
      {
         o12503.o3993 = param1;
      }
      
      protected function o16284(param1:Boolean) : void
      {
         o14113.o3993 = param1;
      }
      
      protected function o5433(param1:MouseEvent) : void
      {
         this.o16284(!o14113.o3993);
         o521();
      }
      
      protected function o12520(param1:MouseEvent) : void
      {
         this.o19466(!o13158.o3993);
         o521();
      }
      
      protected function o2346(param1:MouseEvent) : void
      {
         this.o20254(!o12216.o3993);
         o521();
      }
      
      protected function o9263(param1:MouseEvent) : void
      {
         this.o15845(!o17287.o3993);
         o521();
      }
      
      protected function o4324(param1:MouseEvent) : void
      {
         this.o1479(!o8268.o3993);
         o521();
      }
      
      protected function o3191(param1:MouseEvent) : void
      {
         this.o17228(!o8317.o3993);
         o521();
      }
      
      protected function o11330(param1:MouseEvent) : void
      {
         this.o17614(!o12503.o3993);
         o521();
      }
      
      public function o9584(param1:String, param2:String, param3:Function, param4:Function) : void
      {
         var _loc5_:o12306 = new o12306();
         _loc5_.o17549 = false;
         _loc5_.init(new GameQuitDialogAsset());
         this.o9642(_loc5_);
         _loc5_.o13483(param1,param2,param3,param4);
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
      }
   }
}
