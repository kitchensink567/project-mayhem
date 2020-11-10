package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o766 extends o6539
   {
       
      
      private var o7750:o20565;
      
      protected var o19689:o978;
      
      protected var o16989:o13064;
      
      protected var o20510:o20421;
      
      private var o9926:int;
      
      protected var o994:o15625;
      
      private var o11465:int;
      
      protected var o4457:o15625;
      
      protected var o14231:o15625;
      
      protected var o14053:MovieClip;
      
      protected var o7114:TextField;
      
      protected var o3491:MovieClip;
      
      public function o766()
      {
         super();
      }
      
      protected function o20333(param1:MovieClip) : void
      {
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc4_:* = null;
         super.init(param1);
         this.o19689 = param2;
         this.o16989 = param2.o16989;
         o7750 = new o20565(this);
         o994 = o7750.o17578("btnStartGame");
         o994.addEventListener("click",o3433,false,0,true);
         var _loc7_:Array = [];
         _loc5_ = 0;
         while(_loc5_ < 8)
         {
            _loc6_ = o7750.o15961("btnLevel" + _loc5_,"lbl");
            _loc6_.visible = false;
            _loc7_.push(_loc6_);
            _loc4_ = _loc6_.asset.getChildByName("multiplier");
            if(_loc4_)
            {
               _loc4_.visible = false;
            }
            _loc5_++;
         }
         o4457 = o7750.o17578("leftArrow");
         o14231 = o7750.o17578("rightArrow");
         o4457.addEventListener("click",o15011,false,0,true);
         o14231.addEventListener("click",o13115,false,0,true);
         o20510 = o7750.o3538(_loc7_);
         o20510.addEventListener(o5595.o16737,o20947,false,0,true);
         o20510.o2120 = 0;
         this.enabled = false;
         this.o1258();
         o14053 = param1.getChildByName("dailyRewardMutiplier") as MovieClip;
         if(o14053 != null)
         {
            o14053.visible = false;
            o7114 = o14053.getChildByName("multiplierInfo") as TextField;
         }
         o3491 = o14053.getChildByName("multiplierIcon") as MovieClip;
         if(o3491)
         {
            o3491.gotoAndStop(0);
            o3491.visible = false;
         }
         o555(0);
         param2.o9164(true);
         param2.o8987(false);
         param2.o16224(false);
      }
      
      override public function o13640() : void
      {
         o20510.removeEventListener(o5595.o16737,o20947);
         o994.removeEventListener("click",o3433);
         o4457.removeEventListener("click",o15011);
         o14231.removeEventListener("click",o13115);
         o7750.o13640();
         o7750 = null;
         o19689 = null;
         o16989 = null;
         o20510 = null;
         o9926 = 0;
         o994 = null;
         o11465 = 0;
         o4457 = null;
         o14231 = null;
         o3491 = null;
         super.o13640();
      }
      
      protected function o15011(param1:MouseEvent) : void
      {
         o20510.o2120--;
      }
      
      protected function o13115(param1:MouseEvent) : void
      {
         o20510.o2120++;
      }
      
      protected function o3433(param1:MouseEvent) : void
      {
         o16989.screen = 6;
      }
      
      private function o20947(param1:o11507) : void
      {
         o20128(param1.o6457);
         o555(param1.o6457);
      }
      
      public function o555(param1:int) : void
      {
         o4457.enabled = param1 > 0;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o20510.o19568;
         for each(var _loc2_ in o20510.o19568)
         {
            if(_loc2_.enabled && _loc2_.visible)
            {
               _loc3_++;
            }
         }
         o14231.enabled = param1 < _loc3_ - 1;
      }
      
      override protected function draw() : void
      {
         super.draw();
         o9926 = 0;
         var _loc3_:int = 0;
         var _loc2_:* = o20510.o19568;
         for each(var _loc1_ in o20510.o19568)
         {
            _loc1_.visible = false;
         }
         o13545();
      }
      
      protected function o13614(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:o12290 = o20510.o4364(o9926) as o12290;
         _loc3_.visible = true;
         _loc3_.o13586 = param1;
         _loc3_.enabled = param2;
         o9926 = Number(o9926) + 1;
         var _loc4_:MovieClip = _loc3_.asset.getChildByName("multiplier") as MovieClip;
         if(_loc4_)
         {
            _loc4_.visible = o4519.o8116.o476.o9392.o6848(o15542.o7017(param1)) && o4519.o8116.o476.o9392.o905?true:false;
            _loc4_.gotoAndStop(0);
         }
         o5688(_loc3_);
      }
      
      protected function o1730(param1:String, param2:int) : void
      {
         var _loc3_:o12290 = o20510.o4364(o9926) as o12290;
         _loc3_.visible = true;
         _loc3_.o13586 = "Unlock at level " + param2;
         _loc3_.enabled = false;
         o9926 = Number(o9926) + 1;
         o5688(_loc3_);
      }
      
      protected function o3209(param1:String) : void
      {
         var _loc2_:o12290 = o20510.o4364(o9926) as o12290;
         _loc2_.visible = true;
         _loc2_.o13586 = "Login required";
         _loc2_.enabled = false;
         o9926 = Number(o9926) + 1;
         o5688(_loc2_);
      }
      
      private function o5688(param1:o12290) : void
      {
         var _loc2_:TextField = param1.asset.getChildByName("lblNumber") as TextField;
         _loc2_.text = "0" + (o20510.o8716(param1) + 1).toString();
      }
      
      protected function o2640(param1:String) : void
      {
         var _loc2_:o12290 = o20510.o4364(o9926) as o12290;
         _loc2_.visible = true;
         _loc2_.o13586 = "Locked";
         _loc2_.enabled = false;
         o9926 = Number(o9926) + 1;
         o5688(_loc2_);
      }
      
      protected function o16713(param1:int) : void
      {
         var _loc4_:String = "";
         if(param1 < 0)
         {
            _loc4_ = "Left";
         }
         else if(param1 > 0)
         {
            _loc4_ = "Right";
         }
         var _loc2_:MovieClip = asset.getChildByName("levelImageContainer" + _loc4_) as MovieClip;
         o14485(param1,"Hidden","Hidden","Locked",1,true);
         _loc2_.visible = false;
         var _loc3_:MovieClip = _loc2_.getChildByName("gameModeText") as MovieClip;
         _loc3_.visible = false;
      }
      
      protected function o14485(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean) : void
      {
         var _loc11_:String = "";
         if(param1 < 0)
         {
            _loc11_ = "Left";
         }
         else if(param1 > 0)
         {
            _loc11_ = "Right";
         }
         var _loc8_:MovieClip = asset.getChildByName("levelImageContainer" + _loc11_) as MovieClip;
         var _loc7_:MovieClip = _loc8_.getChildByName("levelImage") as MovieClip;
         var _loc13_:TextField = _loc8_.getChildByName("lblLevelDetails") as TextField;
         var _loc14_:TextField = _loc8_.getChildByName("lblTitle") as TextField;
         var _loc9_:MovieClip = _loc8_.getChildByName("levelIndicator") as MovieClip;
         var _loc12_:MovieClip = _loc8_.getChildByName("bg") as MovieClip;
         _loc12_.gotoAndStop(1);
         var _loc10_:MovieClip = _loc8_.getChildByName("gameModeText") as MovieClip;
         _loc10_.visible = false;
         _loc8_.visible = true;
         _loc14_.text = param2;
         _loc13_.text = param3;
         _loc7_.gotoAndStop(param4);
         _loc9_.gotoAndStop(param5);
         o994.visible = param6 == false;
      }
      
      protected function o13545() : void
      {
      }
      
      protected function o20128(param1:int) : void
      {
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null)
         {
            return;
         }
         var _loc4_:int = 0;
         var _loc3_:* = o20510.o19568;
         for each(var _loc2_ in o20510.o19568)
         {
            o11692(_loc2_.asset.getChildByName("arrow") as MovieClip);
         }
      }
   }
}
