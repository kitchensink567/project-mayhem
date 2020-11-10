package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o18725 extends o6539
   {
       
      
      private var o7750:o20565;
      
      private var o3005:MovieClip;
      
      protected var o16989:o13064;
      
      protected var o6003:o20421;
      
      protected var o8056:Vector.<o15625>;
      
      protected var o13288:o20421;
      
      protected const o18289:int = 6;
      
      protected var o19793:Boolean = true;
      
      protected var o17435:o15625;
      
      protected var o20728:o15625;
      
      private var o2354:TextField;
      
      protected var o2018:Boolean = true;
      
      protected var o4305:int = 0;
      
      private var o2942:MovieClip;
      
      protected var o19689:o978;
      
      private var o14567:Vector.<MovieClip>;
      
      private var o6057:MovieClip;
      
      private var o19475:TextField;
      
      private var o2577:int = -1;
      
      private var o17365:Timer;
      
      public function o18725()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         var _loc6_:* = null;
         var _loc10_:int = 0;
         var _loc8_:* = null;
         var _loc9_:* = null;
         super.init(param1);
         o19793 = true;
         this.o16989 = param2.o16989;
         this.o19689 = param2;
         o7750 = new o20565(this);
         var _loc7_:int = param1.currentFrame;
         this.o8900(param3);
         var _loc5_:MovieClip = param1.getChildByName("content") as MovieClip;
         param2.o14537(1);
         param2.o19988(false);
         o3005 = param1.getChildByName("lblSelectCharacter") as MovieClip;
         o2942 = param1.getChildByName("createCharacterInfo") as MovieClip;
         var _loc11_:Array = [];
         var _loc4_:Array = [];
         o14567 = new Vector.<MovieClip>();
         _loc10_ = 0;
         while(_loc10_ < 6)
         {
            _loc6_ = _loc5_.getChildByName("char" + _loc10_.toString()) as MovieClip;
            _loc6_.gotoAndPlay("Start" + _loc10_.toString());
            o14567.push(_loc6_);
            _loc8_ = o7750.o15961("btnSelect","Test " + _loc10_,_loc6_);
            (_loc8_.asset.getChildByName("icon") as MovieClip).stop();
            _loc11_.push(_loc8_);
            _loc4_.push(o7750.o17578("btnPurchase",_loc6_));
            _loc10_++;
         }
         o6003 = o7750.o3538(_loc11_);
         o6003.addEventListener(o5595.o16737,o12382,false,0,true);
         o13288 = o7750.o3538(_loc4_);
         o13288.addEventListener(o5595.o16737,o17052,false,0,true);
         o8056 = new Vector.<o15625>();
         _loc10_ = 0;
         while(_loc10_ < 6)
         {
            _loc6_ = _loc5_.getChildByName("char" + _loc10_.toString()) as MovieClip;
            _loc9_ = this.o7750.o15961("btnDelete","Delete",_loc6_);
            _loc9_.addEventListener("click",o334,false,0,true);
            o8056.push(_loc9_);
            _loc10_++;
         }
         this.o19689.o3042("Select a Character");
         this.o1258();
         o19793 = false;
         param1.addEventListener("addedToStage",o343,false,0,true);
         o6057 = param1.getChildByName("dailyRewardContainer") as MovieClip;
         o19475 = o6057.getChildByName("lblDailyReward") as TextField;
         o6057.visible = false;
         o11048();
         o10029();
      }
      
      protected function o10029() : void
      {
      }
      
      protected function o13067(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         if(o17365 != null)
         {
            o17365.stop();
            o17365.removeEventListener("timer",o7608);
            o17365 = null;
         }
         this.o2577 = param1;
         o17365 = new Timer(1000);
         o17365.addEventListener("timer",o7608,false,0,true);
         o17365.start();
         this.o6057.visible = true;
         o20824();
      }
      
      private function o7608(param1:Event) : void
      {
         o2577 = o2577 - 1000;
         o20824();
         if(o2577 < 0)
         {
            this.o6057.visible = false;
            o17365.stop();
            o10029();
         }
      }
      
      private function o20824() : void
      {
         if(o2577 >= 0)
         {
            o19475.text = "Daily Reward resets in: " + o16724.o8717(o2577);
         }
      }
      
      protected function o11048() : void
      {
      }
      
      override public function o13640() : void
      {
         o6003.removeEventListener(o5595.o16737,o12382);
         o13288.removeEventListener(o5595.o16737,o17052);
         if(o17365 != null)
         {
            o17365.removeEventListener("timer",o7608);
            o17365 = null;
         }
         var _loc3_:int = 0;
         var _loc2_:* = o8056;
         for each(var _loc1_ in o8056)
         {
            _loc1_.removeEventListener("click",o334);
         }
         o7750.o13640();
         o7750 = null;
         o3005 = null;
         o16989 = null;
         o6003 = null;
         o8056 = null;
         o19793 = false;
         o17435 = null;
         o20728 = null;
         o2354 = null;
         o2018 = false;
         o4305 = 0;
         o2942 = null;
         o19689 = null;
         o13288 = null;
         o14567 = null;
         super.o13640();
      }
      
      private function o14412(param1:o15625) : int
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o8056;
         for each(var _loc2_ in o8056)
         {
            if(param1 == _loc2_)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      private function o334(param1:MouseEvent) : void
      {
         var _loc2_:o15625 = param1.target as o15625;
         o19420(o14412(_loc2_));
      }
      
      protected function o12382(param1:o11507) : void
      {
         if(o10170(param1.o6457))
         {
            o19689.screen = 21;
         }
      }
      
      protected function o5091(param1:Boolean) : void
      {
         if(param1)
         {
            o19689.screen = 3;
         }
      }
      
      override protected function draw() : void
      {
         super.draw();
         o17468();
      }
      
      private function o13181(param1:int, param2:Boolean) : void
      {
         this.o8056[param1].visible = param2;
      }
      
      public function o17567(param1:int, param2:Boolean, param3:Boolean, param4:String, param5:Boolean, param6:Boolean, param7:Boolean) : void
      {
         var _loc9_:o12290 = o6003.o4364(param1) as o12290;
         var _loc8_:MovieClip = _loc9_.asset.getChildByName("dailyReward") as MovieClip;
         if(_loc8_ != null)
         {
            _loc8_.gotoAndStop(!!param2?1:2);
            _loc8_.visible = param3 == false && param5 == false;
         }
         var _loc10_:MovieClip = _loc9_.asset.getChildByName("dailyRewardMutiplier") as MovieClip;
         if(_loc10_ != null)
         {
            _loc10_.visible = param7 == false && param5 == false;
         }
      }
      
      public function o16887(param1:int, param2:String, param3:String, param4:int, param5:int, param6:Boolean, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int) : void
      {
         var _loc13_:* = null;
         o9944(param1,false,true);
         o13181(param1,true);
         var _loc14_:o12290 = o6003.o4364(param1) as o12290;
         _loc14_.o13586 = param2 + ", Level " + param4 + ", " + param3;
         var _loc17_:TextField = _loc14_.asset.getChildByName("lblCharacterName") as TextField;
         var _loc12_:MovieClip = _loc14_.asset.getChildByName("dailyReward") as MovieClip;
         _loc12_.gotoAndStop(!!param6?1:2);
         _loc12_.visible = param7 == false && param8 == false;
         var _loc16_:MovieClip = _loc14_.asset.getChildByName("dailyRewardMutiplier") as MovieClip;
         if(_loc16_ != null)
         {
            _loc16_.gotoAndStop(!!param9?1:2);
            _loc16_.visible = param10 == false && param8 == false;
            _loc13_ = _loc16_.getChildByName("multiplierInfo") as TextField;
            if(_loc13_ && _loc16_.visible)
            {
               _loc13_.text = o12903(param11);
            }
         }
         o1256(_loc17_,param2);
         o8056[param1].visible = true;
         _loc14_.o13586 = "Level " + param4 + ", " + param3;
         var _loc15_:MovieClip = _loc14_.asset.getChildByName("icon") as MovieClip;
         _loc15_.gotoAndStop(param5 + 2);
      }
      
      private function o12903(param1:int) : String
      {
         var _loc2_:String = "Next ";
         _loc2_ = _loc2_ + (param1 > 1?param1 + " Wins: ":"Win: ");
         if(o4519.o8116.o476.o9095.o2596 > 0)
         {
            _loc2_ = _loc2_ + (o4519.o8116.o476.o9095.o2596 + "x XP Bonus");
         }
         if(o4519.o8116.o476.o9095.o979 > 0)
         {
            if(o4519.o8116.o476.o9095.o2596 > 0)
            {
               _loc2_ = _loc2_ + " & ";
            }
            _loc2_ = _loc2_ + (o4519.o8116.o476.o9095.o979 + "x SAS4 Cred Bonus");
         }
         return _loc2_;
      }
      
      public function o1810(param1:int, param2:Boolean = true) : void
      {
         o9944(param1,false,false);
         o13181(param1,false);
         var _loc4_:o12290 = o6003.o4364(param1) as o12290;
         _loc4_.enabled = param2;
         var _loc7_:TextField = _loc4_.asset.getChildByName("lblCharacterName") as TextField;
         if(_loc7_ != null)
         {
            _loc7_.text = "";
         }
         _loc4_.o13586 = "Create New Character";
         o8056[param1].visible = false;
         var _loc5_:MovieClip = _loc4_.asset.getChildByName("icon") as MovieClip;
         _loc5_.gotoAndStop(1);
         var _loc3_:MovieClip = _loc4_.asset.getChildByName("dailyReward") as MovieClip;
         _loc3_.gotoAndStop(1);
         _loc3_.visible = false;
         var _loc6_:MovieClip = _loc4_.asset.getChildByName("dailyRewardMutiplier") as MovieClip;
         _loc6_.gotoAndStop(1);
         _loc6_.visible = false;
      }
      
      public function o3416(param1:int, param2:int) : void
      {
         o9944(param1,false,false);
         o13181(param1,false);
         var _loc4_:o12290 = o6003.o4364(param1) as o12290;
         _loc4_.enabled = false;
         _loc4_.o13586 = "Unlock at level " + param2;
         var _loc5_:MovieClip = _loc4_.asset.getChildByName("icon") as MovieClip;
         _loc5_.gotoAndStop(1);
         var _loc3_:MovieClip = _loc4_.asset.getChildByName("dailyReward") as MovieClip;
         _loc3_.gotoAndStop(1);
         _loc3_.visible = false;
         var _loc6_:MovieClip = _loc4_.asset.getChildByName("dailyRewardMutiplier") as MovieClip;
         _loc6_.gotoAndStop(1);
         _loc6_.visible = false;
      }
      
      public function o13681(param1:int) : void
      {
         var _loc2_:o12290 = o6003.o4364(param1) as o12290;
         _loc2_.enabled = false;
         var _loc3_:MovieClip = _loc2_.asset.getChildByName("dailyRewardMutiplier") as MovieClip;
         _loc3_.gotoAndStop(1);
         _loc3_.visible = false;
         o9944(param1,true,false);
      }
      
      public function o712(param1:String, param2:String) : void
      {
      }
      
      protected function o17468() : void
      {
      }
      
      protected function o10170(param1:int) : Boolean
      {
         return false;
      }
      
      protected function o19420(param1:int) : void
      {
      }
      
      protected function o8090(param1:int) : void
      {
      }
      
      protected function o5312(param1:String, param2:int) : void
      {
      }
      
      protected function o18695() : void
      {
      }
      
      protected function o17052(param1:o11507) : void
      {
         o13288.removeEventListener(o5595.o16737,o17052);
         o13288.o2120 = -1;
         o13288.addEventListener(o5595.o16737,o17052,false,0,true);
         o10043();
      }
      
      protected function o10043() : void
      {
      }
      
      private function o9944(param1:int, param2:Boolean, param3:Boolean) : void
      {
         o6003.o19568[param1].visible = param2 == false;
         o8056[param1].visible = param3;
         o13288.o19568[param1].visible = param2;
      }
      
      public function o10619(param1:int) : void
      {
      }
      
      private function o343(param1:Event) : void
      {
         asset.removeEventListener("addedToStage",o343);
      }
      
      override public function o13315(param1:int, param2:Function) : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         super.o13315(param1,param2);
         var _loc3_:MovieClip = asset.getChildByName("content") as MovieClip;
         _loc5_ = 0;
         while(_loc5_ < 6)
         {
            _loc4_ = _loc3_.getChildByName("char" + _loc5_.toString()) as MovieClip;
            _loc4_.gotoAndPlay("Out" + _loc5_.toString());
            _loc5_++;
         }
      }
      
      override protected function o6662(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         super.o6662(param1);
         if(asset == null)
         {
            return;
         }
         var _loc6_:int = 0;
         var _loc5_:* = this.o14567;
         for each(var _loc3_ in this.o14567)
         {
            o11692(_loc3_);
         }
         var _loc8_:int = 0;
         var _loc7_:* = this.o6003.o19568;
         for each(_loc2_ in this.o6003.o19568)
         {
            _loc4_ = _loc2_.asset.getChildByName("arrow") as MovieClip;
            o11692(_loc4_);
         }
         var _loc10_:int = 0;
         var _loc9_:* = this.o13288.o19568;
         for each(_loc2_ in this.o13288.o19568)
         {
            _loc4_ = _loc2_.asset.getChildByName("arrow") as MovieClip;
            o11692(_loc4_);
         }
      }
   }
}
