package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o14677 extends o9743
   {
       
      
      private var o16989:o13064;
      
      private var o19419:o14200;
      
      private var o9583:o12290;
      
      private var o4441:MovieClip;
      
      private var o13217:MovieClip;
      
      protected var o20029:o15625;
      
      protected var o1934:o15625;
      
      private var o19275:o20421;
      
      protected var o174:o15625;
      
      protected var o2217:o10832;
      
      public var o3611:Boolean = true;
      
      private var o16093:o79;
      
      private var o19114:o4117;
      
      private var o8313:TextField;
      
      private var o1047:Vector.<o14096> = null;
      
      private var o14787:Vector.<o1253> = null;
      
      public function o14677()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:Boolean) : void
      {
         var _loc7_:int = 0;
         var _loc11_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         super.init(param1);
         o19419 = o4519.o8116.profileData;
         this.o19114 = o4117.o18521(o19419,o19419.o7923);
         this.o16989 = param2;
         var _loc12_:o20565 = new o20565(this);
         o16093 = new o79();
         var _loc13_:MovieClip = container.getChildByName("gearContainer") as MovieClip;
         o16093.init(_loc13_);
         this.o5452(o16093);
         o4441 = container.getChildByName("weaponSelectHolder") as MovieClip;
         o13217 = o4441.getChildByName("weaponRecordPagingCenter") as MovieClip;
         o20029 = _loc12_.o17578("btnPrev",o4441);
         o1934 = _loc12_.o17578("btnNext",o4441);
         var _loc14_:Vector.<o15625> = new Vector.<o15625>();
         _loc7_ = 0;
         while(_loc7_ < 4)
         {
            _loc11_ = o4441.getChildByName("btnWeapon" + _loc7_) as MovieClip;
            _loc5_ = new o15653();
            _loc5_.init(_loc11_);
            this.o5452(_loc5_);
            _loc14_.push(_loc5_);
            _loc7_++;
         }
         var _loc4_:Array = [];
         _loc6_ = 0;
         while(_loc6_ < 4)
         {
            _loc8_ = o19419.o5292.o418.o1669[_loc6_];
            _loc9_ = _loc12_.o15961("btnAugEffect" + _loc6_.toString(),_loc8_.o6305(param3),container);
            _loc10_ = _loc9_.asset.getChildByName("cost") as TextField;
            _loc10_.text = "x" + _loc8_.o9421.toString();
            _loc4_.push(_loc9_);
            _loc6_++;
         }
         o19275 = _loc12_.o3538(_loc4_);
         o8313 = (container.getChildByName("strongboxCounter") as MovieClip).getChildByName("lblStrongBoxCount") as TextField;
         o174 = _loc12_.o17578("btnApplyAugCore",container);
         o174.addEventListener("click",o10333,false,0,true);
         o9583 = _loc12_.o15961("btnDebug","Debug",container);
         o9583.visible = false;
         o2217 = _loc12_.o3870(o20029,o1934,_loc14_,o19269,o13217);
         o2217.addEventListener(o5595.o16737,o7685,false,0,true);
         o2217.o1746(o14793());
         o2217.o1258();
         o2217.o2120 = 0;
         _loc12_.o13640();
         _loc12_ = null;
      }
      
      override public function o13640() : void
      {
         o174.removeEventListener("click",o10333);
         o2217.removeEventListener(o5595.o16737,o7685);
         o9583 = null;
         o4441 = null;
         o13217 = null;
         o20029 = null;
         o1934 = null;
         o19275 = null;
         o174 = null;
         o16093 = null;
         o2217 = null;
         o19419 = null;
         o19114 = null;
         o16989 = null;
         o8313 = null;
         o1047 = null;
         o14787 = null;
         super.o13640();
      }
      
      private function o14630(param1:Boolean, param2:o14096, param3:o15653) : void
      {
         param3.o13586 = param2.o7501;
         param3.grade = param2.grade;
         param3.o4990 = param2.o5520;
         param3.o2397 = param1;
         param3.o14075 = param2.o4680;
         param3.o263 = param2.o263;
         var _loc6_:o20006 = param2.o8815(null);
         _loc6_.o6088 = param3;
         param3.o3700 = _loc6_;
         var _loc5_:MovieClip = param3.asset.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(_loc5_)
         {
            _loc5_.gotoAndStop(o7251.o20313(param2));
         }
         var _loc4_:MovieClip = param3.asset.getChildByName("equipped") as MovieClip;
         _loc4_.visible = o19419.o7923.o7993.indexOf(param2) >= 0;
         param3.o1258();
      }
      
      private function o13091(param1:Boolean, param2:o1253, param3:o15653) : void
      {
         param3.o2397 = param1;
         param3.o13586 = param2.o9912;
         param3.grade = param2.grade;
         param3.o4990 = param2.o5520;
         param3.o14075 = param2.o4680;
         param3.o263 = param2.o263;
         var _loc6_:o20006 = param2.o8815(null);
         _loc6_.o6088 = param3;
         param3.o3700 = _loc6_;
         var _loc5_:MovieClip = param3.asset.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(_loc5_)
         {
            _loc5_.gotoAndStop(o7251.o19044(param2));
         }
         var _loc4_:MovieClip = param3.asset.getChildByName("equipped") as MovieClip;
         _loc4_.visible = o19419.o7923.o420.indexOf(param2) >= 0;
         param3.o1258();
      }
      
      protected function o19269(param1:int, param2:o15625) : void
      {
         var _loc5_:* = null;
         var _loc6_:* = undefined;
         var _loc4_:* = null;
         var _loc3_:o15653 = param2 as o15653;
         if(param1 < 0)
         {
            return;
         }
         if(o3611)
         {
            _loc5_ = o18660()[param1];
            o14630(false,_loc5_,_loc3_);
         }
         else
         {
            _loc6_ = o6291();
            _loc4_ = _loc6_[param1];
            o13091(false,_loc4_,_loc3_);
         }
      }
      
      private function o7685(param1:o11507) : void
      {
         var _loc2_:int = param1.o6457;
         o4436();
      }
      
      protected function o4436() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc1_:* = null;
         var _loc5_:* = null;
         var _loc4_:int = 0;
         o8313.text = o19419.o7923.o18104.toString();
         if(o3611)
         {
            _loc1_ = o11415(o2217.o2120);
            _loc3_ = 0;
            while(_loc3_ < o19275.length)
            {
               _loc2_ = o19419.o5292.o418.o1669[_loc3_];
               _loc6_ = o19275.o19568[_loc3_] as o12290;
               _loc6_.enabled = _loc2_.o3740(_loc1_) && o19419.o7923.o18104 >= _loc2_.o9421;
               _loc7_ = _loc6_.asset.getChildByName("cost") as TextField;
               _loc7_.text = "x" + _loc2_.o9421.toString();
               if(_loc6_.enabled)
               {
                  _loc4_++;
               }
               if(_loc3_ == 3)
               {
                  _loc6_.o13586 = "Enhance weapons base stats by 5%.\nAffects damage, DOT, pierce, rate of fire and clip size.\nCurrent: " + Math.round(_loc1_.o13296 * 100).toString() + "%, Next:" + Math.round((_loc1_.o13296 + 0.05) * 100).toString() + "%,  Max: 50%";
               }
               _loc3_++;
            }
            o16093.o19237(_loc1_,o19114);
         }
         else
         {
            _loc5_ = o8299(o2217.o2120);
            _loc3_ = 0;
            while(_loc3_ < o19275.length)
            {
               _loc2_ = o19419.o5292.o418.o1669[_loc3_];
               _loc6_ = o19275.o19568[_loc3_] as o12290;
               _loc6_.enabled = _loc2_.o15979(_loc5_) && o19419.o7923.o18104 >= _loc2_.o9421;
               _loc7_ = _loc6_.asset.getChildByName("cost") as TextField;
               _loc7_.text = "x" + _loc2_.o9421.toString();
               if(_loc6_.enabled)
               {
                  _loc4_++;
               }
               if(_loc3_ == 3)
               {
                  _loc6_.o13586 = "Enhance equipment base stats by 5%.\nAffects physical, heat and toxic resistance.\nCurrent: " + Math.round(_loc5_.o13296 * 100).toString() + "%, Next:" + Math.round((_loc5_.o13296 + 0.05) * 100).toString() + "%,  Max: 50%";
               }
               _loc3_++;
            }
            o16093.o5204(_loc5_,o19114);
         }
         o12591();
         o174.enabled = _loc4_ > 0;
      }
      
      override public function o1258() : void
      {
         var _loc1_:int = o14793();
         o2217.o1746(_loc1_);
         o4436();
         super.o1258();
      }
      
      protected function o18660() : Vector.<o14096>
      {
         var _loc1_:* = undefined;
         var _loc2_:* = null;
         if(o1047 == null)
         {
            o1047 = new Vector.<o14096>();
            _loc1_ = o19419.o7923.o1819();
            var _loc4_:int = 0;
            var _loc3_:* = o19419.o7923.o7993;
            for each(_loc2_ in o19419.o7923.o7993)
            {
               if(_loc2_ != null)
               {
                  o1047.push(_loc2_);
               }
            }
            var _loc6_:int = 0;
            var _loc5_:* = _loc1_;
            for each(_loc2_ in _loc1_)
            {
               if(o19419.o7923.o7993.indexOf(_loc2_) < 0)
               {
                  o1047.push(_loc2_);
               }
            }
         }
         return o1047;
      }
      
      private function o5022(param1:Vector.<o1253>, param2:Vector.<o1253>) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = param2;
         for each(var _loc3_ in param2)
         {
            param1.push(_loc3_);
         }
      }
      
      protected function o6291() : Vector.<o1253>
      {
         var _loc2_:* = undefined;
         var _loc1_:* = null;
         if(o14787 == null)
         {
            o14787 = new Vector.<o1253>();
            _loc2_ = o19419.o7923.o12203();
            var _loc4_:int = 0;
            var _loc3_:* = o19419.o7923.o420;
            for each(_loc1_ in o19419.o7923.o420)
            {
               if(_loc1_ != null)
               {
                  o14787.push(_loc1_);
               }
            }
            var _loc6_:int = 0;
            var _loc5_:* = _loc2_;
            for each(_loc1_ in _loc2_)
            {
               if(o19419.o7923.o420.indexOf(_loc1_) < 0)
               {
                  o14787.push(_loc1_);
               }
            }
         }
         return o14787;
      }
      
      private function o11415(param1:int) : o14096
      {
         return o18660()[param1];
      }
      
      private function o8299(param1:int) : o1253
      {
         return o6291()[param1];
      }
      
      protected function o14793() : int
      {
         if(o3611)
         {
            return o18660().length;
         }
         return o6291().length;
      }
      
      private function o12591() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(o19275.o2120 != -1 && o19275.o19568[o19275.o2120].enabled)
         {
            return;
         }
         _loc1_ = 0;
         while(_loc1_ < o19275.length)
         {
            _loc2_ = o19275.o19568[_loc1_] as o12290;
            if(_loc2_.enabled)
            {
               o19275.o2120 = _loc1_;
               return;
            }
            _loc1_++;
         }
      }
      
      private function o3573() : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc5_:o5843 = o19419.o5292.o418.o1669[o19275.o2120];
         var _loc3_:Boolean = false;
         var _loc6_:int = -1;
         var _loc1_:int = o19419.o7923.o18104;
         if(o3611)
         {
            _loc2_ = o11415(o2217.o2120);
            if(_loc5_.o3740(_loc2_) == false)
            {
               return;
            }
            _loc5_.o18228(_loc2_);
            _loc2_.o263 = _loc2_.o263 + _loc5_.o9421;
            _loc3_ = true;
            _loc6_ = _loc2_.o10748;
            o19419.data.o12466(_loc2_);
         }
         else
         {
            _loc4_ = o8299(o2217.o2120);
            if(_loc5_.o15979(_loc4_) == false)
            {
               return;
            }
            _loc5_.o6673(_loc4_);
            _loc4_.o263 = _loc4_.o263 + _loc5_.o9421;
            _loc6_ = _loc4_.o15372;
            o19419.data.o19356(_loc4_);
         }
         o19419.o15894.o4848.o17694();
         o19419.o7923.o18104 = o19419.o7923.o18104 - _loc5_.o9421;
         o19419.o7923.o263 = o19419.o7923.o263 + _loc5_.o9421;
         o19419.o15894.o4848.o14039();
         o19419.o2719.o4774(_loc3_,_loc6_,_loc5_.o9421,_loc1_,o19419.o7923.o18104,_loc5_.o12207,o19419.o7923.o263);
         o19419.saveData();
         this.o1258();
      }
      
      public function o10333(param1:MouseEvent) : void
      {
         if(o19275.o2120 == -1 || o19275.o19568[o19275.o2120].enabled == false)
         {
            return;
         }
         var _loc2_:o5843 = o19419.o5292.o418.o1669[o19275.o2120];
         if(o19419.o7923.o18104 < _loc2_.o9421)
         {
            return;
         }
         o16989.o13483("Use " + _loc2_.o9421.toString() + " augment core" + (_loc2_.o9421 > 1?"s":""),"Warning: Elite cores are rare items.\nAre you sure you want to apply the following effect:\n\"" + _loc2_.o6305(o3611) + "\"?",o3573);
      }
   }
}
