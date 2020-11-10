package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o3376 extends o6539
   {
       
      
      private var o9679:o20565;
      
      protected var o18522:o19406;
      
      private var o3453:Vector.<MovieClip>;
      
      protected var o1632:o15625;
      
      protected var o20294:o15625;
      
      private var o713:MovieClip;
      
      private var o16242:TextField;
      
      private var o13791:TextField;
      
      private var o2775:MovieClip;
      
      private var o15066:o3164;
      
      public var o11275:Boolean = false;
      
      protected var o20199:o12290;
      
      private var o11290:o15625;
      
      private var o12057:TextField;
      
      protected var o18795:o4896;
      
      private var o15086:MovieClip;
      
      protected var o6003:o20421;
      
      private var o4945:MovieClip;
      
      private var o4469:o15625;
      
      private var o2090:int = 0;
      
      public var o1559:Boolean = false;
      
      private var o2045:o20094;
      
      private var o1155:TextField;
      
      private var o13333:MovieClip;
      
      private var o3988:MovieClip;
      
      private var o2468:MovieClip;
      
      protected var o17033:MovieClip;
      
      protected var o9197:TextField;
      
      private var o11446:MovieClip;
      
      private var o10994:MovieClip;
      
      private var o11602:o12290;
      
      private var o4383:o12290;
      
      private var o9324:MovieClip;
      
      private var o7651:MovieClip;
      
      private var o9851:int = 0;
      
      private var o20727:Timer;
      
      private var o12873:MovieClip;
      
      private var o427:TextField;
      
      public var o7408:Boolean = false;
      
      public function o3376()
      {
         super();
      }
      
      protected function o6100(param1:Boolean, param2:int) : void
      {
         this.o9851 = param2;
         if(param1 && param2 > 0)
         {
            o13333.gotoAndStop("nantoniumSale");
            o20727.start();
            o1155.text = "";
            o1155.visible = true;
         }
         else
         {
            o13333.gotoAndStop("standard");
         }
      }
      
      protected function o15829(param1:Event) : void
      {
         o9851 = Number(o9851) - 1;
         if(o9851 <= 0)
         {
            o20727.stop();
            o1155.visible = false;
            o6100(false,0);
         }
         else
         {
            o1155.text = "Sale ends in " + o16724.o8717(o9851 * 1000);
         }
      }
      
      protected function set o1843(param1:Boolean) : void
      {
         if(param1)
         {
            o1559 = false;
            o20294.visible = o2090 == 0;
         }
         else
         {
            o1559 = true;
         }
         o4945.visible = param1 == false;
      }
      
      protected function o11048() : void
      {
         o7408 = false;
      }
      
      protected function o4006() : o3164
      {
         return new o3164();
      }
      
      private function o19282(param1:int) : o15625
      {
         var _loc2_:o15625 = o9679.o17578("player" + param1.toString() + "Stats");
         return _loc2_;
      }
      
      protected function o20389(param1:o11507) : void
      {
      }
      
      public function o17285(param1:int = 0) : void
      {
         if(o12873 == null)
         {
            return;
         }
         if(o7408 == false && param1 > 0 || o14200.o19505.o202.o5509 > 0)
         {
            o7408 = true;
            trace("");
            trace("+##################################################################+");
            trace("| Displaying medals earned for campionship");
            o12873.visible = true;
            trace("| Medals Earned: " + param1);
            trace("| Boss Kill Medals Earned: " + o14200.o19505.o202.o5509);
            o427.text = o16724.o10417(param1 + o14200.o19505.o202.o5509);
            trace("+##################################################################+");
            trace("");
         }
      }
      
      public function o16384(param1:MovieClip, param2:o19406, param3:int) : void
      {
         super.init(param1);
         this.o18522 = param2;
         o9679 = new o20565(this);
         var _loc9_:* = param1;
         o15066 = o4006();
         o15066.init(_loc9_.getChildByName("strongboxAnimation") as MovieClip);
         this.o5452(o15066);
         o12873 = _loc9_.getChildByName("superEventMedalsEarned") as MovieClip;
         o427 = o12873.getChildByName("lblMedalsEarned") as TextField;
         o12873.visible = false;
         o1632 = o9679.o17578("btnClickToOpen2",_loc9_);
         o1632.addEventListener("click",o2418,false,0,true);
         o20294 = o9679.o17578("btnNoItemsContinue",_loc9_);
         o20294.addEventListener("click",o454,false,0,true);
         o20294.enabled = false;
         o713 = param1.getChildByName("imgStrongBoxCountBg") as MovieClip;
         o16242 = param1.getChildByName("lblStrongBoxCount2") as TextField;
         o13791 = param1.getChildByName("lblStrongBoxesRecovered") as TextField;
         o11290 = o9679.o17578("btnStore",_loc9_);
         o11290.addEventListener("click",o15045,false,0,true);
         o11290.visible = false;
         o13333 = o11290.asset.getChildByName("imgStoreBg") as MovieClip;
         o13333.gotoAndStop(1);
         o1155 = o13333.getChildByName("lblSaleCountdown") as TextField;
         o1155.visible = false;
         o1155.mouseEnabled = false;
         o20727 = new Timer(1000);
         o20727.addEventListener("timer",o15829,false,0,true);
         o4945 = param1.getChildByName("firstTimeMasteries") as MovieClip;
         o4945.visible = false;
         var _loc6_:Array = [];
         o3453 = new Vector.<MovieClip>();
         o3453.push(_loc9_.getChildByName("player0Stats") as MovieClip);
         _loc6_.push(o19282(0));
         if(param2.o16989.o470)
         {
            o3453.push(_loc9_.getChildByName("player1Stats") as MovieClip);
            o3453.push(_loc9_.getChildByName("player2Stats") as MovieClip);
            o3453.push(_loc9_.getChildByName("player3Stats") as MovieClip);
            _loc6_.push(o19282(1));
            _loc6_.push(o19282(2));
            _loc6_.push(o19282(3));
         }
         o6003 = o9679.o3538(_loc6_);
         o6003.addEventListener(o5595.o16737,o20389,false,0,true);
         if(_loc9_.getChildByName("btnRematch") != null)
         {
            o20199 = o9679.o15961("btnRematch","X",_loc9_);
            o20199.addEventListener("click",o15784,false,0,true);
            o20199.visible = false;
         }
         o133(false);
         var _loc8_:MovieClip = param1.getChildByName("levelCompleteContainer") as MovieClip;
         o12057 = _loc8_.getChildByName("lblTimeCompleted") as TextField;
         o12057.text = "";
         var _loc5_:MovieClip = param1.getChildByName("chatBox") as MovieClip;
         if(_loc5_ != null)
         {
            o18795 = o19488();
            o18795.o9098 = -7;
            o18795.o16384(_loc5_,param2.o16989,0);
         }
         o15086 = param1.getChildByName("eventsBonus") as MovieClip;
         if(o15086 != null)
         {
            o15086.visible = false;
         }
         o4469 = o9679.o17578("btnMasteries",_loc9_);
         o4469.addEventListener("click",o15951,false,0,true);
         this.o1843 = false;
         o2045 = new o20094();
         o2045.o16384(_loc9_.getChildByName("openBlackStrongboxContainer") as MovieClip,param2.o16989,o11290);
         this.o5452(o2045);
         o2045.visible = false;
         var _loc4_:Boolean = false;
         var _loc7_:Boolean = false;
         if(o14200.o19505.o7923.o6333 > 0 && o4519.o8116.o476.o9095.o2596 > 0 && o14200.o19505.o202.o8971 == false || o4519.o8116.o476.o9392.o20722(o4519.o13206.o2685.o9721) > 1 && o14200.o19505.o202.o8971 == false)
         {
            _loc4_ = true;
         }
         if(o14200.o19505.o7923.o6333 > 0 && o4519.o8116.o476.o9095.o979 > 0 && o14200.o19505.o202.o8971 == false || o4519.o8116.o476.o9392.o15487(o4519.o13206.o2685.o9721) > 1 && o14200.o19505.o202.o8971 == false)
         {
            _loc7_ = true;
         }
         o3988 = param1.getChildByName("dailyRewardMutiplierAnimation0") as MovieClip;
         o11446 = param1.getChildByName("dailyRewardMutiplier0") as MovieClip;
         if(o3988 != null)
         {
            o3988.visible = _loc4_;
         }
         if(o11446 != null)
         {
            o11446.visible = _loc4_;
         }
         o2468 = param1.getChildByName("dailyRewardMutiplierAnimation1") as MovieClip;
         o10994 = param1.getChildByName("dailyRewardMutiplier1") as MovieClip;
         if(o2468 != null)
         {
            o2468.visible = _loc7_;
         }
         if(o10994 != null)
         {
            o10994.visible = _loc7_;
         }
         o17033 = param1.getChildByName("shardsEarned") as MovieClip;
         o9197 = o17033.getChildByName("lblShardsEarned") as TextField;
         o17033.visible = false;
         o4383 = o9679.o15961("btnShardAllStrongboxes","Scrap All for " + o13800.o15774(o14200.o19505.o7923.o8312),_loc9_);
         o11602 = o9679.o15961("btnShardStrongbox","Scrap for " + o13800.o16475(o14200.o19505.o7923.o8312),_loc9_);
         if(o13800.o20129)
         {
            o4383.addEventListener("click",o14312,false,0,true);
            o11602.addEventListener("click",o12573,false,0,true);
         }
         o4383.visible = false;
         o11602.visible = false;
         o7651 = param1.getChildByName("scrapAnimation") as MovieClip;
         o9324 = param1.getChildByName("scrapAllAnimation") as MovieClip;
         o7651.visible = false;
         o9324.visible = false;
         o7651.stop();
         o9324.stop();
         o11048();
      }
      
      protected function o12573(param1:Event) : void
      {
         var _loc5_:int = 0;
         if(o14200.o19505.o7923.o8312.length < 1)
         {
            o11602.visible = false;
            return;
         }
         if(o11275)
         {
            return;
         }
         var _loc2_:o16123 = new o16123(o13800.o16475(o14200.o19505.o7923.o8312));
         if(o14200.o19505.o7923.o8312 && o14200.o19505.o7923.o8312.length >= 1)
         {
            _loc5_ = o14200.o19505.o7923.o8312[0];
            o14200.o19505.o15894.o4848.o2719.o2684(_loc2_.value,_loc5_);
         }
         o9324.visible = false;
         o9324.stop();
         o7651.gotoAndPlay(0);
         o7651.addEventListener("enterFrame",o7098,false,100,true);
         o7651.visible = true;
         var _loc4_:MovieClip = o7651.getChildByName("alloyText") as MovieClip;
         var _loc3_:TextField = _loc4_.getChildByName("lblShardsEarned") as TextField;
         _loc3_.text = "+" + _loc2_.value + " Alloy";
         o14200.o19505.o202.o14782();
         o14200.o19505.o7923.o10248();
         o14200.o19505.o7923.o10252 = o14200.o19505.o7923.o10252 + _loc2_.value;
         o14200.o19505.data.o1553 = o14200.o19505.data.o1553 + _loc2_.value;
         o14200.o19505.saveData();
         o15157();
         o11602.o13586 = "Scrap for " + o13800.o16475(o14200.o19505.o7923.o8312);
         if(o14200.o19505.o7923.o8312.length > 1)
         {
            o4383.o13586 = "Scrap All for " + o13800.o15774(o14200.o19505.o7923.o8312);
         }
         else
         {
            o4383.visible = false;
         }
         o16545(o14200.o19505.o7923.o8312.length,o14200.o19505.o7923.o8312);
         o11290.visible = false;
         o11275 = true;
         o11602.visible = false;
         o4383.visible = false;
      }
      
      protected function o14312(param1:Event) : void
      {
         if(o14200.o19505.o7923.o8312.length < 1)
         {
            o11602.visible = false;
            o4383.visible = false;
            return;
         }
         if(o11275)
         {
            return;
         }
         o18522.o16989.o13483("Scrap ALL Strongboxes?","Are you sure you want to scrap ALL strongboxes?",o292);
      }
      
      private function o292() : void
      {
         var _loc4_:int = 0;
         var _loc6_:* = null;
         var _loc5_:int = 0;
         var _loc7_:int = o14200.o19505.o7923.o8312.length;
         var _loc1_:o16123 = new o16123(o13800.o15774(o14200.o19505.o7923.o8312));
         o7651.visible = false;
         o7651.stop();
         o9324.gotoAndPlay(0);
         o9324.addEventListener("enterFrame",o8712,false,100,true);
         o9324.visible = true;
         var _loc3_:MovieClip = o9324.getChildByName("alloyText") as MovieClip;
         var _loc2_:TextField = _loc3_.getChildByName("lblShardsEarned") as TextField;
         _loc2_.text = "+" + _loc1_.value + " Alloy";
         o14200.o19505.o15894.o4848.o2719.o15200(_loc7_,_loc1_.value);
         _loc4_ = 0;
         while(_loc4_ < _loc7_)
         {
            if(o14200.o19505.o7923.o8312 && o14200.o19505.o7923.o8312.length >= 1)
            {
               _loc6_ = new o16123(o13800.o16475(o14200.o19505.o7923.o8312,0,false));
               _loc5_ = o14200.o19505.o7923.o8312[0];
               o14200.o19505.o15894.o4848.o2719.o2684(_loc6_.value,_loc5_);
               o14200.o19505.o202.o14782();
               o14200.o19505.o7923.o10248();
            }
            _loc4_++;
         }
         o14200.o19505.o7923.o10252 = o14200.o19505.o7923.o10252 + _loc1_.value;
         o14200.o19505.data.o1553 = o14200.o19505.data.o1553 + _loc1_.value;
         o14200.o19505.saveData();
         o15157();
         o4383.o13586 = "Scrap All for " + o13800.o15774(o14200.o19505.o7923.o8312);
         o16545(o14200.o19505.o7923.o8312.length,o14200.o19505.o7923.o8312);
         o11290.visible = false;
         o11275 = true;
         o11602.visible = false;
         o4383.visible = false;
      }
      
      private function o7098(param1:Event) : void
      {
         if(o7651)
         {
            if(o7651.currentFrame >= o7651.totalFrames)
            {
               o7651.stop();
               o7651.visible = false;
               o7651.removeEventListener("enterFrame",o7098);
               o11602.visible = true;
               o4383.visible = true;
               o11275 = false;
               o16545(o14200.o19505.o7923.o8312.length,o14200.o19505.o7923.o8312);
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
               o9324.removeEventListener("enterFrame",o8712);
               o11602.visible = true;
               o4383.visible = true;
               o11275 = false;
               o16545(o14200.o19505.o7923.o8312.length,o14200.o19505.o7923.o8312);
            }
         }
      }
      
      override protected function o6662(param1:Event) : void
      {
         if(asset == null)
         {
            return;
         }
         super.o6662(param1);
         if(asset == null)
         {
            return;
         }
         o11692(o2468);
         o11692(o3988);
      }
      
      override protected function o154() : void
      {
         super.o154();
         o6117();
         o8454();
      }
      
      protected function o6117() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         if(o14200.o19505.o202.o8971)
         {
            return;
         }
         if(o3988)
         {
            o3988.gotoAndPlay(1);
         }
         if(o11446)
         {
            _loc1_ = o11446.getChildByName("multiplierAmount") as TextField;
            if(_loc1_)
            {
               _loc2_ = 0;
               _loc3_ = o4519.o8116.o476.o9392.o20722(o4519.o13206.o2685.o9721);
               if(o14200.o19505.o7923.o6333 >= 1)
               {
                  _loc2_ = Number(_loc2_ + o4519.o8116.o476.o9095.o2596);
               }
               _loc2_ = Number(_loc2_ + (_loc3_ > 1?_loc3_:0));
               _loc1_.text = "x" + _loc2_;
            }
         }
      }
      
      protected function o8454() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         if(o14200.o19505.o202.o8971)
         {
            return;
         }
         if(o2468)
         {
            o2468.gotoAndPlay(1);
         }
         if(o10994)
         {
            _loc1_ = o10994.getChildByName("multiplierAmount") as TextField;
            if(_loc1_)
            {
               _loc2_ = 0;
               _loc3_ = o4519.o8116.o476.o9392.o15487(o4519.o13206.o2685.o9721);
               if(o14200.o19505.o7923.o6333 >= 1)
               {
                  _loc2_ = Number(_loc2_ + o4519.o8116.o476.o9095.o979);
               }
               _loc2_ = Number(_loc2_ + (_loc3_ > 1?_loc3_:0));
               _loc1_.text = "x" + _loc2_;
            }
         }
      }
      
      protected function o15951(param1:MouseEvent) : void
      {
      }
      
      public function o2896(param1:int, param2:int) : void
      {
         if(o15086 == null)
         {
            return;
         }
         o15086.visible = true;
         var _loc3_:TextField = o15086.getChildByName("lblBonusCash") as TextField;
         var _loc4_:TextField = o15086.getChildByName("lblPoints") as TextField;
         _loc3_.text = "$" + o16724.o10417(param1);
         _loc4_.text = o16724.o10417(param2);
      }
      
      protected function o2821() : void
      {
         o20294.enabled = false;
      }
      
      protected function o3979() : void
      {
         o20294.enabled = true;
      }
      
      protected function o19488() : o4896
      {
         return new o4896();
      }
      
      private function o133(param1:Boolean) : void
      {
         o713 = asset.getChildByName("imgStrongBoxCountBg") as MovieClip;
         o16242 = asset.getChildByName("lblStrongBoxCount2") as TextField;
         o13791 = asset.getChildByName("lblStrongBoxesRecovered") as TextField;
         o713.visible = param1;
         o16242.visible = param1;
         o13791.visible = param1;
      }
      
      override public function o13640() : void
      {
         o1632.removeEventListener("click",o2418);
         o20294.removeEventListener("click",o454);
         o11290.removeEventListener("click",o15045);
         o6003.removeEventListener(o5595.o16737,o20389);
         o20727.removeEventListener("timer",o15829);
         o4469.removeEventListener("click",o15951);
         if(o20199 != null)
         {
            o20199.removeEventListener("click",o15784);
         }
         if(o18795 != null)
         {
            o18795.o13640();
         }
         o9679.o13640();
         o2468 = null;
         o3988 = null;
         o10994 = null;
         o11446 = null;
         o9679 = null;
         o18522 = null;
         o3453 = null;
         o1632 = null;
         o20294 = null;
         o713 = null;
         o16242 = null;
         o13791 = null;
         o2775 = null;
         o15066 = null;
         o20199 = null;
         o11290 = null;
         o12057 = null;
         o18795 = null;
         o15086 = null;
         o6003 = null;
         o4469 = null;
         o4945 = null;
         o2045 = null;
         o1155 = null;
         o13333 = null;
         o20727 = null;
         super.o13640();
      }
      
      private function o454(param1:Event) : void
      {
         this.o18522.o16989.screen = 5;
      }
      
      protected function o14199() : void
      {
         o15157();
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
      
      private function o11616(param1:MovieClip, param2:Vector.<int> = null) : void
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc4_:MovieClip = param1.getChildByName("powerUpIcons") as MovieClip;
         var _loc3_:int = param2 == null?0:param2.length;
         _loc5_ = 0;
         while(_loc5_ < 6)
         {
            _loc6_ = _loc4_.getChildByName("powerUpIcon" + _loc5_.toString()) as MovieClip;
            if(_loc5_ < _loc3_)
            {
               _loc6_.gotoAndStop(param2[_loc5_] + 1);
               _loc6_.visible = true;
            }
            else
            {
               _loc6_.gotoAndStop(1);
               _loc6_.visible = false;
            }
            _loc5_++;
         }
      }
      
      protected function o19290(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:Boolean, param10:int, param11:Boolean, param12:String, param13:Boolean, param14:int, param15:Vector.<int>, param16:String, param17:Boolean, param18:int, param19:int, param20:Boolean, param21:Boolean, param22:String, param23:o19626, param24:Boolean = false, param25:int = -1) : void
      {
         var _loc47_:* = null;
         var _loc28_:* = null;
         var _loc36_:* = null;
         var _loc46_:* = null;
         var _loc37_:* = null;
         var _loc27_:MovieClip = o3453[param1];
         _loc27_.visible = true;
         var _loc38_:MovieClip = _loc27_.getChildByName("iconCharacterClass") as MovieClip;
         _loc38_.gotoAndStop(param2 + 2);
         var _loc41_:MovieClip = _loc27_.getChildByName("classIcon") as MovieClip;
         _loc41_.gotoAndStop(param2 + 1);
         var _loc45_:MovieClip = _loc41_.getChildByName("rankIcon") as MovieClip;
         _loc45_.gotoAndStop(param3);
         var _loc43_:MovieClip = _loc27_.getChildByName("badgeSet") as MovieClip;
         param23.o8492(this,_loc43_);
         (_loc27_.getChildByName("lblPlayerName") as TextField).text = param4;
         (_loc27_.getChildByName("lblKills") as TextField).text = o16724.o10417(param5);
         var _loc32_:* = _loc27_.getChildByName("lblDeaths") as TextField;
         var _loc33_:TextField = _loc27_.getChildByName("lblXP") as TextField;
         var _loc26_:TextField = _loc27_.getChildByName("lblCash") as TextField;
         var _loc42_:TextField = _loc27_.getChildByName("lblLevel") as TextField;
         var _loc39_:* = _loc27_.getChildByName("lblScore") as TextField;
         var _loc30_:TextField = _loc27_.getChildByName("lblInfo") as TextField;
         var _loc29_:* = param13;
         if(_loc32_ != null && _loc39_ != null)
         {
            if(_loc29_)
            {
               _loc47_ = _loc32_;
               _loc32_ = _loc39_;
               _loc39_ = _loc47_;
               _loc32_.text = param19.toString();
               _loc32_.visible = true;
            }
            else
            {
               _loc32_.text = o16724.o10417(param6);
            }
         }
         else
         {
            _loc32_.text = o16724.o10417(param6);
         }
         var _loc40_:MovieClip = _loc27_.getChildByName("placing") as MovieClip;
         if(_loc40_ != null)
         {
            if(param20)
            {
               _loc40_.visible = param17;
               _loc40_.gotoAndStop(param1 + 1);
            }
            else
            {
               _loc40_.visible = false;
               _loc40_.gotoAndStop(1);
            }
         }
         if(_loc33_ != null)
         {
            _loc33_.text = o16724.o10417(param7);
            _loc33_.visible = true;
         }
         if(_loc26_ != null)
         {
            _loc26_.text = "$" + o16724.o10417(param8);
            _loc26_.visible = true;
         }
         if(_loc42_ != null)
         {
            _loc42_.text = param3.toString();
            _loc42_.visible = true;
         }
         if(_loc39_ != null)
         {
            if(o4519.o13206.o7)
            {
               _loc39_.text = o10403(param14);
            }
            else
            {
               _loc39_.text = param14.toString();
            }
            _loc39_.visible = param13;
         }
         if(_loc30_ != null)
         {
            _loc30_.text = param16;
            _loc30_.visible = true;
         }
         if(param24)
         {
            if(param25 >= 1)
            {
               switch(int(o4519.o13206.o19357))
               {
                  default:
                     _loc39_.text = o16724.o10417(param25);
                     break;
                  case 1:
                     _loc39_.text = o1424.o377(param25);
                     break;
                  case 2:
                     _loc39_.text = o16724.o10417(param25);
                     _loc39_.text = _loc39_.text + "%";
               }
               _loc39_.visible = true;
            }
         }
         if(param11)
         {
            _loc28_ = asset.getChildByName("rewards") as MovieClip;
            if(_loc28_ != null)
            {
               _loc28_.visible = true;
               (_loc28_.getChildByName("lblXP") as TextField).text = o16724.o10417(param7);
               (_loc28_.getChildByName("lblCash") as TextField).text = "$" + o16724.o10417(param8);
            }
            _loc36_ = asset.getChildByName("statHeadings") as MovieClip;
            if(_loc36_ != null)
            {
               _loc46_ = _loc36_.getChildByName("lblScore") as TextField;
               _loc37_ = _loc36_.getChildByName("lblDeaths") as TextField;
               if(_loc29_)
               {
                  _loc37_.text = "Score";
                  _loc46_.text = "Points";
               }
               else if(param24)
               {
                  _loc46_.text = param22;
                  _loc46_.visible = param24;
               }
               else
               {
                  _loc46_.visible = param13;
               }
            }
         }
         (_loc27_.getChildByName("lblKills") as TextField).visible = true;
         (_loc27_.getChildByName("lblDeaths") as TextField).visible = true;
         (_loc27_.getChildByName("processing") as MovieClip).visible = false;
         var _loc48_:MovieClip = _loc27_.getChildByName("connected") as MovieClip;
         var _loc35_:MovieClip = _loc27_.getChildByName("disconnected") as MovieClip;
         var _loc34_:MovieClip = _loc27_.getChildByName("rematch") as MovieClip;
         if(_loc48_ != null)
         {
            _loc48_.visible = param9 && param21 == false;
         }
         if(_loc35_ != null)
         {
            _loc35_.visible = param9 == false && param21 == false;
         }
         if(_loc34_ != null)
         {
            _loc34_.visible = param21;
         }
         o11373(param10);
         var _loc31_:MovieClip = _loc27_.getChildByName("clanContainer") as MovieClip;
         if(_loc31_ != null)
         {
            if(param12 == null)
            {
               _loc31_.gotoAndStop(1);
               _loc31_.visible = false;
            }
            else
            {
               try
               {
                  _loc31_.gotoAndStop(param12);
                  _loc31_.visible = true;
               }
               catch(o19631:Error)
               {
                  _loc31_.visible = false;
               }
            }
         }
         var _loc44_:MovieClip = _loc27_.getChildByName("powerUpIcons") as MovieClip;
         if(_loc44_ != null)
         {
            o11616(_loc27_,param15);
         }
      }
      
      private function o10403(param1:Number) : String
      {
         var _loc4_:String = "";
         if(int(param1 / 3600) > 0)
         {
            _loc4_ = _loc4_ + (int(param1 / 3600) + ":");
         }
         var _loc2_:String = String(int(param1 / 60 % 60));
         if(_loc2_.length != 2)
         {
            _loc2_ = "0" + _loc2_;
         }
         _loc4_ = _loc4_ + (_loc2_ + ":");
         var _loc3_:String = String(int(param1 % 60));
         if(_loc3_.length != 2)
         {
            _loc3_ = "0" + _loc3_;
         }
         _loc4_ = _loc4_ + _loc3_;
         return _loc4_;
      }
      
      protected function o11373(param1:int) : void
      {
         o12057.text = "Level duration " + o16724.o10403(int(param1 / 1000));
      }
      
      protected function o7756(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:String) : void
      {
         var _loc9_:MovieClip = o3453[param1];
         _loc9_.visible = true;
         var _loc17_:MovieClip = _loc9_.getChildByName("badgeSet") as MovieClip;
         o19626.o12803(_loc17_);
         var _loc10_:MovieClip = _loc9_.getChildByName("iconCharacterClass") as MovieClip;
         _loc10_.gotoAndStop(param2 + 2);
         var _loc15_:MovieClip = _loc9_.getChildByName("classIcon") as MovieClip;
         _loc15_.gotoAndStop(param2 + 1);
         var _loc19_:MovieClip = _loc15_.getChildByName("rankIcon") as MovieClip;
         _loc19_.gotoAndStop(param3);
         var _loc14_:MovieClip = _loc9_.getChildByName("placing") as MovieClip;
         if(_loc14_ != null)
         {
            _loc14_.visible = false;
         }
         (_loc9_.getChildByName("lblPlayerName") as TextField).text = param4 + ". Processing";
         (_loc9_.getChildByName("lblKills") as TextField).visible = false;
         (_loc9_.getChildByName("lblDeaths") as TextField).visible = false;
         var _loc20_:TextField = _loc9_.getChildByName("lblXP") as TextField;
         var _loc8_:TextField = _loc9_.getChildByName("lblCash") as TextField;
         var _loc16_:TextField = _loc9_.getChildByName("lblLevel") as TextField;
         var _loc11_:TextField = _loc9_.getChildByName("lblScore") as TextField;
         var _loc12_:TextField = _loc9_.getChildByName("lblInfo") as TextField;
         if(_loc20_ != null)
         {
            _loc20_.visible = false;
         }
         if(_loc8_ != null)
         {
            _loc8_.visible = false;
         }
         if(_loc16_ != null)
         {
            _loc16_.visible = false;
         }
         if(_loc11_ != null)
         {
            _loc11_.visible = false;
         }
         if(_loc12_ != null)
         {
            _loc12_.visible = false;
         }
         (_loc9_.getChildByName("processing") as MovieClip).visible = true;
         (_loc9_.getChildByName("connected") as MovieClip).visible = true;
         (_loc9_.getChildByName("disconnected") as MovieClip).visible = false;
         (_loc9_.getChildByName("rematch") as MovieClip).visible = false;
         o11373(param5);
         var _loc13_:MovieClip = _loc9_.getChildByName("clanContainer") as MovieClip;
         if(param7 == null)
         {
            _loc13_.gotoAndStop(1);
            _loc13_.visible = false;
         }
         else
         {
            try
            {
               _loc13_.gotoAndStop(param7);
               _loc13_.visible = true;
            }
            catch(o19631:Error)
            {
               _loc13_.visible = false;
            }
         }
         var _loc18_:MovieClip = _loc9_.getChildByName("powerUpIcons") as MovieClip;
         if(_loc18_ != null)
         {
            o11616(_loc9_);
         }
      }
      
      protected function o12047(param1:int) : void
      {
         o3453[param1].visible = false;
         var _loc3_:MovieClip = o3453[param1];
         var _loc2_:MovieClip = _loc3_.getChildByName("clanContainer") as MovieClip;
         _loc2_.gotoAndStop(1);
         _loc2_.visible = true;
      }
      
      public function o18277() : void
      {
      }
      
      protected function o16545(param1:int, param2:Vector.<int>) : void
      {
         this.o2090 = param1;
         o1632.visible = param1 > 0;
         o20294.visible = param1 == 0 && o1559 == false;
         var _loc3_:int = o4519.o8116.profileData.o7923.o14250;
         o11290.visible = param1 == 0 && _loc3_ == 0;
         if(o14200.o19505.o7923.level >= 25)
         {
            o2045.visible = param1 == 0 && _loc3_ > 0;
         }
         if(o13800.o20129)
         {
            o4383.visible = !(param1 == 0 && _loc3_ > 0) && o14200.o19505.o7923.o8312.length >= 2;
            o11602.visible = !(param1 == 0 && _loc3_ > 0) && o14200.o19505.o7923.o8312.length >= 1;
            o11602.o13586 = "Scrap for " + o13800.o16475(o14200.o19505.o7923.o8312);
            if(o14200.o19505.o7923.o8312.length > 1)
            {
               o4383.o13586 = "Scrap All for " + o13800.o15774(o14200.o19505.o7923.o8312);
            }
         }
         o16242 = asset.getChildByName("lblStrongBoxCount2") as TextField;
         o16242.text = param1.toString();
         o2775 = asset.getChildByName("noStrongboxPanel") as MovieClip;
         o2775.visible = param1 == 0;
         o133(param1 > 0);
         o15066.o16545(param1,param2);
      }
      
      private function o15307() : void
      {
      }
      
      public function o7893() : void
      {
         o18277();
         o15066.o11059(o15307);
         o11275 = false;
         o16545(o14200.o19505.o7923.o8312.length,o14200.o19505.o7923.o8312);
      }
      
      protected function o15157() : void
      {
         o7893();
      }
      
      protected function o15784(param1:Event) : void
      {
      }
      
      protected function o10186(param1:Number, param2:int) : void
      {
         var _loc3_:* = null;
         if("" == "paul")
         {
         }
         if(o20199 != null)
         {
            o20199.visible = o2045.visible == false && param1 > 0 && param2 > 1 && o20294.enabled && o14200.o19505.o202.o18339 != 2;
            _loc3_ = int(param1).toString();
            if(o20199.o13586 != _loc3_)
            {
               o20199.o13586 = _loc3_;
            }
         }
      }
      
      private function o15045(param1:Event) : void
      {
         this.o18522.o16989.o18430(null);
      }
   }
}
