package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o20094 extends o16681
   {
       
      
      private var o16989:o13064;
      
      private var o13380:o15625;
      
      private var o57:MovieClip;
      
      private var o19419:o14200;
      
      public var o1708:Boolean = false;
      
      private var o16490:MovieClip;
      
      private var o7868:Boolean = true;
      
      private var o19401:TextField;
      
      private var o12536:TextField;
      
      protected var o2021:MovieClip;
      
      private var o9865:Function;
      
      private var o1082:TextField;
      
      private var o20452:o15625;
      
      private var o11602:o12290;
      
      private var o4383:o12290;
      
      private var o7651:MovieClip;
      
      private var o9324:MovieClip;
      
      public var o11290:o15625;
      
      private var o13291:o15625;
      
      public function o20094()
      {
         super();
      }
      
      private function o13021() : void
      {
         if(o20452 != null)
         {
            o20452.visible = o19419.o7923.o14250 <= o14200.o19505.o5292.o418.o12650;
            o13291.visible = false;
         }
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:o15625) : void
      {
         super.init(param1);
         this.o11290 = param3;
         this.o16989 = param2;
         this.o19419 = o4519.o8116.profileData;
         var _loc5_:o20565 = new o20565(this);
         o2021 = param1.getChildByName("strongboxesLocked") as MovieClip;
         (o2021.getChildByName("txt") as TextField).text = "Unlock at level " + o19419.o5292.o418.o6011.toString();
         o2021.visible = false;
         o13380 = _loc5_.o17578("btnOpenBlackStrongbox");
         o13380.enabled = o19419.o7923.o14250 > 0;
         o20452 = _loc5_.o17578("btnLater");
         o11602 = _loc5_.o15961("btnShardStrongbox","Scrap for " + o13800.o16475(null,o4189.o12328));
         o4383 = _loc5_.o15961("btnShardAllStrongboxes","Scrap All for " + o13800.o15774(null,o14200.o19505.o7923.o14250,o4189.o12328));
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
            if(o19419.o7923.o14250 > 1)
            {
               o4383.visible = true;
            }
            else
            {
               o4383.visible = false;
            }
            if(o19419.o7923.o14250 > 0)
            {
               o11602.visible = true;
            }
            else
            {
               o11602.visible = false;
            }
         }
         else
         {
            o4383.visible = false;
            o11602.visible = false;
         }
         o13291 = _loc5_.o17578("btnDiscard");
         if(o20452 != null)
         {
            o20452.visible = o19419.o7923.o14250 <= o14200.o19505.o5292.o418.o12650;
            o13291.visible = false;
            o20452.addEventListener("click",o12065,false,0,true);
         }
         o57 = param1.getChildByName("blackStrongbox") as MovieClip;
         o57.gotoAndStop(0);
         o16490 = param1.getChildByName("blackStrongboxLimitWarning") as MovieClip;
         o13380.addEventListener("click",o10596,false,0,true);
         param1.addEventListener("enterFrame",o6662,false,0,true);
         var _loc6_:MovieClip = param1.getChildByName("blackKeyCounter") as MovieClip;
         o19401 = _loc6_.getChildByName("lblStrongBoxCount") as TextField;
         var _loc7_:MovieClip = param1.getChildByName("blackStrongboxCounter") as MovieClip;
         o12536 = _loc7_.getChildByName("lblStrongBoxCount") as TextField;
         var _loc4_:MovieClip = param1.getChildByName("disabledEliteAugments") as MovieClip;
         if(_loc4_ != null)
         {
            _loc4_.visible = false;
            _loc4_.mouseEnabled = false;
         }
         o1082 = param1.getChildByName("lblEliteCores") as TextField;
      }
      
      protected function o14312(param1:Event) : void
      {
         if(o19419.o7923.level < o19419.o5292.o418.o6011)
         {
            o16989.o12407("Unable to open black strongbox","You must be level " + o19419.o5292.o418.o6011.toString() + " to open black strongboxes");
            return;
         }
         if(o19419.o7923.o14250 <= 0)
         {
            o4383.removeEventListener("click",o14312);
            o11602.removeEventListener("click",o12573);
            o4383.visible = false;
            o11602.visible = false;
            return;
         }
         this.o16989.o13483("Scrap ALL [BLACK] Strongboxes?","Are you sure you want to scrap ALL [BLACK] strongboxes?",o292);
      }
      
      private function o292() : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:int = o19419.o7923.o14250;
         var _loc1_:o16123 = new o16123(o13800.o15774(null,_loc6_,o4189.o12328));
         o14200.o19505.o15894.o4848.o2719.o15200(_loc6_,_loc1_.value);
         _loc4_ = 0;
         while(_loc4_ < _loc6_)
         {
            if(o14200.o19505.o202.o19062 && o14200.o19505.o202.o19062.length >= 1)
            {
               _loc5_ = new o16123(o13800.o16475(null,o4189.o12328));
               o14200.o19505.o15894.o4848.o2719.o2684(_loc5_.value,o4189.o12328);
            }
            o19419.o7923.o3196(false);
            _loc4_++;
         }
         o14200.o19505.o7923.o10252 = o14200.o19505.o7923.o10252 + _loc1_.value;
         o14200.o19505.data.o1553 = o14200.o19505.data.o1553 + _loc1_.value;
         o19419.saveData();
         o13021();
         o11847();
         o7651.visible = false;
         o7651.stop();
         if(o7651)
         {
            o7651.gotoAndPlay(0);
            o7651.addEventListener("enterFrame",o7098,false,100,true);
            o7651.visible = true;
         }
         var _loc3_:MovieClip = o7651.getChildByName("alloyText") as MovieClip;
         var _loc2_:TextField = _loc3_.getChildByName("lblShardsEarned") as TextField;
         _loc2_.text = "+" + _loc1_.value + " Alloy";
         if(o20452)
         {
            o20452.removeEventListener("click",o12065);
         }
         if(o4383)
         {
            o4383.removeEventListener("click",o14312);
         }
         if(o11602)
         {
            o11602.removeEventListener("click",o12573);
         }
         if(o13380)
         {
            o13380.removeEventListener("click",o10596);
         }
      }
      
      private function o7098(param1:Event) : void
      {
         if(o7651)
         {
            if(o7651.currentFrame >= o7651.totalFrames)
            {
               o7651.stop();
               o7651.visible = false;
               if(o7651)
               {
                  o7651.removeEventListener("enterFrame",o7098);
               }
               if(o4383)
               {
                  o4383.addEventListener("click",o14312,false,0,true);
               }
               if(o11602)
               {
                  o11602.addEventListener("click",o12573,false,0,true);
               }
               if(o20452)
               {
                  o20452.addEventListener("click",o12065,false,0,true);
               }
               if(o13380)
               {
                  o13380.addEventListener("click",o10596,false,0,true);
               }
               if(o20452 != null && o19419.o7923.o14250 == 0)
               {
                  o12065(null);
               }
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
               if(o9324)
               {
                  o9324.removeEventListener("enterFrame",o8712);
               }
               if(o4383)
               {
                  o4383.addEventListener("click",o14312,false,0,true);
               }
               if(o11602)
               {
                  o11602.addEventListener("click",o12573,false,0,true);
               }
               if(o20452)
               {
                  o20452.addEventListener("click",o12065,false,0,true);
               }
               if(o13380)
               {
                  o13380.addEventListener("click",o10596,false,0,true);
               }
               if(o20452 != null && o19419.o7923.o14250 == 0)
               {
                  o12065(null);
               }
               o11847();
            }
         }
      }
      
      protected function o12573(param1:Event) : void
      {
         if(o19419.o7923.level < o19419.o5292.o418.o6011)
         {
            o16989.o12407("Unable to open black strongbox","You must be level " + o19419.o5292.o418.o6011.toString() + " to open black strongboxes");
            return;
         }
         if(o19419.o7923.o14250 <= 0)
         {
            o4383.removeEventListener("click",o14312);
            o11602.removeEventListener("click",o12573);
            o4383.visible = false;
            o11602.visible = false;
            return;
         }
         this.o16989.o13483("Scrap [BLACK] Strongbox?","Are you sure you want to scrap this [BLACK] strongbox?",o17189);
      }
      
      private function o17189() : void
      {
         var _loc1_:o16123 = new o16123(o13800.o16475(null,o4189.o12328));
         o14200.o19505.o15894.o4848.o2719.o2684(_loc1_.value,o4189.o12328);
         o19419.o7923.o3196(false);
         o14200.o19505.o7923.o10252 = o14200.o19505.o7923.o10252 + _loc1_.value;
         o14200.o19505.data.o1553 = o14200.o19505.data.o1553 + _loc1_.value;
         o19419.saveData();
         o13021();
         o11847();
         if(o9324)
         {
            o9324.visible = false;
            o9324.stop();
         }
         o7651.gotoAndPlay(0);
         o7651.addEventListener("enterFrame",o7098,false,100,true);
         o7651.visible = true;
         var _loc3_:MovieClip = o7651.getChildByName("alloyText") as MovieClip;
         var _loc2_:TextField = _loc3_.getChildByName("lblShardsEarned") as TextField;
         _loc2_.text = "+" + _loc1_.value + " Alloy";
         if(o20452)
         {
            o20452.removeEventListener("click",o12065);
         }
         if(o4383)
         {
            o4383.removeEventListener("click",o14312);
         }
         if(o11602)
         {
            o11602.removeEventListener("click",o12573);
         }
         if(o13380)
         {
            o13380.removeEventListener("click",o10596);
         }
      }
      
      public function o14826(param1:Function) : void
      {
         this.o9865 = param1;
      }
      
      private function o11847() : void
      {
         if(o13800.o20129)
         {
            if(o19419.o7923.o14250 >= 1)
            {
               o11602.o13586 = "Scrap for " + o13800.o16475(null,o4189.o12328);
            }
            else
            {
               o11602.visible = false;
               o11602.removeEventListener("click",o12573);
            }
            if(o19419.o7923.o14250 >= 2)
            {
               o4383.o13586 = "Scrap all for " + o13800.o15774(null,o19419.o7923.o14250,o4189.o12328);
            }
            else
            {
               o4383.visible = false;
               o4383.removeEventListener("click",o14312);
            }
         }
         if(o19401)
         {
            o19401.text = o19419.o7923.o5532.toString();
         }
         if(o12536)
         {
            o12536.text = o19419.o7923.o14250.toString();
         }
         if(o9865)
         {
            o9865();
         }
         draw();
      }
      
      protected function o12065(param1:Event) : void
      {
         this.visible = false;
         if(o11290 != null)
         {
            o11290.visible = true;
         }
         if(o11602)
         {
            o11602.visible = false;
         }
         if(o4383)
         {
            o4383.visible = false;
         }
      }
      
      override protected function draw() : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         var _loc1_:* = false;
         super.draw();
         o2021.visible = o19419.o7923.level < o19419.o5292.o418.o6011 && o19419.o7923.o14250 > 0;
         o13380.enabled = o19419.o7923.level >= o19419.o5292.o418.o6011 && o19419.o7923.o14250 > 0;
         o57.gotoAndStop(1);
         var _loc4_:int = o19419.o7923.o14250;
         var _loc5_:int = o19419.o7923.o5532;
         if(o13800.o20129)
         {
            if(o4383 && _loc4_ > 1 && o19419.o7923.level >= o19419.o5292.o418.o6011)
            {
               o4383.visible = true;
            }
            if(o11602 && _loc4_ > 0 && o19419.o7923.level >= o19419.o5292.o418.o6011)
            {
               o11602.visible = true;
            }
         }
         if(o16490 != null)
         {
            if(o19419.o7923.o14250 >= o19419.o5292.o418.o12650)
            {
               _loc3_ = o16490.getChildByName("label") as TextField;
               _loc2_ = o19419.o5292.o418.o12650;
               _loc1_ = o19419.o7923.o14250 > o19419.o5292.o418.o12650;
               if(_loc1_)
               {
                  _loc3_.text = "Warning: You have more than " + _loc2_.toString() + " black strongboxes. Any black strongboxes past the " + _loc2_.toString() + " limit will be lost after exiting this screen.";
               }
               else
               {
                  _loc3_.text = "Warning: You have reached the " + _loc2_.toString() + " black strongboxes limit. Any new black strongboxes will be lost after exiting this screen.";
               }
               o16490.visible = true;
            }
            else
            {
               o16490.visible = false;
            }
         }
         o19401.text = o19419.o7923.o5532.toString();
         o12536.text = o19419.o7923.o14250.toString();
         if(o1082 != null)
         {
            o1082.text = "You have " + o19419.o7923.o18104.toString() + " Elite Augment Cores";
         }
      }
      
      override public function o13640() : void
      {
         asset.removeEventListener("enterFrame",o6662);
         o13380.removeEventListener("click",o10596);
         if(o20452)
         {
            o20452.removeEventListener("click",o12065);
         }
         if(o9324)
         {
            o9324.removeEventListener("enterFrame",o8712);
         }
         if(o7651)
         {
            o7651.removeEventListener("enterFrame",o7098);
         }
         if(o4383)
         {
            o4383.removeEventListener("click",o14312);
         }
         if(o11602)
         {
            o11602.removeEventListener("click",o12573);
         }
         o13380 = null;
         o57 = null;
         o19419 = null;
         o16989 = null;
         o16490 = null;
         o19401 = null;
         o2021 = null;
         o12536 = null;
         o1082 = null;
         o20452 = null;
         o11290 = null;
         o13291 = null;
         o7651 = null;
         o9324 = null;
         super.o13640();
      }
      
      private function o14946() : void
      {
         this.o1258();
         o13021();
         o11847();
      }
      
      private function o10596(param1:MouseEvent) : void
      {
         if(o19419.o7923.level < o19419.o5292.o418.o6011)
         {
            o16989.o12407("Unable to open black strongbox","You must be level " + o19419.o5292.o418.o6011.toString() + " to open black strongboxes");
            return;
         }
         if(o1708)
         {
            return;
         }
         if(o19419.o7923.o14250 > 0)
         {
            if(o19419.o7923.o5532 <= 0)
            {
               o16989.o14555(o14946);
            }
            else
            {
               o16989.o13483("Confim Black Strongbox Unlocking","Are you sure you want to open this Black Strongbox and use a Black Key?",o3201);
            }
         }
      }
      
      private function o3201() : void
      {
         o1708 = true;
         this.o12514 = true;
         this.o57.gotoAndPlay(1);
         if(o4383)
         {
            o4383.removeEventListener("click",o14312);
         }
         if(o11602)
         {
            o11602.removeEventListener("click",o12573);
         }
         o4519.o8116.o4812.ui.o16564.play(1);
      }
      
      private function o3857() : void
      {
         o57.stop();
         o1708 = false;
         var o20416:o20094 = this;
         o14200.o19505.saveData().defer(function(param1:Boolean):void
         {
            o14017 = param1;
            if(o14017)
            {
               o57.stop();
               o1708 = false;
               o20416.o12514 = false;
               o19419.o7923.o3196(false);
               o19419.o7923.o5532--;
               o20416.o1258();
               o19419.o202.o11362();
               o19419.o202.o11612(o4189.o4718(o4189.o12328));
               o19419.o202.o19266(o19419.o7923);
               o20416.o16989.o198(o20416.o1258);
               if(o4383)
               {
                  o4383.addEventListener("click",o14312,false,0,true);
               }
               if(o11602)
               {
                  o11602.addEventListener("click",o12573,false,0,true);
               }
               if(o20452 != null && o19419.o7923.o14250 == 0)
               {
                  o12065(null);
               }
               else
               {
                  o13021();
               }
            }
            else
            {
               o4519.o10093.o16989.o12407("Strongbox error","Error opening strongbox, try again",function():void
               {
                  o3857();
               });
            }
         });
      }
      
      protected function o6662(param1:Event) : void
      {
         if(asset == null)
         {
            return;
         }
         if(o1708)
         {
            if(o57.currentFrameLabel == "StrongboxOpened")
            {
               o3857();
            }
         }
      }
   }
}
