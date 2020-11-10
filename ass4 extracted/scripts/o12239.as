package
{
   import assets.ui.dialog.GameEventObjectiveDialogAsset;
   import assets.ui.dialog.InstantReviveTokensDialog;
   import assets.ui.screen.EnterGhostModeDialogAsset;
   import assets.ui.screen.GameContinueDialogAsset;
   import assets.ui.screen.GameOptionsDialogAsset;
   import assets.ui.screen.InstantReviveDialogAsset;
   import assets.ui.screen.MissionCompleteDialogAsset;
   import assets.ui.screen.MissionFailedDialogAsset;
   import assets.ui.screen.ServerLostDialogAsset;
   import assets.ui.screen.SlowConnectionDialogAsset;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o12239 extends o6539
   {
       
      
      protected var o20738:Boolean = true;
      
      public var o5342:o7662;
      
      private var o16604:Boolean = false;
      
      private var o7750:o20565;
      
      protected var o16989:o13064;
      
      private var o3220:MovieClip;
      
      private var o19189:TextField;
      
      private var o17579:MovieClip;
      
      private var o8985:MovieClip;
      
      private var o10677:MovieClip;
      
      private var o7412:MovieClip;
      
      private var o4438:MovieClip;
      
      private var o19077:MovieClip;
      
      private var o1541:MovieClip;
      
      private var o5407:TextField;
      
      private var o12674:TextField;
      
      private var o7767:TextField;
      
      protected var o11881:o15625;
      
      protected var o20005:o15625;
      
      protected var o9448:o15625;
      
      protected var o18220:o15625;
      
      protected var o7397:o15625;
      
      protected var o20166:o12671;
      
      protected var o2647:o12671;
      
      protected var o18297:o19496;
      
      protected var o20513:o19496;
      
      protected var o20353:o15625;
      
      protected var o20673:o15625;
      
      protected var o4904:o15625;
      
      private var o2926:o5024;
      
      private var o18757:o5024;
      
      private var o499:TextField;
      
      private var o17838:TextField;
      
      private var o5318:TextField;
      
      private var o715:TextField;
      
      private var o1435:TextField;
      
      protected var o7133:Vector.<o16733>;
      
      private var o10269:TextField;
      
      private var o17135:MovieClip;
      
      private var o8164:TextField;
      
      private var o6416:MovieClip;
      
      private var o15941:TextField;
      
      private var o19694:MovieClip;
      
      private var o3234:MovieClip;
      
      private var o13085:TextField;
      
      private var o7679:MovieClip;
      
      private var o4856:Vector.<MovieClip>;
      
      private var o2363:String;
      
      private var o9583:o12290;
      
      private var o14786:MovieClip;
      
      private var o17546:TextField;
      
      private var o19590:TextField;
      
      private var o8369:TextField;
      
      public var o16587:o20213;
      
      protected var o6023:o17904;
      
      private var o4992:MovieClip;
      
      private var o11575:Vector.<MovieClip>;
      
      private var o6569:int = 0;
      
      protected var o15898:o1907;
      
      protected var o205:o1907;
      
      protected var o2456:o18264;
      
      private var o5715:MovieClip;
      
      private var o18872:Number = 0;
      
      private var o19579:o4759;
      
      private var o3168:o4759;
      
      private var o20872:MovieClip;
      
      private var o6969:MovieClip;
      
      private var o19129:TextField;
      
      private var o601:TextField;
      
      private var o6083:MovieClip;
      
      private var o16514:MovieClip;
      
      private var o18682:MovieClip;
      
      private var o10126:MovieClip;
      
      private var o16149:MovieClip;
      
      private var o6314:MovieClip;
      
      private var o12019:MovieClip;
      
      private var o8437:MovieClip;
      
      private var o740:MovieClip;
      
      private var o20512:MovieClip;
      
      private var o19008:MovieClip;
      
      private var o2937:MovieClip;
      
      private var o2753:MovieClip;
      
      private var o2166:MovieClip;
      
      private var o20690:o37;
      
      private var o14910:Number = 0;
      
      private var o6934:MovieClip;
      
      private var o3337:MovieClip;
      
      private var o10927:MovieClip;
      
      private var o19512:Number = 1;
      
      public var o18795:o4896;
      
      protected var o11936:MovieClip;
      
      protected var o368:o5881;
      
      private var o11957:int = -1;
      
      private var o11799:Number = -1;
      
      private var o3206:MovieClip;
      
      private var o20047:MovieClip;
      
      private var o6623:MovieClip;
      
      private var o16437:MovieClip;
      
      private var o6851:String = null;
      
      private var o8387:o12290;
      
      private var o20226:MovieClip;
      
      private var o17739:o19192;
      
      protected var o6322:o15625;
      
      private var o18240:MovieClip;
      
      private var o17112:MovieClip;
      
      private var o10142:TextField;
      
      private var o15379:o14801;
      
      public var o10036:o6718;
      
      private var o8476:Boolean = false;
      
      private var o5242:Boolean = false;
      
      private var o11040:Boolean = false;
      
      private var o7477:Boolean = false;
      
      private var o19419:o14200;
      
      private var o9954:Vector.<o2084>;
      
      private var o8074:int = 0;
      
      private var o14858:Boolean = false;
      
      private var o9789:String;
      
      private var o18842:Number = -1;
      
      private var o1063:Number = -1;
      
      private var o9889:Boolean = true;
      
      private var o9750:Boolean = false;
      
      protected var o5306:Boolean = false;
      
      private var o16943:Timer;
      
      public function o12239()
      {
         o9954 = new Vector.<o2084>();
         o9789 = "";
         super();
         o19419 = o14200.o19505;
      }
      
      protected function get o6734() : Boolean
      {
         return false;
      }
      
      public function o16481(param1:String, param2:String, param3:int = -1) : void
      {
         if(o17739 == null)
         {
            o17739 = new o19192();
            o17739.o3880 = false;
            o17739.o16384(new GameEventObjectiveDialogAsset());
            this.o9642(o17739);
            o4519.o8116.o4812.ui.o2878.play(1);
            o4519.o8116.o4812.ui.o11449.play(1);
         }
         o17739.o12407(param1,param2,null);
         if(param3 == -1)
         {
            o17739.o1681();
         }
         else
         {
            o17739.o20695();
            o17739.o9614 = param3;
         }
      }
      
      public function o8471(param1:int) : void
      {
         if(o17739 == null)
         {
            o17739 = new o19192();
            o17739.o3880 = false;
            o17739.o16384(new GameEventObjectiveDialogAsset());
            this.o9642(o17739);
         }
         o17739.o12407("WAVE","",null);
         o17739.o13522(param1);
      }
      
      public function o4043(param1:int) : void
      {
         if(o17739 != null && o17739.o12514 == false)
         {
            o17739.o9614 = param1;
         }
      }
      
      public function o8283() : void
      {
         if(o17739 != null)
         {
            o17739.o9614 = -1;
            o17739.close();
         }
      }
      
      protected function o19472() : void
      {
         o6623.gotoAndPlay("in");
      }
      
      protected function o19451() : void
      {
         o3206.gotoAndPlay("in");
      }
      
      protected function o13509() : void
      {
         o20047.gotoAndPlay("in");
      }
      
      protected function get o6106() : Boolean
      {
         return false;
      }
      
      protected function o3941() : o17904
      {
         return new o17904();
      }
      
      protected function o7488() : o19152
      {
         return new o19152();
      }
      
      protected function o11106(param1:MovieClip) : void
      {
         this.o2926.o3700 = this.o2926.o3700;
      }
      
      protected function o3782(param1:MovieClip) : void
      {
         this.o18757.o3700 = this.o18757.o3700;
      }
      
      protected function o3592() : o20213
      {
         return new o20213();
      }
      
      protected function o10271(param1:Boolean) : void
      {
         if(!param1)
         {
            o1256(this.o19189,"");
         }
         this.o3220.visible = param1;
      }
      
      protected function o13471(param1:Boolean) : void
      {
         o7477 = true;
         if(!param1)
         {
            o1256(this.o10142,"");
         }
         else
         {
            o1256(this.o10142,"");
         }
         o17112.visible = param1;
      }
      
      protected function o7803(param1:int, param2:int = -1, param3:String = null) : void
      {
         var _loc4_:int = 0;
         var _loc7_:* = null;
         var _loc5_:int = 0;
         var _loc8_:* = "";
         if(param3 == null || param3 == "")
         {
            _loc8_ = "Score: ";
         }
         else
         {
            _loc8_ = param3;
         }
         if(param1 >= 0)
         {
            _loc8_ = _loc8_ + param1.toString();
         }
         if(param2 > 0)
         {
            _loc8_ = _loc8_ + ("/" + param2.toString());
         }
         o1256(this.o19189,_loc8_);
         if(o7477)
         {
            if(o15379)
            {
               _loc4_ = 0;
               o9954 = o14200.o19505.o202.o9954;
               var _loc10_:int = 0;
               var _loc9_:* = o14200.o19505.o202.o9954;
               for each(var _loc6_ in o14200.o19505.o202.o9954)
               {
                  if(!_loc6_.o7923)
                  {
                     _loc4_++;
                     continue;
                  }
                  break;
               }
               _loc7_ = o19419.o5292.o3907(o14200.o19505.o202.o18339);
               _loc5_ = _loc7_.o9111(o19419.o202.o9381() == false,o19419.o202.o9954.length,o19419.o202.o18339,o19419.o202.o8971,param1,_loc4_);
               if(o5242)
               {
                  o9303(_loc5_);
               }
               else
               {
                  o13532(_loc5_);
               }
               o3683();
               o8074 = _loc5_;
            }
         }
      }
      
      public function o1891(param1:int, param2:int) : int
      {
         if(param1 > param2)
         {
            return -1;
         }
         if(param1 < param2)
         {
            return 1;
         }
         return 0;
      }
      
      private function o9303(param1:int) : void
      {
         var _loc3_:* = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o15379.o9763;
         for each(var _loc2_ in o15379.o9763)
         {
            _loc3_ = _loc2_;
         }
         if(param1 > _loc3_ && param1 >= o8074)
         {
            o1256(o10142,"New Highest Score Reached: " + param1);
            o8476 = true;
         }
         else if(_loc3_ > 0)
         {
            o1256(o10142,"Highest Recored Score to Beat: " + _loc3_);
            o8476 = true;
         }
      }
      
      private function o13532(param1:int) : void
      {
         var _loc3_:* = 2147483647;
         var _loc5_:int = 0;
         var _loc4_:* = o15379.o9763;
         for each(var _loc2_ in o15379.o9763)
         {
            if(_loc2_ < _loc3_)
            {
               _loc3_ = _loc2_;
            }
         }
         if(_loc3_ == 2147483647 && param1 == 0)
         {
            o1256(o10142,"Score to Beat: 0");
         }
         else if(_loc3_ == 2147483647 && param1 >= 0)
         {
            _loc3_ = 0;
         }
         else
         {
            o1256(o10142,"Score to Beat: " + _loc3_);
         }
         if(param1 > _loc3_)
         {
            o8476 = true;
            o5242 = true;
         }
      }
      
      private function o3683() : void
      {
         if(o11040 && o18240.currentFrame == o18240.totalFrames)
         {
            o18240.gotoAndStop(0);
            o18240.visible = false;
         }
         if(o8476 && o11040 == false)
         {
            o18240.visible = true;
            o18240.gotoAndStop(0);
            o18240.play();
            o11040 = true;
            o8476 = false;
         }
      }
      
      private function o6329(param1:String, param2:Boolean = false) : o19496
      {
         var _loc3_:o19496 = new o19496();
         _loc3_.init(o8985.getChildByName(param1) as MovieClip);
         this.o5452(_loc3_);
         return _loc3_;
      }
      
      override protected function o154() : void
      {
         super.o154();
      }
      
      protected function o9043(param1:Boolean) : void
      {
         if(param1)
         {
            o19694.gotoAndStop("displayed");
         }
         else
         {
            o19694.gotoAndStop("hidden");
         }
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         var _loc7_:int = 0;
         var _loc11_:* = null;
         var _loc20_:int = 0;
         var _loc22_:* = null;
         var _loc10_:* = null;
         var _loc15_:int = 0;
         var _loc21_:* = null;
         var _loc9_:int = 0;
         var _loc18_:* = null;
         super.init(param1);
         this.o16989 = param2;
         var _loc5_:* = param1;
         o11936 = param1.getChildByName("movementTip") as MovieClip;
         o11936.visible = false;
         var _loc4_:MovieClip = param1.getChildByName("gradeAchievevedPanel") as MovieClip;
         o10036 = new o6718();
         o10036.init(_loc4_);
         o14400(_loc4_);
         this.o5452(o10036);
         o5342 = new o7662();
         o5342.o11925(param1.getChildByName("purchasePowerupsContainer") as MovieClip);
         o5342.o3880 = false;
         this.o5452(o5342);
         o14786 = _loc5_;
         o7750 = new o20565(this);
         o17579 = _loc5_.getChildByName("topLeft") as MovieClip;
         o8985 = _loc5_.getChildByName("top") as MovieClip;
         o10677 = _loc5_.getChildByName("topRight") as MovieClip;
         o7412 = _loc5_.getChildByName("bottomLeft") as MovieClip;
         o4438 = _loc5_.getChildByName("bottomRight") as MovieClip;
         o6322 = o7750.o17578("btnDisconnect");
         o6322.addEventListener("click",o19665,false,0,true);
         o6322.visible = false;
         var _loc24_:MovieClip = param1.getChildByName("powerUps") as MovieClip;
         o4856 = new Vector.<MovieClip>();
         _loc7_ = 0;
         while(_loc7_ < 6)
         {
            _loc11_ = _loc24_.getChildByName("powerUpIcon" + _loc7_.toString()) as MovieClip;
            _loc11_.gotoAndStop(1);
            _loc11_.visible = false;
            o4856.push(_loc11_);
            _loc7_++;
         }
         var _loc25_:MovieClip = o17579.getChildByName("miniMap") as MovieClip;
         if(o20738)
         {
            o16587 = this.o3592();
            o16587.o16384(_loc25_,param2);
            this.o5452(o16587);
         }
         o3220 = _loc5_.getChildByName("scoreContainer") as MovieClip;
         o19189 = o3220.getChildByName("scoreTxt") as TextField;
         o19189.text = "";
         o3220.visible = false;
         o18240 = _loc5_.getChildByName("highScoreAchievedAnimation") as MovieClip;
         o17112 = _loc5_.getChildByName("HighScoreContainer") as MovieClip;
         o10142 = o17112.getChildByName("scoreTxt") as TextField;
         o10142.text = "";
         o7477 = false;
         o17112.visible = false;
         o18240.visible = false;
         o19694 = o10677.getChildByName("turrentContainer") as MovieClip;
         o7679 = o19694.getChildByName("gunContainer") as MovieClip;
         o19077 = o8985.getChildByName("healthBar") as MovieClip;
         o1541 = o8985.getChildByName("energyBar") as MovieClip;
         o12674 = o8985.getChildByName("lblDebugHealth") as TextField;
         o7767 = o8985.getChildByName("lblDebugEnergy") as TextField;
         o5407 = o8985.getChildByName("lblMoney") as TextField;
         o20005 = o7750.o17578("btnPrevWeapon",o7679);
         o9448 = o7750.o17578("btnNextWeapon",o7679);
         o20166 = o7750.o14346("btnAmmo",o8985);
         o2647 = o7750.o14346("btnPremium",o8985);
         o20166.o8737 = o4663;
         o2647.o8737 = o3142;
         o1435 = o7679.getChildByName("lblAmmo") as TextField;
         o2926 = o7750.o4245("imgWeaponContainer",o7679);
         o17546 = o7679.getChildByName("lblWeaponHotkeys") as TextField;
         o499 = o7679.getChildByName("lblWeaponHeading") as TextField;
         o10269 = o7679.getChildByName("lblInfinity") as TextField;
         o17135 = o7679.getChildByName("damageTypeIcon") as MovieClip;
         o17135.gotoAndStop(2);
         o8164 = o7679.getChildByName("lblPremiumAmmo") as TextField;
         o6934 = o7679.getChildByName("ammoClipBarPremium") as MovieClip;
         o3337 = o7679.getChildByName("ammoClipBar") as MovieClip;
         o6934.stop();
         o3337.stop();
         o3234 = o19694.getChildByName("turrentButtonGroup") as MovieClip;
         o13085 = o3234.getChildByName("turretsCounter") as TextField;
         o4904 = o7750.o17578("btnDropTurret",o3234);
         var _loc17_:MovieClip = o3234.getChildByName("dropTurretButtonDisplay") as MovieClip;
         o4904.o17379 = _loc17_;
         _loc17_.gotoAndStop(1);
         if(o4904)
         {
            o4904.addEventListener("click",o20335,false,0,true);
         }
         o17838 = o3234.getChildByName("lblSupportHeading") as TextField;
         o18220 = o7750.o17578("btnPrev",o3234);
         o7397 = o7750.o17578("btnNext",o3234);
         o18757 = o7750.o4245("imgSupportContainer",o3234);
         o5318 = o3234.getChildByName("lblSupportQuantity") as TextField;
         o5318.mouseEnabled = false;
         o715 = o3234.getChildByName("lblSupportQuantityExtra") as TextField;
         o715.mouseEnabled = false;
         o4517();
         o8369 = o3234.getChildByName("lblTurretHotkeys") as TextField;
         o11881 = o7750.o17578("btnMenu",o17579);
         o11881.addEventListener("click",o319,false,0,true);
         o4992 = o7679.getChildByName("reloading") as MovieClip;
         o4992.visible = true;
         o6416 = o17579.getChildByName("timer") as MovieClip;
         o15941 = o6416.getChildByName("lblTimer") as TextField;
         o16437 = o17579.getChildByName("timerCountdown") as MovieClip;
         o2937 = param1.getChildByName("objectivesLastStand") as MovieClip;
         o2753 = param1.getChildByName("objectivesVIP") as MovieClip;
         o2753.gotoAndStop(1);
         o2166 = param1.getChildByName("objectivesSurvivors") as MovieClip;
         o10927 = param1.getChildByName("objectivesVIPHit") as MovieClip;
         o10927.stop();
         this.o14400(o2937);
         this.o14400(o2753);
         this.o14400(o2166);
         this.o14400(o10927);
         this.o10227();
         this.o16740();
         this.o18329();
         o7133 = new Vector.<o16733>();
         _loc20_ = 0;
         while(_loc20_ < 4)
         {
            _loc22_ = new o16733();
            _loc22_.init(o7412.getChildByName("btnSkill" + _loc20_) as MovieClip);
            _loc22_.o7023 = _loc20_;
            _loc22_.visible = false;
            this.o5452(_loc22_);
            o7133.push(_loc22_);
            _loc22_.addEventListener("click",o5696,false,0,true);
            _loc20_++;
         }
         o18297 = o6329("btnMoreFragGrenades");
         o20513 = o6329("btnMoreCryoGrenades");
         o8387 = o7750.o15961("btnMoreSasCreds","$123,456",o8985);
         o8387.addEventListener("click",o2951,false,0,true);
         o20353 = o7750.o17578("btnFragGrenade",o4438);
         o20673 = o7750.o17578("btnCryoGrenade",o4438);
         o20740(o20353,0);
         o20740(o20673,0);
         var _loc13_:MovieClip = o20353.asset.getChildByName("iconV1") as MovieClip;
         var _loc19_:MovieClip = o20353.asset.getChildByName("iconV2") as MovieClip;
         _loc13_.visible = o6106 == false;
         _loc19_.visible = o6106;
         o18297.addEventListener("click",o6130,false,0,true);
         o20513.addEventListener("click",o19390,false,0,true);
         o19590 = o4438.getChildByName("lblUseGrenadeHotkey") as TextField;
         o20166.addEventListener("click",o8295,false,0,true);
         o2647.addEventListener("click",o8799,false,0,true);
         o20005.addEventListener("click",o3222,false,0,true);
         o9448.addEventListener("click",o7588,false,0,true);
         o18220.addEventListener("click",o11645,false,0,true);
         o7397.addEventListener("click",o18812,false,0,true);
         _loc10_ = o7412.getChildByName("btnDebug") as MovieClip;
         if(_loc10_ != null)
         {
            o8867(_loc10_);
            o7412.removeChild(_loc10_);
         }
         this.o6023 = o3941();
         o6023.o16384(o17579.getChildByName("combot") as MovieClip,false);
         o6023.o6353 = o9801;
         this.o5452(o6023);
         o11575 = new Vector.<MovieClip>();
         _loc15_ = 0;
         while(_loc15_ < 6)
         {
            _loc21_ = o4438.getChildByName("strongBox" + _loc15_.toString()) as MovieClip;
            _loc21_.gotoAndStop(0);
            (_loc21_.getChildAt(0) as MovieClip).gotoAndStop(0);
            _loc21_.mouseEnabled = false;
            _loc21_.mouseChildren = false;
            _loc21_.mouseEnabled = false;
            _loc21_.visible = false;
            o11575.push(_loc21_);
            _loc15_++;
         }
         o2456 = new o18264();
         o2456.o3880 = false;
         o2456.o6353 = o3367;
         o20226 = param1.getChildByName("objectiveDialog") as MovieClip;
         o2456.init(o20226);
         this.o9642(o2456);
         o14400(o20226);
         o5715 = o7679.getChildByName("ammoLow") as MovieClip;
         o5715.stop();
         o5715.visible = false;
         o19579 = new o4759(param1.getChildByName("playerDamage") as MovieClip);
         o3168 = new o4759(param1.getChildByName("playerHealthUp") as MovieClip);
         o20872 = param1.getChildByName("zombieInfo") as MovieClip;
         o6969 = o20872.getChildByName("healthBar") as MovieClip;
         o6969.gotoAndStop(10);
         o19129 = o20872.getChildByName("lblZombieTypeAndVersion") as TextField;
         o601 = o20872.getChildByName("lblSpecialProperties") as TextField;
         param1.addEventListener("addedToStage",o343,false,0,true);
         param1.mouseEnabled = false;
         o20872.mouseChildren = false;
         o20872.mouseEnabled = false;
         o13787();
         o6083 = param1.getChildByName("outOfAmmoMessage") as MovieClip;
         o16514 = param1.getChildByName("reloadMessage") as MovieClip;
         o18682 = param1.getChildByName("ammoLowMessage") as MovieClip;
         o10126 = param1.getChildByName("infoMessage") as MovieClip;
         o12019 = param1.getChildByName("extraConsumablesMessage") as MovieClip;
         o8437 = param1.getChildByName("skillTutorial") as MovieClip;
         o740 = param1.getChildByName("swapWeaponsMessage") as MovieClip;
         o20512 = param1.getChildByName("throwFragMessage") as MovieClip;
         o19008 = param1.getChildByName("throwCryoMessage") as MovieClip;
         o6083.gotoAndStop(0);
         o8437.gotoAndStop(0);
         o16514.gotoAndStop(0);
         o18682.gotoAndStop(0);
         o10126.gotoAndStop(0);
         o12019.gotoAndStop(0);
         o740.gotoAndStop(0);
         o20512.gotoAndStop(0);
         o19008.gotoAndStop(0);
         o6083.visible = false;
         o8437.visible = false;
         o16514.visible = false;
         o18682.visible = false;
         o10126.visible = false;
         o12019.visible = false;
         o740.visible = false;
         o20512.visible = false;
         o19008.visible = false;
         o16149 = param1.getChildByName("turretDisabledMessage") as MovieClip;
         o16149.gotoAndStop(2);
         o16149.visible = false;
         o6083.mouseChildren = false;
         o8437.mouseChildren = false;
         o16514.mouseChildren = false;
         o18682.mouseChildren = false;
         o10126.mouseChildren = false;
         o12019.mouseChildren = false;
         o740.mouseChildren = false;
         o20512.mouseChildren = false;
         o19008.mouseChildren = false;
         o6083.mouseEnabled = false;
         o8437.mouseEnabled = false;
         o16514.mouseEnabled = false;
         o18682.mouseEnabled = false;
         o10126.mouseEnabled = false;
         o12019.mouseEnabled = false;
         o740.mouseEnabled = false;
         o20512.mouseEnabled = false;
         o19008.mouseEnabled = false;
         ((o10126.getChildByName("message") as MovieClip).getChildByName("lblMessage") as TextField).mouseEnabled = false;
         o16149.mouseChildren = false;
         o16149.mouseEnabled = false;
         var _loc23_:MovieClip = new MovieClip();
         this.asset.addChildAt(_loc23_,0);
         o20690 = new o37(_loc23_);
         o20690.init();
         var _loc8_:Vector.<MovieClip> = new Vector.<MovieClip>();
         _loc8_.push(o11881.asset);
         _loc8_.push(o18220.asset);
         _loc8_.push(o7397.asset);
         _loc8_.push(o20005.asset);
         _loc8_.push(o9448.asset);
         _loc8_.push(o4904.asset);
         _loc8_.push(o20166.asset);
         _loc8_.push(o2647.asset);
         _loc8_.push(o8387.asset);
         if(o9583 != null)
         {
            _loc8_.push(o9583.asset);
         }
         _loc8_.push(o6023.o6871.asset);
         _loc8_.push(o18297.asset);
         _loc8_.push(o20513.asset);
         _loc8_.push(o20353.asset);
         _loc8_.push(o20673.asset);
         var _loc27_:int = 0;
         var _loc26_:* = o7133;
         for each(var _loc6_ in o7133)
         {
            _loc8_.push(_loc6_.asset);
         }
         o17226(o17579,_loc8_);
         o17226(o8985,_loc8_);
         o17226(o10677,_loc8_);
         o17226(o7412,_loc8_);
         o17226(o4438,_loc8_);
         var _loc29_:int = 0;
         var _loc28_:* = _loc8_;
         for each(var _loc14_ in _loc8_)
         {
            o1330(_loc14_);
         }
         _loc9_ = 0;
         while(_loc9_ < 4)
         {
            o14526(_loc9_);
            _loc9_++;
         }
         o18795 = o19488();
         var _loc12_:MovieClip = param1.getChildByName("chatBox") as MovieClip;
         o18795.o16384(_loc12_,param2,0);
         o368 = new o5881(param1.getChildByName("movementTip") as MovieClip);
         o3206 = param1.getChildByName("notEnoughCash1") as MovieClip;
         o20047 = param1.getChildByName("notEnoughCash2") as MovieClip;
         o6623 = param1.getChildByName("oneAssaultTeamMessage") as MovieClip;
         o3206.gotoAndStop("Stop");
         o20047.gotoAndStop("Stop");
         o6623.gotoAndStop("Stop");
         var _loc31_:int = 0;
         var _loc30_:* = o14200.o19505.o5292.o16679.o12738;
         for each(var _loc16_ in o14200.o19505.o5292.o16679.o12738)
         {
            if(_loc16_ && _loc16_.o3514())
            {
               _loc18_ = _loc16_.o11392 as o14128;
               if(_loc18_)
               {
                  _loc16_ = _loc16_;
                  if(!(int(_loc18_.o9854) - 15))
                  {
                     if(o4519.o13206.o2685.o4326 == _loc18_.o15421)
                     {
                        o15379 = _loc16_;
                     }
                  }
               }
            }
         }
         this.o1258();
      }
      
      private function o14400(param1:MovieClip) : void
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc2_:int = param1.numChildren;
         param1.mouseChildren = false;
         param1.mouseEnabled = false;
         _loc5_ = 0;
         while(_loc5_ < _loc2_)
         {
            _loc6_ = param1.getChildAt(_loc5_);
            if(_loc6_ is MovieClip)
            {
               _loc4_ = _loc6_ as MovieClip;
               o14400(_loc4_);
            }
            else if(_loc6_ is TextField)
            {
               _loc3_ = _loc6_ as TextField;
               _loc3_.mouseEnabled = false;
            }
            _loc5_++;
         }
      }
      
      protected function o19488() : o4896
      {
         return new o4896();
      }
      
      private function o1330(param1:MovieClip) : void
      {
         param1.mouseEnabled = true;
         var _loc2_:MovieClip = param1.parent as MovieClip;
         while(_loc2_ != null)
         {
            _loc2_.mouseChildren = true;
            _loc2_ = _loc2_.parent as MovieClip;
         }
      }
      
      private function o17226(param1:MovieClip, param2:Vector.<MovieClip>) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc3_:* = null;
         if(param2.indexOf(param1) >= 0)
         {
            return;
         }
         param1.mouseEnabled = false;
         param1.mouseChildren = false;
         _loc4_ = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc5_ = param1.getChildAt(_loc4_);
            if(_loc5_ is MovieClip)
            {
               o17226(_loc5_ as MovieClip,param2);
            }
            else if(_loc5_ is TextField)
            {
               _loc3_ = _loc5_ as TextField;
               _loc3_.mouseEnabled = false;
            }
            _loc4_++;
         }
      }
      
      private function o343(param1:Event) : void
      {
         asset.removeEventListener("addedToStage",o343);
         asset.parent.mouseEnabled = false;
         asset.parent.parent.mouseEnabled = false;
         o8867(o20872);
         var _loc2_:Point = o20872.localToGlobal(new Point(0,0));
         o20872.parent.removeChild(o20872);
         asset.stage.addChild(o20872);
         o20872.x = _loc2_.x;
         o20872.y = _loc2_.y;
      }
      
      private function o8611(param1:MovieClip) : void
      {
         this.o11692(param1);
      }
      
      private function o14849(param1:MovieClip, param2:String = null) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         param1.visible = true;
         param1.gotoAndPlay(2);
         o8611(param1);
         if(param2 != null)
         {
            _loc3_ = param1.getChildByName("message") as MovieClip;
            _loc4_ = _loc3_.getChildByName("lblMessage") as TextField;
            o1256(_loc4_,param2);
         }
      }
      
      protected function o12899(param1:Boolean) : void
      {
         if(param1 && o5715.visible == false)
         {
            o5715.gotoAndPlay(1);
            o5715.visible = true;
         }
         else if(param1 == false && o5715.visible)
         {
            o5715.stop();
            o5715.visible = false;
         }
      }
      
      public function o13787() : void
      {
         o20872.visible = false;
      }
      
      public function o20652(param1:String, param2:uint, param3:Number, param4:Vector.<String>) : void
      {
         o20872.visible = true;
         var _loc5_:int = 10 - param3 * 10 + 1;
         o6969.gotoAndStop(_loc5_);
         o19129.textColor = param2;
         o601.textColor = param2;
         o1256(o19129,param1);
         o1256(o601,param4.join("\n"));
      }
      
      protected function o628() : void
      {
      }
      
      public function o18140(param1:String) : void
      {
         o2456.o13483("",param1,o628);
      }
      
      private function o3367() : void
      {
         o6023.o15691();
      }
      
      private function o9801() : void
      {
         if(o14858)
         {
            o2456.o13042("",o9789);
            o14858 = false;
         }
      }
      
      public function o18830(param1:String) : void
      {
         if(param1 == null || param1.length == 0 || param1 == "\r")
         {
            o14858 = false;
            o2456.close();
         }
         else if(o6023.visible)
         {
            o14858 = true;
            o9789 = param1;
         }
         else
         {
            o2456.o13042("",param1);
         }
      }
      
      protected function o10324() : void
      {
      }
      
      protected function o11355() : void
      {
      }
      
      protected function o3609() : void
      {
         o15898.o1602();
         o15898 = null;
      }
      
      protected function o14811(param1:int) : void
      {
         o15898 = new o1907();
         o15898.o12767(new GameContinueDialogAsset(),param1);
         this.o9642(o15898);
      }
      
      protected function o5643(param1:Boolean = true) : void
      {
         if(o205 != null)
         {
            o205.o1602(param1);
            o205 = null;
         }
      }
      
      protected function o7365(param1:int) : void
      {
         o205 = new o1907();
         o205.o12767(new InstantReviveDialogAsset(),param1);
         this.o9642(o205);
      }
      
      protected function o19224(param1:int) : void
      {
         o205 = new o1907();
         o205.o8543 = true;
         o205.o12767(new InstantReviveTokensDialog(),param1);
         this.o9642(o205);
      }
      
      public function o6831(param1:int) : void
      {
         if(o6569 >= o11575.length)
         {
            return;
         }
         var _loc2_:MovieClip = o11575[o6569];
         _loc2_.visible = true;
         _loc2_.gotoAndStop(param1);
         (_loc2_.getChildAt(0) as MovieClip).gotoAndStop(0);
         var _loc3_:MovieClip = _loc2_.getChildAt(0) as MovieClip;
         _loc2_.mouseEnabled = false;
         _loc2_.mouseChildren = false;
         _loc2_.enabled = false;
         _loc3_.mouseEnabled = false;
         _loc3_.mouseChildren = false;
         _loc3_.enabled = false;
         o6569 = Number(o6569) + 1;
      }
      
      private function o5696(param1:MouseEvent) : void
      {
         var _loc2_:o16733 = param1.target as o16733;
         o17759(_loc2_.o7023);
      }
      
      protected function o17759(param1:int) : void
      {
      }
      
      protected function o6130(param1:MouseEvent) : void
      {
         o16779();
      }
      
      protected function o19390(param1:MouseEvent) : void
      {
         o9140();
      }
      
      public function o9419(param1:String, param2:String, param3:String) : void
      {
         o1256(o17546,param1);
         o1256(o19590,"");
         o1256(o8369,param3);
      }
      
      protected function o4748() : void
      {
         o8272(false);
      }
      
      protected function o7754() : void
      {
         o8272(false);
      }
      
      protected function o8272(param1:Boolean) : void
      {
      }
      
      public function o1257(param1:int, param2:Number) : void
      {
      }
      
      public function o15582(param1:int) : Boolean
      {
         var _loc2_:Number = o7133[param1].o4473;
         return _loc2_ >= 1;
      }
      
      public function o11197(param1:int, param2:int, param3:String, param4:String) : void
      {
         var _loc5_:o16733 = o7133[param1];
         _loc5_.visible = true;
         _loc5_.o10798 = param2;
         _loc5_.o8757 = param3;
         _loc5_.o11566 = param4;
         _loc5_.o1258();
      }
      
      public function o14579(param1:int, param2:int, param3:String) : void
      {
         var _loc4_:o16733 = o7133[param1];
         _loc4_.visible = true;
         _loc4_.o10798 = param2;
         _loc4_.o8757 = "";
         (_loc4_.asset.getChildByName("greyBox") as MovieClip).visible = false;
         _loc4_.o11566 = param3;
         _loc4_.o1258();
      }
      
      override public function o13640() : void
      {
         o8867(o20872);
         o20872.parent.removeChild(o20872);
         o20690.o13640();
         if(o4904)
         {
            o4904.removeEventListener("click",o20335);
         }
         o11881.removeEventListener("click",o319);
         var _loc3_:int = 0;
         var _loc2_:* = o7133;
         for each(var _loc1_ in o7133)
         {
            _loc1_.removeEventListener("click",o5696);
         }
         o18297.removeEventListener("click",o6130);
         o20513.removeEventListener("click",o19390);
         o20166.removeEventListener("click",o8295);
         o2647.removeEventListener("click",o8799);
         o20005.removeEventListener("click",o3222);
         o9448.removeEventListener("click",o7588);
         o18220.removeEventListener("click",o11645);
         o7397.removeEventListener("click",o18812);
         o6322.removeEventListener("click",o19665);
         o8387.removeEventListener("click",o2951);
         o368.o13640();
         o19579.o13640();
         o3168.o13640();
         o18795.o13640();
         o7750.o13640();
         o16604 = false;
         o7750 = null;
         o16989 = null;
         o17579 = null;
         o8985 = null;
         o10677 = null;
         o7412 = null;
         o4438 = null;
         o19077 = null;
         o1541 = null;
         o5407 = null;
         o12674 = null;
         o7767 = null;
         o11881 = null;
         o20005 = null;
         o9448 = null;
         o18220 = null;
         o7397 = null;
         o20166 = null;
         o2647 = null;
         o18297 = null;
         o20513 = null;
         o4856 = null;
         o4904 = null;
         o2926 = null;
         o18757 = null;
         o499 = null;
         o17838 = null;
         o5318 = null;
         o715 = null;
         o1435 = null;
         o7133 = null;
         o10269 = null;
         o17135 = null;
         o8164 = null;
         o6416 = null;
         o15941 = null;
         o19694 = null;
         o3234 = null;
         o13085 = null;
         o2363 = null;
         o9583 = null;
         o14786 = null;
         o17546 = null;
         o19590 = null;
         o8369 = null;
         o16587 = null;
         o6023 = null;
         o4992 = null;
         o11575 = null;
         o6569 = 0;
         o15898 = null;
         o205 = null;
         o2456 = null;
         o5715 = null;
         o19579 = null;
         o3168 = null;
         o20872 = null;
         o6969 = null;
         o19129 = null;
         o601 = null;
         o6083 = null;
         o8437 = null;
         o740 = null;
         o20512 = null;
         o19008 = null;
         o12019 = null;
         o16514 = null;
         o18682 = null;
         o10126 = null;
         o16149 = null;
         o2937 = null;
         o2753 = null;
         o2166 = null;
         o20690 = null;
         o18795 = null;
         o11936 = null;
         o368 = null;
         o16437 = null;
         o6851 = null;
         o7679 = null;
         o8387 = null;
         o20226 = null;
         o3206 = null;
         o20047 = null;
         o6623 = null;
         o6314 = null;
         o3220 = null;
         o19189 = null;
         o18240 = null;
         o17112 = null;
         o10142 = null;
         o17739 = null;
         o6322 = null;
         o5342 = null;
         o10036 = null;
         super.o13640();
      }
      
      private function o3222(param1:MouseEvent) : void
      {
         o73();
      }
      
      private function o7588(param1:MouseEvent) : void
      {
         o4795();
      }
      
      private function o11645(param1:MouseEvent) : void
      {
         o6914();
      }
      
      private function o18812(param1:MouseEvent) : void
      {
         o2340();
      }
      
      private function o8295(param1:MouseEvent) : void
      {
         o7349();
      }
      
      private function o8799(param1:MouseEvent) : void
      {
         o12641();
      }
      
      protected function o4287() : void
      {
         o16989.screen = 5;
      }
      
      protected function o9723() : void
      {
         var _loc1_:o19152 = this.o7488();
         _loc1_.o16384(new GameOptionsDialogAsset(),this,this.o16989);
         this.o9642(_loc1_);
         _loc1_.o9072(null);
      }
      
      private function o319(param1:MouseEvent) : void
      {
         o9723();
      }
      
      private function o3802(param1:MovieClip, param2:Number, param3:Number) : void
      {
         var _loc5_:* = Number(param2 / param3);
         if(_loc5_ <= 0)
         {
            _loc5_ = 0.001;
         }
         else if(_loc5_ > 1)
         {
            _loc5_ = 1;
         }
         var _loc4_:int = _loc5_ * 99 + 1;
         if(param1.currentFrame != _loc4_)
         {
            param1.gotoAndStop(_loc4_);
         }
      }
      
      protected function o19792(param1:Number, param2:Number) : void
      {
         o3802(this.o1541,param1,param2);
         if(param1 != o11799)
         {
            o1256(o7767,o16724.o10417(Math.round(param1)) + "/" + o16724.o10417(Math.round(param2)));
         }
         o11799 = param1;
      }
      
      protected function o1290(param1:Number, param2:Number) : void
      {
         o3802(this.o19077,param1,param2);
         var _loc3_:* = Number(param1 / param2);
         if(_loc3_ <= 0)
         {
            _loc3_ = 0.001;
         }
         else if(_loc3_ > 1)
         {
            _loc3_ = 1;
         }
         var _loc4_:int = _loc3_ * 100;
         if(o18842 != param1 || o1063 != param2)
         {
            o1256(o12674,o16724.o10417(Math.round(param1)) + "/" + o16724.o10417(Math.round(param2)));
         }
         o18842 = param1;
         o1063 = param2;
      }
      
      protected function o13080(param1:int) : void
      {
         var _loc2_:* = null;
         if(param1 != o11957)
         {
            _loc2_ = "$" + o16724.o10417(param1);
            o1256(o5407,_loc2_);
            o8387.o13586 = _loc2_;
         }
         o11957 = param1;
      }
      
      protected function o5127(param1:String, param2:DisplayObject, param3:int) : void
      {
         if(o499 != null)
         {
            o1256(this.o499,param1);
         }
         this.o2926.o3700 = param2;
         o13010(o17135,param3);
      }
      
      protected function o764(param1:String, param2:DisplayObject, param3:int, param4:int) : void
      {
         if(o17838 != null)
         {
            o1256(this.o17838,param1);
         }
         this.o18757.o3700 = param2;
         o1256(o5318,param3.toString());
         o715.visible = param4 > 0;
         if(o715.visible)
         {
            o1256(o715,"+" + param4.toString());
         }
      }
      
      protected function o14383(param1:String, param2:int, param3:int, param4:int, param5:int) : void
      {
         this.o20740(o20353,param5);
         o18297.o7658(param1,param2,param3,param4);
         o1256(o20353.asset.getChildByName("lblQty") as TextField,param2.toString());
      }
      
      protected function o20742(param1:String, param2:int, param3:int, param4:int, param5:int) : void
      {
         this.o20740(o20673,param5);
         o20513.o7658(param1,param2,param3,param4);
         o1256(o20673.asset.getChildByName("lblQty") as TextField,param2.toString());
      }
      
      protected function o964(param1:int, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Number, param7:int) : void
      {
         o20166.enabled = param4 == false;
         if(param3)
         {
            param4 = false;
         }
         var _loc9_:String = o16724.o10417(param2);
         var _loc8_:* = param4;
         if(param4)
         {
            _loc9_ = "infinity";
         }
         param4 = false;
         o10269.visible = param4;
         o1435.visible = param4 == false && param3 == false;
         o8164.visible = param4 == false && param3;
         o3337.visible = o1435.visible;
         o6934.visible = o8164.visible;
         var _loc11_:Number = param1 / param7;
         var _loc12_:int = 1 + (1 - _loc11_) * 99;
         if(!param4)
         {
            if(param3)
            {
               o1256(this.o8164,o16724.o10417(param1) + "/" + _loc9_);
               if(o6934.currentFrame != _loc12_)
               {
                  o6934.gotoAndStop(_loc12_);
               }
            }
            else
            {
               o1256(this.o1435,o16724.o10417(param1) + "/" + _loc9_);
               if(o3337.currentFrame != _loc12_)
               {
                  o3337.gotoAndStop(_loc12_);
               }
            }
         }
         var _loc10_:int = param6 * 49 + 1;
         if(_loc10_ > 50)
         {
            _loc10_ = 50;
         }
         if(param5)
         {
            o13010(this.o4992,_loc10_);
         }
         this.o4992.visible = param5;
      }
      
      protected function o17641(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         o6416.visible = param1 != null;
         if(param1 != null)
         {
            if((param1.indexOf("00:10") == 0 || param1.indexOf("00:0") == 0) && param2)
            {
               o6416.visible = false;
               o16437.visible = true;
               if(o6851 != param1)
               {
                  _loc4_ = 0;
                  if(param1.indexOf("00:10") == 0)
                  {
                     _loc4_ = 10;
                  }
                  else
                  {
                     _loc3_ = param1.substring(4,5);
                     _loc4_ = parseInt(_loc3_);
                  }
                  o16437.gotoAndPlay("countdown" + _loc4_.toString());
               }
            }
            else
            {
               o16437.visible = false;
            }
         }
         else
         {
            o16437.visible = false;
         }
         if(o15941.visible)
         {
            o1256(o15941,param1);
         }
         o6851 = param1;
      }
      
      protected function o16779() : void
      {
      }
      
      protected function o9140() : void
      {
      }
      
      protected function o7349() : void
      {
      }
      
      protected function o12641() : void
      {
      }
      
      protected function o73() : void
      {
      }
      
      protected function o4795() : void
      {
      }
      
      protected function o6914() : void
      {
      }
      
      protected function o2340() : void
      {
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o674();
         super.o14009(param1,param2,param3,param4);
      }
      
      public function o5147() : void
      {
         o18220.visible = true;
         o7397.visible = true;
         o4904.visible = true;
         if(o9889)
         {
            o19694.gotoAndStop("displayed");
            o9889 = false;
         }
         if(o19694.currentFrameLabel != "displayed" && o19694.currentFrameLabel != "Stop1")
         {
            o19694.gotoAndPlay("display");
         }
      }
      
      public function o4517() : void
      {
         o18220.visible = false;
         o7397.visible = false;
         o4904.visible = false;
         if(o19694.currentFrameLabel != "hidden" && o19694.currentFrameLabel != "Stop2")
         {
            o19694.gotoAndPlay("hide");
         }
      }
      
      public function o3671(param1:Boolean) : void
      {
      }
      
      public function o11084(param1:Number, param2:Number) : void
      {
      }
      
      public function o1526(param1:String, param2:Number, param3:Number) : MovieClip
      {
         return o20690.o1526(param1,param2,param3);
      }
      
      public function o12105(param1:int, param2:Number, param3:Number) : MovieClip
      {
         return o20690.o12105(param1,param2,param3);
      }
      
      public function o313(param1:Number, param2:Number) : void
      {
         o20690.o313(param1,param2);
      }
      
      public function o15359(param1:Number, param2:Number) : void
      {
         o20690.o15359(param1,param2);
      }
      
      public function o4412(param1:Number, param2:Number) : void
      {
         o20690.o4412(param1,param2);
      }
      
      private function o10408() : void
      {
         o18872 = 1.5;
      }
      
      public function o18524(param1:Number, param2:Number) : void
      {
         if(o18872 > 0)
         {
            return;
         }
         o20690.o18524(param1,param2);
         o10408();
      }
      
      public function o12132(param1:Number, param2:Number) : void
      {
         if(o18872 > 0)
         {
            return;
         }
         o20690.o12132(param1,param2);
         o10408();
      }
      
      public function o11848(param1:Number, param2:Number) : void
      {
         if(o18872 > 0)
         {
            return;
         }
         o20690.o11848(param1,param2);
         o10408();
      }
      
      public function o17681(param1:Number, param2:Number) : void
      {
         if(o18872 > 0)
         {
            return;
         }
         o20690.o17681(param1,param2);
         o10408();
      }
      
      public function o13973(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:int = 1;
         var _loc6_:int = 2;
         var _loc8_:int = 3;
         var _loc7_:int = 4;
         var _loc4_:int = 5;
         if(param1 == _loc5_)
         {
            o11848(param2,param3);
         }
         else if(param1 == _loc6_)
         {
            o17681(param2,param3);
         }
         else if(param1 == _loc8_)
         {
            o12132(param2,param3);
         }
         else if(param1 == _loc7_)
         {
            o18524(param2,param3);
         }
      }
      
      public function o18087(param1:Number, param2:Number) : void
      {
         o20690.o9105(param1,param2);
      }
      
      private function o20335(param1:MouseEvent) : void
      {
         o8801();
      }
      
      protected function o14734(param1:MouseEvent) : void
      {
         this.o5147();
      }
      
      private function o1895(param1:MouseEvent) : void
      {
         this.o4517();
      }
      
      protected function o8801() : void
      {
      }
      
      protected function o995(param1:Number, param2:Number, param3:Number) : void
      {
         o19579.o7658(param1);
         o3168.o7658(param1);
         if(o18872 > 0)
         {
            o18872 = o18872 - param1;
         }
         if(o14910 > 0)
         {
            o14910 = o14910 - param1;
            if(o14910 <= 0)
            {
               o4517();
            }
         }
      }
      
      protected function o10367() : void
      {
         o19579.o4526();
      }
      
      public function o15256() : void
      {
         o3168.o4526();
      }
      
      protected function o14468() : void
      {
         o14849(o6083);
      }
      
      protected function o8600() : void
      {
         o14849(o8437);
      }
      
      protected function o370() : void
      {
         o14849(o16514);
      }
      
      protected function o5110() : void
      {
         o14849(o18682);
      }
      
      public function o4998(param1:String) : void
      {
         o16149.visible = true;
         o16149.gotoAndPlay(2);
         var _loc2_:TextField = o16149.getChildByName("info") as TextField;
         _loc2_.text = param1;
      }
      
      public function o1123() : void
      {
         o14849(o740);
      }
      
      public function o18231() : void
      {
         o14849(o20512);
      }
      
      public function o196() : void
      {
         o14849(o19008);
      }
      
      protected function o16911() : void
      {
         o8611(o10126);
         o8611(o6083);
         o8611(o16514);
         o8611(o18682);
         o8611(o8437);
         o8611(o740);
         o8611(o20512);
         o8611(o19008);
      }
      
      protected function o5845() : void
      {
         o2937.visible = true;
      }
      
      protected function o10227() : void
      {
         o2937.visible = false;
         o2937.gotoAndStop(1);
      }
      
      protected function o17336() : void
      {
         o2753.visible = true;
         o10927.visible = true;
         o10927.gotoAndStop(1);
      }
      
      protected function o16740() : void
      {
         o2753.visible = false;
         o10927.visible = false;
         o10927.gotoAndStop(1);
         var _loc1_:MovieClip = o2753.getChildByName("healthBar") as MovieClip;
         _loc1_.gotoAndStop(1);
      }
      
      public function o2944(param1:String) : void
      {
         o2753.visible = true;
         o2753.gotoAndStop(param1);
         o10927.visible = true;
         o10927.gotoAndStop(1);
      }
      
      public function o1615() : void
      {
         o2753.visible = false;
         o10927.visible = false;
         o10927.gotoAndStop(1);
         var _loc1_:MovieClip = o2753.getChildByName("healthBar") as MovieClip;
         _loc1_.gotoAndStop(1);
      }
      
      protected function o16774() : void
      {
         o2166.visible = true;
      }
      
      protected function o18329() : void
      {
         o2166.visible = false;
         o2166.gotoAndStop(1);
      }
      
      protected function o19623(param1:int, param2:int, param3:int) : void
      {
         if(o2937.visible == false)
         {
            o5845();
         }
         var _loc4_:TextField = o2937.getChildByName("lblWave") as TextField;
         var _loc5_:TextField = o2937.getChildByName("lblLives") as TextField;
         o1256(_loc4_,"Wave " + param1.toString() + "/" + param2.toString());
         o1256(_loc5_,param3.toString() + " Lives");
      }
      
      protected function o19764(param1:Number) : void
      {
         if(o2753.visible == false)
         {
            o17336();
         }
         var _loc3_:MovieClip = o2753.getChildByName("healthBar") as MovieClip;
         var _loc2_:int = 11 - Math.ceil(param1 * 10);
         _loc3_.gotoAndStop(_loc2_);
         if(param1 < o19512)
         {
            o10927.gotoAndPlay(2);
         }
         o19512 = param1;
      }
      
      public function o19756(param1:Number) : void
      {
         o19764(param1);
      }
      
      protected function o15190(param1:int, param2:int, param3:int) : void
      {
         if(o2166.visible == false)
         {
            o16774();
         }
         var _loc6_:TextField = o2166.getChildByName("lblSurvivors") as TextField;
         o1256(_loc6_,param2.toString() + " Unknown");
         var _loc4_:TextField = o2166.getChildByName("lblRescued") as TextField;
         o1256(_loc4_,param1.toString() + " Rescued");
         var _loc5_:TextField = o2166.getChildByName("lblKilled") as TextField;
         o1256(_loc5_,param3.toString() + " Killed");
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
      
      public function o17165(param1:int, param2:String, param3:int, param4:Vector.<int>, param5:int, param6:Boolean, param7:Boolean) : void
      {
         var _loc17_:MovieClip = asset.getChildByName("player" + param1.toString()) as MovieClip;
         if(_loc17_ == null)
         {
            return;
         }
         _loc17_.visible = true;
         var _loc15_:TextField = _loc17_.getChildByName("playerName") as TextField;
         if(param7)
         {
            param2 = param2 + " (disconnected)";
         }
         o1256(_loc15_,param2);
         var _loc11_:TextField = _loc17_.getChildByName("lblScore") as TextField;
         if(param6 == false)
         {
            param5 = -1;
         }
         if(o4519.o13206.o7 && param6)
         {
            o1256(_loc11_,param5 < 0?"":"Score: " + o10403(param5));
         }
         else if(param6)
         {
            o1256(_loc11_,param5 < 0?"":"Score: " + param5.toString());
         }
         else
         {
            _loc11_.text = "";
         }
         var _loc9_:MovieClip = _loc17_.getChildByName("starIcon") as MovieClip;
         if(param5 >= 0 && param1 < 4 && param6)
         {
            _loc9_.gotoAndStop(param1 + 1);
            _loc9_.visible = true;
         }
         else
         {
            _loc9_.visible = false;
         }
         var _loc18_:MovieClip = _loc17_.getChildByName("medicIcon") as MovieClip;
         var _loc10_:MovieClip = _loc17_.getChildByName("assaultIcon") as MovieClip;
         var _loc8_:MovieClip = _loc17_.getChildByName("heavyIcon") as MovieClip;
         o11616(_loc17_,param4);
         _loc10_.visible = param3 == 0;
         _loc18_.visible = param3 == 1;
         _loc8_.visible = param3 == 2;
         var _loc12_:MovieClip = _loc17_.getChildByName("healthBar") as MovieClip;
         _loc12_.gotoAndStop(1);
         var _loc14_:MovieClip = _loc17_.getChildByName("deathIcon") as MovieClip;
         _loc14_.visible = false;
         var _loc16_:MovieClip = _loc17_.getChildByName("alphaVirusIcon") as MovieClip;
         _loc16_.visible = false;
         var _loc13_:MovieClip = _loc17_.getChildByName("alphaVirusBGBlue") as MovieClip;
         _loc13_.visible = false;
         o4529(_loc17_);
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
      
      private function o4529(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         if(param1 is MovieClip)
         {
            _loc3_ = param1 as MovieClip;
            _loc3_.mouseEnabled = false;
            _loc3_.mouseChildren = false;
            _loc2_ = 0;
            while(_loc2_ < _loc3_.numChildren)
            {
               o4529(_loc3_.getChildAt(_loc2_));
               _loc2_++;
            }
         }
         else if(param1 is TextField)
         {
            (param1 as TextField).mouseEnabled = false;
         }
      }
      
      public function o14526(param1:int) : void
      {
         var _loc2_:MovieClip = asset.getChildByName("player" + param1.toString()) as MovieClip;
         if(_loc2_ == null)
         {
            return;
         }
         o11616(_loc2_);
         _loc2_.visible = false;
         var _loc3_:MovieClip = _loc2_.getChildByName("healthBar") as MovieClip;
         _loc3_.gotoAndStop(1);
      }
      
      public function o9677(param1:int, param2:Number, param3:Boolean, param4:Number, param5:Boolean, param6:Boolean) : void
      {
         var _loc9_:* = null;
         var _loc13_:MovieClip = asset.getChildByName("player" + param1.toString()) as MovieClip;
         var _loc8_:MovieClip = _loc13_.getChildByName("healthBar") as MovieClip;
         var _loc14_:MovieClip = _loc13_.getChildByName("direction") as MovieClip;
         _loc14_.rotation = param4;
         if(_loc14_.visible != param3)
         {
            _loc14_.visible = param3;
         }
         var _loc11_:int = 1 + (1 - param2) * 10;
         if(_loc8_.currentFrame != _loc11_)
         {
            _loc8_.gotoAndStop(_loc11_);
         }
         var _loc10_:MovieClip = _loc13_.getChildByName("deathIcon") as MovieClip;
         var _loc7_:* = param2 <= 0;
         if(_loc10_.visible != _loc7_)
         {
            _loc10_.visible = _loc7_;
         }
         var _loc12_:MovieClip = _loc13_.getChildByName("alphaVirusIcon") as MovieClip;
         if(_loc12_.visible != param5)
         {
            _loc12_.visible = param5;
            _loc9_ = _loc13_.getChildByName("alphaVirusBGBlue") as MovieClip;
            _loc9_.visible = param5;
         }
      }
      
      private function o6637(param1:MovieClip) : void
      {
         if(param1 != null && param1.currentFrame > 1 && param1.currentFrame < param1.totalFrames)
         {
            param1.gotoAndPlay(param1.currentFrame - 1);
         }
      }
      
      private function o3867(param1:MovieClip) : void
      {
         if(param1 != null && param1.currentFrame > 2 && param1.currentFrame < param1.totalFrames)
         {
            param1.gotoAndPlay(param1.currentFrame - 1);
         }
      }
      
      public function o13368() : void
      {
         o6637(o10126);
         o6637(o6083);
         o6637(o16514);
         o6637(o18682);
         o6637(o12019);
         o3867(o16149);
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null || asset.stage == null)
         {
            return;
         }
         if(o2456.visible)
         {
            o14400(o20226);
         }
         o11692(o19694);
         o11692(o16149);
         o11692(o10927);
         o11692(o3206);
         o11692(o20047);
         o11692(o6623);
         o11692(o16437);
         o20690.o12114();
      }
      
      public function o3649(param1:int, param2:int) : void
      {
         if(param1 == 0)
         {
            o1256(o13085,"");
         }
         else
         {
            o1256(o13085,"Active Turrets " + param1.toString() + "/" + param2.toString());
         }
      }
      
      public function o16986(param1:String, param2:String, param3:int, param4:Function) : void
      {
         var _loc6_:o12306 = new o12306();
         _loc6_.o17920 = false;
         _loc6_.o17549 = false;
         _loc6_.init(new MissionFailedDialogAsset());
         this.o9642(_loc6_);
         var _loc5_:MovieClip = _loc6_.asset.getChildByName("dialogContainer") as MovieClip;
         var _loc7_:MovieClip = _loc5_.getChildByName("lvlImages") as MovieClip;
         _loc7_.gotoAndStop(param3);
         _loc6_.o13483(param1,param2,param4);
      }
      
      public function o16084() : void
      {
         if(o9750)
         {
            return;
         }
         o9750 = true;
         var _loc1_:o12306 = new o12306();
         _loc1_.o17549 = false;
         _loc1_.init(new SlowConnectionDialogAsset());
         _loc1_.o4402 = 5;
         this.o9642(_loc1_);
         _loc1_.o13483("","",null);
      }
      
      public function o15163() : void
      {
         if(o5306)
         {
            return;
         }
         o5306 = true;
         var _loc1_:o12306 = new o12306();
         _loc1_.o17549 = false;
         _loc1_.o11712 = 10;
         _loc1_.init(new ServerLostDialogAsset());
         this.o9642(_loc1_);
         _loc1_.o12407("","",o12921);
      }
      
      protected function o12921() : void
      {
      }
      
      protected function o2951(param1:MouseEvent) : void
      {
         o16989.o20948(null);
      }
      
      public function o20740(param1:o15625, param2:int) : void
      {
         var _loc3_:TextField = param1.asset.getChildByName("lblQtyExtra") as TextField;
         _loc3_.visible = param2 != 0;
         if(_loc3_.visible)
         {
            o1256(_loc3_,"+" + param2);
         }
         _loc3_.mouseEnabled = false;
      }
      
      public function o4663() : void
      {
         this.o7349();
      }
      
      public function o3142() : void
      {
         this.o12641();
      }
      
      public function o7791() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o4856;
         for each(var _loc1_ in o4856)
         {
            _loc1_.visible = false;
         }
      }
      
      public function o17295(param1:int, param2:String) : void
      {
         o4856[param1].visible = true;
         o4856[param1].gotoAndStop(param2);
      }
      
      private function o19665(param1:Event) : void
      {
         o13422();
      }
      
      protected function o13422() : void
      {
      }
      
      protected function o15772() : void
      {
      }
      
      private function o8322() : void
      {
         o15772();
      }
      
      private function o16182() : void
      {
         o13422();
      }
      
      protected function o11763(param1:int) : void
      {
         var _loc2_:o9743 = new o9743();
         _loc2_.init(new EnterGhostModeDialogAsset());
         this.o9642(_loc2_);
         _loc2_.o17920 = false;
         _loc2_.o13483("","You lost!",o8322,o16182);
      }
      
      private function o16442(param1:Event) : void
      {
         o16943.removeEventListener("timer",o16442);
         o16943 = null;
         o15267();
      }
      
      protected function o15267() : void
      {
      }
      
      public function o17256(param1:String, param2:String, param3:int) : void
      {
         o16943 = new Timer(2000);
         o16943.addEventListener("timer",o16442,false,0,true);
         o16943.start();
         var _loc5_:o12306 = new o12306();
         _loc5_.o17920 = false;
         _loc5_.o17549 = false;
         _loc5_.init(new MissionCompleteDialogAsset());
         this.o9642(_loc5_);
         var _loc4_:MovieClip = _loc5_.asset.getChildByName("dialogContainer") as MovieClip;
         var _loc7_:MovieClip = _loc4_.getChildByName("placing") as MovieClip;
         _loc7_.gotoAndStop(param3);
         var _loc6_:MovieClip = _loc4_.getChildByName("eventIcon") as MovieClip;
         _loc6_.gotoAndStop(o12049(param2));
         _loc5_.o13483("MISSION COMPLETE!",param1,null);
         _loc5_.o20173.visible = false;
      }
      
      public function o12049(param1:String) : String
      {
         while(param1.search(" ") != -1)
         {
            param1 = param1.replace(" ","");
         }
         return param1;
      }
   }
}
