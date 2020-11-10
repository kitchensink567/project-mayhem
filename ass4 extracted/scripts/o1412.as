package
{
   import assets.ui.dialog.EventRewardInfoDialogAsset;
   import assets.ui.dialog.GlobalEventRewardInfoDialogAsset;
   import assets.ui.dialog.HighscoreEventRewardInfoDialogAsset;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o1412 extends o15625
   {
      
      private static const o8173:Array = [0.01,0.1,0.25,0.5,0.75];
       
      
      public var o7023:int;
      
      private var o11611:int = -1;
      
      private var o15265:int;
      
      public var o2285:o15625;
      
      public var o18624:o15625;
      
      public var o1688:o15625;
      
      public var o14381:o12290;
      
      private var o16823:MovieClip;
      
      private var o3917:MovieClip;
      
      private var o3700:DisplayObject;
      
      private var o3167:TextField;
      
      private var o16134:TextField;
      
      private var o15616:TextField;
      
      private var o15423:TextField;
      
      private var o18999:TextField;
      
      private var o17564:TextField;
      
      private var o13616:TextField;
      
      private var o18934:TextField;
      
      private var o19667:TextField;
      
      private var o10312:TextField;
      
      private var o904:TextField;
      
      private var o12126:Vector.<TextField>;
      
      private var o13142:Vector.<TextField>;
      
      private var o253:Vector.<MovieClip>;
      
      private var o6502:Vector.<TextField>;
      
      private var o16603:TextField;
      
      private var o9192:TextField;
      
      private var o11953:TextField;
      
      private var o19450:Number = -1;
      
      public var o118:Timer;
      
      private var info:MovieClip;
      
      private var o6245:String;
      
      private var o8133:String;
      
      private var o18382:Vector.<String>;
      
      private var o7735:Vector.<String>;
      
      private var o15076:Vector.<int>;
      
      private var o20347:int = 5;
      
      public var o3123:Boolean = false;
      
      public var o20465:MovieClip;
      
      public var o16473:TextField;
      
      public var o10486:o14801;
      
      public var o13639:Function;
      
      public var o18564:MovieClip;
      
      private var o1268:o15625;
      
      private var o6080:o15625;
      
      private var o20855:TextField = null;
      
      private var o5148:TextField = null;
      
      private var o11977:o9743 = null;
      
      private var o18245:MovieClip = null;
      
      private var o16059:MovieClip = null;
      
      private var o3657:String = null;
      
      private var o14740:String = null;
      
      private var o14875:int = 0;
      
      private var o20051:int = 0;
      
      private var o16191:int = 0;
      
      private var o6801:int = 0;
      
      private var o6131:Number = -1;
      
      private var o16928:int = -1;
      
      private var o3531:int = -1;
      
      private var o2258:Number = -1;
      
      public function o1412()
      {
         o6245 = "";
         o8133 = "";
         super();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         .super.visible = param1;
         o2285.visible = param1;
         o18624.visible = param1;
         o20465.visible = param1;
         o1688.visible = param1;
         o18245.visible = param1;
         if(o18564 != null)
         {
            if(param1 == false || o10486 == null)
            {
               o18564.visible = false;
            }
            else
            {
               o18564.visible = o10486.o15084();
            }
         }
      }
      
      public function o10913(param1:MovieClip, param2:o15625, param3:o15625, param4:o15625, param5:MovieClip, param6:MovieClip, param7:TextField, param8:Function, param9:MovieClip, param10:o15625, param11:o15625, param12:MovieClip, param13:o12290) : void
      {
         var _loc17_:int = 0;
         var _loc15_:* = null;
         var _loc18_:* = null;
         var _loc16_:* = null;
         var _loc14_:* = null;
         super.init(param1);
         this.o13639 = param8;
         this.o2285 = param2;
         this.o18624 = param3;
         this.info = param5;
         this.o20465 = param6;
         this.o16473 = param7;
         this.o1688 = param4;
         param6.visible = false;
         this.o1268 = param10;
         this.o6080 = param11;
         this.o18245 = param12;
         this.o14381 = param13;
         trace(o4519.o8116.o15020.toString());
         o16823 = param1.getChildByName("eventRewardIcon") as MovieClip;
         o3917 = param1.getChildByName("passiveEvent") as MovieClip;
         o16823.gotoAndStop(1);
         o3167 = param1.getChildByName("tile") as TextField;
         o10312 = param1.getChildByName("lblSuperEvent") as TextField;
         o16134 = param1.getChildByName("text") as TextField;
         o15616 = param1.getChildByName("score") as TextField;
         o15423 = param1.getChildByName("lblMedals") as TextField;
         o18999 = param1.getChildByName("standing") as TextField;
         o17564 = param1.getChildByName("rewards") as TextField;
         o13616 = param1.getChildByName("rewardsHeading") as TextField;
         o13616.visible = false;
         o18934 = param1.getChildByName("timeRemaining") as TextField;
         o9192 = param1.getChildByName("lblRank") as TextField;
         o11953 = param1.getChildByName("lblRewardInfo") as TextField;
         o5148 = param1.getChildByName("info") as TextField;
         o20855 = param1.getChildByName("percent") as TextField;
         if(param5 != null)
         {
            o19667 = param5.getChildByName("rollovertitle") as TextField;
            o904 = param5.getChildByName("rolloverBody") as TextField;
         }
         o12126 = new Vector.<TextField>();
         o13142 = new Vector.<TextField>();
         o253 = new Vector.<MovieClip>();
         o6502 = new Vector.<TextField>();
         this.o18564 = param9;
         if(param5 != null)
         {
            o16603 = param5.getChildByName("lblSuperEventHeading") as TextField;
            _loc17_ = 0;
            while(_loc17_ < o20347)
            {
               _loc15_ = param5.getChildByName("lblHeading" + _loc17_.toString()) as TextField;
               _loc18_ = param5.getChildByName("lblRewardDetails" + _loc17_.toString()) as TextField;
               _loc16_ = param5.getChildByName("medalQty" + _loc17_.toString()) as MovieClip;
               _loc14_ = _loc16_.getChildByName("lblQty") as TextField;
               o12126.push(_loc15_);
               o13142.push(_loc18_);
               o253.push(_loc16_);
               o6502.push(_loc14_);
               _loc17_++;
            }
         }
         o118 = new Timer(1000);
         o118.addEventListener("timer",o17613,false,0,true);
         param2.asset.addEventListener("mouseOver",o20081,false,0,true);
         param2.asset.addEventListener("mouseOut",o908,false,0,true);
         param2.addEventListener("click",o134,false,0,true);
         param3.asset.addEventListener("mouseOver",o20081,false,0,true);
         param3.asset.addEventListener("mouseOut",o908,false,0,true);
         param3.addEventListener("click",o19674,false,0,true);
         param4.asset.addEventListener("mouseOver",o20081,false,0,true);
         param4.asset.addEventListener("mouseOut",o908,false,0,true);
         param4.addEventListener("click",o14392,false,0,true);
      }
      
      private function o20328(param1:Event) : void
      {
         var _loc3_:* = 0;
         if(this.o10486.o11392 as o14128 is o14128 && (this.o10486.o11392 as o14128).o9854 == 15)
         {
            _loc3_ = 0;
            var _loc5_:int = 0;
            var _loc4_:* = this.o10486.o9763;
            for each(var _loc2_ in this.o10486.o9763)
            {
               _loc3_ = _loc2_;
            }
            o10486.o18018 = _loc3_ + 1;
            o14200.o19505.o5292.o16679.o7489();
            o14200.o19505.saveData();
         }
      }
      
      override protected function draw() : void
      {
         var _loc1_:* = null;
         super.draw();
         if(this.asset)
         {
            _loc1_ = this.asset.getChildByName("iconContainer") as MovieClip;
            if(_loc1_ != null)
            {
               if(o11611 == -1)
               {
                  o11611 = _loc1_.width;
                  o15265 = _loc1_.height;
               }
               if(_loc1_.numChildren > 0)
               {
                  _loc1_.removeChildren(0,_loc1_.numChildren - 1);
               }
               if(o3700 != null)
               {
                  _loc1_.scaleX = 1;
                  _loc1_.scaleY = 1;
                  _loc1_.addChild(o3700);
                  o3700.scaleX = 1;
                  o3700.scaleY = 1;
                  o20852.o17542(o3700,o11611,o15265);
               }
            }
         }
      }
      
      private function o16706(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         if(this.asset == null)
         {
            o4519.stage.removeChild(_loc2_.loader);
            return;
         }
         if(this.asset.LoadingWheel)
         {
            this.asset.LoadingWheel.visible = false;
         }
         _loc2_.removeEventListener("complete",o16706);
         _loc2_.removeEventListener("ioError",o16856);
         var _loc3_:Bitmap = Bitmap(_loc2_.loader.content);
         o4519.stage.removeChild(_loc2_.loader);
         this.o3700 = _loc3_;
         this.o1258();
      }
      
      private function o16856(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         if(_loc2_)
         {
            _loc2_.removeEventListener("complete",o16706);
            _loc2_.removeEventListener("ioError",o16856);
            o4519.stage.removeChild(_loc2_.loader);
         }
         if(this.asset && this.asset.LoadingWheel)
         {
            this.asset.LoadingWheel.visible = true;
         }
      }
      
      private function o134(param1:MouseEvent) : void
      {
      }
      
      private function o19674(param1:MouseEvent) : void
      {
         if(o10486.o17593 == 3)
         {
            o7454();
         }
         else
         {
            o3006();
         }
      }
      
      private function o3006() : void
      {
         var o19419:o14200 = o14200.o19505;
         var o11390:o8181 = o4519.o10093.o16989.o8386(null,o10486.o17593 == 3);
         var o18339:o15645 = o10486.o2395();
         o11390.o10706("Leaderboard: " + o10486.o16776() + " Loading...");
         o11390.o20183 = o14392;
         o11390.o12578();
         o11390.o10550(false);
         o19419.o5292.o16679.o2039(o10486.o11392,o10486.o11392.o9938).defer(function(param1:Vector.<o3643>):void
         {
            var _loc7_:int = 0;
            var _loc3_:Boolean = false;
            var _loc4_:Boolean = false;
            var _loc6_:* = null;
            if(o11390.o12514 || o11390.enabled == false)
            {
               return;
            }
            o11390.o10706("Leaderboard: " + o10486.o16776());
            if(param1.length == 0)
            {
               o11390.o7928(0);
            }
            else
            {
               o11390.o7928(param1[0].o14626);
            }
            o11390.o10550(true);
            o11390.o12578();
            var _loc5_:int = 0;
            var _loc9_:int = 0;
            var _loc8_:* = param1;
            for each(var _loc2_ in param1)
            {
               if(_loc2_.o19189 != 0)
               {
                  _loc7_ = 0;
                  _loc3_ = false;
                  _loc4_ = false;
                  if(_loc2_.o20860)
                  {
                     _loc7_ = o10486.o14373();
                  }
                  else
                  {
                     _loc7_ = o10486.o8893(_loc2_.o19730);
                  }
                  _loc6_ = _loc2_.o15820;
                  if(_loc6_ == null)
                  {
                     _loc6_ = "Kong";
                  }
                  if(_loc5_ >= 0 && _loc5_ <= 2)
                  {
                     _loc3_ = true;
                  }
                  if(_loc2_.o799 == o14200.o19505.o15894.o4848.o12485)
                  {
                     _loc4_ = true;
                  }
                  o11390.o2698(_loc5_,_loc2_.o15820,_loc2_.o10615,_loc2_.o19189,_loc2_.o19730,_loc7_,_loc2_.o2562,_loc2_.o20860,_loc2_.o1727,_loc3_,_loc4_);
                  _loc5_++;
               }
            }
         });
      }
      
      private function o7454() : void
      {
         var o19419:o14200 = o14200.o19505;
         var o11390:o13873 = o4519.o10093.o16989.o20751(null,o10486.o17593 == 3);
         var o18339:o15645 = o10486.o2395();
         o11390.o10706("Leaderboard: " + o10486.o16776() + " Loading...");
         o11390.o20183 = o14392;
         o11390.o12578();
         o11390.o10550(false);
         o19419.o5292.o16679.o9772(o10486.o11392).defer(function(param1:Vector.<o3643>):void
         {
            o17908 = param1;
            if(o11390.o12514 || o11390.enabled == false)
            {
               return;
            }
            o11390.o10706("Leaderboard: " + o10486.o16776());
            if(o17908.length == 0)
            {
               o11390.o7928(0);
            }
            else
            {
               o11390.o7928(o17908[0].o14626);
            }
            o11390.o10550(true);
            o11390.o12578();
            var o7023:int = 0;
            var o13824:int = 0;
            var _loc4_:int = 0;
            var _loc3_:* = o17908;
            for each(o14050 in o17908)
            {
               var o8749:int = 0;
               var o11887:Boolean = false;
               var o16235:Boolean = false;
               if(o14050.o20860)
               {
                  o8749 = o10486.o14373();
               }
               else
               {
                  o8749 = o10486.o8893(o14050.o19730);
               }
               var o15820:String = o14050.o15820;
               if(o15820 == null)
               {
                  o15820 = "Kong";
               }
               if(o7023 >= 0 && o7023 <= 2)
               {
                  o11887 = true;
               }
               if(o14050.o799 == o14200.o19505.o15894.o4848.o12485)
               {
                  o16235 = true;
                  o13824 = o14050.o19189;
               }
               o11390.o2698(o7023,o14050.o15820,o14050.o10615,o14050.o19189,o14050.o19730,o8749,o14050.o2562,o14050.o20860,o14050.o1727,o11887,o16235);
               o7023 = Number(o7023) + 1;
            }
            o19419.o5292.o16679.o7971(o10486.o11392).defer(function(param1:Vector.<o3643>):void
            {
               if(o11390.o12514 || o11390.enabled == false)
               {
                  return;
               }
               o11390.o17175(param1,o13824);
            });
         });
      }
      
      public function o3082(param1:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = o253;
         for each(var _loc2_ in o253)
         {
            _loc2_.visible = param1;
         }
      }
      
      private function o14392(param1:Event) : void
      {
         var _loc28_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc2_:* = null;
         var _loc30_:* = null;
         var _loc18_:* = null;
         var _loc27_:* = null;
         var _loc13_:int = 0;
         var _loc24_:int = 0;
         var _loc11_:* = 0;
         var _loc31_:* = 0;
         var _loc23_:* = null;
         var _loc33_:* = null;
         var _loc20_:* = null;
         var _loc17_:* = null;
         var _loc26_:* = null;
         var _loc21_:* = null;
         var _loc5_:* = null;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc29_:* = null;
         o1051.o19115(o16928);
         if(o10486.o17593 == 3)
         {
            o4519.o10093.o16989.o7771();
            return;
         }
         o11977 = new o9743();
         if(o10486.o11392 is o14128 && (o10486.o11392 as o14128).o9854 == 15)
         {
            o11977.init(new HighscoreEventRewardInfoDialogAsset());
            _loc28_ = o11977.container;
         }
         else if(o10486.o11392 is o14128 && (o10486.o11392 as o14128).o9854 == 2)
         {
            o11977.init(new GlobalEventRewardInfoDialogAsset());
            _loc28_ = o11977.container;
            o16059 = _loc28_.getChildByName("progressBar") as MovieClip;
            _loc3_ = _loc28_.getChildByName("percent") as TextField;
            _loc4_ = _loc28_.getChildByName("info") as TextField;
            o16059.gotoAndStop(0);
            _loc3_.text = "Completion: Loading";
            _loc4_.text = "Progress: Loading";
            if(o3657)
            {
               _loc3_.text = o3657;
            }
            if(o14740)
            {
               _loc4_.text = o14740;
            }
            if(o6131 != -1)
            {
               if(o3531 != -1)
               {
                  o1051.o19115(o3531);
               }
               o3531 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o16477);
            }
            o18245.gotoAndStop(o6801);
            o1051.o19115(o16928);
         }
         else
         {
            o11977.init(new EventRewardInfoDialogAsset());
            _loc28_ = o11977.container;
         }
         var _loc19_:TextField = _loc28_.getChildByName("rollovertitle") as TextField;
         var _loc14_:TextField = _loc28_.getChildByName("rolloverBody") as TextField;
         _loc19_.text = o6245;
         var _loc9_:String = "";
         if(o10486.o11392 is o14128 && (o10486.o11392 as o14128).o9854 == 15)
         {
            _loc2_ = _loc28_.getChildByName("lblCompleted") as TextField;
            _loc30_ = _loc28_.getChildByName("lblHigestScore") as TextField;
            _loc18_ = _loc28_.getChildByName("lblLowestScore") as TextField;
            _loc27_ = _loc28_.getChildByName("lblTotalScore") as TextField;
            _loc13_ = 0;
            _loc24_ = 0;
            _loc11_ = 2147483647;
            _loc31_ = 0;
            var _loc36_:int = 0;
            var _loc35_:* = o10486.o9763;
            for each(var _loc22_ in o10486.o9763)
            {
               _loc24_++;
               _loc13_ = _loc13_ + _loc22_;
               if(_loc22_ < _loc11_)
               {
                  _loc11_ = _loc22_;
               }
               if(_loc22_ > _loc31_)
               {
                  _loc31_ = _loc22_;
               }
            }
            if(_loc11_ == 2147483647)
            {
               _loc11_ = 0;
            }
            if((o10486.o11392 as o14128).o5735)
            {
               _loc2_.text = _loc24_.toString() + "/" + (o10486.o11392 as o14128).o5735.o17679.toString();
            }
            else
            {
               _loc2_.text = _loc13_ + "/" + "Infinity";
            }
            _loc30_.text = _loc31_.toString();
            _loc18_.text = _loc11_.toString();
            _loc27_.text = _loc13_.toString();
         }
         _loc14_.text = o8133 + _loc9_;
         var _loc7_:Boolean = true;
         var _loc32_:Boolean = o10486.o15084();
         var _loc6_:TextField = _loc28_.getChildByName("lblSuperEventHeading") as TextField;
         _loc6_.visible = _loc32_;
         var _loc25_:Boolean = false;
         _loc22_ = 0;
         while(_loc22_ < o20347)
         {
            _loc23_ = _loc28_.getChildByName("lblHeading" + _loc22_.toString()) as TextField;
            _loc33_ = _loc28_.getChildByName("lblRewardDetails" + _loc22_.toString()) as TextField;
            _loc20_ = _loc28_.getChildByName("medalQty" + _loc22_.toString()) as MovieClip;
            _loc17_ = _loc20_.getChildByName("lblQty") as TextField;
            _loc26_ = _loc28_.getChildByName("highlight" + _loc22_.toString()) as MovieClip;
            _loc23_.visible = false;
            _loc33_.visible = false;
            _loc20_.visible = false;
            _loc17_.visible = false;
            _loc26_.visible = false;
            _loc22_++;
         }
         var _loc16_:Vector.<o7631> = o10486.o11392.o9938;
         if(_loc16_)
         {
            _loc22_ = 0;
            while(_loc22_ < (!!_loc16_?_loc16_.length:o20347))
            {
               _loc23_ = _loc28_.getChildByName("lblHeading" + _loc22_.toString()) as TextField;
               _loc33_ = _loc28_.getChildByName("lblRewardDetails" + _loc22_.toString()) as TextField;
               _loc20_ = _loc28_.getChildByName("medalQty" + _loc22_.toString()) as MovieClip;
               _loc17_ = _loc20_.getChildByName("lblQty") as TextField;
               _loc26_ = _loc28_.getChildByName("highlight" + _loc22_.toString()) as MovieClip;
               if(_loc25_ == false)
               {
                  if(_loc16_)
                  {
                     if(o2258 != -1)
                     {
                        _loc26_.visible = o2258 <= _loc16_[_loc22_].o2760 && o10486.o14209 != 0?true:false;
                     }
                     else
                     {
                        _loc26_.visible = o10486.o2889 <= _loc16_[_loc22_].o2760 && o10486.o19189 != 0?true:false;
                     }
                  }
                  else if(o2258 != -1)
                  {
                     _loc26_.visible = o2258 <= o8173[_loc22_]?true:false;
                  }
                  else
                  {
                     _loc26_.visible = o10486.o2889 <= o8173[_loc22_]?true:false;
                  }
               }
               else
               {
                  _loc26_.visible = false;
               }
               if(_loc26_.visible)
               {
                  _loc25_ = true;
               }
               _loc20_.visible = _loc7_;
               _loc17_.text = o15076.length > 0?o15076[_loc22_].toString():"";
               _loc17_.visible = true;
               _loc20_.visible = _loc32_;
               _loc23_.visible = true;
               _loc33_.visible = true;
               _loc23_.text = o18382[_loc22_];
               _loc33_.text = o7735[_loc22_];
               _loc22_++;
            }
         }
         var _loc34_:MovieClip = _loc28_.getChildByName("blackKeyInfo") as MovieClip;
         _loc34_.visible = o10486.o11392.o18188;
         var _loc12_:o15745 = o14200.o19505.o5292.o418;
         if(_loc34_.visible)
         {
            if(o10486.o11392 is o14128)
            {
               _loc21_ = o10486.o11392 as o14128;
               _loc5_ = "";
               _loc8_ = _loc21_.o20331.o18402;
               _loc10_ = _loc21_.o20331.o7206;
               _loc15_ = _loc21_.o20331.o15010;
               if(_loc8_ * 1000 > 10)
               {
                  _loc5_ = _loc5_ + ("Diamond: " + o12267(_loc8_) + " | ");
               }
               else
               {
                  _loc5_ = _loc5_ + ("Diamond: 0." + Math.round(_loc8_ * 1000) + "%  | ");
               }
               if(_loc10_ * 1000 > 10)
               {
                  _loc5_ = _loc5_ + ("Platinum: " + o12267(_loc10_) + " | ");
               }
               else
               {
                  _loc5_ = _loc5_ + ("Platinum: 0." + Math.round(_loc10_ * 1000) + "% | ");
               }
               if(_loc15_ * 1000 > 10)
               {
                  _loc5_ = _loc5_ + ("Gold: " + o12267(_loc15_) + "");
               }
               else
               {
                  _loc5_ = _loc5_ + ("Gold: 0." + Math.round(_loc15_ * 1000) + "%");
               }
               _loc29_ = _loc34_.getChildByName("lblBlackKeyInfo") as TextField;
               _loc29_.text = _loc5_;
            }
            else
            {
               _loc29_ = _loc34_.getChildByName("lblBlackKeyInfo") as TextField;
               _loc29_.text = "Diamond: " + o12267(_loc12_.o6184) + " | " + "Platinum: " + o12267(_loc12_.o4582) + " | " + "Gold: 0.5%";
            }
         }
         o4519.o10093.o16989.o9642(o11977);
         o11977.o12407("","xxx");
      }
      
      private function o18138(param1:String, param2:String, param3:Number) : void
      {
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc5_:* = null;
         if(o11977 && o11977 is GlobalEventRewardInfoDialogAsset)
         {
            _loc4_ = o11977.container;
            _loc4_ = o11977.container;
            o16059 = _loc4_.getChildByName("progressBar") as MovieClip;
            _loc6_ = _loc4_.getChildByName("percent") as TextField;
            _loc5_ = _loc4_.getChildByName("info") as TextField;
            o18245.gotoAndStop(0);
            _loc6_.text = param1;
            _loc6_.visible = true;
            _loc5_.text = param2;
            _loc5_.visible = true;
            if(o3531 != -1)
            {
               o1051.o19115(o3531);
            }
            o3531 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o16477);
         }
      }
      
      private function o16477() : void
      {
         o14875 = o14875 + 1;
         o16059.gotoAndStop(o14875 > o20051?o14875 > 100?100:o20051:o14875 < 0?0:o14875);
         if(o14875 >= o20051)
         {
            o1051.o19115(o3531);
         }
      }
      
      private function o20563() : void
      {
         o4519.o10093.o16989.o10877(o11977);
         o1051.o19115(o3531);
      }
      
      private function o12267(param1:Number) : String
      {
         return Math.round(param1 * 100).toString() + "%";
      }
      
      private function o20081(param1:Event) : void
      {
         o6248(true);
      }
      
      private function o908(param1:Event) : void
      {
         o6248(false);
      }
      
      private function o6248(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(info == null || true)
         {
            return;
         }
         info.visible = param1;
         var _loc3_:Boolean = o10486.o15084();
         o16603.visible = _loc3_;
         if(param1 && o18382 != null)
         {
            o19667.text = o6245;
            o904.text = o8133;
            _loc2_ = 0;
            while(_loc2_ < o20347)
            {
               o12126[_loc2_].text = o18382[_loc2_];
               o13142[_loc2_].text = o7735[_loc2_];
               o6502[_loc2_].text = o15076[_loc2_].toString();
               o6502[_loc2_].visible = _loc3_;
               o253[_loc2_].visible = _loc3_;
               _loc2_++;
            }
         }
      }
      
      override public function o9173(param1:String) : void
      {
         super.o9173(param1);
         if(info == null)
         {
            return;
         }
         if(param1 == "up")
         {
            o6248(false);
         }
         else
         {
            o6248(true);
         }
      }
      
      private function o17613(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(o19450 < 0)
         {
            _loc2_ = o10486.o11392.o5897.end.getTime() - o4519.o8116.o15020.getTime();
            if(_loc2_ <= 0)
            {
               this.o3123 = true;
               o19450 = 0;
               o118.stop();
               this.visible = false;
               this.o2285.visible = false;
               this.o20465.visible = false;
            }
            else
            {
               o19450 = _loc2_;
            }
         }
         o18934.text = o16724.o8717(o19450);
         o19450 = o19450 - 1000;
      }
      
      public function o19007(param1:String, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Number = -1) : void
      {
         var _loc9_:* = null;
         var _loc11_:* = null;
         var _loc10_:* = null;
         var _loc8_:* = NaN;
         if(o16059)
         {
            o16059.visible = false;
         }
         o20855.visible = false;
         o5148.visible = false;
         o18245.visible = false;
         if(o10486.o11392 is o14128)
         {
            _loc9_ = o10486.o11392 as o14128;
            switch(int(_loc9_.o9854) - 2)
            {
               case 0:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               default:
                  o18245.visible = true;
                  o2258 = param7;
                  _loc11_ = "Infinity";
                  _loc10_ = "";
                  _loc8_ = 0;
                  if(_loc9_.o6680)
                  {
                     _loc11_ = o16724.o10417(_loc9_.o6680.o20022);
                     _loc8_ = Number(Math.ceil(o10486.o14209 / _loc9_.o6680.o20022 * 100));
                     _loc10_ = _loc8_.toString() + "%";
                  }
                  o3657 = "Completion: " + (_loc8_ > 100?"100%":_loc10_);
                  o14740 = "Progress: " + (o10486.o14209 > _loc9_.o6680.o20022?_loc11_:o16724.o10417(o10486.o14209)) + " of " + _loc11_;
                  if(o16059)
                  {
                     o16059.visible = true;
                  }
                  o20855.visible = true;
                  o20855.text = o3657;
                  o20855.visible = true;
                  o5148.text = o14740;
                  o5148.visible = true;
                  o6801 = _loc8_ > 100?100:_loc8_ < 0?0:_loc8_;
                  o20051 = o6801;
                  o16928 = o1051.o4767(o4519.o8116.o2996,0.0333333333333333,o8488);
                  o6131 = o6801;
                  o18138(o3657,o14740,o6801);
                  break;
               case 13:
            }
         }
         o16823.visible = param3 > 0 && param3 <= 6;
         if(o16823.visible)
         {
            o16823.gotoAndStop(param3);
         }
         o18999.text = param1;
         o13616.text = "Current Reward:";
         o17564.text = !!param2?param2:"None";
         o17564.textColor = param4;
         o13616.visible = true;
         if(_loc9_ && _loc9_.o9854 == 2 && _loc9_.o10486.o4210 == false)
         {
            o16823.visible = true;
            if(o16823.visible)
            {
               o16823.gotoAndStop(6);
            }
            o17564.text = "";
            o13616.text = "Contribute to earn rewards!";
         }
         if(o9192 != null)
         {
            o9192.text = "Rank: " + param5.toString();
         }
      }
      
      public function o8488() : void
      {
         o16191 = o16191 + 1;
         o18245.gotoAndStop(o16191 > o6801?o16191 > 100?100:o6801:o16191 < 0?0:o16191);
         if(o16191 >= o6801)
         {
            o1051.o19115(o16928);
         }
      }
      
      public function o11015(param1:o14801) : void
      {
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc15_:int = 0;
         var _loc13_:* = null;
         var _loc9_:Boolean = false;
         var _loc8_:* = null;
         var _loc3_:* = null;
         this.o10486 = param1;
         var _loc7_:Loader = new Loader();
         o4519.stage.addChild(_loc7_);
         _loc7_.contentLoaderInfo.addEventListener("complete",o16706);
         _loc7_.contentLoaderInfo.addEventListener("ioError",o16856);
         var _loc14_:LoaderContext = new LoaderContext();
         _loc14_.checkPolicyFile = true;
         _loc7_.load(new URLRequest(param1.o11392.o3700),_loc14_);
         var _loc5_:o15645 = param1.o2395();
         var _loc2_:int = param1.o14373();
         var _loc6_:int = param1.o19189;
         var _loc4_:String = "Score: " + _loc6_.toString();
         var _loc12_:String = "Top: " + "Loading";
         o19450 = param1.o11392.o5897.end.getTime() - o4519.o8116.o15020.getTime();
         o16823.visible = _loc2_ > 0 && _loc2_ <= 5;
         if(o16823.visible)
         {
            o16823.gotoAndStop(_loc2_);
         }
         o3167.text = param1.o16776();
         if(o10312)
         {
            o10312.text = "Championships";
         }
         o16134.text = param1.o16070();
         o15616.text = _loc4_;
         o18999.text = _loc12_;
         o17564.text = "";
         o20855.visible = false;
         o5148.visible = false;
         if(o15423 != null)
         {
            o15423.text = _loc4_.substr("Score: ".length);
         }
         if(param1.o17593 == 3)
         {
            _loc10_ = asset.getChildByName("badge") as MovieClip;
            _loc11_ = _loc10_.getChildByName("level") as MovieClip;
            _loc15_ = param1.o10340();
            _loc13_ = param1.o9694();
            _loc9_ = _loc13_ != null && _loc13_.o18147 != null;
            _loc10_.visible = true;
            if(true || _loc9_)
            {
               if(_loc9_)
               {
                  _loc11_.gotoAndStop(_loc13_.o18147);
               }
               else
               {
                  _loc11_.gotoAndStop("NoBadge");
               }
            }
            else
            {
               _loc11_.gotoAndStop(1);
            }
            _loc8_ = asset.getChildByName("lblSuperEventRank") as TextField;
            if(_loc15_ >= 0)
            {
               _loc8_.text = "Reward " + (_loc15_ + 1).toString();
            }
            else
            {
               _loc8_.text = "";
            }
            _loc8_.visible = false;
            if(_loc13_ == null)
            {
               _loc3_ = param1.o15368();
               o11953.text = "The top 3 players will win the incredible " + _loc3_.o18656(true,false,false,true,true,true,true,true,false,true,true);
            }
            else
            {
               o11953.text = "Current Placing Rewards: " + _loc13_.o18656(true);
            }
         }
         o18934.text = o16724.o8717(o19450);
         this.o6245 = param1.o16776();
         this.o8133 = param1.o13404();
         this.o18382 = param1.o10282();
         this.o7735 = param1.o19848();
         this.o15076 = param1.o608();
         o20465.visible = o14200.o19505.o7923.level < _loc5_.o10387;
         o16473.text = "Unlock at level " + _loc5_.o10387.toString();
         o20855.visible = false;
         o5148.visible = false;
         o18245.visible = false;
         if(o18564 != null)
         {
            o18564.visible = param1.o15084();
         }
         o118.start();
      }
      
      public function o445(param1:o14801) : void
      {
         this.o10486 = param1;
         var _loc6_:Loader = new Loader();
         o4519.stage.addChild(_loc6_);
         _loc6_.contentLoaderInfo.addEventListener("complete",o16706);
         _loc6_.contentLoaderInfo.addEventListener("ioError",o16856);
         var _loc9_:LoaderContext = new LoaderContext();
         _loc9_.checkPolicyFile = true;
         _loc6_.load(new URLRequest(param1.o11392.o3700),_loc9_);
         var _loc4_:o15645 = param1.o2395();
         var _loc2_:int = param1.o14373();
         var _loc5_:int = param1.o19189;
         var _loc10_:int = 0;
         var _loc12_:int = 0;
         var _loc11_:* = param1.o9763;
         for each(var _loc8_ in param1.o9763)
         {
            _loc10_ = _loc10_ + _loc8_;
         }
         var _loc3_:String = "Total Score: " + _loc10_;
         var _loc7_:String = "Top: " + "Loading";
         o2285.visible = true;
         o19450 = param1.o11392.o5897.end.getTime() - o4519.o8116.o15020.getTime();
         o16823.visible = _loc2_ > 0 && _loc2_ <= 5;
         if(o16823.visible)
         {
            o16823.gotoAndStop(_loc2_);
         }
         o3167.text = param1.o16776();
         o16134.text = param1.o16070();
         o15616.text = _loc3_;
         o18999.text = _loc7_;
         o17564.text = "";
         o20855.visible = false;
         o5148.visible = false;
         if(o15423 != null)
         {
            o15423.text = _loc3_.substr("Score: ".length);
         }
         o18934.text = o16724.o8717(o19450);
         this.o6245 = param1.o16776();
         this.o8133 = param1.o13404();
         this.o18382 = param1.o10282();
         this.o7735 = param1.o19848();
         this.o15076 = param1.o608();
         o20465.visible = o14200.o19505.o7923.level < _loc4_.o10387;
         o16473.text = "Unlock at level " + _loc4_.o10387.toString();
         o20855.visible = false;
         o5148.visible = false;
         o18245.visible = false;
         if(o18564 != null)
         {
            o18564.visible = param1.o15084();
         }
         o118.start();
      }
      
      public function o19123(param1:o14801) : void
      {
         this.o10486 = param1;
         var _loc6_:Loader = new Loader();
         o4519.stage.addChild(_loc6_);
         _loc6_.contentLoaderInfo.addEventListener("complete",o16706);
         _loc6_.contentLoaderInfo.addEventListener("ioError",o16856);
         var _loc8_:LoaderContext = new LoaderContext();
         _loc8_.checkPolicyFile = true;
         _loc6_.load(new URLRequest(param1.o11392.o3700),_loc8_);
         var _loc4_:o15645 = param1.o2395();
         var _loc2_:int = param1.o14373();
         var _loc5_:int = param1.o19189;
         var _loc3_:String = "Score: " + _loc5_.toString();
         var _loc7_:String = "Top: " + "Loading";
         o19450 = param1.o11392.o5897.end.getTime() - o4519.o8116.o15020.getTime();
         o16823.visible = _loc2_ > 0 && _loc2_ <= 5;
         if(o16823.visible)
         {
            o16823.gotoAndStop(_loc2_);
         }
         o3167.text = param1.o16776();
         o16134.text = param1.o16070();
         o15616.visible = false;
         o18999.visible = false;
         o17564.text = "";
         o3917.visible = false;
         o18245.visible = true;
         o18245.gotoAndStop(0);
         o20855.visible = true;
         o5148.visible = true;
         o18245.visible = true;
         o20855.text = "Completion: Loading";
         o5148.text = "Progress: Loading";
         o18624.visible = false;
         o2285.visible = false;
         if(o15423 != null)
         {
            o15423.text = _loc3_.substr("Score: ".length);
         }
         o18934.text = o16724.o8717(o19450);
         this.o6245 = param1.o16776();
         this.o8133 = param1.o13404();
         this.o18382 = param1.o10282();
         this.o7735 = param1.o19848();
         this.o15076 = param1.o608();
         o20465.visible = o14200.o19505.o7923.level < _loc4_.o10387;
         o16473.text = "Unlock at level " + _loc4_.o10387.toString();
         if(o18564 != null)
         {
            o18564.visible = param1.o15084();
         }
         o118.start();
      }
      
      public function o11691() : void
      {
         o2285.asset.removeEventListener("mouseOver",o20081);
         o2285.asset.removeEventListener("mouseOut",o908);
         o2285.removeEventListener("click",o19674);
         o18624.asset.removeEventListener("mouseOver",o20081);
         o18624.asset.removeEventListener("mouseOut",o908);
         o18624.removeEventListener("click",o19674);
         o1688.asset.removeEventListener("mouseOver",o20081);
         o1688.asset.removeEventListener("mouseOut",o908);
         o1688.removeEventListener("click",o14392);
      }
      
      override public function o13640() : void
      {
         o118.removeEventListener("timer",o17613);
         o1051.o19115(o16928);
         o1051.o19115(o3531);
         o16059 = null;
         o3657 = null;
         o14740 = null;
         o3700 = null;
         o11611 = 0;
         o15265 = 0;
         o11977 = null;
         o2285 = null;
         o5148 = null;
         o20855 = null;
         o18624 = null;
         o16823 = null;
         o3917 = null;
         o3700 = null;
         o3167 = null;
         o16134 = null;
         o18999 = null;
         o17564 = null;
         o18934 = null;
         o15616 = null;
         o10312 = null;
         o19667 = null;
         o904 = null;
         o12126 = null;
         o13142 = null;
         o18382 = null;
         o7735 = null;
         o13616 = null;
         o118 = null;
         info = null;
         o1688 = null;
         o253 = null;
         o6502 = null;
         o16603 = null;
         o15076 = null;
         o18564 = null;
         o9192 = null;
         o11953 = null;
         o15423 = null;
         o1268 = null;
         o6080 = null;
         super.o13640();
      }
   }
}
