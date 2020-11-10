package
{
   import assets.ui.dialog.BlackKeyRequiredDialogAsset;
   import assets.ui.dialog.BuyPremiumWeaponsDialogAsset;
   import assets.ui.dialog.BuySasCashDialogAsset;
   import assets.ui.dialog.ChampionshipsLeaderboardsDialogAsset;
   import assets.ui.dialog.ClaimSuperEventRewardDialogAsset;
   import assets.ui.dialog.CollectionItemDialogAsset;
   import assets.ui.dialog.CollectionRewardDialogAsset;
   import assets.ui.dialog.CollectionsDialogAsset;
   import assets.ui.dialog.ConfirmDeleteCharacterDialogAsset;
   import assets.ui.dialog.ConfirmDialogAsset;
   import assets.ui.dialog.ConfirmMidDialogAsset;
   import assets.ui.dialog.ConfirmSmallDialogAsset;
   import assets.ui.dialog.CraftEliteCoreConfirmDialogAsset;
   import assets.ui.dialog.CraftingInfoDialogAsset;
   import assets.ui.dialog.DailyRewardDialog;
   import assets.ui.dialog.EliteAugmentCoreDialogAsset;
   import assets.ui.dialog.EliteInventoryDialogAsset;
   import assets.ui.dialog.EliteTutorialsDialogAsset;
   import assets.ui.dialog.ErrorDialogAsset;
   import assets.ui.dialog.EventPromoPanelMultipleDialogAsset;
   import assets.ui.dialog.EventsLeaderboardsDialogAsset;
   import assets.ui.dialog.EventsRewardDialogAsset;
   import assets.ui.dialog.MajorUpdatesDialogAsset;
   import assets.ui.dialog.MasteryLevelRewardsDialogAsset;
   import assets.ui.dialog.MultipleLoginDialogAsset;
   import assets.ui.dialog.NewEventsLeaderboardsDialogAsset;
   import assets.ui.dialog.NightmareModeInfoDialog;
   import assets.ui.dialog.PurchasedItemsDialogAsset;
   import assets.ui.dialog.SaveErrorDialogAsset;
   import assets.ui.dialog.StrongboxOutOfGameDialogAsset;
   import assets.ui.dialog.StrongboxSpecialItemDialogAsset;
   import assets.ui.dialog.SuperEventCompletedDialogAsset;
   import assets.ui.dialog.SuperEventInfoDialogAsset;
   import assets.ui.dialog.SuperEventRewardsDialogAsset;
   import assets.ui.dialog.WatchVideoEarnDialogAsset;
   import assets.ui.screen.ConfirmPremiumWeaponPurchaseDialogAsset;
   import assets.ui.screen.ConnectingLoadingScreenAsset;
   import assets.ui.screen.ConnectingScreenAsset;
   import assets.ui.screen.EasterParallaxTitleScreenAsset;
   import assets.ui.screen.EquipmentMasteryDialogAsset;
   import assets.ui.screen.GameHudScreenAsset;
   import assets.ui.screen.HalloweenParallaxTitleScreenAsset;
   import assets.ui.screen.HelpScreenAsset;
   import assets.ui.screen.IntroContainerScreenAsset;
   import assets.ui.screen.LoadingGameScreenAsset;
   import assets.ui.screen.LoginScreenGuestAsset;
   import assets.ui.screen.MainMenuNavScreenAsset;
   import assets.ui.screen.MissionSummaryItemDialogAsset;
   import assets.ui.screen.MissionSummaryLevelUpScreenAsset;
   import assets.ui.screen.MissionSummaryScreenAsset;
   import assets.ui.screen.MissionSummarySinglePlayerScreenAsset;
   import assets.ui.screen.ParallaxTitleScreenAsset;
   import assets.ui.screen.PatchNotesAsset;
   import assets.ui.screen.StoreDialogAsset;
   import assets.ui.screen.XmasParallaxTitleScreenAsset;
   import flash.display.MovieClip;
   import flash.events.UncaughtErrorEvent;
   import flash.filters.GlowFilter;
   import flash.system.System;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   
   public class o13064 extends o6539
   {
      
      public static var o19505:o13064;
      
      public static var o17460:int = 20;
      
      private static var o11036:Boolean = false;
       
      
      public var o1489:int;
      
      public var o6410:Boolean = true;
      
      public var gc:Dictionary;
      
      public var o6428:TextField;
      
      private var o7938:Boolean = false;
      
      private var o9320:Function;
      
      public function o13064()
      {
         super();
      }
      
      public static function gc() : void
      {
         if(o19505.o6410)
         {
            System.gc();
            o19505.o14705();
         }
      }
      
      public static function o13834(param1:Object) : void
      {
      }
      
      public function get o470() : Boolean
      {
         throw new Error("Must override");
      }
      
      public function o16384(param1:MovieClip, param2:Boolean) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         this.asset = param1;
         o19505 = this;
         this.o6410 = param2;
         if(o6410)
         {
            gc = new Dictionary(true);
            o6428 = new TextField();
            o6428.textColor = 16777215;
            o6428.width = 800;
            o6428.height = 600;
            o6428.y = 190;
            o6428.mouseEnabled = false;
            o6428.text = "";
            _loc3_ = new TextFormat();
            _loc3_.size = 12;
            _loc3_.font = "Arial";
            _loc3_.bold = true;
            o6428.defaultTextFormat = _loc3_;
            _loc4_ = new GlowFilter(0,1,2,2,10);
            _loc4_.quality = 2;
            o6428.filters = [_loc4_];
            param1.stage.addChild(o6428);
         }
      }
      
      private function o2739(param1:String, param2:String) : int
      {
         if(param1 < param2)
         {
            return -1;
         }
         if(param1 > param2)
         {
            return 1;
         }
         return 0;
      }
      
      public function o14705() : void
      {
         var _loc1_:* = null;
         var _loc2_:String = "";
         var _loc5_:Vector.<String> = new Vector.<String>();
         var _loc7_:int = 0;
         var _loc6_:* = gc;
         for(var _loc4_ in gc)
         {
            if(_loc4_ != this)
            {
               _loc1_ = "";
               _loc1_ = _loc1_ + _loc4_;
               _loc1_ = _loc1_.substring("[object ".length);
               _loc1_ = _loc1_.substring(0,_loc1_.length - 1);
               _loc5_.push(_loc1_);
            }
         }
         _loc5_.sort(o2739);
         var _loc9_:int = 0;
         var _loc8_:* = _loc5_;
         for each(var _loc3_ in _loc5_)
         {
            _loc2_ = _loc2_ + (_loc3_ + "\n");
         }
         if(o6428.text != _loc2_)
         {
            o6428.text = _loc2_;
         }
      }
      
      protected function o17260() : o12239
      {
         return new o12239();
      }
      
      protected function o14299() : o3644
      {
         return new o3644();
      }
      
      protected function o12175() : o6132
      {
         return new o6132();
      }
      
      protected function o9094() : o17116
      {
         return new o17116();
      }
      
      protected function o19868() : o18287
      {
         return new o18287();
      }
      
      protected function o4507() : o4023
      {
         return new o4023();
      }
      
      protected function o1042() : o19406
      {
         return new o19406();
      }
      
      protected function o11301() : o18257
      {
         return new o18257();
      }
      
      protected function o15213() : o14585
      {
         return new o14585();
      }
      
      protected function o16310() : o978
      {
         return new o978();
      }
      
      protected function o1966() : o5853
      {
         return new o5853();
      }
      
      override protected function o1789(param1:int, param2:int) : o6539
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc10_:* = null;
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc14_:* = null;
         var _loc9_:* = null;
         var _loc5_:* = null;
         var _loc12_:* = null;
         var _loc11_:* = null;
         var _loc6_:* = null;
         var _loc13_:* = null;
         var _loc15_:* = param2;
         switch(_loc15_)
         {
            case 28:
               _loc4_ = o19868();
               _loc4_.o16384(new ConnectingLoadingScreenAsset(),this,param1);
               return _loc4_;
            case 27:
               _loc3_ = o9094();
               _loc3_.o16384(new ConnectingScreenAsset(),this,param1);
               return _loc3_;
            case 26:
               _loc10_ = o12175();
               _loc10_.o16384(new LoginScreenGuestAsset(),this,param1);
               return _loc10_;
            case 5:
               _loc8_ = o16310();
               _loc8_.o16384(new MainMenuNavScreenAsset(),param1,this);
               return _loc8_;
            case 0:
               _loc7_ = o14299();
               if(o4519.o8116.o476.o9392.o16643())
               {
                  if(o4519.o8116.o476.o9392.o7908().name == "Halloween")
                  {
                     _loc7_.o16384(new HalloweenParallaxTitleScreenAsset(),this,param1);
                  }
                  else if(o4519.o8116.o476.o9392.o7908().name == "Christmas")
                  {
                     _loc7_.o16384(new XmasParallaxTitleScreenAsset(),this,param1);
                  }
                  else if(o4519.o8116.o476.o9392.o7908().name == "Easter")
                  {
                     _loc7_.o16384(new EasterParallaxTitleScreenAsset(),this,param1);
                  }
                  else
                  {
                     _loc7_.o16384(new ParallaxTitleScreenAsset(),this,param1);
                  }
               }
               else
               {
                  _loc7_.o16384(new ParallaxTitleScreenAsset(),this,param1);
               }
               return _loc7_;
            case 41:
               _loc14_ = o14299();
               if(o4519.o8116.o476.o9392.o16643())
               {
                  if(o4519.o8116.o476.o9392.o7908().name == "Halloween")
                  {
                     _loc14_.o16384(new HalloweenParallaxTitleScreenAsset(),this,param1);
                  }
                  else if(o4519.o8116.o476.o9392.o7908().name == "Christmas")
                  {
                     _loc14_.o16384(new XmasParallaxTitleScreenAsset(),this,param1);
                  }
                  else if(o4519.o8116.o476.o9392.o7908().name == "Easter")
                  {
                     _loc14_.o16384(new EasterParallaxTitleScreenAsset(),this,param1);
                  }
                  else
                  {
                     _loc14_.o16384(new ParallaxTitleScreenAsset(),this,param1);
                  }
               }
               else
               {
                  _loc14_.o16384(new ParallaxTitleScreenAsset(),this,param1);
               }
               return _loc14_;
            case 40:
               _loc9_ = o11301();
               _loc9_.o16384(new IntroContainerScreenAsset(),this,param1);
               return _loc9_;
            case 42:
               _loc5_ = o15213();
               _loc5_.o16384(new IntroContainerScreenAsset(),this,param1);
               return _loc5_;
            case 31:
               _loc12_ = o17260();
               _loc12_.o16384(new GameHudScreenAsset(),this,param1);
               return _loc12_;
            case 6:
               _loc11_ = o4507();
               _loc11_.o16384(new LoadingGameScreenAsset(),this,param1);
               return _loc11_;
            case 33:
               _loc6_ = o1042();
               if(o470)
               {
                  _loc6_.o16384(new MissionSummaryScreenAsset(),this,param1);
               }
               else
               {
                  _loc6_.o16384(new MissionSummarySinglePlayerScreenAsset(),this,param1);
               }
               return _loc6_;
            case 43:
               _loc13_ = o1966();
               _loc13_.o16384(new MissionSummaryLevelUpScreenAsset(),this,param1);
               return _loc13_;
            default:
               return null;
         }
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(o7817 == null)
         {
            return;
         }
         o7817.o14009(param1,param2,param3,param4);
         super.o14009(param1,param2,param3,param4);
      }
      
      private function o10090(param1:MovieClip, param2:String) : int
      {
         var _loc3_:MovieClip = param1.getChildByName("dialogContainer") as MovieClip;
         var _loc4_:TextField = _loc3_.getChildByName("lblInfo") as TextField;
         if(param2 == null)
         {
            param2 = param2;
         }
         _loc4_.text = param2 == null?"":param2;
         return _loc4_.numLines;
      }
      
      protected function o14192(param1:String) : o12306
      {
         var _loc3_:* = null;
         var _loc7_:int = 0;
         var _loc2_:* = null;
         var _loc9_:* = null;
         var _loc4_:o12306 = new o12306();
         var _loc5_:MovieClip = null;
         var _loc6_:Boolean = true;
         var _loc8_:ConfirmSmallDialogAsset = new ConfirmSmallDialogAsset();
         if(o10090(_loc8_,param1) <= 1)
         {
            _loc5_ = _loc8_;
         }
         else
         {
            _loc3_ = new ConfirmMidDialogAsset();
            _loc7_ = o10090(_loc3_,param1);
            if(_loc7_ <= 3)
            {
               _loc5_ = _loc3_;
               _loc2_ = _loc5_.getChildByName("dialogContainer") as MovieClip;
               _loc9_ = _loc2_.getChildByName("lblInfo") as TextField;
               if(_loc7_ == 1)
               {
                  _loc9_.y = 55;
               }
               else if(_loc7_ == 2)
               {
                  _loc9_.y = 45;
               }
               else
               {
                  _loc9_.y = 38;
               }
            }
            else
            {
               _loc6_ = false;
               _loc5_ = new ConfirmDialogAsset();
            }
         }
         _loc4_.init(_loc5_);
         this.o9642(_loc4_);
         return _loc4_;
      }
      
      public function o3750(param1:String, param2:String, param3:Function = null) : void
      {
         var _loc4_:o7073 = new o7073();
         _loc4_.o16384(new SaveErrorDialogAsset(),true);
         _loc4_.o17920 = false;
         this.o9642(_loc4_);
         _loc4_.o13483(param1,param2,param3);
      }
      
      public function o4558(param1:String, param2:String) : void
      {
         if(o7073.o10982)
         {
            return;
         }
         var _loc3_:o7073 = new o7073();
         _loc3_.o16384(new ErrorDialogAsset(),false);
         _loc3_.o17920 = false;
         this.o9642(_loc3_);
         _loc3_.o12407(param1,param2,null);
      }
      
      protected function o10270() : o14374
      {
         return new o14374();
      }
      
      public function o6578(param1:int) : void
      {
         var _loc2_:o14374 = this.o10270();
         _loc2_.o16384(new WatchVideoEarnDialogAsset(),this,param1);
         this.o9642(_loc2_);
         _loc2_.o9072(null);
      }
      
      public function o13483(param1:String, param2:String, param3:Function, param4:Function = null, param5:Boolean = true) : o12306
      {
         var _loc6_:o12306 = o14192(param2);
         _loc6_.o17920 = param5;
         _loc6_.o13483(param1,param2,param3,param4);
         return _loc6_;
      }
      
      public function o17139(param1:String, param2:String, param3:Function, param4:Function = null, param5:Boolean = true) : void
      {
         var _loc6_:o12306 = o14192(param2);
         _loc6_.o17920 = param5;
         _loc6_.o13483(param1,param2,param3,param4);
      }
      
      public function o1657(param1:Function) : void
      {
         var _loc2_:o10400 = new o10400();
         _loc2_.init(new ConfirmDeleteCharacterDialogAsset());
         this.o9642(_loc2_);
         _loc2_.o13483("","",param1);
      }
      
      public function o16567(param1:Function, param2:Boolean) : o20923
      {
         var _loc3_:o20923 = new o20923();
         _loc3_.init(new EventsLeaderboardsDialogAsset());
         _loc3_.o20398 = param2;
         this.o9642(_loc3_);
         _loc3_.o13483("","",param1);
         return _loc3_;
      }
      
      public function o8386(param1:Function, param2:Boolean) : o8181
      {
         var _loc3_:o8181 = new o8181();
         _loc3_.init(new NewEventsLeaderboardsDialogAsset());
         _loc3_.o20398 = param2;
         this.o9642(_loc3_);
         _loc3_.o13483("","",param1);
         return _loc3_;
      }
      
      public function o20751(param1:Function, param2:Boolean) : o13873
      {
         var _loc3_:o13873 = new o13873();
         _loc3_.init(new ChampionshipsLeaderboardsDialogAsset());
         this.o9642(_loc3_);
         _loc3_.o13483("","",param1);
         return _loc3_;
      }
      
      public function o12407(param1:String, param2:String, param3:Function = null) : void
      {
         o14192(param2).o12407(param1,param2,param3);
      }
      
      public function o1560() : o168
      {
         return new o168();
      }
      
      public function o8529(param1:Function = null, param2:Function = null) : o168
      {
         var _loc3_:o168 = o1560();
         _loc3_.o16384(new CraftEliteCoreConfirmDialogAsset(),this,param1,param2);
         this.o9642(_loc3_);
         _loc3_.o9072(param1,param2);
         return _loc3_;
      }
      
      protected function o12528() : o10855
      {
         return new o10855();
      }
      
      public function o13000() : o10855
      {
         var _loc1_:o10855 = o12528();
         _loc1_.o17920 = false;
         _loc1_.o16384(new StrongboxOutOfGameDialogAsset(),this);
         this.o9642(_loc1_);
         _loc1_.o9072(null);
         return _loc1_;
      }
      
      public function o14605() : void
      {
         var _loc1_:o12306 = new o12306();
         _loc1_.init(new MultipleLoginDialogAsset());
         this.o9642(_loc1_);
         _loc1_.o17920 = false;
         _loc1_.o12407(null,null);
         _loc1_.o20173.visible = false;
      }
      
      protected function o13170() : o18703
      {
         return new o18703();
      }
      
      private function o4595(param1:Function) : void
      {
         var _loc2_:o18703 = o13170();
         _loc2_.o16384(new MissionSummaryItemDialogAsset(),this);
         this.o9642(_loc2_);
         _loc2_.o16335 = param1;
         _loc2_.o9072(null);
      }
      
      private function o13534() : void
      {
         var _loc1_:o14200 = o4519.o8116.profileData;
         _loc1_.o7923.o18104++;
         _loc1_.saveData();
         o9320();
         o9320 = null;
      }
      
      private function o19727() : void
      {
         var _loc1_:o14200 = o4519.o8116.profileData;
         _loc1_.o7923.o5532++;
         _loc1_.saveData();
         o9320();
         o9320 = null;
      }
      
      public function o198(param1:Function) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:o14200 = o4519.o8116.profileData;
         if(_loc2_.o202.o16835.length > 0)
         {
            this.o9320 = param1;
            _loc3_ = _loc2_.o202.o16835[0];
            _loc4_ = _loc2_.o202.o16835.length;
            _loc5_ = _loc2_.o202.o14384[0];
            this.o4595(param1);
            param1 = null;
            if(_loc5_ == 3)
            {
               this.o7712(_loc5_,this.o13534,1);
            }
            else if(_loc5_ == 2)
            {
               this.o7712(_loc5_,this.o19727,1);
            }
         }
      }
      
      protected function o6134() : o16533
      {
         return new o16533();
      }
      
      public function o3390() : void
      {
         var _loc1_:o16533 = o6134();
         _loc1_.o16384(new PurchasedItemsDialogAsset(),this);
         this.o9642(_loc1_);
         _loc1_.o13042("","");
      }
      
      protected function o2036() : o1931
      {
         return new o1931();
      }
      
      public function o9171(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:o1931 = o2036();
         _loc3_.o16384(new HelpScreenAsset(),this,0,param1,param2);
         this.o9642(_loc3_);
         _loc3_.o13483("","",null,null);
      }
      
      override public function o13640() : void
      {
         o1489 = 0;
         super.o13640();
      }
      
      public function o16316(param1:UncaughtErrorEvent) : void
      {
         throw new Error("Must override");
      }
      
      protected function o8572() : o7394
      {
         return new o7394();
      }
      
      public function o18430(param1:Function) : void
      {
         var _loc3_:o7394 = o8572();
         var _loc2_:MovieClip = new StoreDialogAsset();
         _loc3_.init(_loc2_);
         _loc3_.asset.y = o17460;
         this.o9642(_loc3_);
         _loc3_.o13483("","",param1,param1);
      }
      
      public function o20948(param1:Function) : void
      {
         var _loc3_:o7394 = o8572();
         var _loc2_:MovieClip = new BuySasCashDialogAsset();
         _loc3_.init(_loc2_);
         _loc3_.asset.y = o17460;
         this.o9642(_loc3_);
         _loc3_.o13483("","",param1,param1);
      }
      
      protected function o2972() : o18975
      {
         return new o18975();
      }
      
      public function o13478() : void
      {
         var _loc1_:o18975 = o2972();
         _loc1_.o16384(new DailyRewardDialog(),this);
         this.o9642(_loc1_);
         _loc1_.o9072(null);
      }
      
      public function o16412(param1:String, param2:String, param3:String, param4:String, param5:String, param6:int, param7:int, param8:int, param9:Function) : o1770
      {
         var _loc10_:o1770 = new o1770();
         _loc10_.o16384(new EventsRewardDialogAsset(),param1,param2,param3,param4,param5,param6,param7,param8,param9,false);
         _loc10_.o17920 = false;
         this.o9642(_loc10_);
         _loc10_.o12407("A","B",null);
         return _loc10_;
      }
      
      public function o14258(param1:String, param2:String, param3:String, param4:String, param5:String, param6:int, param7:int, param8:int, param9:Function) : o3715
      {
         var _loc10_:o3715 = new o3715();
         _loc10_.o16384(new ClaimSuperEventRewardDialogAsset(),param1,param2,param3,param4,param5,param6,param7,param8,param9,true);
         _loc10_.o17920 = false;
         this.o9642(_loc10_);
         _loc10_.o12407("A","B",null);
         return _loc10_;
      }
      
      public function o13414(param1:String, param2:String, param3:int, param4:Function) : void
      {
         var _loc5_:o10462 = new o10462(this);
         _loc5_.o12694(param1,param2,param3,param4);
      }
      
      public function o16801(param1:o8443) : o17639
      {
         return null;
      }
      
      public function o11626(param1:Dictionary, param2:Dictionary, param3:Boolean, param4:Boolean = false, param5:Function = null) : o7168
      {
         var _loc6_:o7168 = new o7168();
         _loc6_.o16384(new EquipmentMasteryDialogAsset(),this,param1,param2,param3,param4,param5);
         this.o9642(_loc6_);
         _loc6_.o17920 = false;
         _loc6_.o9072(null);
         return _loc6_;
      }
      
      public function o4970(param1:o6993, param2:int, param3:Boolean, param4:Function = null) : void
      {
         var _loc5_:o12821 = new o12821();
         _loc5_.o16384(new MasteryLevelRewardsDialogAsset());
         this.o9642(_loc5_);
         _loc5_.o9848(param1,param2,param3,param4);
      }
      
      public function o7283(param1:Function) : void
      {
         var _loc2_:o401 = new o401();
         _loc2_.o16384(new EliteInventoryDialogAsset(),this);
         this.o9642(_loc2_);
         _loc2_.o9072(param1,param1);
      }
      
      public function o9162(param1:Function = null) : void
      {
         var _loc2_:o9466 = new o9466();
         _loc2_.o16384(new CollectionsDialogAsset(),this);
         this.o9642(_loc2_);
         _loc2_.o9072(param1 == null?o1258:param1,param1 == null?o1258:param1);
      }
      
      public function o4077() : void
      {
         var _loc1_:o11911 = o18535();
         _loc1_.o16384(new PatchNotesAsset(),this,o9609.o6223().o17179.o17615);
         this.o9642(_loc1_);
         _loc1_.o9072(null);
      }
      
      protected function o18535() : o11911
      {
         return new o11911();
      }
      
      public function o18017(param1:o14096, param2:o4117, param3:Function, param4:Boolean = true, param5:Function = null) : void
      {
         var _loc6_:o20581 = new o20581();
         _loc6_.o16384(new CollectionItemDialogAsset(),this,param4,param5);
         _loc6_.o991(param1,param2);
         this.o9642(_loc6_);
         _loc6_.o9072(param3,param3);
      }
      
      public function o9292(param1:o1253, param2:o4117, param3:Function, param4:Boolean = true, param5:Function = null) : void
      {
         var _loc6_:o20581 = new o20581();
         _loc6_.o16384(new CollectionItemDialogAsset(),this,param4,param5);
         _loc6_.o10577(param1,param2);
         this.o9642(_loc6_);
         _loc6_.o9072(param3,param3);
      }
      
      public function o18460(param1:Function) : void
      {
      }
      
      public function o14555(param1:Function) : void
      {
         var _loc2_:o9603 = new o9603();
         _loc2_.o16384(new BlackKeyRequiredDialogAsset(),this);
         this.o9642(_loc2_);
         _loc2_.o9072(param1,param1);
      }
      
      public function o11214(param1:Boolean, param2:Function) : void
      {
         var _loc3_:o14677 = new o14677();
         _loc3_.o3611 = param1;
         _loc3_.o16384(new EliteAugmentCoreDialogAsset(),this,param1);
         this.o9642(_loc3_);
         _loc3_.o9072(param2,param2);
      }
      
      public function o10349(param1:Function) : void
      {
      }
      
      private function o10390() : void
      {
         o13424(o7938);
      }
      
      private function o13002(param1:int) : Boolean
      {
         var _loc2_:o14200 = o4519.o8116.profileData;
         if(_loc2_.o7923.o16754(param1))
         {
            return false;
         }
         if(param1 == 1 && _loc2_.o7923.o14250 <= 0)
         {
            return false;
         }
         var _loc3_:o13706 = _loc2_.o5292.o418.o17187(param1);
         o17029(_loc3_.o14925,_loc3_.o8398,_loc3_.o12087,o10390);
         _loc2_.o7923.o19896(param1);
         return true;
      }
      
      public function o13424(param1:Boolean) : void
      {
         var _loc2_:* = null;
         this.o7938 = param1;
         if(o13002(1))
         {
            return;
         }
         if(param1)
         {
            _loc2_ = o4519.o8116.profileData;
            if(_loc2_.o7923.o11248.length > 0)
            {
               _loc2_.o202.o11362();
               _loc2_.o202.o19424(_loc2_.o7923);
               this.o13000();
            }
         }
      }
      
      private function o17029(param1:String, param2:String, param3:String, param4:Function) : void
      {
         var _loc5_:o9743 = new o9743();
         _loc5_.o17920 = false;
         _loc5_.init(new EliteTutorialsDialogAsset());
         this.o9642(_loc5_);
         var _loc6_:MovieClip = _loc5_.container.getChildByName("icon") as MovieClip;
         _loc6_.gotoAndStop(param3);
         _loc5_.o12407(param1,param2,param4);
      }
      
      public function o7712(param1:int, param2:Function, param3:int) : void
      {
         var _loc4_:o14200 = o4519.o8116.profileData;
         var _loc6_:o8499 = _loc4_.o5292.o418.o12699(param1);
         _loc4_.o7923.o19896(param1);
         var _loc5_:o10339 = new o10339();
         _loc5_.o17920 = false;
         _loc5_.o16384(new StrongboxSpecialItemDialogAsset(),_loc6_.o12087);
         this.o9642(_loc5_);
         _loc5_.o12407(_loc6_.o9868(param3),_loc6_.o8398,param2);
      }
      
      public function o6612(param1:Boolean) : void
      {
         var _loc2_:o9743 = new o9743();
         _loc2_.o17920 = false;
         _loc2_.init(new NightmareModeInfoDialog());
         this.o9642(_loc2_);
         _loc2_.o12407(!!param1?"Multiplayer Nightmare mode unlocked":"Try Nightmare mode","",null);
      }
      
      public function o9963(param1:Boolean) : void
      {
         var _loc2_:o9743 = new o9743();
         _loc2_.o17920 = false;
         _loc2_.init(new SuperEventInfoDialogAsset());
         this.o9642(_loc2_);
         _loc2_.o12407("Championships Unlocked","",null);
      }
      
      public function o15563(param1:Function, param2:String) : void
      {
         var _loc3_:o2519 = new o2519();
         _loc3_.o16384(new CraftingInfoDialogAsset(),param1,param2);
         _loc3_.o17920 = false;
         this.o9642(_loc3_);
         _loc3_.o9072(param1,null);
      }
      
      public function o15998() : void
      {
         var _loc3_:* = null;
         var _loc2_:o14200 = o4519.o8116.profileData;
         var _loc4_:String = _loc2_.o1317.o11294;
         var _loc1_:String = o9609.o6223().o20861;
         if(_loc4_ == null || _loc4_ == "" || _loc4_ != _loc1_)
         {
            _loc2_.o1317.o11294 = _loc1_;
            _loc2_.saveData();
            _loc3_ = new o10295();
            _loc3_.o16384(new MajorUpdatesDialogAsset(),this,_loc2_.o1317.o15892);
            this.o9642(_loc3_);
            _loc3_.o9072(null);
         }
      }
      
      private function o3207() : void
      {
         if(o14200.o19505.o7923.o13012.o19556())
         {
            return;
         }
         o14200.o19505.saveData();
         o11628();
      }
      
      public function o11628() : void
      {
         var _loc1_:o14200 = o14200.o19505;
         if(_loc1_.o7923.o11248.length > 0)
         {
            _loc1_.o202.o11362();
            _loc1_.o202.o19424(_loc1_.o7923);
            this.o13000();
         }
      }
      
      public function o3113(param1:String, param2:String, param3:int) : void
      {
         var _loc5_:o9743 = new o9743();
         _loc5_.o17920 = false;
         _loc5_.init(new CollectionRewardDialogAsset());
         var _loc6_:TextField = _loc5_.container.getChildByName("description") as TextField;
         _loc6_.text = param2;
         var _loc4_:MovieClip = _loc5_.container.getChildByName("CollectionIcon") as MovieClip;
         _loc4_.gotoAndStop(param3);
         this.o9642(_loc5_);
         _loc5_.o12407("Collection Reward!",param1 + ":",o3207);
      }
      
      public function o12991(param1:o6993, param2:int) : void
      {
         var _loc3_:* = null;
         if(param1 != null)
         {
            _loc3_ = "Standard";
            if(param2 == 2)
            {
               _loc3_ = "Red";
            }
            else if(param2 == 3)
            {
               _loc3_ = "Black";
            }
            this.o3113(param1.name + " (" + _loc3_ + ")",param1.o9938[0].o13404(),param1.o13439);
         }
      }
      
      public function o7771() : void
      {
         var _loc1_:o3927 = new o3927();
         _loc1_.o17920 = false;
         _loc1_.o16384(new SuperEventRewardsDialogAsset());
         this.o9642(_loc1_);
         _loc1_.o9072(null,null);
      }
      
      public function o6233(param1:Function, param2:o14801) : void
      {
         var _loc3_:o8889 = new o8889();
         _loc3_.o17920 = false;
         _loc3_.o16384(new SuperEventCompletedDialogAsset(),param2);
         this.o9642(_loc3_);
         _loc3_.o9072(param1,param1);
      }
      
      public function o5073(param1:Boolean = false) : void
      {
         if(o10855.o8478)
         {
            return;
         }
         if(param1)
         {
            o11036 = false;
         }
         if(o11036)
         {
            return;
         }
         o11036 = true;
         var _loc2_:o18144 = new o18144();
         _loc2_.o16384(new EventPromoPanelMultipleDialogAsset(),this);
         if(_loc2_.o10350)
         {
            _loc2_.o5310();
         }
         else
         {
            this.o9642(_loc2_);
            _loc2_.o9072(null);
         }
      }
      
      public function o20704() : void
      {
      }
      
      public function o2293(param1:Vector.<int>, param2:Date) : void
      {
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc5_:Vector.<o4162> = new Vector.<o4162>();
         var _loc11_:int = 0;
         var _loc10_:* = param1;
         for each(var _loc4_ in param1)
         {
            _loc5_.push(o14200.o19505.o5292.o3911.o14690(_loc4_));
         }
         var _loc7_:o8234 = new o8234();
         _loc7_.o17920 = false;
         _loc7_.o16384(new BuyPremiumWeaponsDialogAsset(),param2);
         var _loc9_:int = 0;
         var _loc13_:int = 0;
         var _loc12_:* = _loc5_;
         for each(var _loc3_ in _loc5_)
         {
            if(_loc3_.o11620.length != 1)
            {
               throw new Error("Invalid pack");
            }
            _loc6_ = _loc3_.o11620[0];
            _loc8_ = o14200.o19505.o15894.o19318(_loc6_.o10748,_loc6_.grade,_loc6_.o11314);
            _loc8_.grade = _loc6_.grade;
            _loc7_.o20873(_loc9_,_loc3_.o2296,_loc3_.o15127,_loc8_.o2752.o16703,_loc8_);
            _loc9_++;
         }
         this.o9642(_loc7_);
         _loc7_.o9072(null,null);
      }
      
      public function o2256(param1:o14096, param2:o4117, param3:Function, param4:Date, param5:int, param6:int) : void
      {
         var _loc7_:o18331 = new o18331();
         _loc7_.o17920 = false;
         _loc7_.o8224(new ConfirmPremiumWeaponPurchaseDialogAsset(),this,param4);
         _loc7_.o10445(param1,param2,param5,param6);
         this.o9642(_loc7_);
         _loc7_.o9072(param3,param3);
      }
   }
}
