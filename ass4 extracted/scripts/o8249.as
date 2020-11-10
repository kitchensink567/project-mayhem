package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o8249 extends o6539
   {
       
      
      private var o9679:o20565;
      
      private var o16989:o13064;
      
      protected var o1364:Vector.<o15625>;
      
      protected var o15696:o16123;
      
      protected var o11125:o16123;
      
      protected var o7138:TextField;
      
      protected var o2426:TextField;
      
      private var o2213:o15625;
      
      private var o14637:o15625;
      
      private var o2692:o15625;
      
      private var o5187:TextField;
      
      private var o11465:int = 0;
      
      public var o4535:o15625;
      
      public var o19689:o978;
      
      private var o14632:Boolean;
      
      public function o8249()
      {
         o1364 = new Vector.<o15625>();
         o15696 = new o16123(0);
         o11125 = new o16123(0);
         super();
      }
      
      private function o9423() : void
      {
         if(o5187 != null)
         {
            o5187.text = "$" + o16724.o10417(o4519.o8116.profileData.o7923.o20170);
         }
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null || asset.stage == null)
         {
            return;
         }
         o9423();
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:Boolean) : void
      {
         var _loc10_:* = null;
         var _loc13_:int = 0;
         var _loc15_:int = 0;
         var _loc23_:* = null;
         var _loc4_:* = null;
         var _loc16_:* = null;
         var _loc7_:* = null;
         var _loc20_:* = null;
         var _loc5_:* = null;
         var _loc18_:* = null;
         var _loc22_:* = null;
         var _loc8_:* = null;
         var _loc25_:* = null;
         var _loc17_:* = null;
         var _loc14_:* = null;
         var _loc9_:* = null;
         var _loc27_:* = null;
         var _loc26_:int = 0;
         o8249;
         super.init(param1);
         this.o14632 = param3;
         this.o19689 = param2;
         this.o16989 = param2.o16989;
         o9679 = new o20565(this);
         var _loc6_:MovieClip = param1.getChildByName("sasCash") as MovieClip;
         o5187 = _loc6_.getChildByName("lblSasMoney") as TextField;
         var _loc19_:o14200 = o4519.o8116.profileData;
         _loc19_.o202.o17812 = 0;
         o9423();
         var _loc12_:o13467 = o4519.o8116.profileData.o202;
         _loc12_.o11032 = new Vector.<o19467>();
         _loc12_.o12874.reset();
         this.o16989 = o16989;
         this.o11465 = o11465;
         var _loc21_:MovieClip = param1.getChildByName("dialogContainer") as MovieClip;
         o2213 = o9679.o17578("btnBuy",_loc21_);
         o14637 = o9679.o17578("btnBuyAll",_loc21_);
         o2692 = o9679.o17578("btnSkip",_loc21_);
         o2213.addEventListener("click",o7949,false,0,true);
         o14637.addEventListener("click",o13382,false,0,true);
         o2692.addEventListener("click",o16563,false,0,true);
         o2213.enabled = false;
         o7138 = _loc21_.getChildByName("lbBuyAmount") as TextField;
         o7138.mouseEnabled = false;
         o2426 = _loc21_.getChildByName("lbBuyAllAmount") as TextField;
         o2426.mouseEnabled = false;
         o2426.text = "$" + o16724.o10417(_loc19_.o5292.o11370.o10634());
         o4535 = o9679.o17578("btnEarnSasCash",_loc21_);
         o4535.addEventListener("click",o1132,false,0,true);
         o4535.enabled = o10846.o19505.o6382;
         o10846.o19505.o16280(null,o7880.o6138,o6046);
         _loc13_ = 0;
         while(_loc13_ < 3)
         {
            _loc10_ = o9679.o17578("btnPowerUp" + _loc13_.toString(),_loc21_);
            _loc10_.visible = false;
            _loc10_.o12403 = null;
            o1364.push(_loc10_);
            _loc13_++;
         }
         var _loc24_:Boolean = _loc19_.o7923.o3525.o17992();
         _loc15_ = 0;
         while(_loc15_ < _loc19_.o5292.o11370.o10961.length)
         {
            _loc10_ = o1364[_loc15_];
            _loc23_ = _loc19_.o5292.o11370.o10961[_loc15_];
            _loc4_ = _loc10_.asset;
            _loc16_ = _loc4_.getChildByName("icon") as MovieClip;
            _loc7_ = _loc4_.getChildByName("lblCost") as TextField;
            _loc20_ = _loc4_.getChildByName("red0") as MovieClip;
            _loc5_ = _loc4_.getChildByName("red1") as MovieClip;
            _loc18_ = _loc4_.getChildByName("red2") as MovieClip;
            _loc22_ = _loc4_.getChildByName("red3") as MovieClip;
            _loc8_ = _loc4_.getChildByName("red4") as MovieClip;
            _loc25_ = [_loc20_,_loc5_,_loc18_,_loc22_,_loc8_];
            _loc17_ = _loc4_.getChildByName("infoText") as TextField;
            _loc14_ = _loc4_.getChildByName("lblHeading") as TextField;
            _loc14_.text = _loc23_.name;
            _loc7_.text = "$" + o16724.o10417(_loc23_.o7195());
            _loc9_ = _loc4_.getChildByName("powerUpIcon") as MovieClip;
            _loc9_.gotoAndStop(_loc23_.o3331);
            _loc27_ = "";
            var _loc29_:int = 0;
            var _loc28_:* = _loc23_.o8208;
            for each(var _loc11_ in _loc23_.o8208)
            {
               _loc27_ = _loc27_ + (_loc11_ + "\n");
            }
            _loc17_.text = _loc27_;
            _loc26_ = 0;
            while(_loc26_ < _loc25_.length)
            {
               (_loc25_[_loc26_] as MovieClip).visible = false;
               _loc26_++;
            }
            if(_loc24_)
            {
               _loc16_.gotoAndStop(_loc23_.o7784);
               _loc26_ = 0;
               while(_loc26_ < _loc23_.o15474.length)
               {
                  (_loc25_[_loc26_] as MovieClip).visible = _loc23_.o15474[_loc26_];
                  _loc26_++;
               }
            }
            else
            {
               _loc16_.gotoAndStop(_loc23_.o12087);
            }
            _loc10_.o12403 = _loc23_;
            _loc10_.visible = true;
            _loc10_.addEventListener("click",o4063,false,0,true);
            _loc15_++;
         }
         o11125.value = _loc19_.o5292.o11370.o10634();
         o6629();
      }
      
      private function o6046(param1:o7880) : void
      {
         o4535.enabled = param1.o13662;
      }
      
      private function o1132(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:o14200 = o4519.o8116.profileData;
         if(true && _loc4_.o12094.isGuest)
         {
            _loc2_ = _loc4_.o5099.o9009("dialogMessage.mustLoginToEarnSasCash.title");
            _loc3_ = _loc4_.o5099.o9009("dialogMessage.mustLoginToEarnSasCash.message");
            o16989.o12407(_loc2_,_loc3_);
         }
         else
         {
            o16989.o6578(_loc4_.o5292.o120());
         }
      }
      
      private function o18154() : void
      {
         var _loc2_:o13467 = o4519.o8116.profileData.o202;
         var _loc1_:o1377 = _loc2_.o12874;
         _loc1_.reset();
         _loc1_.o5567(o4519.o8116.profileData.o202.o13597());
      }
      
      protected function o2085() : void
      {
         var _loc5_:* = null;
         var _loc9_:o9503 = o4519.o8116.profileData.o7923.o3525;
         var _loc8_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc12_:int = 0;
         var _loc11_:* = o1364;
         for each(var _loc1_ in o1364)
         {
            if(_loc1_.visible && _loc1_.o12403 != null && _loc1_.o3993)
            {
               _loc5_ = _loc1_.o12403 as o19467;
               switch(int(_loc5_.id))
               {
                  case 0:
                     _loc8_ = true;
                     break;
                  case 1:
                     _loc3_ = true;
                     break;
                  case 2:
                     _loc2_ = true;
                     break;
                  case 3:
                     _loc6_ = true;
                     break;
                  case 4:
                     _loc7_ = true;
                     break;
                  case 5:
                     _loc4_ = true;
                     break;
                  case 6:
                     _loc10_ = true;
               }
               o4519.o8116.profileData.o202.o11032.push(_loc5_);
            }
         }
         o18154();
         o4519.o8116.profileData.o15894.o4848.o2719.o17459(o4519.o8116.profileData.o202.o10211,_loc7_,_loc4_,_loc10_,false);
      }
      
      protected function o7949(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = o4519.o8116.profileData.o7923.o5259(o15696.value);
         if(_loc2_ == false)
         {
            (o16989 as o14043).o14462(o15696.value,"Game bonus");
            o4519.o8116.o4812.ui.o4930.play();
            return;
         }
         o4519.o8116.profileData.o202.o17812 = o15696.value;
         o2085();
         o4519.o8116.o4812.ui.o6915.play();
         o13815();
      }
      
      protected function o13382(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = o4519.o8116.profileData.o7923.o5259(o11125.value);
         if(_loc3_ == false)
         {
            (o16989 as o14043).o14462(o11125.value,"Game bonus");
            o4519.o8116.o4812.ui.o4930.play();
            return;
         }
         var _loc5_:int = 0;
         var _loc4_:* = o1364;
         for each(var _loc2_ in o1364)
         {
            _loc2_.o3993 = true;
         }
         o4519.o8116.profileData.o202.o17812 = o11125.value;
         o2085();
         o4519.o8116.o4812.ui.o4676.play();
         o13815();
      }
      
      protected function o16563(param1:MouseEvent) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = o1364;
         for each(var _loc2_ in o1364)
         {
            _loc2_.o3993 = false;
         }
         o4519.o8116.o4812.ui.o8060.play();
         o13815();
      }
      
      private function o6629() : void
      {
         var _loc2_:* = null;
         o15696.value = 0;
         var _loc4_:int = 0;
         var _loc3_:* = o1364;
         for each(var _loc1_ in o1364)
         {
            if(_loc1_.o3993)
            {
               _loc2_ = _loc1_.o12403 as o19467;
               o15696.value = o15696.value + _loc2_.o7195();
            }
         }
         o2213.enabled = o15696.value > 0 && o15696.value <= o11125.value;
         o7138.text = "$" + o16724.o10417(o15696.value);
      }
      
      private function o4063(param1:MouseEvent) : void
      {
         var _loc2_:o15625 = param1.target as o15625;
         _loc2_.o3993 = !_loc2_.o3993;
         o6629();
      }
      
      override public function o13640() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o1364;
         for each(var _loc1_ in o1364)
         {
            _loc1_.removeEventListener("click",o4063);
         }
         o15696.o19115();
         o11125.o19115();
         o2213.removeEventListener("click",o7949);
         o14637.removeEventListener("click",o13382);
         o2692.removeEventListener("click",o16563);
         o4535.removeEventListener("click",o1132);
         o10846.o19505.o12657(o7880.o6138,o6046);
         o9679.o13640();
         o16989 = null;
         o7138 = null;
         o2426 = null;
         o5187 = null;
         o4535 = null;
         o2213 = null;
         o14637 = null;
         o2692 = null;
         o15696 = null;
         o11125 = null;
         o9679 = null;
         o19689 = null;
         super.o13640();
      }
      
      protected function o13815() : void
      {
         if(o14632)
         {
            o16989.screen = 6;
         }
         else
         {
            this.o19689.screen = 20;
         }
      }
   }
}
