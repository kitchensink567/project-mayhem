package
{
   import assets.ui.dialog.LeaderboardDialogAsset;
   import assets.ui.dialog.SettingsDialogAsset;
   import assets.ui.screen.PatchNotesAsset;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o3644 extends o6539
   {
       
      
      private var o12790:int = 0;
      
      protected var o7750:o20565;
      
      private var o11465:int;
      
      protected var o5187:TextField;
      
      protected var o9583:o12290;
      
      protected var o10421:o15625;
      
      protected var o397:o15625;
      
      protected var o7617:o15625;
      
      protected var o20526:o15625;
      
      protected var o12216:o15625;
      
      protected var o16989:o13064;
      
      protected var o14595:MovieClip;
      
      protected var o17529:o15625;
      
      protected var o9709:o15625;
      
      protected var o19346:o12290;
      
      private var o20634:Vector.<MovieClip>;
      
      private var o6719:Array;
      
      private var o6367:Vector.<o16076>;
      
      private var o20920:MovieClip;
      
      private var o7415:MovieClip;
      
      private var o20506:TextField;
      
      private var o9887:TextField;
      
      private var o16034:TextField;
      
      protected var o1155:TextField;
      
      private var o20727:Timer;
      
      private var o9851:int;
      
      protected var o18637:o14911;
      
      public function o3644()
      {
         o20634 = new Vector.<MovieClip>();
         o6719 = [10,15,20,30];
         o6367 = new Vector.<o16076>();
         super();
      }
      
      protected function o14969(param1:int) : void
      {
         o9851 = param1;
         o1155.text = "";
         o1155.visible = true;
         o20727.start();
      }
      
      protected function o10995() : void
      {
      }
      
      protected function o15829(param1:Event) : void
      {
         o9851 = Number(o9851) - 1;
         if(o9851 <= 0)
         {
            o20727.stop();
            o1155.visible = false;
            o10995();
         }
         else
         {
            o1155.text = "Sale ends in " + o16724.o8717(o9851 * 1000);
         }
      }
      
      protected function o521() : void
      {
      }
      
      protected function o3647(param1:Boolean) : void
      {
         o20526.o3993 = param1;
      }
      
      protected function o20254(param1:Boolean) : void
      {
         o12216.o3993 = param1;
      }
      
      protected function o7293(param1:Boolean) : void
      {
      }
      
      public function get o20488() : int
      {
         return o12790;
      }
      
      public function set o20488(param1:int) : void
      {
         this.o12790 = param1;
         this.o1258();
      }
      
      protected function o20113() : o13499
      {
         return new o13499();
      }
      
      protected function o11048() : void
      {
      }
      
      protected function o2993() : o1227
      {
         return new o1227();
      }
      
      public function o16008() : void
      {
         var _loc1_:o1227 = o2993();
         _loc1_.o16384(new SettingsDialogAsset(),this.o16989);
         this.o16989.o9642(_loc1_);
         _loc1_.o9072(null);
      }
      
      protected function o1329() : o10898
      {
         return new o10898();
      }
      
      public function o4019() : void
      {
         var _loc1_:o10898 = o1329();
         _loc1_.o16384(new LeaderboardDialogAsset(),this.o16989);
         this.o16989.o9642(_loc1_);
         _loc1_.o9072(null);
      }
      
      protected function o18535() : o11911
      {
         return new o11911();
      }
      
      public function o4077(param1:String) : void
      {
         var _loc2_:o11911 = o18535();
         _loc2_.o16384(new PatchNotesAsset(),this.o16989,param1);
         this.o16989.o9642(_loc2_);
         _loc2_.o9072(null);
      }
      
      protected function o5607() : o18903
      {
         return new o18903();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         var _loc9_:* = null;
         super.init(param1);
         this.o16989 = param2;
         o7750 = new o20565(this);
         o14595 = param1;
         var _loc12_:MovieClip = param1.getChildByName("devInfo") as MovieClip;
         var _loc10_:TextField = _loc12_.getChildByName("lblMode") as TextField;
         var _loc5_:TextField = _loc12_.getChildByName("lblServerVersion") as TextField;
         var _loc13_:TextField = _loc12_.getChildByName("lblDowloadsURL") as TextField;
         var _loc8_:Boolean = false;
         _loc8_ = false;
         _loc12_.visible = _loc8_;
         if(_loc8_)
         {
            _loc13_.text = o4519.o8116.o7484;
            _loc5_.text = 202.toString() + ":" + o9609.o12834.toString();
         }
         o1155 = param1.getChildByName("lblSaleCountdown") as TextField;
         o1155.visible = false;
         o20727 = new Timer(1000);
         o20727.addEventListener("timer",o15829,false,0,true);
         trace("VER: " + o9609.o12834.toString());
         o18637 = new o14911();
         o18637.init(param1.getChildByName("mobilePromoComtainer") as MovieClip);
         this.o5452(o18637);
         o10421 = o7750.o17578("btnStart",o14595);
         o17529 = o7750.o17578("btnLeaderBoards",o14595);
         o397 = o7750.o17578("btnSettings2",o14595);
         o7617 = o7750.o17578("btnHelp2",o14595);
         o20526 = o7750.o17578("btnAudio2",o14595);
         o12216 = o7750.o17578("btnMusic2",o14595);
         o20526.addEventListener("click",o9720,false,0,true);
         o12216.addEventListener("click",o2346,false,0,true);
         o5187 = param1.getChildByName("lblSasMoney") as TextField;
         o10421.addEventListener("click",o7659,false,0,true);
         o17529.addEventListener("click",o7334,false,0,true);
         o397.addEventListener("click",o18540,false,0,true);
         o7617.addEventListener("click",o13089,false,0,true);
         o16034 = param1.getChildByName("message") as TextField;
         o16034 = o4519.o8116.o476.o9392.o693(o16034);
         o9709 = o7750.o17578("btnNKLogo",o14595);
         o19346 = o7750.o15961("btnVersionInfo","Version 1.1 - New map",o14595);
         o19346.visible = false;
         o19346.addEventListener("click",o13819,false,0,true);
         var _loc4_:MovieClip = param1.getChildByName("layer1") as MovieClip;
         var _loc7_:MovieClip = param1.getChildByName("layer2") as MovieClip;
         var _loc11_:MovieClip = param1.getChildByName("layer3") as MovieClip;
         var _loc6_:MovieClip = param1.getChildByName("layer4") as MovieClip;
         o20634.push(_loc4_);
         o20634.push(_loc7_);
         o20634.push(_loc11_);
         o20634.push(_loc6_);
         o6367.push(new o16076(10));
         o6367.push(new o16076(10));
         o6367.push(new o16076(10));
         o6367.push(new o16076(10));
         this.o20920 = param1.getChildByName("promotion") as MovieClip;
         o7415 = o20920.getChildByName("icon") as MovieClip;
         o20506 = o20920.getChildByName("lblTitle") as TextField;
         o9887 = o20920.getChildByName("lblBody") as TextField;
         o7415.gotoAndStop(0);
         o20920.visible = false;
         _loc9_ = o14595.getChildByName("btnDebug") as MovieClip;
         if(_loc9_ != null)
         {
            o8867(_loc9_);
            param1.removeChild(_loc9_);
         }
         o11048();
      }
      
      protected function o9720(param1:MouseEvent) : void
      {
         this.o3647(!o20526.o3993);
         o521();
      }
      
      protected function o2346(param1:MouseEvent) : void
      {
         this.o20254(!o12216.o3993);
         o521();
      }
      
      protected function o7659(param1:MouseEvent) : void
      {
         o16989.screen = 5;
      }
      
      protected function o7334(param1:MouseEvent) : void
      {
      }
      
      protected function o18540(param1:MouseEvent) : void
      {
         o16008();
      }
      
      protected function o13089(param1:MouseEvent) : void
      {
         o16989.o9171(true);
      }
      
      private function o8714() : void
      {
      }
      
      override public function o13640() : void
      {
         o10421.removeEventListener("click",o7659);
         o17529.removeEventListener("click",o7334);
         o397.removeEventListener("click",o18540);
         o7617.removeEventListener("click",o13089);
         o20526.removeEventListener("click",o9720);
         o12216.removeEventListener("click",o2346);
         o19346.removeEventListener("click",o13819);
         o7750.o13640();
         o20727.removeEventListener("timer",o15829);
         o12790 = 0;
         o7750 = null;
         o11465 = 0;
         o5187 = null;
         o9583 = null;
         o10421 = null;
         o397 = null;
         o7617 = null;
         o20526 = null;
         o12216 = null;
         o16989 = null;
         o14595 = null;
         o9709 = null;
         o20634 = null;
         o6719 = null;
         o6367 = null;
         o20920 = null;
         o7415 = null;
         o20506 = null;
         o9887 = null;
         o1155 = null;
         o20727 = null;
         o18637 = null;
         super.o13640();
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o674();
      }
      
      override protected function o6662(param1:Event) : void
      {
         var _loc8_:int = 0;
         var _loc7_:* = null;
         var _loc10_:Number = NaN;
         var _loc4_:* = null;
         super.o6662(param1);
         if(asset == null || asset.stage == null)
         {
            return;
         }
         var _loc5_:Number = asset.stage.mouseX;
         var _loc2_:Number = asset.stage.mouseY;
         if(_loc5_ <= 5 && _loc2_ <= 5 || o12514)
         {
            _loc5_ = 400;
            _loc2_ = 310;
         }
         var _loc6_:* = Number(_loc5_ / 800);
         var _loc3_:* = Number(_loc2_ / 620);
         _loc6_ = Number(_loc6_ * 2 - 1);
         _loc3_ = Number(_loc3_ * 2 - 1);
         if(_loc6_ < -1)
         {
            _loc6_ = 0;
         }
         else if(_loc6_ > 1)
         {
            _loc6_ = 0;
         }
         if(_loc3_ < -1)
         {
            _loc3_ = 0;
         }
         else if(_loc3_ > 1)
         {
            _loc3_ = 0;
         }
         var _loc9_:* = 30;
         try
         {
            _loc8_ = 0;
            while(_loc8_ < o20634.length)
            {
               _loc7_ = o20634[_loc8_];
               _loc10_ = o6719[_loc8_];
               _loc4_ = o6367[_loc8_];
               _loc4_.o18184(_loc10_ * _loc6_,_loc10_ * _loc3_);
               _loc7_.x = _loc4_.o10976;
               _loc7_.y = _loc4_.o15734;
               _loc8_++;
            }
            return;
         }
         catch(o19631:Error)
         {
            return;
         }
      }
      
      protected function o13819(param1:MouseEvent) : void
      {
      }
   }
}
