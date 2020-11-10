package
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class o12891 extends o12239
   {
      
      public static var o19505:o12891;
      
      private static var o3430:int;
      
      public static var o5875:int = 1;
       
      
      private var o2571:Boolean = false;
      
      private var o2986:o8023;
      
      private var o19419:o14200;
      
      private var o20443:o14096;
      
      private var o8245:o6077;
      
      private var o18743:int;
      
      private var o12715:int;
      
      private var o17462:Boolean = false;
      
      private var o9052:int = -1;
      
      private var stage:Stage;
      
      private var o18837:Boolean = false;
      
      private var o5891:Boolean = false;
      
      private var o7761:o7848;
      
      private var o5632:int = 0;
      
      private var o13779:Boolean = true;
      
      private var o550:Dictionary;
      
      public var o2822:int = 0;
      
      private var o18055:int;
      
      private var o1069:Number = 0;
      
      private var o7417:Dictionary;
      
      private var o10924:Boolean = false;
      
      private var o2111:Boolean = false;
      
      private var o20539:Boolean = false;
      
      private var o16148:Array;
      
      private var o4293:o8023;
      
      private var o15768:Boolean = false;
      
      private var o9422:Vector.<o11855> = null;
      
      private var o17665:Vector.<o11855> = null;
      
      private var o16755:int = 0;
      
      private var o944:Vector.<o6197>;
      
      private var o10549:Number = 3;
      
      private var o13385:Boolean;
      
      private var o472:Boolean = false;
      
      private var o2866:Dictionary;
      
      private var o8920:Number = 0;
      
      private var o17930:int;
      
      private var o6868:int;
      
      private var o14903:int = 0;
      
      private var o9899:int = 0;
      
      private var o8848:int = 0;
      
      private var o19328:Array;
      
      private var o18977:int = 0;
      
      private var o1226:int = 0;
      
      private var o10157:int = -1;
      
      private var o12516:int = -1;
      
      private var o14866:int = -1;
      
      private var o14814:int = -1;
      
      private var o18648:Number = 0;
      
      private var o19815:Boolean = false;
      
      private var o10234:Boolean = false;
      
      private var o9995:int = -1;
      
      private var o2403:Dictionary;
      
      public var o2574:int = -1;
      
      private var o16613:int = -1;
      
      private var o8264:int = -1;
      
      public var o3698:Boolean = false;
      
      private var o1562:Number = 0;
      
      private var o20642:Number = 0;
      
      private var o20621:Number = 0;
      
      private var o11718:Number = 0;
      
      private var o179:Number = 0;
      
      private var o11772:Number = 0;
      
      private var o3034:Boolean = false;
      
      private var o4639:Boolean = false;
      
      public function o12891(param1:o14200)
      {
         o550 = new Dictionary();
         o7417 = new Dictionary();
         o16148 = [0,0,0];
         o2866 = new Dictionary();
         o19328 = [];
         o2403 = new Dictionary();
         this.o19419 = param1;
         super();
         o19505 = this;
         o4519.o8116.o20488.o19411 = null;
         o3430 = Number(o3430) + 1;
         o12715 = o3430;
         param1.o202.o16204 = "";
         param1.o202.o1745 = "";
         param1.o202.o11362();
         if(param1.o202.o18339 == 2)
         {
            if(param1.o7923.o20148 > 0)
            {
               param1.o7923.o20148--;
               o4519.o13206.o19170 = true;
            }
            else if(param1.data.o15459 > 0)
            {
               param1.data.o15459--;
            }
            else
            {
               o11407.o14828(o5875);
               o5875 = Number(o5875) + 1;
            }
            param1.o7923.o17178 = true;
            param1.saveData();
         }
      }
      
      public function get o9706() : int
      {
         return o5632;
      }
      
      public function set o9706(param1:int) : void
      {
         o5632 = param1;
         if(o19419 != null)
         {
            o19419.o202.o4161.o8158(o5632);
         }
      }
      
      override protected function o19488() : o4896
      {
         return new o5695(this);
      }
      
      override protected function o3941() : o17904
      {
         return new o5123();
      }
      
      override protected function o7488() : o19152
      {
         return new o16160(this.o19419);
      }
      
      private function o4727() : int
      {
         var _loc3_:int = 0;
         var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
         var _loc5_:int = 0;
         var _loc4_:* = _loc1_;
         for each(var _loc2_ in _loc1_)
         {
            _loc3_++;
         }
         return _loc3_;
      }
      
      private function o3407() : void
      {
         var _loc7_:* = null;
         var _loc15_:int = 0;
         var _loc13_:int = 0;
         var _loc5_:* = null;
         var _loc14_:int = 0;
         var _loc10_:* = null;
         var _loc17_:* = null;
         if(o19419.o7923 == null)
         {
            return;
         }
         o4519.o32.o7211 = o4519.o32.o7211 * o19419.o202.o20410;
         o4519.o32.o7211 = Math.round(o4519.o32.o7211);
         if(o4519.o32.o7211 < 0)
         {
            o4519.o32.o7211 = 0;
         }
         o19419.o202.o20461 = o4519.o32.o7211;
         o4519.o13206.o20481();
         o15768 = true;
         var _loc18_:int = o4727();
         o4519.o13206.o19155 = false;
         o4519.o13206.o17216 = false;
         o4519.o13206.o17442 = false;
         var _loc2_:o14909 = o19419.o15894.o4848.o2719.o13760;
         var _loc11_:o69 = o19419.o202.o18702();
         _loc2_.o2950 = o19419.o7923.level;
         _loc2_.o1007 = _loc11_.o1007;
         _loc2_.o1166 = o4519.o32.o1166;
         _loc2_.o9595 = o4519.o32.o17861;
         _loc2_.o17283 = o4519.o32.o7211;
         _loc2_.o14031 = o19419.o202.o10211 == false;
         _loc2_.o54 = o19419.o202.o8971 == false && this.o19419.o202.o18730 == false;
         _loc2_.o3049 = this.o19419.o202.o18730;
         _loc2_.o5521 = _loc18_;
         _loc2_.o16755 = o16755;
         var _loc23_:int = 0;
         var _loc22_:* = o19419.o5292.o2819;
         for each(var _loc16_ in o19419.o5292.o2819)
         {
            _loc7_ = _loc2_.o8176(_loc16_.o5806,_loc16_.name);
            _loc7_.inventory = o19419.o7923.o3525.o20694(_loc16_.o5806);
         }
         if(_loc2_.o14884.length == 3)
         {
            _loc15_ = 0;
            _loc13_ = 0;
            var _loc25_:int = 0;
            var _loc24_:* = _loc2_.o14884;
            for each(var _loc1_ in _loc2_.o14884)
            {
               _loc13_++;
            }
            _loc2_.o14884.splice(_loc15_,1);
         }
         var _loc27_:int = 0;
         var _loc26_:* = o19419.o5292.o19908;
         for each(var _loc3_ in o19419.o5292.o19908)
         {
            _loc5_ = _loc2_.o14249(_loc3_.o2752.o2752.o5806,_loc3_.o7501);
            _loc5_.inventory = o19419.o7923.o3525.o20694(_loc3_.o2752.o2752.o5806);
         }
         var _loc4_:Vector.<o10102> = new Vector.<o10102>();
         var _loc29_:int = 0;
         var _loc28_:* = _loc2_.o1975;
         for each(var _loc6_ in _loc2_.o1975)
         {
            if(_loc6_.o12893 != 0 || _loc6_.o3306 != 0 || _loc6_.o18734 != 0 || _loc6_.inventory != 0)
            {
               _loc4_.push(_loc6_);
            }
         }
         _loc2_.o1975 = _loc4_;
         var _loc31_:int = 0;
         var _loc30_:* = o19419.o7923.o2671;
         for each(var _loc19_ in o19419.o7923.o2671)
         {
            _loc2_.o8159.o14049(_loc19_.o20868.name,_loc19_.level);
         }
         _loc2_.o11620 = new Vector.<o8852>();
         var _loc21_:int = 0;
         var _loc35_:int = 0;
         var _loc34_:* = o19419.o7923.o7993;
         for each(var _loc12_ in o19419.o7923.o7993)
         {
            if(_loc12_ != null)
            {
               _loc14_ = o16148[_loc21_];
               _loc10_ = new o8852();
               _loc10_.o5915 = true;
               _loc10_.name = _loc12_.o7501;
               _loc10_.grade = _loc12_.grade;
               _loc10_.o2917 = _loc12_.o2752.o11570 > 1;
               _loc10_.id = _loc12_.o10748;
               _loc10_.o17656 = new o1641();
               var _loc33_:int = 0;
               var _loc32_:* = _loc12_.o17656;
               for each(var _loc8_ in _loc12_.o17656)
               {
                  _loc10_.o17656.o14049(_loc8_.o4589.name,_loc8_.grade);
               }
               _loc10_.o4620 = _loc12_.o4680;
               _loc10_.o7152 = _loc14_ / 1000;
               _loc2_.o11620.push(_loc10_);
            }
            _loc21_++;
         }
         _loc2_.o4256 = new Vector.<o8852>();
         var _loc39_:int = 0;
         var _loc38_:* = o19419.o7923.o420;
         for each(var _loc9_ in o19419.o7923.o420)
         {
            if(_loc9_ != null)
            {
               _loc17_ = new o8852();
               _loc17_.o5915 = false;
               _loc17_.name = _loc9_.o9912;
               _loc17_.grade = _loc9_.grade;
               _loc17_.o2917 = _loc9_.o10239.o18072 > 1;
               _loc17_.id = _loc9_.o10239.id;
               _loc17_.o17656 = new o1641();
               var _loc37_:int = 0;
               var _loc36_:* = _loc9_.o17656;
               for each(var _loc20_ in _loc9_.o17656)
               {
                  _loc17_.o17656.o14049(_loc20_.o4589.name,_loc20_.grade);
               }
               _loc17_.o4620 = _loc9_.o4680;
               _loc2_.o4256.push(_loc17_);
            }
         }
         o19419.o15894.o4848.o2719.o13197(o19419.o202.o10211 == false);
         o19419.o15894.o4848.o2719.o2633();
         o19419.o15894.o4848.o2719.o7181();
         o19419.o15894.o4848.o2719.o3900();
      }
      
      private function o728(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         if(o19419.o202.o10211)
         {
            o8920 = 5.5;
            if(o205 != null && o205.visible)
            {
               o205.o920(o8920);
            }
            else
            {
               _loc2_ = o13871();
               o7365(_loc2_);
            }
         }
      }
      
      private function o2675(param1:Event = null) : void
      {
         if(o19419.o202.o10211 && o205 != null)
         {
            o8920 = 0;
            o205.o1681();
         }
      }
      
      private function o17322(param1:Event = null) : void
      {
         if(o2571)
         {
            throw new Error("scenario_failed already called");
         }
         o2571 = true;
         o19419.o202.o5354();
         o19419.o202.o11362();
         o19419.o202.o8971 = true;
         o3407();
         o12055();
      }
      
      private function o20721(param1:Event = null) : void
      {
         if(o2571)
         {
            throw new Error("scenario_failedMission already called");
         }
         o2571 = true;
         if(o15898 != null)
         {
            o15898.close();
            o15898 = null;
         }
         else if(o205 != null)
         {
            o205.close();
            o205 = null;
         }
         if(o20539 == false)
         {
            o19419.o202.o16204 = o19419.o202.o18702().o16204;
            o19419.o202.o1745 = o19419.o202.o18702().o1745;
         }
         o19419.o202.o5354();
         o4519.o13206.o4793();
         o4519.o13206.o17442 = false;
         if(o20539 == false)
         {
            this.o16986("Mission failed",o19419.o202.o18702().o16204,o19419.o202.o18702().o16372,o8505);
         }
         else
         {
            this.o16986("Mission failed",o19419.o202.o16204,2,o8505);
         }
      }
      
      private function o8505() : void
      {
         o2571 = true;
         o19419.o202.o5354();
         o19419.o202.o11362();
         o19419.o202.o8971 = true;
         o3407();
         o12055();
      }
      
      private function o16957(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc4_:Boolean = false;
         if(o2571)
         {
            throw new Error("Failed/complete already called");
         }
         o2571 = true;
         o19419.o202.o13798 = this.o19419.o202.o701();
         var _loc3_:o3803 = o19419.o5292.o3907(o19419.o202.o18339);
         if(o19419.o202.o18339 == 4 && _loc3_.o8938 != null && !o4519.o13206.o4231)
         {
            o4519.o13206.o4793();
            o4519.o13206.o17442 = false;
            _loc2_ = o4519.o13206.o2685.o10591[o4519.o32.o5973];
            o19419.o202.o19842();
            _loc4_ = false;
            var _loc7_:int = 0;
            var _loc6_:* = o19419.o202.o9954;
            for each(var _loc5_ in o19419.o202.o9954)
            {
               if(_loc5_.o7874 == o4519.o32.o5973 && _loc5_.o3049 == false && _loc5_.o11243 > 0)
               {
                  _loc4_ = true;
                  break;
               }
            }
            if(_loc4_)
            {
               this.o17256(_loc3_.o8938,_loc3_.o7219,0);
            }
            else
            {
               o15267();
            }
         }
         else
         {
            o15267();
         }
      }
      
      override protected function o15267() : void
      {
         o3407();
         o19419.o202.o20859();
         o12055();
      }
      
      private function o10402(param1:o1447) : void
      {
         this.o6023.o7047(param1.o3700,param1.o1216,param1.o15258,param1.o5268,param1.o4312);
         if(o2456.visible == false)
         {
            o6023.o15691();
            o472 = true;
         }
      }
      
      private function o20962(param1:o13908) : void
      {
      }
      
      private function o4289(param1:int, param2:int) : void
      {
         var _loc3_:* = param1;
         var _loc4_:* = o2866[_loc3_] + param2;
         o2866[_loc3_] = _loc4_;
      }
      
      private function o8486(param1:int, param2:Boolean = false) : int
      {
         if(param1 == 1)
         {
            param1 = param1;
         }
         var _loc4_:int = o19419.o7923.o3525.o20694(param1);
         var _loc3_:int = o550[param1];
         var _loc5_:int = 0;
         if(param2 == false)
         {
            _loc5_ = o2866[param1];
         }
         return _loc4_ + _loc3_ + _loc5_;
      }
      
      public function o20794(param1:Boolean) : void
      {
         o10271(param1);
      }
      
      override public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         var _loc11_:int = 0;
         var _loc34_:* = null;
         var _loc15_:int = 0;
         var _loc9_:int = 0;
         var _loc25_:int = 0;
         var _loc27_:int = 0;
         var _loc33_:* = null;
         var _loc14_:* = null;
         super.o16384(param1,param2,param3);
         o19419.o202.o9389 = true;
         o19419.o202.o2997 = 0;
         o19419.o202.o5509 = 0;
         o19419.o202.o16393 = 0;
         o19419.o202.o15910 = 0;
         o19419.o202.o1164 = -1;
         o19419.o2719.o10907(214);
         o19419.o202.o18081 = o4519.o13206.o2685.o18081;
         o19419.o202.o9954 = new Vector.<o2084>();
         var _loc10_:Vector.<int> = new Vector.<int>();
         var _loc32_:Vector.<int> = new Vector.<int>();
         var _loc36_:int = 0;
         var _loc35_:* = o19419.o7923.o7993;
         for each(var _loc12_ in o19419.o7923.o7993)
         {
            if(_loc12_ == null)
            {
               _loc10_.push(-1);
               _loc32_.push(-1);
            }
            else
            {
               _loc10_.push(_loc12_.o2752.o6365);
               _loc32_.push(_loc12_.o10748);
            }
         }
         o19419.o202.o4161.reset(_loc32_,_loc10_,o19419.o7923.o13012.o6185());
         _loc11_ = 0;
         while(_loc11_ < 11)
         {
            o2866[_loc11_] = 0;
            _loc11_++;
         }
         o19419.o202.o9453 = this.o8486;
         if(o19419.o202.o10211 == false)
         {
            o18795.asset.visible = false;
         }
         else
         {
            if(o19419.o202.o9359 && o19419.o202.o18339 != 4)
            {
               o10271(true);
               o7803(-1);
               o13471(false);
            }
            if(o19419.o202.o18339 == 5 || o19419.o202.o18339 == 3 || o19419.o202.o18339 == 7)
            {
               o13471(true);
            }
            _loc34_ = o19419.o202.o12874;
            var _loc38_:int = 0;
            var _loc37_:* = o4519.o13206.o2685.o10591;
            for each(var _loc5_ in o4519.o13206.o2685.o10591)
            {
               if(_loc5_.id != o4519.o32.o5973)
               {
                  _loc34_.o9543(_loc5_.o11008);
               }
            }
            o8339("## Powerups B");
            o8339("heatDamageImmunity: " + o16724.o20301(_loc34_.o14158) + ": (" + o16724.o20301(_loc34_.o13472) + ", " + o16724.o20301(_loc34_.o1744) + ")");
            o8339("damageBonus: " + o16724.o20301(_loc34_.o5014) + ": (" + o16724.o20301(_loc34_.o20926) + ", " + o16724.o20301(_loc34_.o18369) + ")");
            o8339("critChance: " + o16724.o20301(_loc34_.o19483) + ": (" + o16724.o20301(_loc34_.o2386) + ", " + o16724.o20301(_loc34_.o15296) + ")");
            o8339("increasedStrongboxQuality: " + (!!_loc34_.o7830?"true":"false"));
            o8339("increasedStrongboxDropChance: " + o16724.o20301(_loc34_.o13362) + ": (" + o16724.o20301(_loc34_.o14256) + ", " + o16724.o20301(_loc34_.o5615) + ")");
            o8339("damageImmunity: " + o16724.o20301(_loc34_.o7022) + ": (" + o16724.o20301(_loc34_.o5866) + ", " + o16724.o20301(_loc34_.o15433) + ")");
            o8339("healthGainFromMedkits: " + o16724.o20301(_loc34_.o10525) + ": (" + o16724.o20301(_loc34_.o2097) + ", " + o16724.o20301(_loc34_.o6128) + ")");
            o8339("healthRegenRate: " + o16724.o20301(_loc34_.o3792) + ": (" + o16724.o20301(_loc34_.o566) + ", " + o16724.o20301(_loc34_.o17340) + ")");
            o8339("## ===== ");
            var _loc40_:int = 0;
            var _loc39_:* = o19419.o202.o17943;
            for each(var _loc6_ in o19419.o202.o17943)
            {
               o18795.o20132(_loc6_.o1216,_loc6_.o10615,_loc6_.color,false);
            }
         }
         o4293 = new o8023();
         o19419.o202.o13798 = this.o19419.o202.o18702();
         this.o19419.o202.o18479 = false;
         this.o19419.o202.o18730 = false;
         this.o19419.o202.o8971 = false;
         this.o19419.o202.o6557 = 0;
         this.o19419.o202.o11155 = false;
         this.o19419.o202.o17654 = false;
         this.o19419.o202.o17289 = false;
         this.o19419.o202.o7702 = false;
         this.o19419.o202.o11661 = true;
         this.o19419.o202.o10740 = true;
         trace("countLossWinStatistics: " + this.o19419.o202.o10740);
         var _loc7_:Vector.<o6197> = o19419.o7923.o3669();
         o944 = o19419.o7923.o8693();
         o550 = new Dictionary();
         _loc9_ = 1;
         while(_loc9_ <= 10)
         {
            if(_loc9_ != 3)
            {
               _loc25_ = o19419.o7923.o3525.o20694(_loc9_);
               _loc27_ = o19419.o7923.o3525.o15479(_loc9_);
               if(_loc25_ > _loc27_)
               {
                  o550[_loc9_] = _loc27_ - _loc25_;
               }
               else
               {
                  o550[_loc9_] = 0;
               }
            }
            _loc9_++;
         }
         o2986 = o4293;
         o4519.o8116.loader.o16280(o2986,o718.o19485,o20962);
         o4519.o8116.o20488.o16280(o2986,o7961.o10402,o10402);
         o4519.o8116.o20488.o16280(o2986,o7961.o1306,o407);
         o4519.o8116.o20488.o16280(o2986,o7961.o19211,o10070);
         o4519.o8116.o20488.o16280(o2986,o7961.o9175,o3289);
         o4519.o8116.o20488.o16280(o2986,o7961.o9874,o9623);
         o4519.o8116.o20488.o16280(o2986,o7961.o5613,o4158);
         o4519.o8116.o20488.o16280(o2986,o7961.o7625,o9318);
         o4519.o8116.o20488.o16280(o2986,o7961.o16808,o20044);
         o4519.o8116.o20488.o16280(o2986,o7961.o2870,o17902);
         o4519.o8116.o20488.o16280(o2986,o2063.o18534,o10826);
         o4519.o8116.o20488.o16280(o2986,o2063.o19079,o17326);
         o4519.o8116.o20488.o16280(o2986,o2063.o11263,o2664);
         o4519.o8116.o20488.o16280(o2986,o2063.o17336,o16361);
         o4519.o8116.o20488.o16280(o2986,o2063.o16740,o20643);
         o4519.o8116.o20488.o16280(o2986,o2063.o19764,o3677);
         o4519.o8116.o20488.o16280(o2986,o2063.o2278,o869);
         o4519.o8116.o20488.o16280(o2986,o2063.o3839,o19632);
         o4519.o8116.o20488.o16280(o2986,o2063.o16636,o3830);
         o4519.o8116.o20488.o16280(o2986,o7220.o9885,o1665);
         o19419.o13206.o16280(o2986,o16450.o17799,o17322);
         o19419.o13206.o16280(o2986,o16450.o19072,o728);
         o19419.o13206.o16280(o2986,o16450.o5485,o2675);
         o19419.o13206.o16280(o2986,o16450.o18198,o20721);
         o19419.o13206.o16280(o2986,o16450.o14994,o16957);
         o19419.o13206.o16280(o2986,o16450.o4793,o19131);
         o19419.o13206.o16280(o2986,o16450.o12392,o5389);
         o4519.o32.o16280(o2986,o11468.o9587,o16693);
         o4519.o32.o16280(o2986,o2777.o268,o17894);
         o4519.o32.o16280(o2986,o11468.o20957,o3637);
         o4519.o32.o16280(o2986,o2777.o3742,o5653);
         o4519.o13206.o2685.o16280(o2986,o18621.o5629,o16722);
         o4519.o13206.o2685.o16280(o2986,o18621.o5999,o8277);
         o4519.o13206.o2685.o16280(o2986,o18621.o17654,o18965);
         o4519.o13206.o32.o16280(o2986,o2777.o3964,o17819);
         this.o19419.o202.o16280(o2986,o8860.o291,o11604);
         o4519.o8116.o6895.o16280(o2986,o19254.o13083,o779);
         o4519.o8116.o6895.o16280(o2986,o19254.o2439,o17783);
         o4519.o13206.o16280(o2986,o16450.o10218,o16576);
         o16755 = o4727();
         o19419.o202.o9500 = new Vector.<Boolean>();
         var _loc23_:int = 0;
         var _loc42_:int = 0;
         var _loc41_:* = o19419.o202.o18702().o19841;
         for each(var _loc21_ in o19419.o202.o18702().o19841)
         {
            o19419.o202.o9500[_loc23_] = false;
            _loc23_++;
         }
         o18743 = 0;
         var _loc18_:String = "";
         _loc18_ = _loc18_ + (o19419.o5292.o8675.o2483(10).o6615 + ": Prev, ");
         _loc18_ = _loc18_ + (o19419.o5292.o8675.o2483(11).o6615 + ": Next");
         _loc23_ = 0;
         var _loc44_:int = 0;
         var _loc43_:* = o19419.o7923.o7993;
         for each(var _loc29_ in o19419.o7923.o7993)
         {
            if(_loc29_ != null)
            {
               o4519.o32.o13012.o7900(_loc23_);
               _loc29_.o2140();
               o18743 = Number(o18743) + 1;
               _loc23_++;
            }
         }
         this.o9419(_loc18_,"","Place Turret: " + o19419.o5292.o8675.o2483(7).o6615);
         this.asset.addEventListener("addedToStage",o343,false,0,true);
         this.o19419.addEventListener(o14200.SAS_MONEY_CHANGED,o7465,false,0,true);
         param1.addEventListener("activate",o5787,false,0,true);
         param1.addEventListener("deactivate",o5403,false,0,true);
         o4519.o8116.o4812.o10697();
         this.o1258();
         var _loc24_:o3667 = o4519.o8116.o15916.o11118(this.o19419.o202.o15222 - 1000);
         if(_loc24_ != null && _loc24_.o8633 > 0 && o20738)
         {
            _loc33_ = new o11855();
            this.o16587.o2792(_loc33_);
            _loc33_.init(_loc24_.o8633,o1163);
         }
         var _loc30_:Vector.<o12030> = new Vector.<o12030>();
         _loc30_.push(o19419.o5292.o8675.o2483(12));
         _loc30_.push(o19419.o5292.o8675.o2483(13));
         _loc30_.push(o19419.o5292.o8675.o2483(14));
         var _loc22_:Vector.<o6197> = o19419.o7923.o3669();
         _loc15_ = 0;
         var _loc46_:int = 0;
         var _loc45_:* = _loc22_;
         for each(var _loc17_ in _loc22_)
         {
            o11197(_loc15_,_loc17_.o20868.o10374,_loc30_[_loc15_].o6615,_loc17_.o20868.name + ": " + _loc17_.o20868.o7792);
            _loc15_++;
         }
         var _loc8_:Vector.<o6197> = o19419.o7923.o13108();
         var _loc48_:int = 0;
         var _loc47_:* = _loc8_;
         for each(var _loc13_ in _loc8_)
         {
            o14579(_loc15_,_loc13_.o20868.o10374,_loc13_.o20868.o7792);
            _loc15_++;
         }
         o9706 = -1;
         if(o19419.o7923.o7993[1] != null)
         {
            o13235(1);
         }
         else if(o19419.o7923.o7993[2] != null)
         {
            o13235(2);
         }
         else
         {
            o13235(0);
         }
         this.o3596();
         o19419.o15894.o4848.o18278.o16280(o2986,o19869.o6389,o6118);
         o19419.o15894.o4848.o18278.o16280(o2986,o19869.o17670,o9264);
         o19419.o15894.o4848.o18278.o16280(o2986,o19869.o391,o98);
         o13385 = o19419.o202.o18702().o13385;
         if(o13385 == false)
         {
            o1051.o9310(o4293,2,o7403);
         }
         if(o10924)
         {
            o4519.o13206.o16469();
         }
         if(o19419.o7923.o16996 == false && o19419.o7923.o7993[1] != null && o19419.o7923.o7993[2] != null)
         {
            o1051.o9310(o4293,0,o4728);
            o19419.o7923.o16996 = true;
         }
         if(o19419.o7923.o18006 < 1)
         {
            o368.start();
         }
         o9043(o13484());
         o13109();
         o4519.o13206.o17442 = true;
         o4519.o13206.o19155 = true;
         trace("HUD 1081 MOVEMENT ON");
         o2111 = true;
         this.o13080(o19419.o7923.o20170);
         o1290(o4519.o32.o11243,o4519.o32.o1589);
         o19792(o4519.o32.energy,o4519.o32.o10957);
         o17641("");
         var _loc20_:int = o8486(1,true);
         _loc14_ = o19419.o5292.o18364(1);
         var _loc28_:int = o19419.o7923.o3525.o497(1);
         var _loc26_:int = o19419.o7923.o3525.o497(2);
         o14383(o19419.o5292.o8675.o2483(8).o6615,_loc20_,_loc28_,_loc14_.o1830,o2866[1]);
         var _loc19_:o12377 = o19419.o5292.o18364(2);
         var _loc16_:int = o8486(2,true);
         o20742(o19419.o5292.o8675.o2483(9).o6615,_loc16_,_loc26_,_loc19_.o1830,o2866[2]);
         if(!o19419.data.o12697())
         {
            o19419.o7923.o20170 = o19419.o7923.o20170 - o19419.o202.o17812;
         }
         o19419.o202.o17812 = 0;
         o7791();
         var _loc4_:int = 0;
         var _loc50_:int = 0;
         var _loc49_:* = o19419.o202.o11032;
         for each(var _loc31_ in o19419.o202.o11032)
         {
            _loc31_.o18204();
            o17295(_loc4_,_loc31_.o3331);
            _loc4_++;
         }
         if(o13484())
         {
            o15012();
         }
      }
      
      private function o4728() : void
      {
         o1123();
      }
      
      private function o3618() : void
      {
      }
      
      private function o7403() : void
      {
         o16889();
      }
      
      private function o343(param1:Event) : void
      {
         this.stage = asset.stage;
         this.asset.stage.addEventListener("keyDown",o15589,false,0,true);
         this.asset.stage.addEventListener("keyUp",o8241,false,0,true);
         this.asset.removeEventListener("addedToStage",o343);
         stage.addEventListener("mouseWheel",o16952);
         stage.addEventListener("mouseMove",o5787,false,0,true);
         stage.addEventListener("mouseDown",o5787,false,0,true);
      }
      
      private function o3736(param1:Event) : void
      {
         o17266();
      }
      
      private function o16952(param1:MouseEvent) : void
      {
         o17266();
         if(o18795.o8478 && o18795.o6361 == false || o17462)
         {
            return;
         }
         var _loc2_:int = o19419.o7923.o18936();
         if(_loc2_ == 1)
         {
            return;
         }
         if(param1.delta > 0)
         {
            if(o9706 < _loc2_ - 1)
            {
               o4795();
            }
         }
         else if(param1.delta < 0)
         {
            if(o9706 > 0)
            {
               o73();
            }
         }
      }
      
      override protected function o12638(param1:Event) : void
      {
         super.o12638(param1);
         o8537.o9759 = true;
         o19419.o15894.o4848.o2719.o6126();
         o4519.o13206.o12392();
         o19419.o202.o20274 = false;
         if(o19419.o202.o3063 == false && o19419.o202.o10211 == false)
         {
            o9723();
         }
         trace("HUD 1219 MOVEMENT ON");
         o4519.o13206.o19155 = true;
         o4519.o13206.o17216 = true;
         o4519.o13206.o17442 = true;
      }
      
      private function o8241(param1:KeyboardEvent) : void
      {
         o7417[param1.charCode] = false;
      }
      
      private function o15589(param1:KeyboardEvent) : void
      {
         if(o7417[param1.charCode] == null || o7417[param1.charCode] == false)
         {
            o7417[param1.charCode] = true;
            o11276(param1,param1.charCode);
         }
      }
      
      private function o9160(param1:int) : Boolean
      {
         if(o2866[param1] > 0)
         {
            var _loc2_:* = o2866;
            var _loc3_:* = param1;
            var _loc4_:* = Number(_loc2_[_loc3_]) - 1;
            _loc2_[_loc3_] = _loc4_;
            return true;
         }
         return false;
      }
      
      private function o11276(param1:KeyboardEvent, param2:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc4_:* = null;
         var _loc9_:* = null;
         var _loc7_:* = null;
         var _loc6_:* = null;
         o17266();
         if(o15768 || o12514)
         {
            return;
         }
         if(param1.keyCode == 65 || param1.keyCode == 83 || param1.keyCode == 87 || param1.keyCode == 68)
         {
            o19419.o7923.o18006 = 1;
            o368.enabled = false;
         }
         var _loc3_:Boolean = false;
         if(o19419.o202.o10211)
         {
            _loc3_ = o18795.o8478 && param1.keyCode == 27;
            _loc8_ = o18795.o8478;
            o18795.o8525(param1,o19419.o7923.o12110);
            if(_loc8_ == false && o18795.o8478)
            {
               o4519.o13206.o9033();
            }
         }
         if(o4519.o13206.o17442 == false || o4519.o32.o7694)
         {
            return;
         }
         if(o18795.o8478 && o18795.o6361 == false)
         {
            return;
         }
         if(o4519.o32.o7694)
         {
            return;
         }
         if(o17462)
         {
            return;
         }
         var _loc5_:o12030 = o19419.o5292.o8675.o16712(param2);
         if(_loc5_ == null)
         {
            return;
         }
         var _loc10_:int = _loc5_.id;
         if(_loc3_ == false && _loc10_ == 15)
         {
            o9723();
            return;
         }
         if(_loc10_ == 11)
         {
            o4795();
         }
         else if(_loc10_ == 10)
         {
            o73();
         }
         else if(_loc10_ == 8)
         {
            if(o16613 == -1 && o8486(1) > 0)
            {
               _loc4_ = o19419.o5292.o18364(1);
               o4519.o32.o15724();
               _loc9_ = o19419.o15894.o4848.o2719.o13760.o8176(_loc4_.o5806,_loc4_.name);
               _loc9_.o18734 = Number(_loc9_.o18734) + 1;
               if(o9160(1) == false)
               {
                  o19419.o7923.o3525.o780(1,-1);
               }
               o16613 = o1051.o9310(o4293,0.2,o3148);
            }
         }
         else if(_loc10_ == 9)
         {
            if(o16613 == -1 && o8486(2) > 0)
            {
               o4519.o32.o2438();
               _loc7_ = o19419.o5292.o18364(2);
               _loc6_ = o19419.o15894.o4848.o2719.o13760.o8176(_loc7_.o5806,_loc7_.name);
               _loc6_.o18734 = Number(_loc6_.o18734) + 1;
               if(o9160(2) == false)
               {
                  o19419.o7923.o3525.o780(2,-1);
               }
               o16613 = o1051.o9310(o4293,0.2,o3148);
            }
         }
         else if(_loc10_ == 7)
         {
            if(o8264 == -1)
            {
               this.o8801();
               o8264 = o1051.o9310(o4293,0.5,o16177);
            }
         }
         else if(_loc10_ == 12)
         {
            o17759(0);
         }
         else if(_loc10_ == 13)
         {
            o17759(1);
         }
         else if(_loc10_ == 14)
         {
            o17759(2);
         }
         else if(_loc10_ == 20)
         {
            o6914();
         }
         else if(_loc10_ == 21)
         {
            o2340();
         }
         o3596();
      }
      
      override public function o13315(param1:int, param2:Function) : void
      {
         super.o13315(param1,param2);
         o19419.o202.o9389 = false;
         o4519.o13206.o4793();
         o4519.o13206.o19155 = false;
         if(o19419.o1317.o400)
         {
            o19419.o1317.o400 = false;
            o19419.o1317.o400 = true;
         }
         o14810();
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         o5665();
      }
      
      private function o5665() : void
      {
         var _loc5_:* = null;
         var _loc18_:int = 0;
         var _loc24_:Number = NaN;
         var _loc8_:* = null;
         var _loc28_:int = 0;
         var _loc1_:int = 0;
         var _loc15_:Boolean = false;
         var _loc16_:int = 0;
         var _loc20_:int = 0;
         var _loc2_:int = 0;
         var _loc17_:int = 0;
         var _loc9_:* = false;
         var _loc21_:int = 0;
         var _loc23_:* = false;
         var _loc22_:int = getTimer();
         if(o18055 == 0)
         {
            o18055 = _loc22_;
         }
         var _loc4_:int = _loc22_ - o18055;
         if(asset != null)
         {
            o17641(o4519.o8116.o20488.o19411,o4519.o8116.o20488.o18680);
            o1290(o4519.o32.o11243,o4519.o32.o1589);
            o5342.o4246(o4519.o32.o11243,o4519.o32.o1589);
            o9830(_loc4_ / 1000);
         }
         if(o17462 && asset != null)
         {
            o13368();
         }
         if(o20539 || o17462 || asset == null || o12514 || o2571)
         {
            return;
         }
         if(o4519.o32.o7694 == false)
         {
            if(o15898 != null)
            {
               o15898.close();
               o15898 = null;
            }
            else if(o205 != null)
            {
               o205.close();
               o205 = null;
            }
         }
         o3649(o4519.o32.o14304(),o14413.o7019 + o4519.o32.o13012.o6452);
         o18055 = _loc22_;
         o1069 = o1069 + _loc4_;
         if(o10549 > 0)
         {
            o10549 = o10549 - _loc4_;
         }
         o19419.o202.o6557 = o19419.o202.o6557 + _loc4_;
         o19419.o202.o4161.o15281 = o8245.o3492.o14419 > 0;
         var _loc29_:* = o9706;
         var _loc30_:* = o16148[_loc29_] + _loc4_;
         o16148[_loc29_] = _loc30_;
         if(o19419.o15894.o4848.o2719 != null)
         {
            o19419.o15894.o4848.o2719.o11373(_loc4_ / 1000);
         }
         if(true || "" == "paul" || "" == "logan")
         {
            if(o19419.o202.o10211 && o1069 > o19419.o5292.o11655 * 1000)
            {
               o17706();
               return;
            }
         }
         var _loc25_:Number = _loc4_;
         _loc25_ = _loc25_ / 1000;
         if(o19419.o202.o10211)
         {
            o18795.o7664(_loc25_);
         }
         if(o13385 && o472)
         {
            o13385 = false;
            o16889();
         }
         if(o9052 > 0 && o6023.visible == false)
         {
            o9052 = Number(o9052) - 1;
            if(o9052 == 0)
            {
               this.o18830(null);
            }
         }
         o5017();
         o16911();
         var _loc3_:Vector.<o6197> = o944;
         var _loc6_:int = 0;
         var _loc19_:* = 0;
         var _loc14_:* = 0;
         var _loc32_:int = 0;
         var _loc31_:* = _loc3_;
         for each(var _loc11_ in _loc3_)
         {
            if(_loc11_.o20868.o10374 == 31)
            {
               _loc19_ = _loc6_;
               _loc14_ = Number(_loc11_.o20868.o18500);
            }
            _loc5_ = o7133[_loc6_];
            _loc18_ = _loc11_.o20868.o4499(_loc11_.level);
            _loc24_ = o4519.o32.energy;
            _loc5_.o12121 = _loc18_ < _loc24_;
            _loc6_++;
         }
         if(o4519.o32.o1647)
         {
            o4519.o32.o1647 = false;
            this.o1257(_loc19_,_loc14_ * 1000);
         }
         if(o20443 != null)
         {
            _loc8_ = o19419.o7923.o17638.o8567(o20443);
            _loc28_ = _loc8_.o5109;
            _loc1_ = _loc8_.o17383;
            _loc15_ = o20443.o14419 > 0 || _loc1_ > 0;
            _loc16_ = o20443.o11344;
            this.o964(o8245.o20682,!!_loc15_?_loc1_:_loc28_,_loc15_,o20443.o6779,o8245.o11696(),o8245.o17492,_loc16_);
            _loc20_ = o20443.o11344;
            _loc2_ = this.o20443.o18554();
            _loc17_ = _loc1_ + _loc2_ + _loc28_;
            _loc9_ = _loc17_ <= _loc20_;
            if(o20443.o6779)
            {
               _loc9_ = false;
            }
            if(o18837 == false && _loc9_)
            {
               o18974();
            }
            o18837 = _loc9_;
            _loc21_ = o20443.o11344 * 0.2;
            _loc23_ = _loc2_ <= _loc21_;
            _loc23_ = Boolean(_loc23_ && _loc17_ > 0);
            if(o5891 == false && _loc23_)
            {
               o7127();
            }
            o5891 = _loc23_;
            o12899(_loc9_);
         }
         this.o13080(o19419.o7923.o20170);
         o19792(o4519.o32.energy,o4519.o32.o10957);
         o20186(_loc4_);
         o17952();
         o19419.o202.o19842();
         o15139();
         o18087(o4519.o8116.o18929.x,o4519.o8116.o18929.y);
         var _loc7_:o12377 = o19419.o5292.o18364(1);
         var _loc12_:int = o8486(1,true);
         o14383(o19419.o5292.o8675.o2483(8).o6615,_loc12_,_loc7_.o9421,_loc7_.o1830,o2866[1]);
         var _loc13_:o12377 = o19419.o5292.o18364(2);
         var _loc10_:int = o8486(2,true);
         o20742(o19419.o5292.o8675.o2483(9).o6615,_loc10_,_loc13_.o9421,_loc13_.o1830,o2866[2]);
         var _loc27_:Number = o4519.o32.o6691.position.x - o4519.o8116.o18929.x;
         var _loc26_:Number = o4519.o32.o6691.position.y - o4519.o8116.o18929.y;
         this.o995(0.0333333333333333,_loc27_,_loc26_);
      }
      
      private function o15139() : void
      {
         var _loc9_:* = false;
         var _loc1_:* = NaN;
         var _loc5_:* = 0;
         if(o19419.o202.o10211 == false)
         {
            return;
         }
         var _loc10_:Vector.<o2084> = o19419.o202.o9954;
         var _loc3_:Boolean = o19419.o202.o9359;
         var _loc2_:Boolean = o19419.o202.o15890;
         var _loc6_:Boolean = o19419.o202.o17551;
         var _loc4_:Boolean = o19419.o202.o13771;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc13_:int = 0;
         var _loc12_:* = _loc10_;
         for each(var _loc11_ in _loc10_)
         {
            _loc9_ = _loc11_.o7874 == o4519.o32.o5973;
            if(_loc9_)
            {
               this.o7803(_loc11_.o19189,_loc11_.o19113,_loc11_.o19778);
               _loc8_ = true;
            }
            if(!(_loc3_ == false && _loc9_))
            {
               if(o4519.o13206.o7975)
               {
                  if(_loc11_.o3049)
                  {
                     _loc11_.o2306 = true;
                  }
                  this.o17165(_loc7_,_loc11_.o18731,_loc11_.o2274,_loc11_.o16286,_loc11_.o19189,_loc11_.o2306,_loc11_.o3049);
               }
               else
               {
                  this.o17165(_loc7_,_loc11_.o18731,_loc11_.o2274,_loc11_.o16286,_loc11_.o19189,_loc6_,_loc11_.o3049);
               }
               _loc1_ = 0;
               if(!_loc11_.o3049)
               {
                  _loc1_ = Number(_loc11_.o11243 / _loc11_.o1589);
               }
               this.o9677(_loc7_,_loc1_,false,0,_loc11_.o7874 == o2574,_loc11_.o3049);
               _loc7_++;
            }
         }
         _loc5_ = _loc7_;
         while(_loc5_ < 4)
         {
            o14526(_loc5_);
            _loc5_++;
         }
      }
      
      private function o17005(param1:o17517) : Point
      {
         var _loc5_:o1885 = o4519.o8116.o18929;
         var _loc4_:Number = param1.o6691.position.x;
         var _loc3_:Number = param1.o6691.position.y;
         var _loc2_:Number = _loc4_ - _loc5_.x;
         var _loc6_:Number = _loc3_ - _loc5_.y;
         return new Point(_loc2_,_loc6_);
      }
      
      private function o7007() : void
      {
         o18231();
      }
      
      private function o20186(param1:int) : void
      {
         var _loc5_:* = null;
         if(o4519.o32 == null)
         {
            return;
         }
         if(o4639)
         {
            o16587.o3823(o4519.o32.o11229(),o4519.o32.o4232());
         }
         else
         {
            o16587.o3823(o4519.o32.o6691.position.x,o4519.o32.o6691.position.y);
         }
         o16587.o9808();
         o16587.o15617();
         var _loc4_:o1600 = o4519.o8116.o2996;
         var _loc9_:Array = o4519.o8116.o2996.o20698(o17517);
         var _loc6_:int = 0;
         var _loc18_:* = 0;
         var _loc17_:* = _loc9_;
         for each(var _loc16_ in _loc9_)
         {
            if(_loc16_ != null)
            {
               this.o16587.o16500(_loc6_,_loc16_.o1217,_loc16_.o6691.position.x,_loc16_.o6691.position.y);
               _loc6_++;
            }
         }
         var _loc13_:Array = o4519.o8116.o2996.o20698(o18442);
         if(_loc13_.length > 0 && o19419.o7923.o2922 == false)
         {
            o19419.o7923.o2922 = true;
            o1051.o9310(o4293,8,o7007);
         }
         var _loc20_:int = 0;
         var _loc19_:* = _loc13_;
         for each(var _loc14_ in _loc13_)
         {
            if(!(_loc14_ == null || _loc14_.o6691 == null || _loc14_.o8289() || _loc14_.o6691.position == null || _loc14_.o6691.position.o8289() == null || false == _loc14_.o13917()))
            {
               o16587.o6039(_loc14_.o5973,_loc14_.o6691.position.x,_loc14_.o6691.position.y,_loc14_.o17050,_loc14_.o18691);
            }
         }
         var _loc3_:Array = o4519.o8116.o2996.o20698(o12779);
         var _loc22_:int = 0;
         var _loc21_:* = _loc3_;
         for each(var _loc7_ in _loc3_)
         {
            o16587.o11642(_loc7_.o5973,_loc7_.o6691.position.x,_loc7_.o6691.position.y);
         }
         var _loc11_:Array = o4519.o8116.o2996.o20698(o6743);
         var _loc12_:Boolean = true;
         var _loc24_:int = 0;
         var _loc23_:* = _loc11_;
         for each(_loc5_ in _loc11_)
         {
            if(_loc5_.o6691 != null)
            {
               _loc18_ = _loc5_.o18134;
               switch(_loc18_)
               {
                  case o19053.o17861:
                     o16587.o13225(_loc5_.o5973,_loc5_.o6691.position.x,_loc5_.o6691.position.y);
                     continue;
                  case o19053.o14325:
                     if(_loc5_.o16809.o17401 == 11)
                     {
                        o16587.o19431(_loc5_.o5973,_loc5_.o6691.position.x,_loc5_.o6691.position.y);
                     }
                     else
                     {
                        o16587.o7856(_loc5_.o5973,_loc5_.o6691.position.x,_loc5_.o6691.position.y);
                     }
                     continue;
                  case o19053.o14669:
                     o16587.o5804(_loc5_.o5973,_loc5_.o6691.position.x,_loc5_.o6691.position.y);
                     continue;
                  default:
                     continue;
               }
            }
            else
            {
               continue;
            }
         }
         var _loc10_:Array = o4519.o8116.o2996.o20698(o4487.o13465());
         var _loc26_:int = 0;
         var _loc25_:* = _loc10_;
         for each(var _loc8_ in _loc10_)
         {
            if(_loc8_.o6691 != null && _loc8_.o6691.o9824)
            {
               o16587.o19431(_loc8_.o5973,_loc8_.o6691.position.x,_loc8_.o6691.position.y);
            }
         }
         var _loc15_:Array = o4519.o8116.o2996.o20698(o5640);
         var _loc28_:int = 0;
         var _loc27_:* = _loc15_;
         for each(var _loc2_ in _loc15_)
         {
            if(_loc2_.o7694 == false)
            {
               o16587.o13223(11,_loc2_.o5973,_loc2_.o6691.position.x,_loc2_.o6691.position.y);
            }
         }
         o16587.o8584(param1 / 1000);
      }
      
      private function o14810() : void
      {
         this.stage.removeEventListener("keyDown",o15589);
         this.stage.removeEventListener("keyUp",o8241);
         this.o19419.removeEventListener(o14200.SAS_MONEY_CHANGED,o7465);
         asset.removeEventListener("activate",o5787);
         asset.removeEventListener("deactivate",o5403);
         stage.removeEventListener("mouseMove",o5787);
         stage.removeEventListener("mouseDown",o5787);
         stage.removeEventListener("mouseWheel",o16952);
         if(o2986 == null)
         {
            o4519.o8116.loader.o12657(o718.o19485,o20962);
            o4519.o8116.o20488.o12657(o7961.o10402,o10402);
            o4519.o8116.o20488.o12657(o7961.o8980,o17569);
            o4519.o8116.o20488.o12657(o7961.o1306,o407);
            o4519.o8116.o20488.o12657(o7961.o19211,o10070);
            o4519.o8116.o20488.o12657(o7961.o9175,o3289);
            o4519.o8116.o20488.o12657(o7961.o9874,o9623);
            o4519.o8116.o20488.o12657(o7961.o5613,o4158);
            o4519.o8116.o20488.o12657(o7961.o7625,o9318);
            o4519.o8116.o20488.o12657(o7961.o16808,o20044);
            o4519.o8116.o20488.o12657(o7961.o2870,o17902);
            o4519.o8116.o20488.o12657(o2063.o18534,o10826);
            o4519.o8116.o20488.o12657(o2063.o19079,o17326);
            o4519.o8116.o20488.o12657(o2063.o11263,o2664);
            o4519.o8116.o20488.o12657(o2063.o17336,o16361);
            o4519.o8116.o20488.o12657(o2063.o16740,o20643);
            o4519.o8116.o20488.o12657(o2063.o19764,o3677);
            o4519.o8116.o20488.o12657(o2063.o2278,o869);
            o4519.o8116.o20488.o12657(o2063.o3839,o19632);
            o4519.o8116.o20488.o12657(o2063.o16636,o3830);
            o19419.o13206.o12657(o16450.o17799,o17322);
            o19419.o13206.o12657(o16450.o19072,o728);
            o19419.o13206.o12657(o16450.o5485,o2675);
            o19419.o13206.o12657(o16450.o18198,o20721);
            o19419.o13206.o12657(o16450.o14994,o16957);
            o19419.o13206.o12657(o16450.o4793,o19131);
            o19419.o13206.o12657(o16450.o12392,o5389);
            o4519.o32.o12657(o11468.o9587,o16693);
            o4519.o32.o12657(o2777.o268,o17894);
            o4519.o32.o12657(o11468.o20957,o3637);
            o4519.o32.o12657(o2777.o3742,o5653);
            o4519.o13206.o32.o12657(o2777.o3964,o17819);
            o4519.o13206.o2685.o12657(o18621.o5629,o16722);
            o4519.o13206.o2685.o12657(o18621.o5999,o8277);
            o4519.o13206.o2685.o12657(o18621.o17654,o18965);
            o19419.o202.o12657(o8860.o291,o11604);
            o4519.o8116.o6895.o12657(o19254.o13083,o779);
            o4519.o8116.o6895.o12657(o19254.o2439,o17783);
            o4519.o13206.o12657(o16450.o10218,o16576);
         }
         if(o2986 == null)
         {
            o19419.o15894.o4848.o18278.o12657(o19869.o6389,o6118);
            o19419.o15894.o4848.o18278.o12657(o19869.o17670,o9264);
            o19419.o15894.o4848.o18278.o12657(o19869.o391,o98);
         }
      }
      
      override public function o13640() : void
      {
         o19505 = null;
         o1051.o19115(o16613);
         o16613 = -1;
         o19419.o202.o9453 = null;
         o4293.o19115();
         o4293 = null;
         o4519.o13206.o4793();
         if(o9422 != null)
         {
            var _loc4_:int = 0;
            var _loc3_:* = o9422;
            for each(var _loc2_ in o9422)
            {
               if(_loc2_ != null)
               {
                  if(_loc2_.parent != null)
                  {
                     _loc2_.parent.removeChild(_loc2_);
                  }
                  _loc2_.o19115();
               }
            }
            o9422 = null;
         }
         if(o17665 != null)
         {
            var _loc6_:int = 0;
            var _loc5_:* = o17665;
            for each(var _loc1_ in o17665)
            {
               if(_loc1_ != null)
               {
                  if(_loc1_.parent != null)
                  {
                     _loc1_.parent.removeChild(_loc1_);
                  }
                  _loc1_.o19115();
               }
            }
            o17665 = null;
         }
         o8537.o9759 = false;
         o4519.o10093.cacheAsBitmap = false;
         o1292.o8237(o1292.o12278);
         o19419.saveData();
         if(o3698 || o19419.o202.o11155 || o19419.o202.o17289)
         {
            o19419.o202.o11362();
            o19419.o202.o8971 = true;
            o3407();
            o4519.o13206.o19115();
         }
         super.o13640();
         o2986 = null;
         o19419 = null;
         o20443 = null;
         o8245 = null;
         o18743 = 0;
         o12715 = 0;
         o17462 = false;
         o9052 = -1;
         stage = null;
         o18837 = false;
         o5891 = false;
         o7761 = null;
         o9706 = 0;
         o13779 = true;
         o550 = null;
         o2822 = 0;
         o7417 = null;
         o2866 = null;
      }
      
      private function o3089() : void
      {
         var _loc4_:int = o4519.o32.o7211;
         var _loc1_:o9145 = o19419.o7923;
         var _loc3_:int = o19419.o5292.o923.o4458(_loc1_.o7211);
         var _loc2_:int = o19419.o5292.o923.o4458(_loc1_.o7211 + _loc4_);
         _loc1_.o7211 = _loc1_.o7211 + _loc4_;
         _loc1_.o20170 = _loc1_.o20170 + o4519.o32.o17861;
         _loc1_.o20170 = _loc1_.o20170 + o4519.o32.o15973;
         o19419.saveData();
         o19419.o202.o2582 = _loc3_ < _loc2_;
         o19419.o202.o19842();
         if(o19419.o202.o2582)
         {
            o16989.screen = 43;
         }
         else
         {
            o16989.screen = 33;
         }
      }
      
      private function o12055() : void
      {
         var _loc3_:int = o4519.o32.o7211;
         o4519.o32.o17861 = o4519.o32.o17861 * o19419.o5292.o12970.o8128;
         var _loc1_:int = o4519.o32.o17861;
         var _loc2_:o9145 = o19419.o7923;
         o17930 = _loc2_.o7211 + _loc3_;
         o6868 = _loc2_.o20170 + _loc1_;
         o3089();
      }
      
      protected function o7465(param1:Event) : void
      {
         if(o19419.o7923 == null)
         {
            return;
         }
         this.o13080(o19419.o7923.o20170);
      }
      
      override protected function draw() : void
      {
         super.draw();
         o3596();
         o15012();
      }
      
      private function o13235(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         if(o4519.o32.o6840 == false && o8245 != null)
         {
            return;
         }
         if(o9706 == param1 || o19419.o7923.o7993[param1] == null)
         {
            o9706 = param1;
            return;
         }
         o9706 = param1;
         if(o9706 >= o19419.o7923.o7993.length)
         {
            throw new Error("invalid weapon index");
         }
         o20443 = o19419.o7923.o7993[o9706];
         o4519.o32.o2744(o12080(param1),o20443);
         o8245 = o6077(o4519.o32.o2752);
         if(o20443 != null)
         {
            _loc3_ = o19419.o7923.o17638.o8567(o20443);
            _loc4_ = o19419.o5292.o18982.o13727(_loc3_,false);
            _loc5_ = o19419.o5292.o18982.o13727(_loc3_,true);
            _loc2_ = _loc3_.o3440.o20235;
            o20166.o20692 = "$" + _loc4_ + " for " + _loc2_;
            o2647.o20692 = "$" + _loc5_ + " for " + _loc2_;
         }
         else
         {
            o20166.o20692 = "DEBUG";
            o2647.o20692 = "DEBUG";
         }
         this.o3596();
      }
      
      private function o12080(param1:int) : int
      {
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:* = o19419.o7923.o7993;
         for each(var _loc2_ in o19419.o7923.o7993)
         {
            if(_loc2_ != null)
            {
               if(_loc3_ == param1)
               {
                  return _loc4_;
               }
               _loc4_++;
            }
            _loc3_++;
         }
         throw new Error("Invalid index");
      }
      
      private function o13221(param1:int, param2:int) : void
      {
      }
      
      private function o3596() : void
      {
         var _loc6_:* = null;
         var _loc8_:int = 0;
         var _loc5_:* = null;
         if(o20443 == null || o8245 == null)
         {
            this.o5127("No weapons?",null,1);
            this.o964(0,0,false,true,false,0,100);
            return;
         }
         var _loc9_:String = o20443.o7501;
         if(o9422 == null)
         {
            o9422 = new Vector.<o11855>();
            _loc8_ = 0;
            while(_loc8_ < o19419.o7923.o7993.length)
            {
               _loc5_ = o19419.o7923.o7993[_loc8_];
               if(_loc5_ != null)
               {
                  o9422[_loc8_] = new o11855();
                  _loc5_.o3897(o9422[_loc8_],null);
               }
               else
               {
                  o9422[_loc8_] = null;
               }
               _loc8_++;
            }
         }
         this.o5127(_loc9_,o9422[o9706],o20443.o457.o3);
         var _loc2_:o6679 = o19419.o7923.o17638.o8567(o20443);
         var _loc7_:int = _loc2_.o5109;
         var _loc3_:int = _loc2_.o17383;
         var _loc1_:* = _loc3_ > 0;
         var _loc4_:int = o20443.o11344;
         this.o964(o8245.o20682,!!_loc1_?_loc3_:_loc7_,_loc1_,o20443.o6779,o8245.o11696(),o8245.o17492,_loc4_);
      }
      
      private function o3148() : void
      {
         o1051.o19115(o16613);
         o16613 = -1;
      }
      
      private function o16177() : void
      {
         o1051.o19115(o8264);
         o8264 = -1;
      }
      
      public function o13484() : Boolean
      {
         var _loc2_:Vector.<o14096> = o19419.o5292.o19908;
         var _loc4_:int = 0;
         var _loc3_:* = _loc2_;
         for each(var _loc1_ in _loc2_)
         {
            if(o8486(_loc1_.o2752.o5806) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o3522() : int
      {
         var _loc1_:int = 0;
         var _loc3_:Vector.<o14096> = o19419.o5292.o19908;
         var _loc5_:int = 0;
         var _loc4_:* = _loc3_;
         for each(var _loc2_ in _loc3_)
         {
            _loc1_ = _loc1_ + o8486(_loc2_.o2752.o5806);
         }
         return _loc1_;
      }
      
      private function o15012() : void
      {
         var _loc1_:* = null;
         var _loc3_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:* = null;
         var _loc4_:int = o3522();
         if(o1226 == _loc4_)
         {
            return;
         }
         o1226 = _loc4_;
         if(o13484())
         {
            this.o5147();
            o3671(true);
            _loc1_ = o19419.o5292.o20689(o2822);
            _loc3_ = o8486(_loc1_.o2752.o5806);
            _loc6_ = o8486(_loc1_.o2752.o5806,true);
            if(_loc3_ == 0)
            {
               this.o2340();
               this.o5147();
            }
            else
            {
               if(o17665 == null)
               {
                  o17665 = new Vector.<o11855>();
                  _loc5_ = 0;
                  while(_loc5_ < o19419.o5292.o19908.length)
                  {
                     _loc2_ = o19419.o5292.o20689(_loc5_);
                     if(_loc2_ != null)
                     {
                        o17665[_loc5_] = new o11855();
                        _loc2_.o3897(o17665[_loc5_],o3782);
                     }
                     else
                     {
                        o17665[_loc5_] = null;
                     }
                     _loc5_++;
                  }
               }
               this.o764(_loc1_.o7501,o17665[o2822],_loc6_,o2866[_loc1_.o2752.o5806]);
            }
         }
         else
         {
            this.o4517();
            this.o3671(false);
         }
      }
      
      override protected function o14734(param1:MouseEvent) : void
      {
         o20016();
         super.o14734(param1);
      }
      
      private function o20016() : void
      {
         var _loc3_:* = null;
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!o13484())
         {
            _loc3_ = "dialogMessage.outOfTurrets.";
            _loc1_ = o19419.o10206(_loc3_ + "title");
            _loc2_ = o19419.o10206(_loc3_ + "message");
         }
      }
      
      override protected function o17759(param1:int) : void
      {
         var _loc6_:* = null;
         var _loc3_:Boolean = false;
         var _loc8_:* = null;
         var _loc4_:Boolean = false;
         var _loc5_:Number = NaN;
         if(o4519.o32.o7694)
         {
            return;
         }
         if(o4519.o13206.o19155 == false)
         {
            return;
         }
         var _loc7_:Vector.<o6197> = o19419.o7923.o3669();
         if(param1 < 0 || param1 >= _loc7_.length)
         {
            return;
         }
         if(o15582(param1))
         {
            _loc6_ = _loc7_[param1].o20868;
            if(o19419.o202.o10211 && _loc6_.o10374 == 33)
            {
               _loc3_ = false;
               _loc8_ = o4519.o8116.o2996.o20698(o5640);
               var _loc10_:int = 0;
               var _loc9_:* = _loc8_;
               for each(var _loc2_ in _loc8_)
               {
                  if(_loc2_.o7616 is o17762)
                  {
                     _loc3_ = true;
                     break;
                  }
               }
               if(_loc3_)
               {
                  o19472();
                  return;
               }
            }
            _loc4_ = o4519.o32.o11943(_loc6_.o10374);
            if(_loc4_)
            {
               o19419.o15894.o4848.o2719.o13760.o17137.o1622(_loc6_.name,1);
               _loc5_ = _loc6_.o18500;
               if(_loc5_ > 0)
               {
                  o1257(param1,_loc5_ * 1000);
               }
            }
         }
      }
      
      override protected function o7349() : void
      {
         var _loc1_:o6679 = o19419.o7923.o17638.o8567(o20443);
         var _loc2_:int = _loc1_.o5109;
         if(o19419.o7923.o17638.o20403(o20443))
         {
            if(o8245.o20682 == 0 && o8245.o9450())
            {
               o8245.o20957();
            }
            this.o3596();
         }
         else
         {
            this.o19451();
         }
      }
      
      override protected function o12641() : void
      {
         var _loc2_:o6679 = o19419.o7923.o17638.o8567(o20443);
         var _loc3_:int = _loc2_.o17383;
         var _loc1_:* = _loc3_ > 0;
         if(o19419.o7923.o17638.o16196(o20443))
         {
            if(_loc1_ == false && o8245.o3914() == false)
            {
               o8245.o19463();
               o8245.o18216();
               this.o3596();
            }
            o19419.o15894.o4848.o2719.o5561(_loc2_.o3440.name,true);
            this.o3596();
         }
         else
         {
            this.o19451();
         }
      }
      
      override protected function o73() : void
      {
         if(o4519.o32.o7694)
         {
            return;
         }
         if(o18743 <= 1)
         {
            return;
         }
         o4519.o8116.o4812.o3540.o10258();
         if(o9706 <= 0)
         {
            o13235(o19419.o7923.o7993.length - 1);
         }
         else
         {
            o13235(o9706 - 1);
         }
         if(o19419.o7923.o7993[o9706] == null)
         {
            o73();
            return;
         }
         o3596();
      }
      
      override protected function o4795() : void
      {
         if(o4519.o32.o7694)
         {
            return;
         }
         if(o18743 <= 1)
         {
            return;
         }
         o4519.o8116.o4812.o3540.o10258();
         if(o9706 >= o19419.o7923.o7993.length - 1)
         {
            o13235(0);
         }
         else
         {
            o13235(o9706 + 1);
         }
         if(o19419.o7923.o7993[o9706] == null)
         {
            o4795();
            return;
         }
         o3596();
      }
      
      override protected function o6914() : void
      {
         o1226 = -1;
         o16932();
         o15012();
      }
      
      override protected function o2340() : void
      {
         o1226 = -1;
         o6281();
         o15012();
      }
      
      private function o8602(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc3_:o12377 = o19419.o5292.o18364(param1);
         var _loc4_:int = o19419.o7923.o3525.o497(param1);
         if(o19419.o7923.o7683(_loc4_))
         {
            _loc2_ = o19419.o15894.o4848.o2719.o13760.o8176(_loc3_.o5806,_loc3_.name);
            _loc2_.o3306 = _loc2_.o3306 + _loc3_.o1830;
            o19419.o7923.o3525.o780(param1,_loc3_.o1830);
            o19419.o15894.o4848.o2719.o1761(_loc2_.name,true);
         }
         else
         {
            o13509();
         }
      }
      
      override protected function o16779() : void
      {
         o8602(1);
      }
      
      override protected function o9140() : void
      {
         o8602(2);
      }
      
      override protected function o9723() : void
      {
         if(o4519.o8116.o2535.o16923 == false || o17462)
         {
            return;
         }
         super.o9723();
         o4519.o13206.o4793();
      }
      
      override protected function o154() : void
      {
         super.o154();
      }
      
      override protected function o8801() : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc3_:* = null;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(o4519.o32.o7694)
         {
            return;
         }
         if(o4519.o13206.o17216 == false)
         {
            return;
         }
         if(o2822 >= 0)
         {
            _loc4_ = this.o19419.o5292.o20689(o2822);
            _loc5_ = o8486(_loc4_.o2752.o5806);
            if(_loc5_ > 0)
            {
               o19419.o202.o4161.o3180(_loc4_.o2752.o5806);
               if(o4519.o32.o14304() >= o14413.o7019 + o4519.o32.o13012.o6452)
               {
                  _loc3_ = "Your fire control system only supports [MAX] active turrets. Placing a [NEXT_LIMIT] turret disables a prior one.";
                  _loc1_ = o14413.o7019 + o4519.o32.o13012.o6452;
                  _loc3_ = _loc3_.replace("[MAX]",_loc1_.toString());
                  if(_loc1_ == 2)
                  {
                     _loc3_ = _loc3_.replace("[NEXT_LIMIT]","3rd");
                  }
                  else
                  {
                     _loc3_ = _loc3_.replace("[NEXT_LIMIT]",(_loc1_ + 1).toString() + "th");
                  }
                  o4998(_loc3_);
                  o19419.o7923.o7129++;
               }
               _loc2_ = o19419.o15894.o4848.o2719.o13760.o14249(_loc4_.o2752.o2752.o5806,_loc4_.o7501);
               _loc2_.o18734 = Number(_loc2_.o18734) + 1;
               o4519.o32.o1495(_loc4_.o2752);
               if(o9160(_loc4_.o2752.o5806) == false)
               {
                  this.o19419.o7923.o3525.o780(_loc4_.o2752.o5806,-1);
               }
               _loc5_ = o8486(_loc4_.o2752.o5806);
               if(_loc5_ <= 0)
               {
                  o6281();
               }
               this.o15012();
            }
         }
      }
      
      override public function o1257(param1:int, param2:Number) : void
      {
         param2 = param2 / 1000;
         var _loc4_:* = 30;
         var _loc3_:o16733 = o7133[param1];
         _loc3_.o20396 = param2 * _loc4_;
         _loc3_.o5185 = 0;
         _loc3_.o3993 = true;
         _loc3_.o4473 = 0;
         switch(int(param1))
         {
            case 0:
               o10157 = o1051.o4767(o4293,1 / _loc4_,o14148,_loc3_.o20396);
               break;
            case 1:
               o12516 = o1051.o4767(o4293,1 / _loc4_,o9632,_loc3_.o20396);
               break;
            case 2:
               o14866 = o1051.o4767(o4293,1 / _loc4_,o4878,_loc3_.o20396);
               break;
            case 3:
               o14814 = o1051.o4767(o4293,1 / _loc4_,o9076,_loc3_.o20396);
         }
      }
      
      public function o3314(param1:int) : void
      {
         switch(int(param1))
         {
            case 0:
               o1051.stop(o10157);
               break;
            case 1:
               o1051.stop(o12516);
               break;
            case 2:
               o1051.stop(o14866);
               break;
            case 3:
               o1051.stop(o14814);
         }
      }
      
      public function o1094(param1:int) : void
      {
         switch(int(param1))
         {
            case 0:
               o1051.start(o10157);
               break;
            case 1:
               o1051.start(o12516);
               break;
            case 2:
               o1051.start(o14866);
               break;
            case 3:
               o1051.start(o14814);
         }
      }
      
      private function o12572(param1:o16733, param2:int) : void
      {
         param1.o5185++;
         param1.o4473 = param1.o5185 / param1.o20396;
         if(param1.o5185 >= param1.o20396 && param1.o12121)
         {
            param1.o3993 = false;
         }
      }
      
      private function o14148() : void
      {
         o12572(o7133[0],0);
      }
      
      private function o9632() : void
      {
         o12572(o7133[1],1);
      }
      
      private function o4878() : void
      {
         o12572(o7133[2],2);
      }
      
      private function o9076() : void
      {
         o12572(o7133[3],3);
      }
      
      private function o7611(param1:o16898) : void
      {
         var _loc4_:* = null;
         var _loc9_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc7_:int = o9706;
         var _loc10_:int = 0;
         var _loc12_:int = 0;
         var _loc11_:* = o19419.o7923.o7993;
         for each(var _loc2_ in o19419.o7923.o7993)
         {
            if(_loc2_ != null)
            {
               o13235(_loc10_);
               _loc4_ = o19419.o7923.o17638.o8567(_loc2_);
               _loc9_ = _loc4_.o5109;
               _loc5_ = _loc4_.o17383;
               _loc3_ = _loc5_ > 0 || _loc2_.o14419 > 0;
               _loc6_ = _loc2_.o11344;
               if(!param1.o16809.o8944)
               {
                  _loc8_ = Number(_loc6_ * 0.5);
                  if(_loc8_ < 5)
                  {
                     _loc8_ = 5;
                  }
               }
               else
               {
                  _loc8_ = Number(param1.o16809.value);
               }
               _loc4_.o17383 = _loc4_.o17383 + _loc8_;
               if(_loc2_ == o20443)
               {
                  if(_loc3_ == false)
                  {
                     _loc5_ = _loc4_.o17383;
                     o8245.o19463();
                     o8245.o18216();
                     this.o3596();
                  }
                  else
                  {
                     this.o3596();
                  }
               }
               else
               {
                  _loc2_.o2140();
               }
               _loc10_++;
            }
         }
         o13235(_loc7_);
      }
      
      private function o9061() : void
      {
         var _loc4_:* = null;
         var _loc8_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:Boolean = false;
         var _loc1_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc2_:o6197 = o19419.o7923.o11241(10);
         if(_loc2_ != null && _loc2_.level > 0)
         {
            _loc4_ = o19419.o7923.o17638.o8567(o20443);
            _loc8_ = _loc4_.o5109;
            _loc5_ = _loc4_.o17383;
            _loc3_ = _loc5_ > 0 || o20443.o14419 > 0;
            _loc1_ = _loc2_.o20868.o11827(_loc2_.level);
            _loc6_ = o20443.o11344;
            _loc7_ = Number(_loc6_ * _loc1_);
            _loc7_ = Number(Math.ceil(_loc7_));
            if(_loc7_ < 1)
            {
               _loc7_ = 1;
            }
            else if(_loc7_ > _loc2_.o20868.o7640)
            {
               _loc7_ = Number(_loc2_.o20868.o7640);
            }
            _loc4_.o17383 = _loc4_.o17383 + _loc7_;
            if(_loc3_ == false)
            {
               _loc5_ = _loc4_.o17383;
               o8245.o19463();
               o8245.o18216();
               this.o3596();
            }
            else
            {
               this.o3596();
            }
         }
      }
      
      private function o779(param1:o16898) : void
      {
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc2_:* = null;
         var _loc9_:* = null;
         var _loc5_:* = null;
         var _loc6_:o14331 = param1.o16809;
         if(_loc6_.type == o19053.o14669)
         {
            _loc7_ = _loc6_.value;
            this.o6831(_loc7_);
         }
         if(_loc6_.o9449)
         {
            o9061();
         }
         if(o4519.o32.o13012.o4797 > 0 && _loc6_.o9449 == true)
         {
            _loc8_ = new o14331(_loc6_.o11938);
            _loc8_.o9449 = false;
            _loc8_.type = o19053.o14325;
            _loc8_.o17401 = 1;
            _loc8_.value = o4519.o32.o13012.o4797;
            o4519.o8116.o6895.o5236(_loc8_);
         }
         if(_loc6_.type == o19053.o17861)
         {
            _loc4_ = _loc6_.value;
            o4519.o32.o1166 = o4519.o32.o1166 + _loc4_;
            o19419.o7923.o20170 = o19419.o7923.o20170 + int(_loc6_.value * o19419.o5292.o12970.o8128);
            o19419.o11453.o17844 = o19419.o11453.o17844 + _loc4_;
         }
         else if(_loc6_.type == o19053.o14325)
         {
            if(_loc6_.o17401 == 11)
            {
               return;
            }
            if(_loc6_.o17401 == 12)
            {
               o7611(param1);
               return;
            }
            if(_loc6_.o17401 == 13)
            {
               return;
            }
            _loc3_ = o19419.o5292.o18364(_loc6_.o17401);
            if(_loc3_ != null)
            {
               if(o19419.o7923.o20770 == false)
               {
                  o19419.o7923.o20770 = true;
                  if(_loc3_.o5806 == 2)
                  {
                     o196();
                  }
                  else
                  {
                     o18231();
                  }
               }
               _loc2_ = o19419.o15894.o4848.o2719.o13760.o8176(_loc3_.o5806,_loc3_.name);
               _loc2_.o12893 = _loc2_.o12893 + _loc6_.value;
            }
            else
            {
               _loc9_ = o19419.o5292.o9063(_loc6_.o17401);
               if(_loc9_ == null)
               {
                  throw new Error("Invalid consumable type : " + _loc6_.o17401.toString());
               }
               _loc5_ = o19419.o15894.o4848.o2719.o13760.o14249(_loc9_.o2752.o2752.o5806,_loc9_.o7501);
               _loc5_.o12893 = _loc5_.o12893 + _loc6_.value;
            }
         }
      }
      
      private function o16576(param1:o19919) : void
      {
         var _loc4_:* = null;
         var _loc3_:int = 0;
         var _loc2_:Number = NaN;
         try
         {
            _loc4_ = param1.to;
            if(_loc4_ == null || param1.o4670 == null || _loc4_.o8289())
            {
               return;
            }
            if(!(param1.o4670.o16334 is o17517))
            {
               return;
            }
            if(_loc4_.o6691 == null)
            {
               return;
            }
            if(param1.o4670.isCrit)
            {
               try
               {
                  if(param1.o4670.o19367)
                  {
                     this.o15359(_loc4_.o6691.position.x,_loc4_.o6691.position.y);
                  }
                  else
                  {
                     this.o313(_loc4_.o6691.position.x,_loc4_.o6691.position.y);
                  }
               }
               catch(o12314:Error)
               {
                  throw new Error("scenario_enemyDamaged: Crit error");
               }
            }
            else
            {
               _loc3_ = param1.o4670.o3;
               _loc2_ = _loc4_.o8188(_loc3_) / 100;
               try
               {
                  if(_loc2_ > 0 && _loc4_.o8289() == false)
                  {
                     this.o13973(o13987.o8975(_loc3_),_loc4_.o6691.position.x,_loc4_.o6691.position.y);
                  }
               }
               catch(o12314:Error)
               {
                  throw new Error("scenario_enemyDamaged: displayResist 1 error");
               }
            }
            return;
         }
         catch(o13346:Error)
         {
            throw new Error("scenario_enemyDamaged: Main error");
         }
      }
      
      private function o11604(param1:o8860) : void
      {
         if(param1.o18407())
         {
            this.o12105(param1.o815,param1.o32.o6691.position.x,param1.o32.o6691.position.y);
            if(o19419.o7923.o15733 == false)
            {
               o19419.o7923.o15733 = true;
               o19419.o2251("firstStrongboxPickup");
            }
         }
         else
         {
            this.o1526(param1.o1024,param1.o32.o6691.position.x,param1.o32.o6691.position.y);
         }
         this.o1258();
      }
      
      private function o17783(param1:o18415) : void
      {
         var _loc2_:o14331 = param1.o16809;
         var _loc3_:o17517 = o4519.o32;
         if(_loc2_.type == o19053.o14325 && _loc2_.value > 0)
         {
            this.o4289(_loc2_.o17401,_loc2_.value);
            o20740(o20353,o2866[1]);
            o20740(o20673,o2866[2]);
            if(o13484())
            {
               o15012();
            }
         }
      }
      
      private function o13871() : int
      {
         return o19419.o5292.o3911.o4291(o13650());
      }
      
      private function o13650() : int
      {
         if(o19419.o202.o10211)
         {
            return 627;
         }
         return 618;
      }
      
      private function o7666() : void
      {
         if(o4519.o32.o7694 == false)
         {
            return;
         }
         var _loc1_:int = o13871();
         if(o19419.o202.o10211)
         {
            o7365(_loc1_);
         }
         else
         {
            o14811(_loc1_);
         }
      }
      
      override protected function o10324() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = o13871();
         var _loc1_:int = o19419.o12094.o2584;
         if(_loc1_ < _loc4_)
         {
            _loc2_ = o19419.o5099.o9009("dialogMessage.notEnoughNkCoinsToContinue.title");
            _loc3_ = o19419.o5099.o9009("dialogMessage.notEnoughNkCoinsToContinue.message");
            o16989.o12407(_loc2_,_loc3_);
            o205.o1602(false);
            return;
         }
         o4519.o8116.o4812.o10697();
         o19419.o15894.o4848.o18278.o6950(o13650());
      }
      
      override protected function o11355() : void
      {
         o4519.o32.o9652 = true;
      }
      
      private function o17569(param1:o16562) : void
      {
         this.o18830(param1.o1216);
      }
      
      private function o407(param1:o16562) : void
      {
         this.o18830(null);
      }
      
      private function o10070(param1:o16562) : void
      {
         this.o18140(param1.o1216);
      }
      
      private function o3289(param1:o16562) : void
      {
         this.o18140(param1.o1216);
         o4519.o13206.o14994();
      }
      
      override protected function o628() : void
      {
         o4519.o8116.o20488.o19762();
      }
      
      override protected function o8272(param1:Boolean) : void
      {
         if(param1)
         {
            o19419.o13206.o4793();
         }
         else
         {
            o19419.o13206.o12392();
         }
      }
      
      protected function o3637(param1:Event) : void
      {
      }
      
      protected function o16693(param1:Event) : void
      {
         var _loc2_:* = null;
         if(o9706 == 1 && o19419.o7923.o7993[2] != null)
         {
            _loc2_ = o19419.o7923.o7993[2];
            if(_loc2_.o18554() > 0)
            {
               o13235(2);
               o3636();
               return;
            }
         }
         else if(o9706 == 2 && o19419.o7923.o7993[1] != null)
         {
            _loc2_ = o19419.o7923.o7993[1];
            if(_loc2_.o18554() > 0)
            {
               o13235(1);
               o3636();
               return;
            }
         }
         if(o9706 != 0 && o19419.o7923.o7993[0] != null)
         {
            o13235(0);
            o3636();
            return;
         }
      }
      
      private function o17894(param1:o19312) : void
      {
         this.o10367();
      }
      
      private function o5653(param1:Event = null) : void
      {
         this.o15256();
      }
      
      private function o1163(param1:Object) : void
      {
         var _loc2_:MovieClip = param1 as MovieClip;
         o10924 = true;
         o16587.o15583(_loc2_);
         if(o2111)
         {
            o4519.o13206.o16469();
         }
      }
      
      private function o1605(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return;
         }
         if(param1.cacheAsBitmap)
         {
            o8339("cacheAsBitmap");
         }
         _loc2_ = 0;
         while(_loc2_ < param1.numChildren)
         {
            o1605(param1.getChildAt(_loc2_) as MovieClip);
            _loc2_++;
         }
      }
      
      private function o19698(param1:MovieClip) : MovieClip
      {
         if(param1.parent != null)
         {
            return o19698(param1.parent as MovieClip);
         }
         return param1;
      }
      
      private function o9623(param1:o14689) : void
      {
         if(o16587 != null)
         {
            this.o16587.o598(param1.o7060,param1.visible);
         }
      }
      
      private function o20044(param1:o14689) : void
      {
         if(o16587 != null)
         {
            this.o16587.o15689(param1.o7060,param1.x,param1.y);
         }
      }
      
      private function o4158(param1:o14689) : void
      {
         if(o16587 != null)
         {
            this.o16587.o11987(param1.o7060);
         }
      }
      
      private function o9318(param1:o14689) : void
      {
         if(o16587 != null)
         {
            this.o16587.o1141(param1.o7060);
         }
      }
      
      public function o3036(param1:String, param2:Boolean) : void
      {
         o16587.o16027(param1,param2);
      }
      
      public function o12781(param1:String, param2:Object) : void
      {
         o16587.o6074(param1,param2);
      }
      
      private function o5017() : void
      {
         var _loc16_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc12_:* = null;
         var _loc3_:* = null;
         var _loc9_:* = undefined;
         var _loc1_:* = null;
         var _loc11_:* = null;
         var _loc8_:Boolean = stage.mouseX <= 0 || stage.mouseY <= 0 || stage.mouseX >= stage.stageWidth || stage.mouseY >= stage.stageHeight;
         var _loc4_:o1885 = o4519.o8116.o18929;
         var _loc14_:Number = _loc4_.x + stage.mouseX * (_loc4_.width / (stage as Stage).stageWidth);
         var _loc15_:Number = _loc4_.y + stage.mouseY * (_loc4_.height / (stage as Stage).stageHeight);
         var _loc10_:* = 2147483647;
         var _loc2_:* = null;
         var _loc6_:Number = o4519.o8116.o4550(1.5);
         _loc6_ = _loc6_ * _loc6_;
         if(_loc8_ == false)
         {
            _loc12_ = o4519.o8116.o2996.o20698(o18442).slice();
            _loc12_ = _loc12_.concat(o4519.o8116.o2996.o20698(o5640));
            _loc12_ = _loc12_.concat(o4519.o8116.o2996.o20698(o19370));
            var _loc18_:int = 0;
            var _loc17_:* = _loc12_;
            for each(var _loc13_ in _loc12_)
            {
               if(!(_loc13_.o8289() || _loc13_.body.o8289() || _loc13_ as o18442 && o18442(_loc13_).o13917() == false || _loc13_ as o19370 && o19370(_loc13_).o10210() == false))
               {
                  _loc5_ = _loc14_ - _loc13_.body.position.x;
                  _loc7_ = _loc15_ - _loc13_.body.position.y;
                  _loc16_ = _loc5_ * _loc5_ + _loc7_ * _loc7_;
                  if(_loc16_ < _loc10_ && _loc16_ < _loc6_)
                  {
                     _loc10_ = _loc16_;
                     _loc2_ = _loc13_;
                  }
               }
            }
         }
         if(_loc2_ != o7761)
         {
            if(_loc2_ == null)
            {
               o7761 = null;
               this.o13787();
            }
            else
            {
               o7761 = _loc2_;
            }
         }
         if(o7761 != null && o17462 == false)
         {
            if(o7761 is o18442)
            {
               _loc3_ = o18442(o7761);
               _loc9_ = _loc3_.o20423();
               this.o20652(_loc3_.name,_loc3_.o10051,_loc3_.o10691(),_loc9_);
            }
            else if(o7761 is o5640)
            {
               _loc1_ = o5640(o7761);
               this.o20652(_loc1_.o4027,_loc1_.o10051,_loc1_.o10691(),new Vector.<String>());
            }
            else if(o7761 is o19370)
            {
               _loc11_ = o19370(o7761);
               this.o20652(_loc11_.o4027,_loc11_.o10051,_loc11_.o10691(),new Vector.<String>());
            }
         }
      }
      
      private function o19131(param1:Object) : void
      {
         o17462 = true;
         this.o13787();
         o1292.o8237(o1292.o12278);
         o6023.o4793();
      }
      
      private function o5389(param1:Object) : void
      {
         o17462 = false;
         o4519.o32.o8237();
         o6023.o12392();
      }
      
      private function o17902(param1:o16562) : void
      {
         if(param1.o20629 < this.o19419.o202.o9500.length)
         {
            this.o19419.o202.o9500[param1.o20629] = true;
         }
         o16889();
      }
      
      private function o18974() : void
      {
         if(o19419.o7923.o16611 < 2)
         {
            o19419.o7923.o16611++;
            this.o5110();
         }
      }
      
      private function o3636() : void
      {
         if(o19419.o7923.o1078 < 2)
         {
            o19419.o7923.o1078++;
            this.o14468();
         }
      }
      
      private function o7127() : void
      {
         if(o19419.o7923.o19697 < 2)
         {
            o19419.o7923.o19697++;
            this.o370();
         }
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      private function o10826(param1:o2063) : void
      {
         this.o16774();
      }
      
      private function o17326(param1:o2063) : void
      {
         this.o18329();
      }
      
      private function o2664(param1:o2063) : void
      {
         this.o15190(param1.o2441,param1.o17149,param1.o5878);
      }
      
      private function o16361(param1:o2063) : void
      {
         this.o17336();
      }
      
      private function o20643(param1:o2063) : void
      {
         this.o16740();
      }
      
      private function o3677(param1:o2063) : void
      {
         this.o19764(param1.o15866);
      }
      
      private function o869(param1:o2063) : void
      {
         this.o5845();
      }
      
      private function o19632(param1:o2063) : void
      {
         this.o10227();
      }
      
      private function o3830(param1:o2063) : void
      {
         this.o19623(param1.o4183,param1.o7491,param1.o3183);
      }
      
      private function o16889() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < this.o19419.o202.o9500.length)
         {
            if(this.o19419.o202.o9500[_loc2_] == false)
            {
               _loc1_ = o19419.o202.o18702().o19841[_loc2_];
               this.o18830(_loc1_);
               break;
            }
            _loc2_++;
         }
      }
      
      private function o6118(param1:o19869) : void
      {
         if(param1.o19898.o5693 == o13650())
         {
            o10234 = true;
         }
      }
      
      private function o9264(param1:o19869) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1.o19898.o5693 == o13650())
         {
            if(o4519.o17061)
            {
               o10234 = false;
               if(o19419.o202.o10211)
               {
                  o5643();
               }
               else
               {
                  o3609();
               }
               o7666();
            }
            else
            {
               o10234 = false;
               if(o19419.o202.o10211)
               {
                  o5643();
               }
               else
               {
                  o3609();
               }
               _loc2_ = o19419.o5099.o9009("dialogMessage.nkPurchaseContinueFailed.title");
               _loc3_ = o19419.o5099.o9009("dialogMessage.nkPurchaseContinueFailed.message");
               this.o16989.o12407(_loc2_,_loc3_,o7666);
            }
         }
      }
      
      override protected function o14811(param1:int) : void
      {
         if(o4519.o13206.o248 == false)
         {
            o11355();
            return;
         }
         if(o4519.o32.o7694 == false || o15898 != null)
         {
            return;
         }
         super.o14811(param1);
         var _loc3_:String = o19419.o5099.o9009("dialogMessage.continueGame.title");
         var _loc4_:String = o19419.o5099.o9009("dialogMessage.continueGame.message");
         _loc4_ = _loc4_.replace("[COIN_COST]",param1.toString());
         o15898.o16534 = false;
         var _loc5_:int = o13871();
         var _loc2_:int = o19419.o12094.o2584;
         o15898.o13483(_loc3_,_loc4_,o10324,o11355);
         o15898.o20173.enabled = _loc2_ >= _loc5_ && o4519.o13206.o248;
         o15898.o20173.visible = o4519.o13206.o248;
      }
      
      override protected function o7365(param1:int) : void
      {
         var _loc3_:* = null;
         if(o6734)
         {
            _loc3_ = o4519.o13206.o2685.o10591[o4519.o32.o5973];
            o19419.o202.o19842();
            o4519.o32.o9652 = true;
            o11763(0);
            return;
         }
         if(o4519.o32.o7694 == false || o205 != null)
         {
            return;
         }
         o8339("showMPContinueDialog: R:" + o4519.o13206.o248 + ", D:" + o4519.o32.o7694 + ", QD:" + o19419.o202.o7702 + ", CC:" + o2571);
         if(o4519.o13206.o248 == false || o4519.o32.o7694 == false)
         {
            return;
         }
         if(o19419.o202.o18339 == 2)
         {
            if(o4519.o13206.o587() == false)
            {
               return;
            }
         }
         if(this.o19419.o202.o7702 || o2571)
         {
            return;
         }
         if(this.o19419.o5292.o15863)
         {
            super.o19224(param1);
         }
         else
         {
            super.o7365(param1);
         }
         o205.o16534 = false;
         var _loc4_:int = o13871();
         var _loc2_:int = o19419.o12094.o2584;
         if(this.o19419.o5292.o15863)
         {
            _loc4_ = 1;
            _loc2_ = o19419.data.o911;
            o205.o1400();
            o205.o13483("","",o19670,o17357);
         }
         else
         {
            o205.o13483("","",o4679,o935);
         }
         o205.o20173.enabled = _loc2_ >= _loc4_;
         if(o205.o7770 != null)
         {
            o205.o7770.visible = false;
         }
         if(o8920 > 0)
         {
            o205.o920(o8920);
         }
         o205.o1681();
      }
      
      protected function o19670() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc4_:int = 1;
         var _loc3_:int = o19419.data.o911;
         if(_loc3_ < _loc4_)
         {
            _loc1_ = "No continue tokens";
            _loc2_ = "You require tokens to continue in multiplayer";
            o16989.o12407(_loc1_,_loc2_);
            return;
         }
         o4519.o8116.o4812.o10697();
         o19419.data.o911 = o19419.data.o911 - 1;
         o19419.saveData();
         o10234 = false;
         o19419.o13206.o32.o20309();
         o19419.o13206.o12392();
         o8920 = 0;
         o5643();
      }
      
      protected function o17357() : void
      {
         o205 = null;
         o8920 = 0;
      }
      
      private function o5787(param1:Event) : void
      {
         o17266();
         if(o13779)
         {
            return;
         }
         o13779 = true;
         o4519.o13206.o9033();
      }
      
      private function o5403(param1:Event) : void
      {
         if(o13779 == false)
         {
            return;
         }
         o13779 = false;
         if(this.o18795 != null && this.o18795.o8478)
         {
            o18795.close();
         }
         if(o19419.o1317.o12773 && o19419.o202.o10211 == false)
         {
            o9723();
         }
      }
      
      override protected function get o6106() : Boolean
      {
         return o19419.o7923.o3525.o17992();
      }
      
      public function o6281() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         var _loc3_:Vector.<o14096> = o19419.o5292.o19908;
         _loc2_ = this.o2822 + 1;
         while(_loc2_ < _loc3_.length)
         {
            _loc1_ = _loc3_[_loc2_];
            if(o8486(_loc1_.o2752.o5806) > 0)
            {
               o2822 = _loc2_;
               return;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.o2822)
         {
            _loc1_ = _loc3_[_loc2_];
            if(o8486(_loc1_.o2752.o5806) > 0)
            {
               o2822 = _loc2_;
               return;
            }
            _loc2_++;
         }
      }
      
      public function o16932() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         var _loc3_:Vector.<o14096> = o19419.o5292.o19908;
         _loc2_ = this.o2822 - 1;
         while(_loc2_ >= 0)
         {
            _loc1_ = _loc3_[_loc2_];
            if(o8486(_loc1_.o2752.o5806) > 0)
            {
               o2822 = _loc2_;
               return;
            }
            _loc2_--;
         }
         _loc2_ = _loc3_.length - 1;
         while(_loc2_ > this.o2822)
         {
            _loc1_ = _loc3_[_loc2_];
            if(o8486(_loc1_.o2752.o5806) > 0)
            {
               o2822 = _loc2_;
               return;
            }
            _loc2_--;
         }
      }
      
      private function o17266() : void
      {
         o1069 = 0;
      }
      
      private function o15403(param1:int) : Boolean
      {
         return o7133[param1].o4473 < 1;
      }
      
      override public function o15163() : void
      {
         if(o3034 || o4519.o13206.o18739 || o2571 || o20539 || o17462 || asset == null || o12514)
         {
            return;
         }
         o3034 = true;
         super.o15163();
         o4519.o8116.profileData.gateway.api.call("connection.getAction","echo.echo").call(["SAS4"]).then(function(param1:Object):void
         {
            o8339("got expected response: " + (param1 == "<<SAS4>>"));
            o19419.o2719.o11339();
         },function(param1:Object):void
         {
            o8339("nooo: " + param1);
         });
      }
      
      override protected function o12921() : void
      {
      }
      
      private function o17706() : void
      {
         o19419.o202.o18479 = true;
         o19419.o202.o11155 = true;
         o20539 = true;
         o4519.o13206.o4793();
         o4519.o13206.o17442 = false;
         o4519.o13206.o17216 = false;
         o4519.o13206.o19155 = false;
         this.o16989.screen = 5;
      }
      
      public function o9885(param1:int, param2:String) : void
      {
         if(o4519.o13206 == null)
         {
            throw new Error("Sas4.scenario is null;");
         }
         var _loc3_:Array = o4519.o8116.o2996.o20698(o17517);
         if(_loc3_ == null)
         {
            throw new Error("avatars array is null;");
         }
         var _loc5_:int = 0;
         var _loc4_:Array = o4896.o6854;
         var _loc8_:int = 0;
         var _loc7_:* = _loc3_;
         for each(var _loc6_ in _loc3_)
         {
            if(_loc5_ >= 4)
            {
               throw new Error("More than 4 characters?");
            }
            if(_loc6_ == null)
            {
               throw new Error("Null avatar?");
            }
            if(_loc6_.o5973 == param1)
            {
               if(_loc6_.o10615 == null)
               {
                  throw new Error("Null username?");
               }
               o18795.o20132(param2,_loc6_.o10615,_loc4_[_loc5_]);
            }
            _loc5_++;
         }
      }
      
      private function o1665(param1:o7220) : void
      {
         if(param1.o18765 != o4519.o32.o5973)
         {
            o9885(param1.o18765,param1.o1216);
         }
      }
      
      private function o6224() : void
      {
         o19419.o7923.o19958 = true;
         o8600();
      }
      
      private function o13109() : void
      {
         if(o19419.o7923.o19958 == false)
         {
            o1051.o9310(o4293,10,o6224);
         }
      }
      
      private function o8277(param1:o7734) : void
      {
         if(o10549 <= 0)
         {
            o16084();
         }
      }
      
      override public function o16084() : void
      {
         if(o4519.o13206.o18739 || o2571 || o20539 || o17462 || asset == null || o12514)
         {
            return;
         }
         if(o10549 <= 0)
         {
            super.o16084();
         }
      }
      
      private function o16722(param1:o7734) : void
      {
         if(o10549 <= 0)
         {
            o16084();
         }
      }
      
      private function o18965(param1:o7734) : void
      {
         o15163();
      }
      
      protected function o4679() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = o13871();
         var _loc1_:int = o19419.o12094.o2584;
         if(_loc1_ < _loc4_)
         {
            _loc2_ = o19419.o5099.o9009("dialogMessage.notEnoughNkCoinsToContinue.title");
            _loc3_ = o19419.o5099.o9009("dialogMessage.notEnoughNkCoinsToContinue.message");
            o16989.o12407(_loc2_,_loc3_);
            o5643(false);
            return;
         }
         o4519.o8116.o4812.o10697();
         o19419.o15894.o4848.o18278.o6950(o13650());
      }
      
      protected function o935() : void
      {
         o205 = null;
         o8920 = 0;
      }
      
      private function o98(param1:o19869) : void
      {
         if(param1.o19898.o5693 == o13650())
         {
            o10234 = false;
            o19419.o13206.o32.o20309();
            o19419.o13206.o12392();
            o8920 = 0;
            if(o19419.o202.o10211)
            {
               o5643();
            }
            else
            {
               o3609();
            }
         }
      }
      
      private function o17819(param1:Event = null) : void
      {
         if(this.o19419.o202.o18730 == false)
         {
            if(o19419.o202.o10211)
            {
               if(o19419.o202.o20837)
               {
                  o19419.o7923.o2988++;
               }
            }
            else
            {
               o19419.o7923.o8326++;
            }
         }
         var _loc2_:int = o13871();
         if(o19419.o202.o10211)
         {
            o1051.o9310(o2986,1,o15550);
         }
         else
         {
            o1051.o9310(o2986,1,o10597);
         }
      }
      
      private function o15550() : void
      {
         var _loc1_:int = o13871();
         o7365(_loc1_);
      }
      
      private function o10597() : void
      {
         o19419.o13206.o4793();
         var _loc1_:int = o13871();
         o14811(_loc1_);
      }
      
      public function o8287() : void
      {
         if(o2571)
         {
            return;
         }
         o4519.o13206.o12392();
      }
      
      override protected function o2951(param1:MouseEvent) : void
      {
         o4519.o13206.o4793();
         o16989.o20948(o8287);
      }
      
      private function o9830(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc2_:int = 0;
         if(o19419.o202.o10211 == false)
         {
            return;
         }
         if(o4519.o32.o7694 == false && o205 != null && o205.o12514 == false && o205.o17247() == false)
         {
            o5643();
            return;
         }
         if(o4519.o13206.o587())
         {
            o8920 = o8920 - param1;
            _loc3_ = o205 != null && o205.o17247();
            if(o8920 < 0 && _loc3_ == false)
            {
               o8920 = 0;
               o4519.o32.o9652 = true;
               if(o205 != null)
               {
                  o205.o1681();
                  o205.close();
                  o205 = null;
               }
            }
            else if(o205 != null)
            {
               _loc2_ = o8920;
               if(_loc2_ < 0)
               {
                  _loc2_ = 0;
               }
               o205.o920(_loc2_);
            }
         }
      }
      
      override protected function o13422() : void
      {
         o4519.o13206.o14994();
      }
      
      override protected function get o6734() : Boolean
      {
         return o4519.o13206.o3625;
      }
      
      override protected function o15772() : void
      {
         o10234 = false;
         o6322.visible = true;
         o19419.o13206.o32.o15584();
         o19419.o13206.o12392();
         o8920 = 0;
         o4639 = true;
      }
      
      private function o18225(param1:Vector.<int>) : Vector.<int>
      {
         var _loc2_:Vector.<int> = new Vector.<int>();
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      private function o17952() : void
      {
         var _loc4_:* = undefined;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:* = o4519.o13206.o2685.o10591;
         for each(var _loc2_ in o4519.o13206.o2685.o10591)
         {
            if(o2403[_loc2_.id] == null)
            {
               _loc3_ = true;
               o2403[_loc2_.id] = new Vector.<int>();
            }
            else
            {
               _loc4_ = o2403[_loc2_.id] as Vector.<int>;
               if(_loc2_.o11008.length != _loc4_.length)
               {
                  o2403[_loc2_.id] = o18225(_loc2_.o11008);
                  _loc3_ = true;
               }
            }
            _loc1_++;
         }
         if(o9995 != _loc1_)
         {
            _loc3_ = true;
            o9995 = _loc1_;
         }
         if(_loc3_)
         {
            o19546();
         }
      }
      
      public function o19546() : void
      {
         o8339("refreshPowerUpPerkEffects");
         var _loc4_:o1377 = o19419.o202.o12874;
         _loc4_.reset();
         var _loc6_:int = 0;
         var _loc5_:* = o4519.o13206.o2685.o10591;
         for each(var _loc2_ in o4519.o13206.o2685.o10591)
         {
            if(_loc2_.id != o4519.o32.o5973)
            {
               _loc4_.o9543(_loc2_.o11008);
            }
            else
            {
               _loc4_.o5567(_loc2_.o11008);
            }
         }
         o7791();
         var _loc1_:int = 0;
         var _loc8_:int = 0;
         var _loc7_:* = o19419.o202.o11032;
         for each(var _loc3_ in o19419.o202.o11032)
         {
            o17295(_loc1_,_loc3_.o3331);
            _loc1_++;
         }
      }
      
      public function o5674() : void
      {
         o15012();
      }
      
      override public function o18830(param1:String) : void
      {
         this.o9052 = 300;
         super.o18830(param1);
      }
   }
}
