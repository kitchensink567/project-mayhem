package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o10855 extends o9743
   {
      
      public static var o8478:Boolean = false;
       
      
      protected var o1632:o15625;
      
      protected var o20294:o15625;
      
      private var o14991:MovieClip;
      
      private var o16242:TextField;
      
      private var o13791:TextField;
      
      public var o6000:Boolean = true;
      
      private var o2775:MovieClip;
      
      private var o2871:TextField;
      
      protected var o16989:o13064;
      
      private var o11602:o12290;
      
      private var o4383:o12290;
      
      private var o15066:o3164;
      
      private var o11275:Boolean = false;
      
      private var o7651:MovieClip;
      
      private var o9324:MovieClip;
      
      protected var o14309:int = 0;
      
      public function o10855()
      {
         super();
      }
      
      protected function o4006() : o3164
      {
         return new o3164();
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         super.init(param1);
         this.o16989 = param2;
         o9679 = new o20565(this);
         var _loc3_:* = param1;
         o1632 = o9679.o17578("btnClickToOpen",_loc3_);
         o1632.addEventListener("click",o2418,false,0,true);
         o20294 = o9679.o17578("btnNoItemsContinue",_loc3_);
         o20294.addEventListener("click",o454,false,0,true);
         o14991 = param1.getChildByName("strongboxCounter") as MovieClip;
         o16242 = o14991.getChildByName("lblStrongBoxCount") as TextField;
         o13791 = param1.getChildByName("lblStrongBoxesRecovered") as TextField;
         o15066 = o4006();
         o15066.init(param1.getChildByName("strongboxAnimation") as MovieClip);
         this.o5452(o15066);
         o11602 = o9679.o15961("btnShardStrongbox","Scrap for " + o13800.o16475(o14200.o19505.o202.o19062,0,true),_loc3_);
         o4383 = o9679.o15961("btnShardAllStrongboxes","Scrap All for " + o13800.o15774(o14200.o19505.o202.o19062,0,0,true),_loc3_);
         o7651 = param1.getChildByName("scrapAnimation") as MovieClip;
         o9324 = param1.getChildByName("scrapAllAnimation") as MovieClip;
         if(o7651)
         {
            o7651.visible = false;
            o7651.stop();
         }
         if(o9324)
         {
            o9324.visible = false;
            o9324.stop();
         }
         if(o13800.o20129)
         {
            o4383.addEventListener("click",o14312,false,0,true);
            o11602.addEventListener("click",o12573,false,0,true);
            o4383.visible = true;
            o11602.visible = true;
            o11847();
         }
         else
         {
            o4383.visible = false;
            o11602.visible = false;
         }
         o8478 = true;
         o11048();
      }
      
      protected function o11048() : void
      {
      }
      
      protected function o14312(param1:Event) : void
      {
         this.o16989.o13483("Scrap ALL Strongboxes?","Are you sure you want to scrap ALL strongboxes?",o292);
      }
      
      protected function o292() : void
      {
         o18277();
         o16545(o14200.o19505.o202.o19062.length,o14200.o19505.o202.o19062);
         o7651.visible = false;
         o7651.stop();
         o9324.gotoAndPlay(0);
         o9324.addEventListener("enterFrame",o8712,false,100,true);
         o9324.visible = true;
         var _loc2_:MovieClip = o9324.getChildByName("alloyText") as MovieClip;
         var _loc1_:TextField = _loc2_.getChildByName("lblShardsEarned") as TextField;
         _loc1_.text = "+" + o14309 + " Alloy";
         o11602.visible = false;
         o4383.visible = false;
         o11275 = false;
         o15157();
         o1632.visible = false;
      }
      
      protected function o12573(param1:Event) : void
      {
         o18277();
         o16545(o14200.o19505.o202.o19062.length,o14200.o19505.o202.o19062);
         o15066.o11059(o15307);
         o9324.visible = false;
         o9324.stop();
         o7651.gotoAndPlay(0);
         o7651.addEventListener("enterFrame",o7098,false,100,true);
         o7651.visible = true;
         var _loc3_:MovieClip = o7651.getChildByName("alloyText") as MovieClip;
         var _loc2_:TextField = _loc3_.getChildByName("lblShardsEarned") as TextField;
         _loc2_.text = "+" + o14309 + " Alloy";
         o11602.visible = false;
         o4383.visible = false;
         o11275 = false;
         o15157();
         o1632.visible = false;
      }
      
      private function o7098(param1:Event) : void
      {
         if(o7651)
         {
            if(o7651.currentFrame >= o7651.totalFrames)
            {
               o7651.stop();
               o7651.visible = false;
               o9324.visible = false;
               o7651.removeEventListener("enterFrame",o7098);
               o11602.visible = true;
               o4383.visible = true;
               o1632.visible = true;
               o11847();
            }
         }
      }
      
      private function o8712(param1:Event) : void
      {
         if(o9324)
         {
            if(o9324.currentFrame >= o9324.totalFrames)
            {
               o9324.stop();
               o9324.visible = false;
               o7651.visible = false;
               o9324.removeEventListener("enterFrame",o8712);
               o11602.visible = true;
               o4383.visible = true;
               o1632.visible = true;
               o11847();
            }
         }
      }
      
      private function o11847() : void
      {
         if(o14200.o19505.o202.o19062.length >= 1)
         {
            o11602.o13586 = "Scrap for " + o13800.o16475(o14200.o19505.o202.o19062,0,true);
         }
         else
         {
            o11602.visible = false;
         }
         if(o14200.o19505.o202.o19062.length >= 2)
         {
            o4383.o13586 = "Scrap all for " + o13800.o15774(o14200.o19505.o202.o19062,0,0,true);
         }
         else
         {
            o4383.visible = false;
         }
      }
      
      override public function o13640() : void
      {
         o1632.removeEventListener("click",o2418);
         o20294.removeEventListener("click",o454);
         if(o11602)
         {
            o11602.removeEventListener("click",o12573);
         }
         if(o4383)
         {
            o4383.removeEventListener("click",o14312);
         }
         if(o9324)
         {
            o9324.removeEventListener("enterFrame",o8712);
         }
         if(o7651)
         {
            o7651.removeEventListener("enterFrame",o7098);
         }
         o8478 = false;
         o1632 = null;
         o20294 = null;
         o14991 = null;
         o16242 = null;
         o13791 = null;
         o6000 = true;
         o2775 = null;
         o11602 = null;
         o4383 = null;
         o2871 = null;
         o16989 = null;
         o15066 = null;
         o9324 = null;
         o7651 = null;
         if(o14200.o19505.o202.o324)
         {
            o14200.o19505.o202.o324 = false;
            o4519.o10093.o16989.o7283(null);
         }
         super.o13640();
      }
      
      protected function o454(param1:Event) : void
      {
         this.close();
      }
      
      protected function o14199() : void
      {
         this.o16989.o198(this.o15157);
      }
      
      public function o18277() : void
      {
      }
      
      protected function o15157() : void
      {
         o18277();
         o15066.o11059(o15307);
         o11275 = false;
      }
      
      private function o15307() : void
      {
      }
      
      private function o2418(param1:Event) : void
      {
         if(o11275)
         {
            return;
         }
         o11275 = true;
         this.o15066.o9907(o14199);
      }
      
      protected function o13738() : void
      {
      }
      
      protected function o19050(param1:Number, param2:int) : String
      {
         var _loc3_:String = param1.toString();
         while(_loc3_.length < param2)
         {
            _loc3_ = "0" + _loc3_;
         }
         return _loc3_;
      }
      
      protected function o16545(param1:int, param2:Vector.<int>) : void
      {
         o1632.visible = param1 > 0;
         o20294.visible = param1 == 0;
         o16242.text = param1.toString();
         o2775 = asset.getChildByName("noStrongboxPanel") as MovieClip;
         o2775.visible = param1 == 0;
         o15066.o16545(param1,param2);
         o11847();
      }
   }
}
