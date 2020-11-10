package
{
   import assets.ui.screen.AIBaseScreenAsset;
   import assets.ui.screen.BlackStrongboxScreenAsset;
   import assets.ui.screen.BlankScreenAsset;
   import assets.ui.screen.ContractsAvailableScreenAsset;
   import assets.ui.screen.EquipmentScreenAsset;
   import assets.ui.screen.LobbyScreenAsset;
   import assets.ui.screen.ProfileDialogAsset;
   import assets.ui.screen.ProfileMPDialogAsset;
   import assets.ui.screen.PurchaseExtrasDialogAsset;
   import assets.ui.screen.SelectCharacterClassScreenAsset;
   import assets.ui.screen.SelectCharacterScreenAsset;
   import assets.ui.screen.SelectGameModeMPScreenAsset;
   import assets.ui.screen.SelectGameModeMultiPlayerPrivateMatchNightmareAsset;
   import assets.ui.screen.SelectGameModePMScreenAsset;
   import assets.ui.screen.SelectGameModePrivateMatchScreenAsset;
   import assets.ui.screen.SelectGameModeScreen2Asset;
   import assets.ui.screen.SinglePlayerMapSelectScreenAsset;
   import assets.ui.screen.SinglePlayerWorldSelectScreenAsset;
   import assets.ui.screen.SkillsScreenAsset;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class o978 extends o6539
   {
      
      public static var o10930:int = 3;
      
      public static var o12367:int = 3;
      
      public static var o6813:int = -1;
       
      
      public var o13044:Boolean = false;
      
      private var o7750:o20565;
      
      public var o16989:o13064;
      
      public var o20285:MovieClip;
      
      public var o2665:o15625;
      
      public var o1934:o15625;
      
      protected var o11290:o15625;
      
      public var o16206:o15625;
      
      public var o9799:o5414;
      
      private var o15462:MovieClip;
      
      private var o3607:MovieClip;
      
      private var o17977:String;
      
      private var o1491:String;
      
      private var o15395:int;
      
      private var o16397:int;
      
      private var o8647:int;
      
      private var o14001:TextField;
      
      private var o5494:TextField;
      
      private var o3700:MovieClip;
      
      private var o4674:MovieClip;
      
      protected var o5187:TextField;
      
      protected var o13659:MovieClip;
      
      public var o8544:Function;
      
      protected var o6550:o12290;
      
      private var o7046:o15625;
      
      private var o9684:o11979;
      
      private var o1233:MovieClip;
      
      private var o5966:TextField;
      
      private var o15443:MovieClip;
      
      private var o10901:TextField;
      
      private var o13416:o15625;
      
      public var o17188:int = 3;
      
      private var o6663:Boolean = false;
      
      private var o8177:Vector.<int>;
      
      private var o11594:Boolean = false;
      
      protected var o14336:o15625;
      
      protected var o6877:o15625;
      
      protected var o15175:o15625;
      
      protected var o7216:o15625;
      
      protected var o12978:o15625;
      
      private var o4503:Array;
      
      private var o16034:TextField;
      
      public function o978()
      {
         o8177 = new Vector.<int>();
         o4503 = [26,25,24];
         super();
      }
      
      public function o18890(param1:int) : void
      {
         if(param1 == 22)
         {
            return;
         }
         o8177.push(param1);
      }
      
      public function o15377(param1:int) : void
      {
         o8177 = new Vector.<int>();
         o8177.push(param1);
      }
      
      public function o4893() : void
      {
         if(o8177.length < 1)
         {
            return;
         }
         var _loc1_:int = o8177[o8177.length - 1];
         o8177.splice(o8177.length - 1,1);
         o11594 = true;
         this.screen = _loc1_;
      }
      
      override protected function o154() : void
      {
         this.screen = o978.o10930;
         o978.o10930 = 3;
         o12367 = 3;
         if(o6813 >= 0)
         {
            this.o15377(3);
            this.o18890(o6813);
            o6813 = -1;
            this.o13395(false);
         }
      }
      
      public function o16384(param1:MovieClip, param2:int, param3:o13064) : void
      {
         super.init(param1);
         this.o16989 = param3;
         o7750 = new o20565(this);
         o2665 = o7750.o17578("btnMetalFrameBack");
         o1934 = o7750.o17578("btnMetalFrameNext");
         this.o15462 = param1.getChildByName("metalFrameTopLeft") as MovieClip;
         this.o3607 = param1.getChildByName("metalFrameBottomButtons") as MovieClip;
         this.o20285 = o15462.getChildByName("characterInfo") as MovieClip;
         o14001 = o20285.getChildByName("lblInfo") as TextField;
         o5494 = o20285.getChildByName("lblRankTitle") as TextField;
         o3700 = o20285.getChildByName("icon") as MovieClip;
         o4674 = o20285.getChildByName("xpBar") as MovieClip;
         o13659 = param1.getChildByName("sasCash") as MovieClip;
         o5187 = o13659.getChildByName("lblSasMoney") as TextField;
         o3700.gotoAndStop(1);
         o13416 = o7750.o17578("btnHome",o3607);
         var _loc4_:o15625 = o7750.o17578("btnCharacter",o3607);
         var _loc7_:o15625 = o7750.o17578("btnMenu",o3607);
         var _loc5_:o15625 = o7750.o17578("btnEquip",o3607);
         var _loc8_:o15625 = o7750.o17578("btnSkills",o3607);
         var _loc6_:o15625 = o7750.o17578("btnStart",o3607);
         o1233 = o3607.getChildByName("unusedSkillPoints") as MovieClip;
         o5966 = o1233.getChildByName("lblcount") as TextField;
         o15443 = o3607.getChildByName("newEquipment") as MovieClip;
         o10901 = o15443.getChildByName("lblcount") as TextField;
         o16034 = param1.getChildByName("message") as TextField;
         o16034.visible = false;
         o1233.visible = false;
         o15443.visible = false;
         o9799 = this.o7750.o4085(null,null,[o13416,_loc4_,_loc7_,_loc5_,_loc8_]);
         o9799.o11751();
         o9799.o2120 = 2;
         o9799.addEventListener(o5595.o16737,o9155,false,0,true);
         var _loc9_:* = param1;
         o11290 = o7750.o15961("btnStore","Store",_loc9_);
         if(o11290 != null)
         {
            o11290.addEventListener("click",o15045,false,0,true);
         }
         o16206 = o7750.o15961("btnNews","News",_loc9_);
         if(o16206 != null)
         {
            o16206.addEventListener("click",o4652,false,0,true);
            o16206.visible = false;
         }
         o6550 = o7750.o15961("btnEarnSasCash","Earn sas $",_loc9_);
         o6550.addEventListener("click",o3058,false,0,true);
         o7046 = o7750.o17578("btnViewProfile",o15462);
         o7046.addEventListener("click",o4630,false,0,true);
         o1934.addEventListener("click",o5552,false,0,true);
         o2665.visible = false;
         o2665.addEventListener("click",o11804,false,0,true);
         o14336 = o7750.o17578("btnAIBase",_loc9_);
         o6877 = o7750.o17578("btnMastery",_loc9_);
         o7216 = o7750.o17578("btnStrongbox",_loc9_);
         o12978 = o7750.o17578("btnEliteInv",_loc9_);
         o15175 = o7750.o17578("btnCollections",_loc9_);
         o14336.addEventListener("click",o19354,false,0,true);
         o6877.addEventListener("click",o2076,false,0,true);
         o7216.addEventListener("click",o2938,false,0,true);
         o12978.addEventListener("click",o16707,false,0,true);
         o15175.addEventListener("click",o20154,false,0,true);
         o19988(false);
         this.o16224(false);
         this.o8987(false);
         this.o13395(true);
      }
      
      private function o19354(param1:Event) : void
      {
         this.screen = 28;
         this.o18542();
      }
      
      private function o2076(param1:Event) : void
      {
         var _loc3_:Dictionary = new Dictionary();
         var _loc2_:Dictionary = new Dictionary();
         _loc3_ = o4519.o8116.profileData.o7923.o13012.o563();
         this.o16989.o11626(_loc3_,_loc2_,false);
      }
      
      private function o16707(param1:Event) : void
      {
         this.o16989.o7283(o1258);
      }
      
      private function o20154(param1:Event) : void
      {
         this.o16989.o9162(o1258);
      }
      
      private function o4536(param1:Event) : void
      {
         this.o16989.o18460(null);
      }
      
      private function o2938(param1:Event) : void
      {
         this.screen = 29;
         this.o18542();
      }
      
      public function o9164(param1:Boolean) : void
      {
         o2665.visible = param1;
         o2665.enabled = true;
         o13416.visible = !param1;
      }
      
      public function o8161() : void
      {
         o2665.enabled = false;
      }
      
      public function o6602() : void
      {
         o2665.enabled = true;
      }
      
      public function o13395(param1:Boolean) : void
      {
         o2665.visible = !param1;
         o2665.enabled = true;
         o13416.visible = param1;
      }
      
      public function o8987(param1:Boolean) : void
      {
         o6663 = param1;
         var _loc4_:int = 0;
         var _loc3_:* = this.o9799.o19568;
         for each(var _loc2_ in this.o9799.o19568)
         {
            _loc2_.visible = param1;
         }
         if(param1 == false)
         {
            o1233.visible = false;
            o15443.visible = false;
         }
         else
         {
            if(o5966.text != "0")
            {
               o1233.visible = true;
            }
            if(o10901.text != "0")
            {
               o15443.visible = true;
            }
         }
      }
      
      public function o16224(param1:Boolean) : void
      {
         o1934.visible = param1;
      }
      
      private function o5552(param1:Event) : void
      {
         this.screen = 5;
         this.o18542();
      }
      
      private function o11804(param1:Event) : void
      {
         if(o12514 || o7817 != null && o7817.o12514)
         {
            return;
         }
         o4893();
         this.o18542();
      }
      
      public function o19509(param1:int) : void
      {
         o1256(o5966,param1.toString());
         o1233.visible = o6663 && param1 > 0;
      }
      
      public function o4096(param1:int) : void
      {
         o1256(o10901,param1.toString());
         o15443.visible = o6663 && param1 > 0;
      }
      
      protected function o4630(param1:Event) : void
      {
         o20485();
      }
      
      protected function o3281() : o5714
      {
         return new o5714();
      }
      
      protected function o13295() : o10639
      {
         return new o10639();
      }
      
      protected function o2053() : o11902
      {
         return new o11902();
      }
      
      protected function o7438() : o16486
      {
         return new o16486();
      }
      
      protected function o2356() : o18725
      {
         return new o18725();
      }
      
      protected function o3419() : o19454
      {
         return new o19454();
      }
      
      protected function o15172() : o766
      {
         return new o766();
      }
      
      protected function o12548() : o13660
      {
         return new o13660();
      }
      
      protected function o8849() : o16216
      {
         return new o16216();
      }
      
      protected function o4871() : o6539
      {
         return new o6539();
      }
      
      protected function o13835() : o11979
      {
         return new o11979();
      }
      
      protected function o2376() : o17639
      {
         return new o17639();
      }
      
      protected function o9537() : o8249
      {
         return new o8249();
      }
      
      protected function o12547() : o7168
      {
         return new o7168();
      }
      
      protected function o9804() : o11780
      {
         return new o11780();
      }
      
      protected function o19947() : o5065
      {
         return new o5065();
      }
      
      protected function o20485() : void
      {
         if(o9684 == null)
         {
            o9684 = o13835();
            o9684.init(new ProfileDialogAsset());
            o9684.o3880 = false;
            this.o310.addChild(o9684.asset);
            this.o5452(o9684);
         }
         o9684.o16873.visible = this.screen != 20;
         if(o9684.visible)
         {
            o9684.close();
         }
         else
         {
            o9684.o9072(null);
         }
      }
      
      public function o16801(param1:o8443, param2:Function) : o17639
      {
         var _loc3_:o7534 = new o7534();
         _loc3_.o16384(new ProfileMPDialogAsset(),this.o16989);
         this.o310.addChild(_loc3_.asset);
         this.o5452(_loc3_);
         _loc3_.o9072(param2,param2);
         _loc3_.o20588(param1);
         return _loc3_;
      }
      
      override protected function o1789(param1:int, param2:int) : o6539
      {
         var _loc19_:* = null;
         var _loc18_:* = null;
         var _loc7_:* = null;
         var _loc10_:* = null;
         var _loc8_:* = null;
         var _loc3_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc11_:* = null;
         var _loc14_:* = null;
         var _loc4_:* = null;
         var _loc9_:* = null;
         var _loc12_:* = null;
         var _loc6_:* = null;
         var _loc15_:* = null;
         var _loc13_:* = null;
         var _loc5_:* = null;
         o11290.enabled = param2 != 20;
         if(o11594)
         {
            o11594 = false;
         }
         else if(o4503.indexOf(param1) < 0)
         {
            this.o18890(param1);
         }
         o16034.visible = false;
         var _loc20_:* = param2;
         switch(_loc20_)
         {
            case 5:
               _loc19_ = o3281();
               if(o4519.o8116.profileData.o5292.o19127 == false && o4519.o8116.profileData.o5292.o15099)
               {
                  _loc19_.o16384(new SelectGameModePMScreenAsset(),this,param1);
               }
               else
               {
                  _loc19_.o16384(new SelectGameModeScreen2Asset(),this,param1);
               }
               o16034.visible = o4519.o8116.o476.o9392.o693(o16034);
               return _loc19_;
            case 23:
               _loc18_ = o13295();
               _loc18_.o16384(new SelectGameModeMPScreenAsset(),this,param1);
               o16034.visible = o4519.o8116.o476.o9392.o693(o16034);
               return _loc18_;
            case 24:
               _loc7_ = o2053();
               if(o14200.o19505.o202.o18339 == 2)
               {
                  _loc7_.o16384(new SelectGameModeMultiPlayerPrivateMatchNightmareAsset(),this,this.o16989);
               }
               else
               {
                  _loc7_.o16384(new SelectGameModePrivateMatchScreenAsset(),this,this.o16989);
               }
               o16034.visible = o4519.o8116.o476.o9392.o693(o16034);
               return _loc7_;
            case 32:
               _loc10_ = new o20442();
               _loc10_.o16384(new SelectGameModeContract(),this,this.o16989);
               o16034.visible = o4519.o8116.o476.o9392.o693(o16034);
               return _loc10_;
            case 4:
               _loc8_ = o7438();
               _loc8_.o16384(new SkillsScreenAsset(),this,param1);
               return _loc8_;
            case 1:
               _loc3_ = o2356();
               _loc3_.o16384(new SelectCharacterScreenAsset(),this,param1);
               return _loc3_;
            case 21:
               _loc16_ = o12548();
               _loc16_.o16384(new SelectCharacterClassScreenAsset(),this,param1);
               return _loc16_;
            case 3:
               _loc17_ = o3419();
               _loc17_.o16384(new EquipmentScreenAsset(),this,param1);
               return _loc17_;
            case 19:
               _loc11_ = o15172();
               _loc11_.o16384(new SinglePlayerMapSelectScreenAsset(),this,param1);
               o16034.visible = o4519.o8116.o476.o9392.o693(o16034);
               return _loc11_;
            case 30:
               _loc14_ = new o5125();
               _loc14_.o16384(new SinglePlayerWorldSelectScreenAsset(),this,o16989);
               o16034.visible = o4519.o8116.o476.o9392.o693(o16034);
               return _loc14_;
            case 20:
               _loc4_ = o8849();
               _loc4_.o16384(new LobbyScreenAsset(),this,param1);
               return _loc4_;
            case 22:
               _loc9_ = o4871();
               _loc9_.init(new BlankScreenAsset());
               return _loc9_;
            case 25:
               _loc12_ = o9537();
               _loc12_.o16384(new PurchaseExtrasDialogAsset(),this,true);
               return _loc12_;
            case 26:
               _loc6_ = o9537();
               _loc6_.o16384(new PurchaseExtrasDialogAsset(),this,false);
               return _loc6_;
            case 28:
               _loc15_ = o9804();
               _loc15_.o16384(new AIBaseScreenAsset(),this);
               return _loc15_;
            case 29:
               _loc13_ = o19947();
               _loc13_.o16384(new BlackStrongboxScreenAsset(),this);
               return _loc13_;
            case 31:
               _loc5_ = new o2629();
               _loc5_.o16384(new ContractsAvailableScreenAsset(),this,o16989);
               o16034.visible = o4519.o8116.o476.o9392.o693(o16034);
               return _loc5_;
            default:
               return null;
         }
      }
      
      public function o14537(param1:int) : void
      {
         o9799.removeEventListener(o5595.o16737,o9155);
         o9799.o2120 = param1;
         o9799.addEventListener(o5595.o16737,o9155,false,0,true);
      }
      
      protected function o6566() : void
      {
         if(o8544 != null)
         {
            o8544();
         }
      }
      
      protected function o3058(param1:MouseEvent) : void
      {
         o12587();
      }
      
      public function o17192() : void
      {
         this.o16989.o18430(o6566);
      }
      
      protected function o15045(param1:MouseEvent) : void
      {
         this.o16989.o18430(o6566);
      }
      
      protected function o4652(param1:MouseEvent) : void
      {
         this.o16989.o5073(true);
      }
      
      override public function o13640() : void
      {
         o9799.removeEventListener(o5595.o16737,o9155);
         o6550.removeEventListener("click",o3058);
         if(o11290 != null)
         {
            o11290.removeEventListener("click",o15045);
         }
         o7046.removeEventListener("click",o4630);
         o7750.o13640();
         o1934.removeEventListener("click",o5552);
         o16206.removeEventListener("click",o4652);
         o2665.removeEventListener("click",o11804);
         o14336.removeEventListener("click",o19354);
         o6877.removeEventListener("click",o2076);
         o7216.removeEventListener("click",o2938);
         o12978.removeEventListener("click",o16707);
         o15175.removeEventListener("click",o20154);
         o13044 = false;
         o7750 = null;
         o16989 = null;
         o20285 = null;
         o2665 = null;
         o1934 = null;
         o11290 = null;
         o9799 = null;
         o15462 = null;
         o3607 = null;
         o17977 = null;
         o1491 = null;
         o15395 = 0;
         o16397 = 0;
         o8647 = 0;
         o14001 = null;
         o5494 = null;
         o3700 = null;
         o4674 = null;
         o5187 = null;
         o13659 = null;
         o8544 = null;
         o6550 = null;
         o7046 = null;
         o1233 = null;
         o5966 = null;
         o15443 = null;
         o10901 = null;
         o13416 = null;
         o14336 = null;
         o6877 = null;
         o16206 = null;
         o7216 = null;
         o12978 = null;
         o15175 = null;
         super.o13640();
      }
      
      private function o9155(param1:o11507) : void
      {
         if(this.screen == param1.o6457)
         {
            return;
         }
         if(param1.o6457 == 0)
         {
            this.o16989.screen = param1.o6457;
         }
         else
         {
            this.screen = param1.o6457;
         }
         if(o9684 != null && o9684.visible)
         {
            o9684.close();
         }
      }
      
      public function o18542() : void
      {
         if(o9684 != null && o9684.visible)
         {
            o9684.close();
         }
      }
      
      protected function o14859() : void
      {
         o20285.gotoAndPlay("display");
      }
      
      protected function o8465(param1:String, param2:String, param3:int, param4:String, param5:int, param6:Number) : void
      {
         this.o8647 = param3;
         this.o17977 = param1 + "\n" + "Level " + param3 + ", " + param2;
         this.o1491 = param4;
         this.o15395 = param5 + 2;
         var _loc7_:Number = param6 * 99 + 1;
         this.o16397 = int(_loc7_);
         o16499();
      }
      
      private function o16499() : void
      {
         o14001.text = o17977;
         o5494.text = o1491;
         o3700.gotoAndStop(o15395);
         var _loc2_:MovieClip = o20285.getChildByName("levelIcon") as MovieClip;
         _loc2_.gotoAndStop(o15395 - 1);
         var _loc1_:MovieClip = _loc2_.getChildByName("rankIcon") as MovieClip;
         _loc1_.gotoAndStop(o8647);
         o4674.gotoAndStop(o16397);
         o13659.visible = true;
         o11290.visible = true;
         o6550.visible = true;
         o7046.visible = true;
         o6877.visible = true;
         o14336.visible = true;
         o7216.visible = true;
         o12978.visible = true;
         o16206.visible = true;
         o15175.visible = true;
         this.o15462.gotoAndStop("Stop");
      }
      
      override protected function draw() : void
      {
         super.draw();
      }
      
      public function o3042(param1:String) : void
      {
         o19988(false);
         o7750.o17506("lblCharacterHeading",param1,o15462);
      }
      
      public function o19988(param1:Boolean) : void
      {
         if(param1)
         {
            this.o15462.gotoAndPlay("CharacterInfoTransition");
         }
         else
         {
            this.o15462.gotoAndStop("Heading");
         }
         o13659.visible = param1;
         o11290.visible = param1;
         o6550.visible = param1;
         o7046.visible = param1;
         o15116(param1);
         this.o1258();
      }
      
      public function o15116(param1:Boolean) : void
      {
         o6877.visible = param1;
         o14336.visible = param1;
         o7216.visible = param1;
         o12978.visible = param1;
         o15175.visible = param1;
      }
      
      override public function o13315(param1:int, param2:Function) : void
      {
         this.screen = 22;
         super.o13315(param1,param2);
      }
      
      protected function o12587() : void
      {
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o674();
         super.o14009(param1,param2,param3,param4);
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null || asset.stage == null)
         {
            return;
         }
         o11692(o15462);
      }
   }
}
