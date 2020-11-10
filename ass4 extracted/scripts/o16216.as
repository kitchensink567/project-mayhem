package
{
   import flash.desktop.Clipboard;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class o16216 extends o6539
   {
       
      
      protected const o13139:int = 4;
      
      private var o7750:o20565;
      
      protected var o19689:o978;
      
      protected var o16989:o13064;
      
      private var o6402:TextField;
      
      private var o2330:TextField;
      
      private var o11638:MovieClip;
      
      private var o12783:MovieClip;
      
      private var o14529:MovieClip;
      
      private var o20411:MovieClip;
      
      private var o16270:TextField;
      
      protected var o19999:MovieClip;
      
      protected var o6003:o20421;
      
      protected var o18795:o4896;
      
      private var o7184:o15625;
      
      protected var o14640:MovieClip;
      
      protected var o18416:Boolean = false;
      
      private var o15100:Vector.<Vector.<String>>;
      
      private var o19238:Vector.<String>;
      
      private var o6769:Vector.<Boolean>;
      
      protected var o11075:int = -1;
      
      protected var o20706:MovieClip;
      
      private var o15912:MovieClip;
      
      private var o1200:TextField;
      
      private var o11912:o15625;
      
      protected var o994:o15625;
      
      protected var o13061:o15625;
      
      protected var o14053:MovieClip;
      
      protected var o7114:TextField;
      
      protected var o3491:MovieClip;
      
      protected var o7217:o10832;
      
      protected var o11632:MovieClip;
      
      protected var o12904:TextField;
      
      private var o16690:Boolean = false;
      
      protected var o3211:MovieClip;
      
      protected var o15969:Boolean = false;
      
      public function o16216()
      {
         o15100 = new Vector.<Vector.<String>>();
         o19238 = new Vector.<String>();
         o6769 = new Vector.<Boolean>();
         super();
         o16989 = o16989;
      }
      
      private function get o6368() : TextField
      {
         return o14640.getChildByName("rematchTime") as TextField;
      }
      
      protected function get o89() : Boolean
      {
         return false;
      }
      
      protected function get o4626() : Boolean
      {
         return false;
      }
      
      protected function get o18081() : Boolean
      {
         return false;
      }
      
      protected function o20333(param1:MovieClip) : void
      {
      }
      
      public function o19829() : void
      {
         o16690 = true;
      }
      
      public function o14792(param1:int) : void
      {
         var _loc4_:MovieClip = o11638.getChildByName("bg") as MovieClip;
         _loc4_.gotoAndStop(param1);
         var _loc2_:MovieClip = asset.getChildByName("lobbyList") as MovieClip;
         var _loc3_:MovieClip = _loc2_.getChildByName("bg") as MovieClip;
         _loc3_.gotoAndStop(param1);
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         var _loc7_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         super.init(param1);
         this.o19689 = param2;
         this.o16989 = param2.o16989;
         o7750 = new o20565(this);
         o11638 = param1.getChildByName("levelImageContainer2") as MovieClip;
         o11638.visible = false;
         o12783 = o11638.getChildByName("levelImage") as MovieClip;
         o20411 = o11638.getChildByName("gameModeText") as MovieClip;
         o16270 = o20411.getChildByName("lblTitleMode") as TextField;
         o20411.visible = false;
         o3211 = param1.getChildByName("nightmareMode") as MovieClip;
         o3211.visible = false;
         this.o14640 = param1.getChildByName("btnStartMultiplayerGame") as MovieClip;
         if(o18081)
         {
            o14640.gotoAndStop(5);
         }
         else
         {
            o14640.gotoAndStop(1);
         }
         o6402 = o11638.getChildByName("lblTitle") as TextField;
         o2330 = o11638.getChildByName("lblLevelDetails") as TextField;
         o14529 = o11638.getChildByName("levelIndicator") as MovieClip;
         o7184 = o7750.o17578("btnTryAgain");
         o7184.addEventListener("click",o12997,false,0,true);
         o7184.visible = false;
         o18795 = o19488();
         var _loc12_:MovieClip = param1.getChildByName("chatBox") as MovieClip;
         o18795.o16384(_loc12_,o16989,0);
         o106(false);
         var _loc13_:Array = [];
         var _loc10_:MovieClip = param1.getChildByName("lobbyList") as MovieClip;
         _loc7_ = 0;
         while(_loc7_ < 4)
         {
            _loc13_.push(o7750.o17578("lobbyCharacter" + _loc7_,_loc10_));
            o15100.push(new Vector.<String>());
            o19238.push("");
            o6769.push(false);
            _loc7_++;
         }
         o6003 = o7750.o3538(_loc13_);
         o6003.addEventListener(o5595.o16737,o12382,false,0,true);
         o20706 = param1.getChildByName("mapSelect") as MovieClip;
         o15912 = param1.getChildByName("matchID") as MovieClip;
         o15912.visible = false;
         o1200 = o15912.getChildByName("lblPrivateMatchID") as TextField;
         o11912 = o7750.o17578("btnCopy",o15912);
         o994 = o7750.o17578("btnStartGame",o20706);
         o994.enabled = false;
         o994.addEventListener("click",o3433,false,0,true);
         o13061 = o7750.o17578("btnContractStartGame",param1);
         o13061.enabled = false;
         o13061.addEventListener("click",o3433,false,0,true);
         o19999 = o20706.getChildByName("lblSelectLevelHeader") as MovieClip;
         o11912.addEventListener("click",o12772,false,0,true);
         var _loc8_:Vector.<o15625> = new Vector.<o15625>();
         _loc4_ = 0;
         while(_loc4_ < 9)
         {
            _loc5_ = o7750.o17578("MapSelect" + _loc4_,o20706);
            _loc5_.visible = false;
            _loc6_ = _loc5_.asset.getChildByName("multiplierIcon") as MovieClip;
            if(_loc6_)
            {
               _loc6_.visible = false;
               _loc6_.gotoAndStop(0);
            }
            _loc8_.push(_loc5_);
            _loc4_++;
         }
         var _loc9_:o15625 = o7750.o17578("btnPrev",o20706);
         var _loc11_:o15625 = o7750.o17578("btnNext",o20706);
         o7217 = o7750.o3870(_loc9_,_loc11_,_loc8_,o1659);
         o7217.o2345 = true;
         o7217.addEventListener(o5595.o16737,o17509,false,0,true);
         o18863(false);
         o14053 = param1.getChildByName("dailyRewardMutiplier") as MovieClip;
         if(o14053 != null)
         {
            o14053.visible = false;
            o7114 = o14053.getChildByName("multiplierInfo") as TextField;
            if(o7114)
            {
               o7114.visible = false;
            }
            o3491 = o14053.getChildByName("multiplierIcon") as MovieClip;
            if(o3491)
            {
               o3491.visible = false;
               o3491.gotoAndStop(0);
            }
         }
         o11632 = param1.getChildByName("reviveTokens") as MovieClip;
         o12904 = o11632.getChildByName("reviveTokens") as TextField;
         o11632.visible = false;
         o11048();
         this.o1258();
         param2.o16206.visible = false;
         param2.o9164(true);
         param2.o8987(false);
         param2.o16224(false);
         o15273();
         _loc7_ = 0;
         while(_loc7_ < 4)
         {
            o6419(_loc7_);
            _loc7_++;
         }
      }
      
      protected function o15273() : void
      {
         try
         {
            var loader:URLLoader = new URLLoader();
            loader.addEventListener("complete",function(param1:Event):void
            {
               var _loc2_:URLLoader = URLLoader(param1.target);
               var _loc3_:Object = JSON.parse(_loc2_.data);
               if(_loc3_["data"] is Array && (_loc3_["data"] as Array).length == 0)
               {
                  o16192(false);
               }
               else
               {
                  o16192(true);
               }
            },false,0,true);
            loader.addEventListener("ioError",function(param1:Event):void
            {
               o16192(false);
            },false,0,true);
            var o15386:URLRequest = new URLRequest("https://mynk.ninjakiwi.com/link_check_status?userid=" + o14200.o19505.o12094.o12485 + "&game=SAS4");
            loader.load(o15386);
            return;
         }
         catch(o19631:Error)
         {
            o16192(false);
            return;
         }
      }
      
      protected function o16192(param1:Boolean = false) : void
      {
      }
      
      protected function o1659(param1:int, param2:o15625) : void
      {
      }
      
      protected function o9953(param1:int) : void
      {
         o11632.visible = true;
         o12904.text = o16724.o10417(param1) + " Revive Tokens";
      }
      
      protected function o2879(param1:int) : void
      {
         o7217.removeEventListener(o5595.o16737,o17509);
         o7217.o2120 = param1;
         o7217.addEventListener(o5595.o16737,o17509,false,0,true);
      }
      
      protected function o17509(param1:o11507) : void
      {
      }
      
      protected function o12772(param1:MouseEvent) : void
      {
         Clipboard.generalClipboard.clear();
         Clipboard.generalClipboard.setData("air:text",o1200.text,false);
      }
      
      protected function o3433(param1:MouseEvent) : void
      {
      }
      
      public function o18863(param1:Boolean, param2:int = -1) : void
      {
         if(o994.visible)
         {
            o20706.visible = param1 && o4626 == false && param2 != 1;
         }
         if(o15969 == false)
         {
            o13061.visible = param1 && o4626 && o18416 == false;
         }
      }
      
      public function o5442(param1:String) : void
      {
         o1200.text = param1;
         this.o15912.visible = true;
      }
      
      public function o106(param1:Boolean) : void
      {
         if(o18795 == null || o18795.asset == null)
         {
            return;
         }
         o18795.asset.visible = param1;
         if(param1)
         {
            o18795.o16489();
         }
         else
         {
            o18795.close();
         }
      }
      
      protected function o11559() : void
      {
         if(o7184)
         {
            o7184.visible = false;
         }
         if(o18081)
         {
            o14640.gotoAndStop(5);
         }
         else
         {
            o14640.gotoAndStop(1);
         }
         this.o7182(0);
         if(o18416)
         {
            throw new Error("initalizing already called");
         }
      }
      
      public function o13431() : void
      {
         o14640.gotoAndStop(4);
         if(o18416)
         {
            throw new Error("initalizing already called");
         }
      }
      
      protected function o8115() : void
      {
         o7184.visible = false;
         o14640.gotoAndStop(2);
         this.o18416 = true;
      }
      
      protected function o53() : void
      {
         o7184.visible = true;
         o14640.gotoAndStop(3);
      }
      
      protected function o12997(param1:Event) : void
      {
      }
      
      protected function o19488() : o4896
      {
         return new o4896();
      }
      
      protected function o11048() : void
      {
      }
      
      private function o12802(param1:o11507) : void
      {
         o20128(param1.o6457);
      }
      
      protected function o20128(param1:int) : void
      {
      }
      
      protected function o14485(param1:String, param2:String, param3:String, param4:String, param5:int) : void
      {
         o6402.text = param1 + (!!o16690?": Rematch":"");
         o2330.text = param3;
         o12783.gotoAndStop(param4);
         o14529.visible = param5 > 0;
         if(o14529.visible)
         {
            o14529.gotoAndStop(param5);
         }
         if(param2 == null || param2.length == 0)
         {
            o20411.visible = false;
         }
         else
         {
            o20411.visible = true;
            this.o16270.text = param2;
         }
         o11638.visible = o89 == false;
      }
      
      override public function o13640() : void
      {
         o7184.removeEventListener("click",o12997);
         o6003.removeEventListener(o5595.o16737,o12382);
         o11912.removeEventListener("click",o12772);
         o7217.removeEventListener(o5595.o16737,o17509);
         o994.removeEventListener("click",o3433);
         o13061.removeEventListener("click",o3433);
         if(o19689.o16206)
         {
            o19689.o16206.visible = true;
         }
         o18795.o13640();
         o7750.o13640();
         o7750 = null;
         o19689 = null;
         o16989 = null;
         o6402 = null;
         o2330 = null;
         o11638 = null;
         o12783 = null;
         o14529 = null;
         o18795 = null;
         o7184 = null;
         o6003 = null;
         o15100 = null;
         o19238 = null;
         o6769 = null;
         o20706 = null;
         o15912 = null;
         o1200 = null;
         o11912 = null;
         o994 = null;
         o13061 = null;
         o7217 = null;
         o11632 = null;
         o12904 = null;
         o20411 = null;
         o16270 = null;
         o3211 = null;
         super.o13640();
      }
      
      public function o17148(param1:Boolean) : void
      {
         o3211.visible = param1;
      }
      
      override protected function draw() : void
      {
         super.draw();
         o20631();
      }
      
      protected function o20631() : void
      {
      }
      
      protected function o11388(param1:int, param2:int, param3:String, param4:String, param5:int, param6:String, param7:Vector.<int>, param8:Vector.<String>, param9:String, param10:o19626) : void
      {
         o6003.o19568[param1].enabled = true;
         o15100[param1] = param8;
         o19238[param1] = param9;
         o6769[param1] = true;
         var _loc15_:MovieClip = asset.getChildByName("lobbyList") as MovieClip;
         var _loc25_:MovieClip = _loc15_.getChildByName("lobbyCharacter" + param1.toString()) as MovieClip;
         var _loc11_:MovieClip = _loc25_.getChildByName("character") as MovieClip;
         var _loc18_:MovieClip = _loc25_.getChildByName("searching") as MovieClip;
         _loc11_.visible = true;
         _loc18_.visible = false;
         _loc18_.gotoAndStop(0);
         var _loc21_:MovieClip = _loc11_.getChildByName("icon") as MovieClip;
         var _loc19_:MovieClip = _loc11_.getChildByName("levelIcon") as MovieClip;
         var _loc22_:TextField = _loc11_.getChildByName("lblPlayerName") as TextField;
         var _loc16_:TextField = _loc11_.getChildByName("lblInfo") as TextField;
         _loc21_.gotoAndStop(param2 + 2);
         _loc19_.gotoAndStop(param2 + 1);
         var _loc24_:MovieClip = _loc19_.getChildByName("rankIcon") as MovieClip;
         _loc24_.gotoAndStop(param5);
         _loc22_.text = param3;
         _loc16_.text = "Lv " + param5 + ", " + param4;
         var _loc13_:MovieClip = _loc25_.getChildByName("lblLoading") as MovieClip;
         var _loc20_:MovieClip = _loc25_.getChildByName("loadingBar") as MovieClip;
         _loc13_.visible = true;
         _loc20_.visible = true;
         _loc13_.stop();
         _loc20_.gotoAndStop(1);
         var _loc17_:MovieClip = _loc25_.getChildByName("clanContainer") as MovieClip;
         try
         {
            _loc17_.gotoAndStop(param6);
            _loc17_.visible = true;
         }
         catch(o19631:Error)
         {
            _loc17_.gotoAndStop(1);
            _loc17_.visible = false;
         }
         var _loc14_:MovieClip = _loc25_.getChildByName("lblReady") as MovieClip;
         if(_loc14_ != null)
         {
            _loc14_.visible = false;
         }
         var _loc12_:MovieClip = _loc25_.getChildByName("nightmareReady") as MovieClip;
         _loc12_.visible = false;
         o11616(_loc25_,param7);
         var _loc23_:MovieClip = _loc25_.getChildByName("badgeSet") as MovieClip;
         param10.o8492(this,_loc23_);
      }
      
      protected function o6158(param1:int) : void
      {
         o6003.o19568[param1].enabled = false;
         o6769[param1] = false;
         var _loc10_:MovieClip = asset.getChildByName("lobbyList") as MovieClip;
         var _loc8_:MovieClip = _loc10_.getChildByName("lobbyCharacter" + param1.toString()) as MovieClip;
         var _loc5_:MovieClip = _loc8_.getChildByName("character") as MovieClip;
         var _loc7_:MovieClip = _loc8_.getChildByName("searching") as MovieClip;
         if(_loc7_.o12967 == false)
         {
            _loc7_.gotoAndPlay(1);
         }
         _loc5_.visible = false;
         _loc7_.visible = true;
         var _loc2_:MovieClip = _loc8_.getChildByName("clanContainer") as MovieClip;
         _loc2_.gotoAndStop(1);
         _loc2_.visible = false;
         var _loc6_:MovieClip = _loc8_.getChildByName("lblLoading") as MovieClip;
         var _loc4_:MovieClip = _loc8_.getChildByName("loadingBar") as MovieClip;
         _loc6_.visible = false;
         _loc4_.visible = false;
         _loc6_.stop();
         _loc4_.gotoAndStop(1);
         var _loc9_:MovieClip = _loc8_.getChildByName("lblReady") as MovieClip;
         if(_loc9_ != null)
         {
            _loc9_.visible = false;
         }
         var _loc3_:MovieClip = _loc8_.getChildByName("nightmareReady") as MovieClip;
         _loc3_.visible = false;
         o11616(_loc8_);
         o19626.o12803(_loc8_.getChildByName("badgeSet") as MovieClip);
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
      
      private function o17295(param1:MovieClip) : void
      {
      }
      
      protected function o6419(param1:int) : void
      {
         o6003.o19568[param1].enabled = false;
         o6769[param1] = false;
         var _loc9_:MovieClip = asset.getChildByName("lobbyList") as MovieClip;
         var _loc7_:MovieClip = _loc9_.getChildByName("lobbyCharacter" + param1.toString()) as MovieClip;
         var _loc4_:MovieClip = _loc7_.getChildByName("character") as MovieClip;
         var _loc6_:MovieClip = _loc7_.getChildByName("searching") as MovieClip;
         _loc4_.visible = false;
         _loc6_.visible = false;
         var _loc5_:MovieClip = _loc7_.getChildByName("lblLoading") as MovieClip;
         var _loc3_:MovieClip = _loc7_.getChildByName("loadingBar") as MovieClip;
         _loc5_.visible = false;
         _loc3_.visible = false;
         _loc5_.stop();
         _loc3_.gotoAndStop(1);
         o11616(_loc7_);
         var _loc2_:MovieClip = _loc7_.getChildByName("clanContainer") as MovieClip;
         _loc2_.gotoAndStop(1);
         _loc2_.visible = false;
         var _loc8_:MovieClip = _loc7_.getChildByName("lblReady") as MovieClip;
         if(_loc8_ != null)
         {
            _loc8_.visible = false;
         }
         o19626.o12803(_loc7_.getChildByName("badgeSet") as MovieClip);
      }
      
      protected function o3243(param1:int, param2:Number, param3:Boolean) : void
      {
         var _loc4_:* = null;
         var _loc6_:int = 0;
         o6769[param1] = true;
         var _loc10_:MovieClip = asset.getChildByName("lobbyList") as MovieClip;
         var _loc8_:MovieClip = _loc10_.getChildByName("lobbyCharacter" + param1.toString()) as MovieClip;
         var _loc7_:MovieClip = _loc8_.getChildByName("lblLoading") as MovieClip;
         var _loc5_:MovieClip = _loc8_.getChildByName("loadingBar") as MovieClip;
         var _loc9_:MovieClip = _loc8_.getChildByName("lblReady") as MovieClip;
         if(param2 >= 1)
         {
            _loc7_.visible = false;
            _loc5_.visible = false;
         }
         else
         {
            _loc7_.visible = true;
            _loc5_.visible = true;
            _loc4_ = _loc7_.getChildByName("label") as TextField;
            if(param3)
            {
               _loc4_.text = "Building...";
            }
            else
            {
               _loc4_.text = "Loading...";
            }
            if(_loc9_ != null)
            {
               _loc9_.visible = false;
            }
            _loc6_ = 1 + param2 * 99;
            _loc5_.gotoAndStop(_loc6_);
         }
      }
      
      public function o3078() : void
      {
         o1256(o6368,"");
      }
      
      public function o7182(param1:int) : void
      {
         var _loc2_:* = null;
         if(o14640.currentFrame != 1)
         {
            if(o18081)
            {
               o14640.gotoAndStop(5);
            }
            else
            {
               o14640.gotoAndStop(1);
            }
         }
         if(o14640.visible == false)
         {
            o14640.visible = true;
         }
         if(param1 <= 0)
         {
            param1 = 0;
            _loc2_ = "";
         }
         else
         {
            _loc2_ = (param1 < 10?"0":"") + param1.toString();
         }
         o1256(o6368,_loc2_);
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      protected function o12382(param1:o11507) : void
      {
      }
      
      override protected function o6662(param1:Event) : void
      {
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc11_:* = null;
         var _loc5_:* = null;
         var _loc9_:* = null;
         var _loc8_:* = null;
         var _loc4_:* = null;
         var _loc10_:int = 0;
         var _loc3_:* = undefined;
         var _loc7_:* = null;
         if(asset == null || asset.stage == null || o6003 == null || o6003.o19568 == null || o6003.o19568.length != 4)
         {
            return;
         }
         super.o6662(param1);
         if(asset == null || asset.stage == null || o6003 == null || o6003.o19568 == null || o6003.o19568.length != 4)
         {
            return;
         }
         _loc6_ = 0;
         while(_loc6_ < 4)
         {
            _loc2_ = o6003.o19568[_loc6_];
            _loc11_ = _loc2_.asset.getChildByName("rolloverPowerUpsInfo") as MovieClip;
            _loc5_ = _loc11_ == null?null:_loc11_.getChildByName("lblPowerUpInfo") as TextField;
            _loc9_ = _loc11_ == null?null:_loc11_.getChildByName("lblPowerUpTitle") as TextField;
            _loc8_ = _loc11_ == null?null:_loc11_.getChildByName("box") as MovieClip;
            if(o6769[_loc6_])
            {
               _loc3_ = o15100[_loc6_];
               _loc7_ = o19238[_loc6_];
               if(_loc11_ != null)
               {
                  _loc11_.visible = true;
                  _loc5_.text = _loc7_;
                  _loc9_.text = o11075 == _loc6_?"Your Powerups give you:":"Your Teammate\'s Powerups give you:";
                  _loc10_ = 0;
                  while(_loc10_ < 8)
                  {
                     _loc4_ = _loc11_.getChildByName("powerUpIcon" + _loc10_.toString()) as MovieClip;
                     if(_loc10_ < _loc3_.length)
                     {
                        _loc4_.gotoAndStop(_loc3_[_loc10_]);
                        _loc4_.visible = true;
                     }
                     else
                     {
                        _loc4_.gotoAndStop(1);
                        _loc4_.visible = false;
                     }
                     _loc10_++;
                  }
                  _loc8_.height = _loc3_.length * 14.4 + 28;
               }
            }
            else if(_loc11_ != null)
            {
               _loc11_.visible = false;
               _loc10_ = 0;
               while(_loc10_ < 8)
               {
                  _loc4_ = _loc11_.getChildByName("powerUpIcon" + _loc10_.toString()) as MovieClip;
                  _loc4_.gotoAndStop(1);
                  _loc4_.visible = false;
                  _loc10_++;
               }
            }
            _loc6_++;
         }
      }
   }
}
