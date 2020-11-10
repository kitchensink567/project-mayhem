package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o3715 extends o1770
   {
       
      
      protected var o6003:o20421;
      
      private var o20397:o5910;
      
      private var o3492:o14096;
      
      private var o15690:int;
      
      private var o12753:MovieClip;
      
      private var o11673:MovieClip;
      
      private var o13782:MovieClip;
      
      private var o6656:Boolean = false;
      
      public function o3715()
      {
         super();
      }
      
      override public function o16384(param1:MovieClip, param2:String, param3:String, param4:String, param5:String, param6:String, param7:int, param8:int, param9:int, param10:Function, param11:Boolean) : void
      {
         var _loc13_:int = 0;
         var _loc12_:* = null;
         super.o16384(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,true);
         o11673 = this.container.getChildByName("newWeaponAnimation") as MovieClip;
         o11673.gotoAndStop(1);
         o11673.visible = false;
         o20397 = new o5910();
         o20397.init(o11673.getChildByName("btnWeapon") as MovieClip);
         o20397.addEventListener("click",o11215,false,0,true);
         var _loc14_:Array = [];
         _loc13_ = 0;
         while(_loc13_ < 6)
         {
            _loc12_ = o9679.o15961("btnSelectCharacter" + _loc13_,"Test " + _loc13_,container);
            _loc12_.enabled = false;
            _loc14_.push(_loc12_);
            _loc13_++;
         }
         o6003 = o9679.o3538(_loc14_);
         o15690 = o14200.o19505.o202.o11075;
         o6003.addEventListener(o5595.o16737,o12382,false,0,true);
         o6003.o2120 = o14200.o19505.o202.o11075;
         o13533();
      }
      
      override protected function o6662(param1:Event) : void
      {
         if(asset != null || asset.stage != null)
         {
            super.o6662(param1);
         }
         o11692(o11673);
         o11692(o13782);
      }
      
      private function o13533() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         var _loc1_:o14200 = o14200.o19505;
         _loc3_ = 0;
         while(_loc3_ < 6)
         {
            if(_loc3_ < _loc1_.data.o11400.length)
            {
               _loc2_ = _loc1_.data.o11400[_loc3_];
               if(_loc2_ != null)
               {
                  o16887(_loc3_,_loc2_.o12110,_loc2_.o11990,_loc2_.level,_loc2_.o2274);
               }
            }
            _loc3_++;
         }
      }
      
      private function o12382(param1:o11507) : void
      {
         var _loc2_:int = 0;
         var _loc3_:o14200 = o14200.o19505;
         var _loc6_:int = param1.o6457;
         _loc3_.o202.o11075 = _loc6_;
         var _loc4_:o9145 = _loc3_.data.o11400[_loc6_];
         if(_loc4_ == null)
         {
            _loc2_ = 0;
            var _loc8_:int = 0;
            var _loc7_:* = _loc3_.data.o11400;
            for each(var _loc5_ in _loc3_.data.o11400)
            {
               if(_loc5_ == null)
               {
                  _loc2_++;
                  continue;
               }
               break;
            }
            o6003.o2120 = _loc2_;
            o14200.o19505.o202.o11075 = _loc6_;
            return;
         }
      }
      
      override public function o13640() : void
      {
         o4519.o10093.o16989.o1258();
         o14200.o19505.o15894.o4848.o20466(o14200.o19505);
         o6003 = null;
         o20397 = null;
         o3492 = null;
         o12753 = null;
         o11673 = null;
         o13782 = null;
         super.o13640();
      }
      
      private function o11215(param1:MouseEvent) : void
      {
         if(o3492 == null)
         {
            return;
         }
         var _loc2_:o5910 = param1.target as o5910;
         var _loc3_:o4117 = o4117.o18521(o14200.o19505,o14200.o19505.o7923);
         o4519.o10093.o16989.o18017(o3492,_loc3_,null);
      }
      
      public function o16577(param1:int, param2:String, param3:String, param4:int, param5:int, param6:Number, param7:int, param8:int, param9:int, param10:o14096) : void
      {
         o6656 = param10 != null;
         o12066(param1,param2,param3,param4,param5,param6,false,param9);
         o12753 = o14240.getChildByName("fullBoost") as MovieClip;
         var _loc12_:TextField = o12753.getChildByName("lblFullBoost") as TextField;
         _loc12_.text = param7 > 0?"Full Boost Unlocked for " + param7.toString() + " Hours":"";
         o12753.visible = param7 > 0;
         if(o12753.visible)
         {
            o210(0.8,o18912);
         }
         var _loc15_:TextField = container.getChildByName("lblBadgeEarned") as TextField;
         _loc15_.visible = param8 >= 0;
         if(param8 > 0)
         {
            o210(1.2,o16457);
            _loc15_.text = o19427.o160(param8) + "\nBadge Earned";
         }
         o13782 = container.getChildByName("badgeAnimation") as MovieClip;
         var _loc11_:MovieClip = o13782.getChildByName("badge") as MovieClip;
         var _loc13_:MovieClip = _loc11_.getChildByName("level") as MovieClip;
         _loc13_.gotoAndStop(param8 + 1);
         o13782.visible = param8 >= 0;
         if(_loc11_.visible == false)
         {
            o13782.gotoAndStop(1);
         }
         o20397.visible = param10 != null;
         if(param10 != null)
         {
            o11673.gotoAndPlay(1);
            o11673.visible = true;
            o210(1.5,o16457);
         }
         var _loc14_:TextField = container.getChildByName("lblBonusWeapon") as TextField;
         _loc14_.visible = param10 != null;
         o14290(param10);
         o13533();
      }
      
      private function o14290(param1:o14096) : void
      {
         this.o3492 = param1;
         if(param1 == null)
         {
            return;
         }
         var _loc3_:o14200 = o14200.o19505;
         var _loc2_:o5910 = o20397;
         _loc2_.o2752 = param1;
         var _loc4_:o20006 = param1.o8815(null);
         _loc4_.o6088 = _loc2_;
         _loc2_.o3700 = _loc4_;
         _loc2_.o1258();
         _loc2_.visible = true;
      }
      
      public function o16887(param1:int, param2:String, param3:String, param4:int, param5:int) : void
      {
         var _loc6_:o12290 = o6003.o4364(param1) as o12290;
         _loc6_.enabled = true;
         _loc6_.o13586 = param2 + ", Level " + param4 + ", " + param3;
         var _loc8_:TextField = _loc6_.asset.getChildByName("lblCharacterName") as TextField;
         if(_loc8_ != null)
         {
            _loc8_.text = param2;
         }
         _loc6_.o13586 = "Level " + param4 + ", " + param3;
         var _loc9_:TextField = _loc6_.asset.getChildByName("lblRequiredLevel") as TextField;
         _loc9_.visible = param4 < 90 && o6656;
         var _loc7_:MovieClip = _loc6_.asset.getChildByName("icon") as MovieClip;
         if(_loc7_ != null)
         {
            _loc7_.gotoAndStop(param5 + 2);
         }
      }
   }
}
