package
{
   import assets.ui.dialog.AugmentProgressRewardDialogAsset;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o20516 extends o9743
   {
       
      
      private var o1946:o12290;
      
      private var o15731:o12290;
      
      private var o699:o10832;
      
      private var o16989:o13064;
      
      private var o19419:o14200;
      
      private var o2990:Boolean = false;
      
      private var o15976:Number = 0;
      
      private var o8749:int;
      
      private var o18055:Number;
      
      private var o17995:o17905;
      
      public function o20516()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         var _loc6_:int = 0;
         var _loc3_:* = null;
         super.init(param1);
         this.o16989 = param2;
         o19419 = o4519.o8116.profileData;
         var _loc11_:o20565 = new o20565(this);
         o1946 = _loc11_.o15961("btnDebugReset","Reset",container);
         o15731 = _loc11_.o15961("btnDebugNextLevelXp","Next Lv",container);
         o1946.visible = false;
         o15731.visible = false;
         var _loc5_:o15625 = _loc11_.o17578("backArrow",container);
         var _loc7_:o15625 = _loc11_.o17578("nextArrow",container);
         var _loc12_:Vector.<o15625> = new Vector.<o15625>();
         _loc6_ = 0;
         while(_loc6_ < 3)
         {
            _loc3_ = _loc11_.o17578("itemContainer" + _loc6_.toString(),container);
            _loc12_.push(_loc3_);
            _loc6_++;
         }
         var _loc13_:MovieClip = container.getChildByName("itemRecordPagingCenter") as MovieClip;
         o699 = _loc11_.o3870(_loc5_,_loc7_,_loc12_,o17008,_loc13_);
         o699.o11231 = true;
         var _loc9_:int = o19419.o7923.o5662;
         var _loc10_:int = o19419.o5292.o418.o16180(_loc9_);
         o8749 = _loc10_;
         o17995 = o19419.o5292.o418.o2802[o8749];
         var _loc8_:int = o19419.o5292.o418.o2802.length;
         var _loc4_:* = _loc10_ == _loc8_ - 1;
         o699.o1746(!!_loc4_?_loc8_:_loc8_ - 1);
         o699.o10459 = Math.floor(_loc10_ / 3);
         o699.o2120 = _loc10_;
         o699.o1258();
         _loc11_.o13640();
         _loc11_ = null;
         o18055 = new Date().time;
      }
      
      protected function o17008(param1:int, param2:o15625) : void
      {
         var _loc10_:o17905 = o19419.o5292.o418.o2802[param1];
         var _loc8_:int = o19419.o7923.o5662;
         var _loc7_:int = o19419.o5292.o418.o16180(_loc8_);
         var _loc6_:* = param1 == o699.o2120;
         var _loc9_:MovieClip = param2.asset.getChildByName("icon") as MovieClip;
         var _loc5_:TextField = param2.asset.getChildByName("level") as TextField;
         var _loc11_:TextField = param2.asset.getChildByName("xpLevelCount") as TextField;
         var _loc4_:MovieClip = param2.asset.getChildByName("xpBar") as MovieClip;
         var _loc12_:MovieClip = param2.asset.getChildByName("levelUp") as MovieClip;
         var _loc3_:TextField = param2.asset.getChildByName("description") as TextField;
         _loc9_.gotoAndStop(_loc10_.o13439);
         _loc12_.gotoAndStop(1);
         _loc12_.visible = false;
         _loc5_.text = "Level " + _loc10_.level.toString();
         _loc3_.text = _loc10_.o14733();
         _loc4_.visible = _loc6_;
         _loc11_.visible = _loc6_;
         if(_loc6_)
         {
            o5100();
         }
         else if(param1 < _loc7_)
         {
            _loc11_.text = "Awarded";
            _loc11_.visible = true;
         }
         else
         {
            _loc4_.gotoAndStop(1);
         }
      }
      
      public function o11109() : Boolean
      {
         if(!o19419)
         {
            return false;
         }
         var _loc1_:o9145 = o19419.o7923;
         return _loc1_.o15202 != _loc1_.o5662;
      }
      
      override protected function o6662(param1:Event) : void
      {
         var _loc12_:* = null;
         var _loc5_:* = null;
         var _loc11_:* = NaN;
         var _loc8_:int = 0;
         var _loc4_:int = 0;
         var _loc10_:int = 0;
         var _loc9_:Number = NaN;
         var _loc7_:int = 0;
         if(asset == null)
         {
            return;
         }
         var _loc6_:Number = new Date().time;
         var _loc3_:Number = (_loc6_ - o18055) / 1000;
         o18055 = _loc6_;
         if(o12514 == false && o2990 == false)
         {
            var _loc14_:int = 0;
            var _loc13_:* = o699.o19568;
            for each(var _loc2_ in o699.o19568)
            {
               _loc12_ = _loc2_.asset.getChildByName("levelUp") as MovieClip;
               if(_loc12_.currentFrameLabel == "End")
               {
                  _loc12_.stop();
                  _loc12_.visible = false;
               }
            }
            _loc5_ = o19419.o7923;
            if(_loc5_.o15202 != _loc5_.o5662)
            {
               _loc11_ = 1;
               _loc8_ = _loc5_.o5662 > o17995.o18875?o17995.o18875:_loc5_.o5662;
               _loc4_ = _loc5_.o15202 > o17995.o18875?o17995.o18875:_loc5_.o15202;
               _loc10_ = _loc4_ - _loc8_;
               _loc9_ = _loc10_ / _loc11_;
               if(_loc9_ > o15976 - 0.01)
               {
                  o15976 = _loc9_;
               }
            }
            _loc7_ = o19419.o5292.o418.o19447();
            if(_loc5_.o5662 < _loc7_)
            {
               _loc5_.o5662 = _loc5_.o5662 + o15976 * _loc3_;
               if(_loc5_.o5662 > _loc5_.o15202)
               {
                  _loc5_.o5662 = _loc5_.o15202;
                  o15976 = 0;
               }
            }
            else
            {
               _loc5_.o5662 = _loc7_;
               _loc5_.o15202 = _loc7_;
            }
            o5100();
         }
         super.o6662(param1);
      }
      
      private function o810(param1:int) : String
      {
         var _loc2_:String = "";
         if(param1 > 1000000)
         {
            _loc2_ = o16724.o10417(param1 / 1000) + "K";
         }
         else
         {
            _loc2_ = o16724.o10417(param1);
         }
         return _loc2_;
      }
      
      private function o5100() : void
      {
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc13_:* = null;
         var _loc2_:* = null;
         var _loc9_:* = null;
         var _loc11_:* = null;
         var _loc5_:int = o19419.o5292.o418.o19447();
         if(o19419.o7923.o5662 > _loc5_)
         {
            return;
         }
         var _loc14_:o17905 = o17995;
         var _loc16_:int = o19419.o7923.o5662;
         var _loc8_:int = o19419.o5292.o418.o16180(_loc16_);
         var _loc18_:int = o19419.o5292.o418.o2802.length;
         var _loc12_:* = _loc8_ > o8749;
         if(_loc8_ != o699.o2120)
         {
            _loc4_ = o699.o3410(o699.o2120);
            if(_loc4_ != null)
            {
               _loc6_ = _loc4_.asset.getChildByName("xpBar") as MovieClip;
               _loc13_ = _loc4_.asset.getChildByName("xpLevelCount") as TextField;
               _loc6_.visible = false;
               _loc13_.visible = false;
            }
         }
         var _loc1_:o15625 = o699.o3410(_loc8_);
         var _loc15_:int = _loc8_ == 0?0:o19419.o5292.o418.o2802[_loc8_ - 1].o18875;
         var _loc10_:int = _loc16_ - _loc15_;
         var _loc17_:int = o17995.o3173;
         var _loc7_:Number = _loc10_ / _loc17_;
         var _loc3_:int = _loc7_ * 99 + 1;
         if(_loc8_ == o699.o2120 && _loc1_ != null)
         {
            _loc2_ = _loc1_.asset.getChildByName("xpBar") as MovieClip;
            _loc9_ = _loc1_.asset.getChildByName("xpLevelCount") as TextField;
            _loc2_.visible = true;
            _loc9_.visible = true;
            if(_loc8_ > o8749)
            {
               _loc3_ = 100;
               _loc9_.visible = false;
               o1256(_loc9_,o810(_loc17_) + "/" + o810(_loc17_));
            }
            else
            {
               o1256(_loc9_,o810(_loc10_) + "/" + o810(_loc17_));
            }
            _loc2_.gotoAndStop(_loc3_);
         }
         if(_loc12_)
         {
            o8749 = Number(o8749) + 1;
            o17995 = o19419.o5292.o418.o2802[o8749];
            o15976 = 0;
            if(_loc1_ != null)
            {
               _loc11_ = _loc1_.asset.getChildByName("levelUp") as MovieClip;
               _loc11_.gotoAndPlay(1);
            }
            o9819(_loc14_,o17995);
         }
      }
      
      private function o9819(param1:o17905, param2:o17905) : void
      {
         o2990 = true;
         var _loc3_:o5498 = new o5498();
         _loc3_.o17920 = false;
         _loc3_.o16384(new AugmentProgressRewardDialogAsset(),param1,param2);
         o16989.o9642(_loc3_);
         _loc3_.o9072(o10196,o10196);
      }
      
      private function o10196() : void
      {
         o2990 = false;
         var _loc1_:int = 0;
         if(o19419 && o19419.o5292 && o19419.o5292.o418 && o19419.o5292.o418.o2802)
         {
            _loc1_ = o19419.o5292.o418.o2802.length;
         }
         var _loc2_:* = o8749 == _loc1_ - 1;
         if(_loc2_)
         {
            if(o699)
            {
               o699.o1746(_loc1_);
            }
         }
         if(o699)
         {
            o699.o2120 = o8749;
            o699.o1258();
         }
         o16989.o1258();
      }
      
      override public function o13640() : void
      {
         o19419.saveData();
         o16989.o13424(true);
         o1946 = null;
         o15731 = null;
         o699 = null;
         o16989 = null;
         o19419 = null;
         super.o13640();
      }
   }
}
