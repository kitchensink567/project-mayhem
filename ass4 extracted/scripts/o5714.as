package
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o5714 extends o6539
   {
       
      
      private var o7750:o20565;
      
      private var o16989:o13064;
      
      protected var o6750:o15625;
      
      public var o985:o15625;
      
      public var o10013:o15625;
      
      public var o16309:MovieClip;
      
      public var o17081:MovieClip;
      
      protected var o19689:o978;
      
      private var o11465:int;
      
      private var o17914:o5024;
      
      private var o8376:o5024;
      
      private var o10193:MovieClip;
      
      private var o11752:MovieClip;
      
      private var o16764:TextField;
      
      private var o9608:TextField;
      
      private var o5774:o15625;
      
      private var events:MovieClip;
      
      private var o8791:MovieClip;
      
      private var o18066:Vector.<TextField>;
      
      private var o8577:Vector.<TextField>;
      
      protected var o634:Vector.<o1412>;
      
      private var o1446:o12290;
      
      protected var o18637:o14911;
      
      private var o855:MovieClip;
      
      private var o3494:TextField;
      
      private var o16034:TextField;
      
      private var o7741:o2445;
      
      private var o5926:Timer;
      
      protected var o13735:Number = -1;
      
      private var o9925:o15625;
      
      private var loader:Loader;
      
      public function o5714()
      {
         o18066 = new Vector.<TextField>();
         o8577 = new Vector.<TextField>();
         super();
      }
      
      public function o9269(param1:Boolean, param2:Boolean) : void
      {
         o985.visible = param1 && param2 == false;
         if(o10013 != null)
         {
            o10013.visible = param1 && param2 == false;
         }
         o16309.visible = param1 == false && param2 == false;
         o17081.visible = param2;
      }
      
      protected function o9953(param1:int) : void
      {
         o10193.visible = true;
         o16764.text = o16724.o10417(param1) + " Revive Tokens";
      }
      
      protected function o8614(param1:int) : void
      {
         if(o11752)
         {
            o11752.visible = true;
         }
         if(o9608)
         {
            o9608.text = o16724.o10417(param1) + " Premium Nightmare Tokens";
         }
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         super.init(param1);
         this.o16989 = param2.o16989;
         this.o19689 = param2;
         param2.o14537(5);
         this.o16989 = o16989;
         o7750 = new o20565(this);
         o6750 = null;
         o985 = null;
         o10013 = null;
         o6750 = o7750.o17578("btnSinglePlayer");
         o985 = o7750.o17578("btnMultiPlayerMode2");
         o10013 = o7750.o17578("btnMpPrivateMatch");
         o16309 = param1.getChildByName("btnMultiPlayerUnavailable") as MovieClip;
         o17081 = param1.getChildByName("btnMultiPlayerUnavailableLogIn") as MovieClip;
         o17081.visible = false;
         o9925 = o7750.o17578("btnContracts");
         o9925.addEventListener("click",o4622,false,0,true);
         o10193 = param1.getChildByName("tokensContainer") as MovieClip;
         o16764 = o10193.getChildByName("lblTokenCount") as TextField;
         o5774 = o7750.o17578("btnBuyTokens",o10193);
         if(o5774 != null)
         {
            o5774.addEventListener("click",o5463,false,0,true);
         }
         o10193.visible = false;
         o11752 = param1.getChildByName("nightmarePremiumTokensContainer") as MovieClip;
         o9608 = o10193.getChildByName("lblNightmarePremiumTokenCount") as TextField;
         if(o11752)
         {
            o11752.visible = false;
         }
         o18637 = new o14911();
         o18637.init(param1.getChildByName("mobilePromoComtainer") as MovieClip);
         this.o5452(o18637);
         o16034 = param1.getChildByName("message") as TextField;
         o16034 = o4519.o8116.o476.o9392.o693(o16034);
         events = o985.asset.getChildByName("events") as MovieClip;
         _loc5_ = 0;
         while(_loc5_ < 2)
         {
            _loc4_ = events.getChildByName("eventName" + _loc5_) as TextField;
            _loc4_.text = "Null";
            o8577.push(_loc4_);
            _loc5_++;
         }
         events.visible = false;
         o8376 = new o5024();
         o8376.init(events.getChildByName("iconContainer") as MovieClip);
         o8376.visible = true;
         o8791 = o985.asset.getChildByName("championshipEvents") as MovieClip;
         o17914 = new o5024();
         o17914.init(o8791.getChildByName("iconContainer") as MovieClip);
         o17914.visible = false;
         _loc5_ = 0;
         while(_loc5_ < 1)
         {
            _loc4_ = o8791.getChildByName("eventName") as TextField;
            _loc4_.text = "Null";
            o18066.push(_loc4_);
            _loc5_++;
         }
         o8791.visible = false;
         if(o6750 != null)
         {
            o6750.addEventListener("click",o5191,false,0,true);
         }
         if(o985 != null)
         {
            o985.addEventListener("click",o20252,false,0,true);
         }
         if(o10013 != null)
         {
            o10013.addEventListener("click",o17925,false,0,true);
         }
         param2.o9164(true);
         param2.o8987(false);
         param2.o16224(false);
         o855 = param1.getChildByName("fullBoostBonus") as MovieClip;
         o3494 = o855.getChildByName("fullBoostTimeRemaining") as TextField;
         o1446 = o7750.o15961("btnUnlockFullBoost","Unlock");
         o1446.visible = false;
         o855.visible = false;
         o5926 = new Timer(1000);
         o5926.addEventListener("timer",o15668,false,0,true);
         o5926.start();
         o11182();
         this.o1258();
      }
      
      private function o16706(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         if(this.asset == null)
         {
            o4519.stage.removeChild(loader);
            loader = null;
            return;
         }
         if(this.asset.LoadingWheel)
         {
            this.asset.LoadingWheel.visible = false;
         }
         _loc2_.removeEventListener("complete",o16706);
         _loc2_.removeEventListener("ioError",o16856);
         var _loc3_:Bitmap = Bitmap(_loc2_.loader.content);
         o4519.stage.removeChild(loader);
         loader = null;
         o8376.o3700 = _loc3_;
         o8376.o1093 = false;
         this.o1258();
      }
      
      private function o16856(param1:Event) : void
      {
         if(this.asset.LoadingWheel)
         {
            this.asset.LoadingWheel.visible = true;
         }
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         _loc2_.removeEventListener("complete",o16706);
         _loc2_.removeEventListener("ioError",o16856);
         o4519.stage.removeChild(loader);
         loader = null;
      }
      
      private function o2372(param1:int, param2:o15723) : void
      {
         var _loc3_:MovieClip = o9925.asset;
         var _loc5_:TextField = _loc3_.getChildByName("lblContract" + param1.toString() + "Name") as TextField;
         var _loc4_:TextField = _loc3_.getChildByName("lblContract" + param1.toString() + "Countdown") as TextField;
         var _loc6_:MovieClip = _loc3_.getChildByName("imgContract" + param1.toString() + "Timer") as MovieClip;
         _loc6_.gotoAndStop(1);
         if(param2 == null)
         {
            _loc5_.text = "";
            _loc4_.text = "";
            _loc6_.visible = false;
         }
         else if(param2.o13779 == false)
         {
            _loc5_.text = param2.o15231.o17977;
            _loc4_.text = "Starts in " + o16724.o19944(param2.o15946());
            _loc6_.visible = true;
         }
         else
         {
            _loc5_.text = param2.o15231.o17977;
            _loc4_.text = o16724.o19944(param2.o9614);
            _loc6_.visible = true;
         }
      }
      
      public function o11182() : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         var _loc1_:o6296 = o14200.o19505.o5292.o6666;
         o9925.visible = _loc1_.o14841.length > 0;
         if(_loc1_.o14841.length == 0)
         {
            return;
         }
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc5_:* = _loc1_.o14841;
         for each(_loc3_ in _loc1_.o14841)
         {
            if(_loc3_.o13779)
            {
               if(_loc4_ == null)
               {
                  _loc4_ = _loc3_;
               }
               else if(_loc3_.o9614 < _loc4_.o9614)
               {
                  _loc4_ = _loc3_;
               }
            }
         }
         if(_loc4_ == null)
         {
            _loc2_ = null;
            var _loc8_:int = 0;
            var _loc7_:* = _loc1_.o14841;
            for each(_loc3_ in _loc1_.o14841)
            {
               if(_loc3_.o13779 == false)
               {
                  if(_loc2_ == null)
                  {
                     _loc2_ = _loc3_;
                  }
                  else if(_loc3_.o9614 < _loc2_.o9614)
                  {
                     _loc2_ = _loc3_;
                  }
               }
            }
            o2372(0,_loc2_);
         }
         else
         {
            o2372(0,_loc4_);
         }
         o2372(1,null);
      }
      
      protected function o15668(param1:Event) : void
      {
         o855.visible = o13735 > 0;
         o3494.text = o16724.o15991(o13735);
      }
      
      public function o18507(param1:String, param2:Vector.<String>, param3:Vector.<uint>) : void
      {
         var _loc4_:int = 0;
         var _loc6_:* = null;
         var _loc5_:TextField = events.getChildByName("lblHeading") as TextField;
         _loc5_.text = param1;
         if(param2.length > 0)
         {
            _loc4_ = 0;
            while(_loc4_ < o8577.length)
            {
               o8577[_loc4_].visible = _loc4_ < param2.length;
               if(o8577[_loc4_].visible)
               {
                  o8577[_loc4_].text = param2[_loc4_];
                  _loc6_ = o8577[_loc4_].filters[0] as GlowFilter;
                  _loc6_.color = param3[_loc4_];
                  o8577[_loc4_].filters = [_loc6_];
               }
               _loc4_++;
            }
            events.visible = true;
         }
         else
         {
            events.visible = false;
         }
      }
      
      public function o6511(param1:int, param2:String, param3:Vector.<String>, param4:uint) : void
      {
         var _loc5_:* = null;
         var _loc9_:* = null;
         var _loc7_:int = 0;
         var _loc11_:* = null;
         var _loc6_:String = "";
         if(param1 != 0)
         {
            _loc5_ = o14200.o19505.o15894.o19318(param1);
            if(_loc5_)
            {
               _loc6_ = "Chance to win the incredible " + _loc5_.o7501;
               if(_loc5_.o2752.o19901)
               {
                  _loc6_ = _loc6_ + " [PREM] ";
               }
               else
               {
                  var _loc12_:* = _loc5_.o2752.o11570;
                  switch(_loc12_)
                  {
                     case o5050.o11502:
                        _loc6_ = _loc6_ + " [Normal] ";
                        break;
                     case o5050.o6066:
                        _loc6_ = _loc6_ + " [RED] ";
                        break;
                     case o5050.o5336:
                        _loc6_ = _loc6_ + " [BLACK] ";
                  }
               }
               _loc6_ = _loc6_ + o18553.o11759(_loc5_.o2752.o6365);
               _loc9_ = _loc5_.o8815(null);
               if(o17914 && _loc9_)
               {
                  o17914.o3700 = _loc9_ as DisplayObject;
                  o17914.visible = true;
               }
            }
         }
         else
         {
            o17914.visible = false;
         }
         var _loc8_:TextField = o8791.getChildByName("lblHeading") as TextField;
         _loc8_.text = param2;
         var _loc10_:TextField = o8791.getChildByName("lblDetails") as TextField;
         _loc10_.text = _loc6_;
         _loc7_ = 0;
         while(_loc7_ < o18066.length)
         {
            o18066[_loc7_].visible = _loc7_ < param3.length;
            if(o18066[_loc7_].visible)
            {
               o18066[_loc7_].text = param3[_loc7_];
               _loc11_ = o18066[_loc7_].filters[0] as GlowFilter;
               _loc11_.color = param4;
               o18066[_loc7_].filters = [_loc11_];
            }
            _loc7_++;
         }
         o8791.visible = true;
         this.o1258();
      }
      
      public function o3243(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 >= 1)
         {
            param1 = 1;
            o985.enabled = true;
            if(o10013 != null)
            {
               o10013.enabled = true;
            }
         }
         else
         {
            o985.enabled = false;
            if(o10013 != null)
            {
               o10013.enabled = false;
            }
            _loc2_ = 1 + param1 * 99;
            _loc3_ = o985.asset.getChildByName("mpLoadingBar") as MovieClip;
            _loc3_.gotoAndStop(_loc2_);
            if(o10013 != null)
            {
               _loc4_ = o10013.asset.getChildByName("mpLoadingBar") as MovieClip;
               _loc4_.gotoAndStop(_loc2_);
            }
         }
      }
      
      protected function o5191(param1:MouseEvent) : void
      {
         this.o19689.screen = 19;
      }
      
      protected function o20252(param1:MouseEvent) : void
      {
         this.o19689.screen = 20;
      }
      
      protected function o4622(param1:MouseEvent) : void
      {
         this.o19689.screen = 31;
      }
      
      protected function o5463(param1:MouseEvent) : void
      {
      }
      
      override public function o13640() : void
      {
         if(o6750 != null)
         {
            o6750.removeEventListener("click",o5191);
         }
         if(o985 != null)
         {
            o985.removeEventListener("click",o20252);
         }
         if(o10013 != null)
         {
            o10013.removeEventListener("click",o17925);
         }
         if(o5774 != null)
         {
            o5774.removeEventListener("click",o5463);
         }
         o5926.removeEventListener("timer",o15668);
         o9925.removeEventListener("click",o4622);
         o7750.o13640();
         if(loader)
         {
            o4519.stage.removeChild(loader);
            loader.contentLoaderInfo.removeEventListener("complete",o16706);
            loader.contentLoaderInfo.removeEventListener("ioError",o16856);
         }
         o7750 = null;
         o16989 = null;
         loader = null;
         o6750 = null;
         o985 = null;
         o19689 = null;
         o11465 = 0;
         o16309 = null;
         o17081 = null;
         o10193 = null;
         o11752 = null;
         o16764 = null;
         o9608 = null;
         o5774 = null;
         o10013 = null;
         o18637 = null;
         events = null;
         o17914 = null;
         o8577 = null;
         o855 = null;
         o3494 = null;
         o7741 = null;
         o9925 = null;
         o8791 = null;
         o18066 = null;
         super.o13640();
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null)
         {
            return;
         }
         o11692(o6750.asset.getChildByName("arrow") as MovieClip);
         o11692(o985.asset.getChildByName("arrow") as MovieClip);
         o11692(o9925.asset.getChildByName("arrow") as MovieClip);
         if(o10013 != null)
         {
            o11692(o10013.asset.getChildByName("arrow") as MovieClip);
         }
         o11182();
      }
      
      protected function o17925(param1:MouseEvent) : void
      {
         var _loc2_:o14200 = o4519.o8116.profileData;
         _loc2_.o202.o18339 = 1;
         this.o19689.screen = 24;
      }
      
      protected function o11886(param1:MouseEvent) : void
      {
      }
   }
}
