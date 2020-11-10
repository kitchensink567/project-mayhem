package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o79 extends o16681
   {
       
      
      public var o17109:o5024;
      
      private var o1030:TextField;
      
      private var o9679:o20565;
      
      public var o9193:o11112;
      
      private var o19240:int;
      
      public var o3075:Boolean = true;
      
      private var o6490:MovieClip;
      
      private var o7025:MovieClip;
      
      public function o79()
      {
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         super.init(param1);
         o19240 = Math.max(4,4);
         o9679 = new o20565(this);
         (param1.getChildByName("grade") as MovieClip).gotoAndStop(1);
         o9679.o5877("aug",1,4,"on","off",o19240,param1);
         o7010(1);
         o9193 = new o11112();
         o9193.o3075 = o3075;
         o9193.o16384(param1,11);
         this.o5452(o9193);
         o17109 = new o5024();
         o17109.init(param1.getChildByName("imgIcon") as MovieClip);
         this.o5452(o17109);
         _loc2_ = 0;
         while(_loc2_ < o19240)
         {
            o7355(_loc2_);
            _loc2_++;
         }
         o6490 = param1.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         o7025 = param1.getChildByName("brandname") as MovieClip;
         this.visible = false;
      }
      
      private function o7010(param1:int) : void
      {
         var _loc2_:MovieClip = asset.parent as MovieClip;
         var _loc3_:MovieClip = asset.getChildByName("equipmentVersion") as MovieClip;
         if(_loc3_ == null)
         {
            _loc3_ = _loc2_.getChildByName("equipmentVersion") as MovieClip;
         }
         if(_loc3_ != null)
         {
            _loc3_.gotoAndStop(param1);
         }
      }
      
      private function o899(param1:int, param2:int, param3:Vector.<o3743>) : void
      {
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = param3;
         for each(var _loc5_ in param3)
         {
            if(_loc5_ == null || _loc5_.o4589 == null)
            {
               this.o11988(_loc4_,param1);
            }
            else
            {
               o1087(_loc4_,_loc5_.grade,param1,_loc5_.o4589.name,_loc5_.o4589.o12087);
            }
            _loc4_++;
         }
         while(_loc4_ < param2)
         {
            this.o11988(_loc4_,param1);
            _loc4_++;
         }
         while(_loc4_ < 4)
         {
            this.o7355(_loc4_);
            _loc4_++;
         }
      }
      
      public function o16499(param1:Boolean, param2:String, param3:int, param4:int, param5:int, param6:int, param7:String, param8:o20006, param9:int, param10:int, param11:int, param12:Boolean, param13:Boolean) : void
      {
         var _loc14_:MovieClip = this.asset;
         o9679.o17506("lblTitle",param2,_loc14_);
         (asset.getChildByName("grade") as MovieClip).gotoAndStop(param4 + 1);
         if(param4 == -1)
         {
            (asset.getChildByName("grade") as MovieClip).visible = false;
         }
         var _loc15_:MovieClip = asset.getChildByName("eliteCore") as MovieClip;
         if(_loc15_ != null)
         {
            _loc15_.visible = param9 > 0;
         }
         o7010(param3);
         o9679.o17506("lblGearType",param7,_loc14_);
         o9679.o5877("aug",param5,param6,"on","off",o19240,asset);
         o17109.o3700 = param8;
         param8.o6088 = o17109;
      }
      
      public function o14322() : void
      {
         this.visible = false;
      }
      
      public function o19237(param1:o14096, param2:o4117) : void
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc5_:* = null;
         if(param1)
         {
            _loc4_ = o4519.o8116.profileData;
            this.visible = true;
            _loc3_ = param1.o3227() + " " + o14096.o10863(param1.o2752.o6365);
            _loc5_ = param1.o19133(null);
            o16499(true,param1.o7501,!!param1.o2752.o19901?4:param1.o2752.o11570,param1.grade,param1.o5520,param1.o4680,_loc3_,_loc5_,param1.o263,param1.o10748,param1.o4752,param1.o1419,param1.o2752.o19901);
            o899(param1.grade,param1.o4680,param1.o17656);
            o9193.o5127(param1,param2);
            if(o6490)
            {
               o6490.gotoAndStop(o7251.o20313(param1));
            }
            if(o7025)
            {
               o7025.gotoAndStop(param1.o2752.o11412);
            }
         }
      }
      
      public function o5204(param1:o1253, param2:o4117) : void
      {
         var _loc4_:o14200 = o4519.o8116.profileData;
         this.visible = true;
         var _loc3_:String = o14719.o160(param1.o10239.o20559);
         var _loc5_:o20006 = param1.o19133(null);
         o16499(false,param1.o9912,param1.o10239.o18072,param1.grade,param1.o5520,param1.o4680,_loc3_,_loc5_,param1.o263,param1.o15372,0,param1.o1419,param1.o10239.o19901);
         o899(param1.grade,param1.o4680,param1.o17656);
         o6490.gotoAndStop(o7251.o19044(param1));
         o9193.o19641(param1,param2);
         if(o7025)
         {
            o7025.gotoAndStop(param1.o10239.o11412);
         }
      }
      
      protected function o1087(param1:int, param2:int, param3:int, param4:String, param5:String) : void
      {
         var _loc10_:MovieClip = asset;
         var _loc8_:MovieClip = _loc10_.getChildByName("augSlot" + param1.toString()) as MovieClip;
         _loc8_.visible = true;
         var _loc7_:MovieClip = _loc8_.getChildByName("lblAugmentName") as MovieClip;
         var _loc9_:TextField = _loc7_.getChildByName("augTitle") as TextField;
         _loc9_.text = param4;
         var _loc11_:MovieClip = _loc8_.getChildByName("icon") as MovieClip;
         _loc11_.gotoAndStop(param5);
         o9679.o5877("aug",param2,param3,"on","off",12,_loc7_);
         var _loc6_:MovieClip = _loc10_.getChildByName("augSlotEmpty" + param1.toString()) as MovieClip;
         _loc6_.visible = false;
      }
      
      protected function o11988(param1:int, param2:int) : void
      {
         var _loc6_:MovieClip = asset;
         var _loc5_:MovieClip = _loc6_.getChildByName("augSlot" + param1.toString()) as MovieClip;
         _loc5_.visible = false;
         var _loc3_:MovieClip = _loc6_.getChildByName("augSlotEmpty" + param1.toString()) as MovieClip;
         var _loc4_:MovieClip = _loc3_.getChildByName("lblAugmentName") as MovieClip;
         _loc3_.visible = true;
         o9679.o5877("aug",0,param2,"on","off",12,_loc4_);
      }
      
      protected function o7355(param1:int) : void
      {
         var _loc4_:MovieClip = asset;
         var _loc3_:MovieClip = _loc4_.getChildByName("augSlot" + param1.toString()) as MovieClip;
         _loc3_.visible = false;
         var _loc2_:MovieClip = _loc4_.getChildByName("augSlotEmpty" + param1.toString()) as MovieClip;
         _loc2_.visible = false;
      }
      
      override public function o13640() : void
      {
         o9679.o13640();
         o17109 = null;
         o1030 = null;
         o9679 = null;
         o9193 = null;
         o6490 = null;
         super.o13640();
      }
   }
}
