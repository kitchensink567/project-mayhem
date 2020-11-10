package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o16299 extends o18725
   {
       
      
      private var o19419:o14200;
      
      private var o2847:int;
      
      private var o8355:Boolean = false;
      
      public function o16299(param1:o14200)
      {
         super();
         this.o19419 = param1;
         o19419.o5292.o12970.addEventListener(o16236.o6593,o14591,false,0,true);
      }
      
      private function o14591(param1:Event) : void
      {
         var _loc6_:Date = o4519.o8116.o15020;
         if(_loc6_ == null)
         {
            return;
         }
         var _loc4_:String = _loc6_.toString();
         var _loc7_:Date = new Date(_loc6_.getUTCFullYear(),_loc6_.getUTCMonth(),_loc6_.getUTCDate(),_loc6_.getUTCHours(),_loc6_.getUTCMinutes(),_loc6_.getUTCSeconds());
         var _loc5_:Date = new Date(_loc7_.getFullYear(),_loc7_.getMonth(),_loc7_.getDate());
         _loc5_.date = _loc5_.date + 1;
         var _loc3_:Number = _loc5_.getTime() - _loc7_.getTime();
         o13067(_loc3_);
         var _loc2_:Boolean = o19419.o15894.o4848.isGuest;
         if(_loc2_ == false)
         {
            o19419.o15894.o4848.o7478();
         }
         o8355 = true;
      }
      
      override protected function o11048() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         var _loc1_:Vector.<o9145> = o19419.data.o11400;
         _loc3_ = 0;
         while(_loc3_ < 6)
         {
            if(_loc3_ < _loc1_.length)
            {
               _loc2_ = _loc1_[_loc3_];
               if(_loc2_ != null)
               {
                  o17567(_loc3_,false,true,"",true,false,true);
               }
            }
            _loc3_++;
         }
         o14591(null);
      }
      
      override protected function o10029() : void
      {
      }
      
      override public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         super.o16384(param1,param2,param3);
         o10619(0);
         if(o19419.o7923 != null)
         {
            param2.o9164(false);
            param2.o8987(true);
            param2.o16224(true);
         }
         else
         {
            param2.o9164(false);
            param2.o8987(false);
            param2.o16224(false);
            param2.o13395(true);
         }
      }
      
      override protected function o10170(param1:int) : Boolean
      {
         var _loc3_:o9145 = o19419.data.o2901(param1);
         var _loc4_:Boolean = false;
         if(o19419.o202.o11075 < 0)
         {
            _loc4_ = true;
         }
         if(_loc3_ == null || param1 >= o19419.data.o11400.length)
         {
            o19419.o202.o20766 = param1;
            o19419.o202.o11075 = -1;
            this.o1258();
            return true;
         }
         if(param1 < 0)
         {
            o5091(false);
            return false;
         }
         var _loc2_:int = o19419.o202.o11075;
         o19419.o202.o11075 = param1;
         this.o2018 = true;
         this.o4305 = 88;
         o5091(param1 >= 0);
         if(_loc4_ && o14200.o19505.o7923 != null)
         {
            o14200.o19505.o12094.o12170(o14200.o19505);
         }
         o19419.saveData();
         return false;
      }
      
      override protected function o17468() : void
      {
         var _loc4_:int = 0;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc7_:* = undefined;
         var _loc6_:int = 0;
         var _loc10_:int = o19419.data.o6412();
         var _loc5_:int = o19419.data.o20238();
         var _loc8_:int = o19419.data.o9767();
         var _loc11_:int = o19419.data.o18426();
         var _loc9_:int = o19419.data.o8732;
         var _loc1_:Boolean = o19419.o15894.o4848.isGuest;
         _loc4_ = 0;
         while(_loc4_ < o19419.o5292.o4009)
         {
            _loc2_ = o19419.data.o2901(_loc4_);
            if(_loc2_ == null)
            {
               if(_loc4_ < _loc10_)
               {
                  o1810(_loc4_,true);
               }
               else if(_loc4_ < _loc10_ + _loc5_)
               {
                  _loc3_ = _loc4_ - _loc10_;
                  if(_loc3_ < _loc11_)
                  {
                     o1810(_loc4_,true);
                  }
                  else
                  {
                     _loc7_ = o19419.data.o18775();
                     o3416(_loc4_,_loc7_[_loc3_]);
                  }
               }
               else
               {
                  _loc6_ = _loc4_ - _loc10_ - _loc5_;
                  if(_loc6_ < _loc9_)
                  {
                     o1810(_loc4_,true);
                  }
                  else
                  {
                     o13681(_loc4_);
                  }
               }
            }
            else
            {
               o16887(_loc4_,_loc2_.o12110,_loc2_.o11990,_loc2_.level,_loc2_.o2274,_loc2_.o4995,_loc2_.o4900,_loc1_,_loc2_.o13308,_loc2_.o12667,_loc2_.o6333);
            }
            _loc4_++;
         }
         o19689.o9799.o1258();
      }
      
      private function o5291() : void
      {
         this.o19419.o202.o11075 = -1;
         o19689.o19988(false);
         this.o19419.data.o11400[o2847] = null;
         o19419.saveData();
         this.o1258();
         o19689.o1258();
         o17468();
      }
      
      override protected function o19420(param1:int) : void
      {
         o16989.o1657(o5291);
         o2847 = param1;
      }
      
      override protected function o8090(param1:int) : void
      {
         switch(int(param1))
         {
            case 0:
               o712("Assult","Assult info");
               break;
            case 1:
               o712("Medic","Medic info");
               break;
            case 2:
               o712("Heavy","Heavy info");
         }
      }
      
      override protected function o5312(param1:String, param2:int) : void
      {
      }
      
      override protected function o18695() : void
      {
         this.o19419.o202.o11075 = -1;
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override protected function o154() : void
      {
         super.o154();
         o19419.o15894.o4848.o18278.o12286();
         var _loc1_:int = o19419.o15894.o4848.o18278.o278();
         if(o19419.data.o19063() > 0 && _loc1_ > 0)
         {
            o16989.o3390();
         }
         else if(o4519.o8116.profileData.o15894.o4848.isGuest == false && o4519.o8116.profileData.data.o18924 == false)
         {
            o4519.o8116.profileData.data.o18924 = true;
            var _loc4_:int = 0;
            var _loc3_:* = o19419.data.o11400;
            for each(var _loc2_ in o19419.data.o11400)
            {
               if(_loc2_ != null)
               {
                  _loc2_.o7768 = _loc2_.o7768 + 1;
               }
            }
            o16989.o12407("Trans-Fed Training Reward","Bonus: 1x free skill respec for each character!");
         }
      }
      
      override public function o13640() : void
      {
         o19419.o5292.o12970.removeEventListener(o16236.o6593,o14591);
         o19419 = null;
         o2847 = 0;
         super.o13640();
      }
      
      private function o1112() : void
      {
         this.o1258();
      }
      
      override protected function o10043() : void
      {
         var _loc1_:int = o19419.o5292.o3911.o4291(625);
         o12694(_loc1_);
      }
      
      private function o7149() : void
      {
         o17468();
      }
      
      public function o12694(param1:int) : void
      {
         var _loc2_:String = o19419.o5099.o9009("dialogMessage.confirmUnlockCharacterSlotPurchase.title");
         var _loc3_:String = o19419.o5099.o9009("dialogMessage.confirmUnlockCharacterSlotPurchase.message");
         (o16989 as o14043).o13414(_loc2_,_loc3_,625,o7149);
      }
      
      protected function o2708() : void
      {
         o19419.o15894.o4848.o18278.o6950(625);
      }
      
      override protected function o6662(param1:Event) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = null;
         if(asset != null || asset.stage != null)
         {
            super.o6662(param1);
         }
         if(asset == null || asset.stage == null || o8355 == false || o12514)
         {
            return;
         }
         var _loc2_:Boolean = o19419.o15894.o4848.isGuest;
         var _loc3_:Vector.<o9145> = o19419.data.o11400;
         _loc5_ = 0;
         while(_loc5_ < 6)
         {
            if(_loc5_ < _loc3_.length)
            {
               _loc4_ = _loc3_[_loc5_];
               if(_loc4_ != null)
               {
                  o17567(_loc5_,_loc4_.o4995,_loc4_.o4900,_loc4_.o17349,_loc2_,_loc4_.o13308,_loc4_.o12667);
               }
            }
            _loc5_++;
         }
      }
   }
}
