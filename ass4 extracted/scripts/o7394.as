package
{
   import assets.ui.dialog.BuySasCashDialogAsset;
   import assets.ui.screen.ConfirmComboPackPurchaseDialogAsset;
   import assets.ui.screen.ConfirmGearPurchaseDialogAsset;
   import assets.ui.screen.ConfirmSingleItemPurchaseDialogAsset;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o7394 extends o9743
   {
       
      
      protected var o14763:o2982;
      
      protected var o3813:o2982;
      
      protected var o11535:o2982;
      
      protected var o11903:o10832;
      
      protected var o7264:o10832;
      
      protected var o12678:o10832;
      
      protected var o19325:o10832;
      
      protected var o5672:o10832;
      
      protected var o14607:o15625;
      
      protected var o18968:o15625;
      
      protected var o2113:o15625;
      
      protected var o20922:o15625;
      
      protected var o10506:o15625;
      
      protected var o8122:o15625;
      
      protected var o14761:o18580;
      
      protected var o17138:o5622;
      
      protected var o10246:o15184;
      
      protected var o18911:int;
      
      protected var o14487:int;
      
      protected var o14459:int;
      
      protected var o5187:TextField;
      
      protected var o12984:Boolean;
      
      protected var o11632:MovieClip;
      
      protected var o12904:TextField;
      
      protected var o14633:o2982;
      
      protected var o9650:MovieClip;
      
      protected var o12774:MovieClip;
      
      protected var o7081:MovieClip;
      
      public function o7394()
      {
         super();
      }
      
      private function o14098(param1:String) : o2982
      {
         var _loc2_:o2982 = new o2982();
         var _loc3_:MovieClip = container.getChildByName(param1) as MovieClip;
         _loc2_.init(_loc3_);
         this.o5452(_loc2_);
         return _loc2_;
      }
      
      public function o2163(param1:int) : void
      {
         if(o5187 != null)
         {
            o5187.text = "$" + o16724.o10417(param1);
         }
      }
      
      protected function o4580() : void
      {
      }
      
      protected function o1866() : void
      {
      }
      
      public function o14703(param1:int, param2:String, param3:String, param4:int, param5:int) : void
      {
         this.o14487 = param1;
         o17138 = new o5622();
         o17138.init(new ConfirmSingleItemPurchaseDialogAsset());
         o17138.o17731(param4,param5);
         this.o9642(o17138);
         o17138.o13483(param2,param3,o1049);
      }
      
      public function o13968(param1:int, param2:String, param3:String, param4:int, param5:int, param6:int) : void
      {
         this.o18911 = param1;
         o17138 = new o5622();
         o17138.init(new ConfirmSingleItemPurchaseDialogAsset());
         o17138.o17104(param4,param5,param6);
         this.o9642(o17138);
         o17138.o13483(param2,param3,o4580);
      }
      
      public function o13625(param1:int, param2:String, param3:String, param4:int, param5:int) : void
      {
         this.o18911 = param1;
         o17138 = new o5622();
         o17138.init(new ConfirmSingleItemPurchaseDialogAsset());
         o17138.o18869(param4,param5);
         this.o9642(o17138);
         o17138.o13483(param2,param3,o1866);
      }
      
      public function o4136(param1:int) : o15184
      {
         o14459 = param1;
         o10246 = o1284();
         o10246.init(new ConfirmGearPurchaseDialogAsset());
         this.o9642(o10246);
         o10246.o13483("","",o18350);
         return o10246;
      }
      
      protected function o18350() : void
      {
      }
      
      protected function o1049() : void
      {
      }
      
      public function o13194(param1:int, param2:String, param3:String, param4:int, param5:int) : o18580
      {
         this.o14487 = param1;
         this.o14761 = new o18580();
         o14761.init(new ConfirmComboPackPurchaseDialogAsset());
         o14761.o6959(param4);
         this.o9642(o14761);
         o14761.o13483(param2,param3,o1049);
         o14761.o14095(o4519.o8116.profileData.o7923.level < param5,param5);
         return o14761;
      }
      
      protected function o1284() : o15184
      {
         return new o15184();
      }
      
      protected function o9953(param1:int) : void
      {
         if(o11632 != null)
         {
            o11632.visible = true;
            o12904.text = o16724.o10417(param1) + " Revive Tokens";
         }
      }
      
      override public function init(param1:MovieClip) : void
      {
         var _loc6_:* = null;
         var _loc10_:Number = NaN;
         var _loc5_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.init(param1);
         this.o17920 = false;
         o14607 = o9679.o17578("btnCboPackUp",container);
         o18968 = o9679.o17578("btnCboPackDown",container);
         o2113 = o9679.o17578("btnStrongboxUp",container);
         o20922 = o9679.o17578("btnStrongboxDown",container);
         o10506 = o9679.o17578("btnGearUp",container);
         o8122 = o9679.o17578("btnGearDown",container);
         o12984 = container.getChildByName("btnSasPack0") as MovieClip != null;
         o11632 = param1.getChildByName("reviveTokens") as MovieClip;
         if(o11632 != null)
         {
            o12904 = o11632.getChildByName("reviveTokens") as TextField;
            o11632.visible = false;
         }
         var _loc9_:Vector.<o15625> = new Vector.<o15625>();
         var _loc7_:int = 0;
         if(o12984 == false)
         {
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc9_.push(o14098("btnCboPack" + _loc7_.toString()));
               _loc7_++;
            }
         }
         o11903 = o9679.o3870(o14607,o18968,_loc9_,o9524);
         var _loc12_:Vector.<o15625> = new Vector.<o15625>();
         if(o12984 == false)
         {
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc12_.push(o14098("btnCboPackLimited" + _loc7_.toString()));
               _loc7_++;
            }
         }
         o7264 = o9679.o3870(o14607,o18968,_loc12_,o9524);
         var _loc11_:Vector.<o15625> = new Vector.<o15625>();
         if(o12984 == false)
         {
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc11_.push(o14098("btnStrongbox" + _loc7_.toString()));
               _loc7_++;
            }
         }
         o12678 = o9679.o3870(o2113,o20922,_loc11_,o19753);
         var _loc8_:Vector.<o15625> = new Vector.<o15625>();
         if(o12984 == false)
         {
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc8_.push(o14098("btnStrongboxLimited" + _loc7_.toString()));
               _loc7_++;
            }
         }
         o19325 = o9679.o3870(o2113,o20922,_loc8_,o19753);
         if(o12984 == false)
         {
            o3813 = o14098("btnSasCashStrongbox0");
            o11535 = o14098("btnSasCashStrongbox1");
            o3813.visible = false;
            o11535.visible = false;
            if(o582())
            {
               o14763 = o11535;
            }
            else
            {
               o14763 = o3813;
            }
            o14763.addEventListener("click",o18189,false,0,true);
         }
         var _loc4_:Vector.<o15625> = new Vector.<o15625>();
         if(o12984)
         {
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc4_.push(o14098("btnSasPack" + _loc7_.toString()));
               _loc7_++;
            }
         }
         else
         {
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc4_.push(o14098("btnCboPackB" + _loc7_.toString()));
               _loc7_++;
            }
         }
         if(!(o4292 is BuySasCashDialogAsset))
         {
            o14633 = o14098("btnPremiumWeapons0");
            o14633.addEventListener("click",o17539,false,0,true);
            o14633.visible = o582();
            o14633.o12087 = "PremiumWeapons1";
            o14633.o1258();
            if(o582())
            {
               _loc6_ = o15304();
               _loc10_ = _loc6_.time - o4519.o8116.o15020.time;
               o14633.o4432(_loc10_);
            }
            _loc5_ = o14633.asset.getChildByName("icon") as MovieClip;
            if(_loc5_)
            {
               o9650 = _loc5_.getChildByName("imgWeapon0") as MovieClip;
               o12774 = _loc5_.getChildByName("imgWeapon1") as MovieClip;
               o7081 = _loc5_.getChildByName("imgWeapon2") as MovieClip;
               _loc2_ = o14200.o19505.o5292.o12970.o4188();
               if(_loc2_ && o9650 && o12774 && o7081)
               {
                  o9650.gotoAndStop("W_" + (o20543.o5464(_loc2_.o16273) != -1?o20543.o5464(_loc2_.o16273):0));
                  o12774.gotoAndStop("W_" + (o20543.o5464(_loc2_.o17007) != -1?o20543.o5464(_loc2_.o17007):0));
                  o7081.gotoAndStop("W_" + (o20543.o5464(_loc2_.o7547) != -1?o20543.o5464(_loc2_.o7547):0));
               }
            }
         }
         o5672 = o9679.o3870(o10506,o8122,_loc4_,o558);
         o11903.o672 = true;
         o7264.o672 = false;
         o12678.o672 = true;
         o5672.o672 = true;
         o19325.o672 = false;
         o11903.addEventListener(o5595.o16737,o8557,false,0,true);
         o7264.addEventListener(o5595.o16737,o8557,false,0,true);
         o12678.addEventListener(o5595.o16737,o338,false,0,true);
         o5672.addEventListener(o5595.o16737,o5602,false,0,true);
         o19325.addEventListener(o5595.o16737,o338,false,0,true);
         if(o12984 == false)
         {
            _loc3_ = param1.getChildByName("sasCash") as MovieClip;
            o5187 = _loc3_.getChildByName("lblSasMoney") as TextField;
         }
         o11048();
      }
      
      protected function o17539(param1:Event) : void
      {
      }
      
      override public function o13640() : void
      {
         if(o11903 != null)
         {
            o11903.removeEventListener(o5595.o16737,o8557);
            o7264.removeEventListener(o5595.o16737,o8557);
            o12678.removeEventListener(o5595.o16737,o338);
            o19325.removeEventListener(o5595.o16737,o338);
            o5672.removeEventListener(o5595.o16737,o5602);
         }
         if(o14633)
         {
            o14633.removeEventListener("click",o17539);
         }
         if(o14763 != null)
         {
            o14763.removeEventListener("click",o18189);
         }
         o11903 = null;
         o12678 = null;
         o19325 = null;
         o5672 = null;
         o7264 = null;
         o14607 = null;
         o18968 = null;
         o2113 = null;
         o20922 = null;
         o10506 = null;
         o8122 = null;
         o14761 = null;
         o17138 = null;
         o10246 = null;
         o18911 = 0;
         o14487 = 0;
         o14459 = 0;
         o14763 = null;
         o11632 = null;
         o12904 = null;
         o14633 = null;
         o3813 = null;
         o11535 = null;
         super.o13640();
      }
      
      protected function o8557(param1:o11507) : void
      {
         if(param1.o6457 >= 0)
         {
            o1040(param1.o6457);
            o11903.o2120 = -1;
         }
      }
      
      protected function o5602(param1:o11507) : void
      {
         if(param1.o6457 >= 0)
         {
            o20814(param1.o6457);
            o5672.o2120 = -1;
         }
      }
      
      protected function o338(param1:o11507) : void
      {
         if(param1.o6457 >= 0)
         {
            o8054(param1.o6457);
            o12678.o2120 = -1;
         }
      }
      
      protected function o1040(param1:int) : void
      {
      }
      
      protected function o20814(param1:int) : void
      {
      }
      
      protected function o8054(param1:int) : void
      {
      }
      
      protected function o5572(param1:int) : void
      {
      }
      
      protected function o11048() : void
      {
      }
      
      protected function o9524(param1:int, param2:o15625) : void
      {
      }
      
      protected function o558(param1:int, param2:o15625) : void
      {
      }
      
      protected function o19753(param1:int, param2:o15625) : void
      {
      }
      
      protected function o18189(param1:MouseEvent) : void
      {
      }
      
      protected function o12172(param1:int, param2:o15625) : void
      {
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
      }
      
      public function o15304() : Date
      {
         var _loc1_:Vector.<o6882> = o4519.o8116.o476.o14399;
         var _loc4_:int = 0;
         var _loc3_:* = _loc1_;
         for each(var _loc2_ in _loc1_)
         {
            if(_loc2_.o5897.o13779)
            {
               if(_loc2_.type == 6)
               {
                  return _loc2_.o5897.end;
               }
            }
         }
         return null;
      }
      
      public function o582() : Boolean
      {
         var _loc1_:Vector.<o6882> = o4519.o8116.o476.o14399;
         var _loc4_:int = 0;
         var _loc3_:* = _loc1_;
         for each(var _loc2_ in _loc1_)
         {
            if(_loc2_.o5897.o13779)
            {
               if(_loc2_.type == 6)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
