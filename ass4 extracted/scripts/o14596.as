package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class o14596 extends o11191
   {
       
      
      private var o8027:o14200;
      
      private const o1033:int = 100;
      
      public function o14596(param1:o14200)
      {
         super();
         o8027 = param1;
      }
      
      private function o3673() : void
      {
         this.o4436();
      }
      
      override public function o16384(param1:MovieClip, param2:int, param3:o13064) : void
      {
         super.o16384(param1,param2,param3);
         o8027.o15894.o4848.o18278.o16280(null,o19869.o391,o98);
      }
      
      override public function o13640() : void
      {
         o8027.o15894.o4848.o18278.o12657(o19869.o391,o98);
         o8027.o202.o9706 = -1;
         o8027 = null;
         super.o13640();
      }
      
      private function o98(param1:o19869) : void
      {
         this.o1258();
      }
      
      override protected function o17382() : o12158
      {
         return new o7455(o8027,o3673,this.o16989 as o14043,this);
      }
      
      override protected function o3833(param1:int) : void
      {
         var _loc5_:* = null;
         var _loc2_:* = null;
         var _loc4_:o14096 = null;
         if(param1 < o8027.o7923.o7993.length)
         {
            _loc4_ = o8027.o7923.o7993[param1];
         }
         var _loc3_:int = _loc4_ == null?1:_loc4_.o457.o3;
         if(_loc4_ == null)
         {
            o8152(param1,null,_loc3_,0,-1,0,true,_loc4_);
         }
         else
         {
            _loc5_ = _loc4_.o8815(null);
            _loc2_ = o8152(param1,_loc5_,_loc3_,_loc4_.o263,_loc4_.o10748,_loc4_.o4752,_loc4_.o1419,_loc4_);
            _loc5_.o6088 = _loc2_;
         }
      }
      
      override protected function o14793(param1:int) : void
      {
         o6839 = param1 == 0;
         o11890 = 3;
         o8027.o202.o9706 = param1;
      }
      
      override protected function o4225(param1:Boolean, param2:int) : void
      {
         var _loc6_:o14096 = null;
         if(param2 >= 0)
         {
            _loc6_ = !!param1?o8027.o7923.o7993[param2]:o8027.o7923.o18660(o11890)[param2];
         }
         o11800(_loc6_ != null);
         if(_loc6_ == null)
         {
            return;
         }
         var _loc4_:o6679 = o8027.o7923.o17638.o8567(_loc6_);
         var _loc3_:int = _loc4_.o5109 + _loc6_.o13429;
         var _loc7_:int = _loc4_.o17383 + _loc6_.o14419;
         var _loc10_:int = o8027.o5292.o18982.o13727(_loc4_,false);
         var _loc11_:int = o8027.o5292.o18982.o13727(_loc4_,true);
         var _loc5_:int = _loc4_.o3440.o20235;
         var _loc8_:o11855 = new o11855();
         this.o3311(_loc6_.o10748,param1,_loc6_.o7501,_loc6_.grade,_loc6_.o2774,_loc6_.o8558,_loc6_.o9139,_loc3_,_loc7_,_loc6_.o5520,_loc8_,_loc6_.o6779,_loc6_.o2752.o11412,_loc10_,_loc5_,_loc11_,_loc5_,_loc6_.o4680,_loc6_.o2752.o11570,_loc6_.o263,_loc6_.o4752,_loc6_.o1419,_loc6_.o2752.o19901);
         _loc6_.o3897(_loc8_,o11106);
         o6839 = _loc6_.o2752.o6365 == 1;
         var _loc9_:o4117 = o4117.o18521(o8027,o8027.o7923);
         o9193.o5127(_loc6_,_loc9_);
         o9210(_loc6_.o5290);
         o9193.o13257(this,_loc6_,_loc9_);
         if(_loc6_.o2397)
         {
            _loc6_.o2397 = false;
            this.o8027.saveData();
            o1878.o1258();
         }
      }
      
      override protected function get o2673() : int
      {
         return o8027.o7923.o18660(o11890).length;
      }
      
      protected function o17848(param1:Boolean, param2:int) : o14096
      {
         return !!param1?o8027.o7923.o7993[param2]:o8027.o7923.o18660(o11890)[param2];
      }
      
      override protected function o12688(param1:int) : void
      {
         var _loc4_:Vector.<o14096> = o8027.o7923.o18660(o11890);
         if(param1 >= _loc4_.length)
         {
            return;
         }
         var _loc3_:o14096 = _loc4_[param1];
         var _loc5_:o20006 = _loc3_.o8815(null);
         var _loc2_:o5910 = this.o3855(param1,_loc3_,_loc5_);
         _loc5_.o6088 = _loc2_;
      }
      
      override protected function o19493(param1:int) : MovieClip
      {
         var _loc3_:Vector.<o14096> = o8027.o7923.o7993;
         if(param1 >= _loc3_.length)
         {
            return null;
         }
         var _loc2_:o14096 = _loc3_[param1];
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc4_:o11855 = new o11855();
         _loc2_.o3897(_loc4_,o3489);
         return _loc4_;
      }
      
      override protected function o10072(param1:int) : MovieClip
      {
         var _loc3_:Vector.<o14096> = o8027.o7923.o18660(o11890);
         if(param1 >= _loc3_.length)
         {
            return null;
         }
         var _loc2_:o14096 = _loc3_[param1];
         var _loc4_:o11855 = new o11855();
         _loc2_.o3897(_loc4_,o3489);
         return _loc4_;
      }
      
      override protected function o7247(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc7_:o14096 = o8027.o7923.o18660(o11890)[param2];
         var _loc8_:int = o8027.o7923.level;
         if(_loc8_ < _loc7_.o2752.o16703)
         {
            o4519.o8116.o4812.ui.error.play();
            o4519.o10093.o16989.o12407("Unable to equip weapon","The character must be at least level " + _loc7_.o2752.o16703.toString() + " to equip this weapon");
            return;
         }
         if(_loc7_.o2752.o11570 == 3)
         {
            o8027.o15894.o4848.o811();
         }
         var _loc3_:* = _loc7_.o2752.o6365 == 1;
         if(_loc3_ && param1 != 0)
         {
            param1 = 0;
         }
         else if(_loc3_ == false && param1 == 0)
         {
            if(o8027.o7923.o7993[1] == null)
            {
               param1 = 1;
            }
            else if(o8027.o7923.o7993[2] == null)
            {
               param1 = 2;
            }
            else
            {
               param1 = 1;
            }
         }
         var _loc6_:o14096 = o8027.o7923.o7993[param1];
         o8027.o7923.o7993[param1] = _loc7_;
         if(_loc6_ != null)
         {
            _loc4_ = o8027.o7923.o5517(_loc6_);
            _loc5_ = o8027.o7923.o5517(_loc7_);
            o8027.o7923.o1819().splice(_loc4_,1);
            o8027.o7923.o1819().splice(_loc5_,0,_loc6_);
            this.o1258();
         }
         o15023.o2120 = -1;
         o4519.o8116.o4812.ui.o12925.play();
         o8027.saveData();
      }
      
      override protected function o14970(param1:int) : int
      {
         var _loc2_:o14096 = o8027.o7923.o7993[param1];
         o8027.o7923.o7993[param1] = null;
         var _loc3_:int = o8027.o7923.o20557();
         o8027.o7923.o20853(_loc2_);
         var _loc4_:int = o8027.o7923.o13895(_loc2_);
         o4519.o8116.o4812.ui.o11423.play();
         this.o6791 = false;
         o15023.o2120 = -1;
         this.o1258();
         o8027.saveData();
         return -1;
      }
      
      override protected function o5400(param1:int) : void
      {
         var _loc2_:o14096 = o8027.o7923.o18660(o11890)[param1];
         o8027.o7923.o18824(_loc2_);
         o10739();
         o4519.o8116.o4812.ui.o17861.play();
         o8027.o12094.o19856(o8027);
      }
      
      private function o12709() : void
      {
         o12257(o11915.o2120);
      }
      
      private function o3459() : void
      {
      }
      
      override protected function o5942() : void
      {
         var _loc1_:* = null;
         if(o8027.o7923.o18660(o11890).length > 0)
         {
            _loc1_ = o8027.o7923.o7993[o11915.o2120];
         }
         var _loc2_:o14096 = null;
         if(o15023.o2120 != -1)
         {
            _loc2_ = o8027.o7923.o18660(o11890)[o15023.o2120];
         }
         if(o6791 && _loc1_ && _loc1_.o2752.o19901 || o6791 == false && _loc2_ && _loc2_.o2752.o19901)
         {
            o16989.o12407("Selling premium weapon","You are not able to sell premium items.",o3459);
         }
         else if(o6791)
         {
            o16989.o17139("Selling equipped weapon","Are you sure you want to sell your equipped weapon?",o12709);
         }
         else
         {
            this.o5400(o15023.o2120);
         }
      }
      
      override protected function o12257(param1:int) : void
      {
         var _loc2_:o14096 = o8027.o7923.o7993[param1];
         o8027.o7923.o18824(_loc2_);
         o10739();
         o4519.o8116.o4812.ui.o17861.play();
         o8027.o12094.o19856(o8027);
      }
      
      override protected function o13023(param1:Boolean, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc3_:Number = NaN;
         var _loc5_:o14096 = o17848(param1,param2);
         if(o8027.o7923.o17638.o20403(_loc5_) == false)
         {
            _loc4_ = o8027.o7923.o17638.o8567(_loc5_);
            _loc3_ = o8027.o5292.o18982.o13727(_loc4_,false);
            (o16989 as o14043).o14462(_loc3_,"standard " + _loc4_.o3440.name + " ammo");
            o4519.o8116.o4812.ui.o4930.play();
         }
         else
         {
            o4519.o8116.o4812.ui.o6915.play();
         }
      }
      
      override protected function o7959(param1:Boolean, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc3_:Number = NaN;
         var _loc5_:o14096 = o17848(param1,param2);
         if(o8027.o7923.o17638.o5391(_loc5_) == false)
         {
            _loc4_ = o8027.o7923.o17638.o8567(_loc5_);
            _loc3_ = o8027.o5292.o18982.o13727(_loc4_,false);
            (o16989 as o14043).o14462(_loc3_ * 100,"standard " + _loc4_.o3440.name + " ammo");
            o4519.o8116.o4812.ui.o4930.play();
         }
         else
         {
            o4519.o8116.o4812.ui.o6915.play();
         }
      }
      
      override protected function o11769(param1:Boolean, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc6_:Number = NaN;
         var _loc3_:* = null;
         var _loc5_:o14096 = o17848(param1,param2);
         if(o8027.o7923.o17638.o16196(_loc5_) == false)
         {
            _loc4_ = o8027.o7923.o17638.o8567(_loc5_);
            _loc6_ = o8027.o5292.o18982.o13727(_loc4_,true);
            (o16989 as o14043).o14462(_loc6_,"premium " + _loc4_.o3440.name + " ammo");
            o4519.o8116.o4812.ui.o4930.play();
         }
         else
         {
            _loc3_ = o8027.o7923.o17638.o8567(_loc5_);
            o8027.o15894.o4848.o2719.o5561(_loc3_.o3440.name,false);
            o4519.o8116.o4812.ui.o4676.play();
         }
      }
      
      override protected function o14627(param1:Boolean, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc6_:Number = NaN;
         var _loc3_:* = null;
         var _loc5_:o14096 = o17848(param1,param2);
         if(o8027.o7923.o17638.o7826(_loc5_) == false)
         {
            _loc4_ = o8027.o7923.o17638.o8567(_loc5_);
            _loc6_ = o8027.o5292.o18982.o13727(_loc4_,true);
            (o16989 as o14043).o14462(_loc6_ * 100,"premium " + _loc4_.o3440.name + " ammo");
            o4519.o8116.o4812.ui.o4930.play();
         }
         else
         {
            _loc3_ = o8027.o7923.o17638.o8567(_loc5_);
            o8027.o15894.o4848.o2719.o5561(_loc3_.o3440.name,false);
            o4519.o8116.o4812.ui.o4676.play();
         }
      }
      
      override protected function o13757(param1:Boolean, param2:int) : void
      {
         var _loc4_:o14096 = o17848(param1,param2);
         var _loc3_:o6679 = o8027.o7923.o17638.o8567(_loc4_);
         _loc3_.o18664(_loc3_.o5109);
         o8027.saveData();
      }
      
      override protected function o896(param1:Boolean, param2:int) : void
      {
         var _loc4_:o14096 = o17848(param1,param2);
         var _loc3_:o6679 = o8027.o7923.o17638.o8567(_loc4_);
         _loc3_.o20214(_loc3_.o17383);
         o8027.saveData();
      }
      
      override protected function o11729(param1:int, param2:int) : void
      {
         var _loc3_:o14096 = o8027.o7923.o18660(o11890)[param1];
         var _loc4_:o14096 = o8027.o7923.o18660(o11890)[param2];
         param1 = o8027.o7923.o5517(_loc3_);
         param2 = o8027.o7923.o5517(_loc4_);
         o8027.o7923.o1819()[param1] = _loc4_;
         o8027.o7923.o1819()[param2] = _loc3_;
         this.o1258();
         o4519.o8116.o4812.ui.o6915.play();
      }
      
      override protected function o12414() : void
      {
         var _loc1_:o14096 = o8027.o7923.o7993[1];
         o8027.o7923.o7993[1] = o8027.o7923.o7993[2];
         o8027.o7923.o7993[2] = _loc1_;
         if(o11915.o2120 == 1)
         {
            o11915.o2120 = 2;
         }
         else
         {
            o11915.o2120 = 1;
         }
         this.o1258();
         o4519.o8116.o4812.ui.o6915.play();
      }
      
      override protected function o2465(param1:Boolean, param2:int) : int
      {
         var _loc3_:o14096 = o17848(param1,param2);
         return o8027.o7923.o19353(_loc3_);
      }
      
      override protected function o17899(param1:MouseEvent) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:int = o8027.o7923.o18936();
         var _loc3_:int = o8027.o7923.o1819().length;
         if(_loc2_ <= 1 && o6791 || o6791 == false && _loc2_ == 0 && _loc3_ <= 1)
         {
            _loc4_ = o8027.o10206("dialogMessage.cannotSellAllEquippedWeapons.title");
            _loc5_ = o8027.o10206("dialogMessage.cannotSellAllEquippedWeapons.message");
            this.o16989.o12407(_loc4_,_loc5_);
         }
         else
         {
            super.o17899(param1);
         }
      }
      
      override protected function o2329() : void
      {
         var _loc1_:String = o8027.o10206("dialogMessage.unableToUnequipWeapon.title");
         var _loc2_:String = o8027.o10206("dialogMessage.unableToUnequipWeapon.message");
         this.o16989.o12407(_loc1_,_loc2_);
      }
      
      override protected function o261() : void
      {
         var _loc1_:String = o8027.o10206("dialogMessage.sellWeapon.title");
         var _loc2_:String = o8027.o10206("dialogMessage.sellWeapon.message");
         _loc2_ = _loc2_.replace("[SALE_PRICE]",this.o2135());
         this.o16989.o13483(_loc1_,_loc2_,o5942);
      }
      
      override protected function o20371() : Boolean
      {
         return o8027.o7923.o18936() > 1;
      }
      
      override protected function o3785(param1:MouseEvent) : void
      {
         super.o3785(param1);
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o11639(param1:o15625) : void
      {
         if(param1 == o9539 || param1 == o17375 || param1 == o4038 || param1 == o4038 || param1 == o15476 || param1 == o1934 || param1 == o20029)
         {
            o4519.o8116.o4812.ui.o14759.play();
         }
         else
         {
            o4519.o8116.o4812.ui.o14648.play();
         }
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14615.play();
      }
      
      override protected function o12644(param1:int) : void
      {
         var _loc2_:o5910 = o15023.o3410(param1) as o5910;
         var _loc3_:int = o14413.o20705 - o8027.o7923.o7993.length;
         _loc2_.o2138 = param1 >= _loc3_;
         _loc2_.o2752 = null;
         _loc2_.o1258();
      }
      
      override protected function o20136(param1:int, param2:int) : Boolean
      {
         var _loc4_:Vector.<o14096> = o8027.o7923.o18660(o11890);
         var _loc3_:o14096 = _loc4_[param2];
         var _loc5_:o14096 = o8027.o7923.o7993[param1];
         return _loc3_.o19940 == _loc5_.o19940;
      }
      
      override protected function o6386() : Boolean
      {
         return o8027.o7923.o18936() > 1;
      }
      
      override protected function o12638(param1:Event) : void
      {
         super.o12638(param1);
         o16989.o5073();
      }
   }
}
