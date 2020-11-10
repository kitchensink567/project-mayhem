package
{
   import flash.utils.Dictionary;
   
   public class o14413
   {
      
      public static var o19505:o14413;
      
      private static const o11753:o16123 = new o16123(4);
      
      private static const o17524:o16123 = new o16123(3);
      
      private static const o15672:o16123 = new o16123(5);
      
      private static const o6404:o16123 = new o16123(10);
      
      private static const o4942:o16123 = new o16123(33);
      
      private static const o20916:o16123 = new o16123(35);
      
      private static const o9579:o16123 = new o16123(2);
      
      public static const o15194:Boolean = true;
       
      
      public var o15099:Boolean = true;
      
      public var o19127:Boolean = true;
      
      public var o20622:Boolean = true;
      
      public var o12970:o16236;
      
      public var o16679:o10330;
      
      public var o20827:o4609;
      
      public var o418:o15745;
      
      public var o10365:o3273;
      
      private var o19419:o14200;
      
      public var o6666:o6296;
      
      public var o8675:o12308;
      
      public var o923:o19433;
      
      public var o9177:o5154;
      
      public var o6055:o14094;
      
      public var o13723:o460;
      
      private var o7370:o16123;
      
      public var o5052:Vector.<o14018>;
      
      public var o15148:Vector.<o14018>;
      
      public var o14760:Vector.<o14018>;
      
      private var o14687:o15787;
      
      private var o5682:o16123;
      
      private var o13463:Vector.<o16123>;
      
      public var o4153:Vector.<o12377>;
      
      public var o4843:Vector.<o12377>;
      
      private var o11336:o15787;
      
      private var o9349:o15787;
      
      public var o4032:Dictionary;
      
      public const o9862:Boolean = true;
      
      private var o16193:o15787;
      
      private var o17213:o16123;
      
      private var o10564:o16123;
      
      private var o18459:o16123;
      
      private var o13263:o16123;
      
      private var o1393:o16123;
      
      private var o10392:o16123;
      
      private var o20759:o16123;
      
      private var o16040:o16123;
      
      public var o3911:o13643;
      
      public var o18982:o9764;
      
      private var o4349:o15787;
      
      private var o316:o15787;
      
      public var o16352:Vector.<o14096>;
      
      public var o5195:Vector.<o14096>;
      
      private var o3259:o16123;
      
      private var o1225:o16123;
      
      private var o11934:o16123;
      
      public var o19384:Vector.<o16123>;
      
      public var o3475:String;
      
      public var o12142:String;
      
      public var o18300:Boolean = true;
      
      public var o11370:o16253;
      
      public var o16078:Vector.<o15645>;
      
      public var o10965:Vector.<o3803>;
      
      public var o13988:o2038;
      
      public function o14413(param1:o14200)
      {
         o7370 = new o16123(6);
         o14687 = new o15787(0);
         o5682 = new o16123(0);
         o13463 = new Vector.<o16123>();
         o11336 = new o15787(0);
         o9349 = new o15787(0);
         o16193 = new o15787(1);
         o17213 = new o16123(0);
         o10564 = new o16123(0);
         o18459 = new o16123(0);
         o13263 = new o16123(0);
         o1393 = new o16123(0);
         o10392 = new o16123(0);
         o20759 = new o16123(0);
         o16040 = new o16123(5);
         o4349 = new o15787(0);
         o316 = new o15787(0);
         o3259 = new o16123(0);
         o1225 = new o16123(0);
         o11934 = new o16123(0);
         super();
         this.o19419 = param1;
         o19505 = this;
      }
      
      public static function get o17745() : int
      {
         return o11753.value;
      }
      
      public static function get o20378() : int
      {
         return o17524.value;
      }
      
      public static function get o6911() : int
      {
         return o15672.value;
      }
      
      public static function get o11842() : int
      {
         return 12;
      }
      
      public static function get o20705() : int
      {
         var _loc1_:int = 0;
         var _loc3_:Vector.<o14096> = o14200.o19505.o7923.o1819();
         if(_loc3_)
         {
            var _loc5_:int = 0;
            var _loc4_:* = _loc3_;
            for each(var _loc2_ in _loc3_)
            {
               if(_loc2_.o2752.o19901)
               {
                  _loc1_++;
               }
            }
         }
         return o4942.value + _loc1_ * 2;
      }
      
      public static function get o8383() : int
      {
         var _loc1_:int = 0;
         var _loc2_:Vector.<o1253> = o14200.o19505.o7923.o12203();
         if(_loc2_)
         {
            var _loc5_:int = 0;
            var _loc4_:* = _loc2_;
            for each(var _loc3_ in _loc2_)
            {
               if(_loc3_.o19901)
               {
                  _loc1_++;
               }
            }
         }
         return o20916.value + _loc1_ * 2;
      }
      
      public static function get o7019() : int
      {
         return o9579.value;
      }
      
      public function get o15863() : Boolean
      {
         return true;
      }
      
      public function get o10100() : Number
      {
         return o16193.value;
      }
      
      public function set o10100(param1:Number) : void
      {
         o16193.value = param1;
      }
      
      public function get o1610() : Number
      {
         return o11336.value;
      }
      
      public function get o3144() : Number
      {
         return o9349.value;
      }
      
      public function get o2819() : Vector.<o12377>
      {
         if(o12846())
         {
            return o4843;
         }
         return o4153;
      }
      
      public function get o19908() : Vector.<o14096>
      {
         if(o12846())
         {
            return o5195;
         }
         return o16352;
      }
      
      public function o3907(param1:int) : o3803
      {
         var _loc4_:int = 0;
         var _loc3_:* = o10965;
         for each(var _loc2_ in o10965)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o2395(param1:o19173) : o15645
      {
         var _loc2_:o15645 = new o15645();
         _loc2_.o10387 = 15;
         _loc2_.o6086 = new Vector.<int>();
         return _loc2_;
      }
      
      public function get o4009() : int
      {
         return o7370.value;
      }
      
      public function get o5193() : Number
      {
         return o14687.value;
      }
      
      public function get o11483() : int
      {
         return o5682.value;
      }
      
      public function get o1518() : int
      {
         return o17213.value;
      }
      
      public function get o14681() : int
      {
         return o10564.value;
      }
      
      public function get o11445() : int
      {
         return o18459.value;
      }
      
      public function get o561() : int
      {
         return o13263.value;
      }
      
      public function get o656() : int
      {
         return o1393.value;
      }
      
      public function get o9203() : int
      {
         return o10392.value;
      }
      
      public function get o16799() : int
      {
         return o20759.value;
      }
      
      public function get o17345() : int
      {
         return o16040.value;
      }
      
      public function get o10129() : Number
      {
         return o4349.value;
      }
      
      public function get o14666() : Number
      {
         return o316.value;
      }
      
      public function get o15272() : int
      {
         return o3259.value;
      }
      
      public function get o9556() : int
      {
         return o1225.value;
      }
      
      public function get o11655() : int
      {
         return o11934.value;
      }
      
      public function set o4009(param1:int) : void
      {
         o7370.value = param1;
      }
      
      public function set o5193(param1:Number) : void
      {
         o14687.value = param1;
      }
      
      public function set o11483(param1:int) : void
      {
         o5682.value = param1;
      }
      
      public function set o1518(param1:int) : void
      {
         o17213.value = param1;
      }
      
      public function set o14681(param1:int) : void
      {
         o10564.value = param1;
      }
      
      public function set o11445(param1:int) : void
      {
         o18459.value = param1;
      }
      
      public function set o561(param1:int) : void
      {
         o13263.value = param1;
      }
      
      public function set o656(param1:int) : void
      {
         o1393.value = param1;
      }
      
      public function set o9203(param1:int) : void
      {
         o10392.value = param1;
      }
      
      public function set o16799(param1:int) : void
      {
         o20759.value = param1;
      }
      
      public function set o17345(param1:int) : void
      {
         o16040.value = param1;
      }
      
      public function set o10129(param1:Number) : void
      {
         o4349.value = param1;
      }
      
      public function set o14666(param1:Number) : void
      {
         o316.value = param1;
      }
      
      public function set o15272(param1:int) : void
      {
         o3259.value = param1;
      }
      
      public function set o9556(param1:int) : void
      {
         o1225.value = param1;
      }
      
      public function set o11655(param1:int) : void
      {
         o11934.value = param1;
      }
      
      private function o12846() : Boolean
      {
         return o19419.o7923.o3525.o17992();
      }
      
      public function o9063(param1:int) : o14096
      {
         var _loc2_:* = null;
         if(o12846())
         {
            var _loc4_:int = 0;
            var _loc3_:* = o5195;
            for each(_loc2_ in o5195)
            {
               if(_loc2_.o2752.o2752.o5806 == param1)
               {
                  return _loc2_;
               }
            }
         }
         else
         {
            var _loc6_:int = 0;
            var _loc5_:* = o16352;
            for each(_loc2_ in o16352)
            {
               if(_loc2_.o2752.o2752.o5806 == param1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public function o20689(param1:int) : o14096
      {
         if(o12846())
         {
            if(param1 < 0 || param1 > o5195.length)
            {
               return null;
            }
            return o5195[param1];
         }
         if(param1 < 0 || param1 > o16352.length)
         {
            return null;
         }
         return o16352[param1];
      }
      
      public function o16413(param1:int) : o1832
      {
         return o923.o16413(param1);
      }
      
      public function o19938(param1:String) : void
      {
         var _loc2_:String = "hotkey." + param1 + ".";
         o8675.o5066(o19419.o19552.o3554(_loc2_ + "id"),o19419.o19552.o9009(_loc2_ + "keyName"),o19419.o19552.o3791(_loc2_ + "keyCode"));
      }
      
      public function o5812(param1:int) : o14018
      {
         var _loc2_:* = null;
         var _loc4_:int = 0;
         var _loc3_:* = o15148;
         for each(_loc2_ in o15148)
         {
            if(_loc2_.o18172 == param1)
            {
               return _loc2_;
            }
         }
         var _loc6_:int = 0;
         var _loc5_:* = o5052;
         for each(_loc2_ in o5052)
         {
            if(_loc2_.o18172 == param1)
            {
               return _loc2_;
            }
         }
         var _loc8_:int = 0;
         var _loc7_:* = o14760;
         for each(_loc2_ in o14760)
         {
            if(_loc2_.o18172 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o6345(param1:int) : o18474
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         var _loc7_:int = 0;
         var _loc6_:* = o15148;
         for each(_loc3_ in o15148)
         {
            var _loc5_:int = 0;
            var _loc4_:* = _loc3_.o4036;
            for each(_loc2_ in _loc3_.o4036)
            {
               if(_loc2_.id == param1)
               {
                  return _loc2_;
               }
            }
         }
         var _loc11_:int = 0;
         var _loc10_:* = o5052;
         for each(_loc3_ in o5052)
         {
            var _loc9_:int = 0;
            var _loc8_:* = _loc3_.o4036;
            for each(_loc2_ in _loc3_.o4036)
            {
               if(_loc2_.id == param1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public function o15032(param1:String, param2:Boolean) : void
      {
         var _loc3_:o2693 = o19419.o19552;
         var _loc4_:o12377 = new o12377();
         var _loc5_:String = "grenades." + param1 + ".";
         _loc4_.o9421 = _loc3_.o3554(_loc5_ + "cost");
         _loc4_.o1830 = _loc3_.o3554(_loc5_ + "quantity");
         _loc4_.name = _loc3_.o9009(_loc5_ + "name");
         _loc4_.o7962 = _loc3_.o9009(_loc5_ + "description");
         _loc4_.o3 = _loc3_.o3554(_loc5_ + "damageType");
         _loc4_.o5725 = _loc3_.o3554(_loc5_ + "damage");
         _loc4_.o5806 = _loc3_.o3554(_loc5_ + "consumableType");
         _loc4_.o9531 = _loc3_.o9009(_loc5_ + "imageString");
         _loc4_.o18640 = _loc3_.o17521(_loc5_ + "pierce");
         _loc4_.o6487 = _loc3_.o17521(_loc5_ + "AOE");
         _loc4_.o15708 = _loc3_.o17521(_loc5_ + "DOTDamage");
         _loc4_.o11470 = _loc3_.o17521(_loc5_ + "DOTLength");
         _loc4_.o7351 = _loc3_.o17521(_loc5_ + "slowAmount");
         _loc4_.o1480 = _loc3_.o17521(_loc5_ + "slowDuration");
         _loc4_.o17771 = _loc3_.o9009(_loc5_ + "explosionImage");
         _loc4_.o20468 = _loc3_.o3554(_loc5_ + "inGameQtyCap");
         _loc4_.o10505 = _loc3_.o17521(_loc5_ + "explodeCountdown");
         if(param2)
         {
            o4843.push(_loc4_);
         }
         else
         {
            o4153.push(_loc4_);
         }
      }
      
      public function o18364(param1:int) : o12377
      {
         var _loc4_:int = 0;
         var _loc3_:* = o2819;
         for each(var _loc2_ in o2819)
         {
            if(_loc2_.o5806 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o3411(param1:int) : o12377
      {
         if(param1 == 0 && this.o19419.o7923.o3525.o17992())
         {
            return o2819[param1];
         }
         return o2819[param1];
      }
      
      public function o18891() : int
      {
         return o13463.length;
      }
      
      public function o2702(param1:int) : int
      {
         return o13463[param1].value;
      }
      
      private function o18808(param1:int, param2:o15645, param3:o2693, param4:String) : void
      {
         var _loc12_:* = null;
         var _loc6_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc14_:int = 0;
         var _loc5_:int = 0;
         param2.id = param3.o3554(param4 + "id");
         param2.o17977 = param3.o9009(param4 + "heading");
         param2.o4705 = param3.o9009(param4 + "heading");
         param2.o12043 = param3.o9009(param4 + "shortDescription");
         param2.o7219 = param3.o9009(param4 + "frameLabel");
         param2.o10387 = param3.o3554(param4 + "unlockLevel");
         param2.o17593 = param1;
         if(param2.o4705 == "Virus Samples" && o4519.o8116.o476.o9392.o16643())
         {
            _loc12_ = o4519.o8116.o476.o9392.o7908();
            if(_loc12_)
            {
               param2.o17977 = _loc12_.o17977;
               param2.o12043 = _loc12_.o20073;
               param2.o8398 = _loc12_.o8398;
               param2.o7219 = _loc12_.o17977;
            }
         }
         var _loc9_:int = param3.o3554(param4 + "cashBonusMultiplier");
         var _loc10_:int = 0;
         _loc10_ = 0;
         while(_loc10_ < _loc9_)
         {
            param2.o20054(param3.o17521(param4 + "cashBonusMultiplier." + _loc10_.toString()));
            _loc10_++;
         }
         var _loc15_:int = param3.o3554(param4 + "cashBonusLevelAmount");
         _loc10_ = 0;
         while(_loc10_ < _loc15_)
         {
            param2.o14387(param3.o17521(param4 + "cashBonusLevelAmount." + _loc10_.toString()));
            _loc10_++;
         }
         var _loc11_:int = param3.o3554(param4 + "rankPoints");
         _loc5_ = 0;
         while(_loc5_ < _loc11_)
         {
            param2.o907(param3.o3554(param4 + "rankPoints." + _loc5_.toString()));
            _loc5_++;
         }
         var _loc13_:int = param3.o3554(param4 + "rewardId");
         var _loc7_:String = param3.o9009(param4 + "details");
         param2.o8398 = _loc7_;
      }
      
      private function o3543(param1:o2693) : void
      {
         var _loc8_:int = 0;
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = null;
         o13988 = new o2038();
         var _loc7_:String = "liveOps.rewards";
         var _loc2_:int = param1.o3554(_loc7_);
         _loc8_ = 0;
         while(_loc8_ < _loc2_)
         {
            _loc4_ = _loc7_ + "." + _loc8_.toString() + ".";
            _loc6_ = new o11614();
            _loc6_.o8749 = _loc8_;
            _loc6_.o6287 = param1.o17521(_loc4_ + "credPacks");
            _loc6_.o3998 = param1.o17521(_loc4_ + "reviveTokens");
            _loc6_.o12753 = param1.o17521(_loc4_ + "fullBoosts");
            _loc6_.o5532 = param1.o17521(_loc4_ + "blackKeys");
            _loc6_.o15076 = param1.o17521(_loc4_ + "superEventMedals");
            _loc6_.o8153(o4189.o19843,param1.o17521(_loc4_ + "steel"));
            _loc6_.o8153(o4189.o17868,param1.o17521(_loc4_ + "titanium"));
            _loc6_.o8153(o4189.o20918,param1.o17521(_loc4_ + "molybdenum"));
            _loc6_.o8153(o4189.o6765,param1.o17521(_loc4_ + "iridium"));
            _loc6_.o8153(o4189.o16296,param1.o17521(_loc4_ + "neodynium"));
            _loc6_.o8153(o4189.o11328,param1.o17521(_loc4_ + "promethium"));
            _loc6_.o8153(o4189.o15243,param1.o17521(_loc4_ + "thulium"));
            _loc6_.o8153(o4189.o1897,param1.o17521(_loc4_ + "nantonium"));
            _loc6_.o14271(4,param1.o17521(_loc4_ + "HMGTurrets"));
            _loc6_.o14271(9,param1.o17521(_loc4_ + "zeusTurrets"));
            _loc6_.o14271(8,param1.o17521(_loc4_ + "flameTurrets"));
            if(param1.o20495(_loc4_ + "weapon.id"))
            {
               _loc3_ = new o1928(param1.o3554(_loc4_ + "weapon.id"),param1.o3554(_loc4_ + "weapon.grade"),param1.o3554(_loc4_ + "weapon.augSlots"));
               _loc6_.o15217 = _loc3_;
            }
            if(param1.o20495(_loc4_ + "badgeLevel"))
            {
               _loc6_.o10936 = param1.o3554(_loc4_ + "badgeLevel");
            }
            else
            {
               _loc6_.o10936 = -1;
            }
            o13988.o12372[_loc6_.o8749] = _loc6_;
            _loc8_++;
         }
         var _loc5_:o16062 = o4519.o8116.o476;
         var _loc10_:int = 0;
         var _loc9_:* = _loc5_.o13988;
         for each(_loc6_ in _loc5_.o13988)
         {
            o13988.o12372[_loc6_.o8749] = _loc6_;
         }
      }
      
      private function o9222(param1:int, param2:Vector.<o15645>, param3:o2693, param4:String) : void
      {
         var _loc5_:* = null;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc6_:int = param3.o3554(param4);
         _loc8_ = 0;
         while(_loc8_ < _loc6_)
         {
            _loc5_ = param4 + "." + _loc8_.toString() + ".";
            _loc7_ = new o15645();
            o18808(param1,_loc7_,param3,_loc5_);
            param2.push(_loc7_);
            _loc8_++;
         }
      }
      
      private function o10959(param1:Vector.<o3803>, param2:o2693, param3:String) : void
      {
         var _loc4_:* = null;
         var _loc7_:int = 0;
         var _loc6_:* = null;
         var _loc5_:int = param2.o3554(param3);
         _loc7_ = 0;
         for(; _loc7_ < _loc5_; param1.push(_loc6_),_loc7_++)
         {
            _loc4_ = param3 + "." + _loc7_.toString() + ".";
            _loc6_ = new o3803();
            o18808(1,_loc6_,param2,_loc4_);
            _loc6_.o8938 = param2.o9009(_loc4_ + "levelCompleteMessage");
            if(param2.o9009(_loc4_ + "xpPercent") != null)
            {
               _loc6_.o2064 = param2.o17521(_loc4_ + "xpPercent");
            }
            if(param2.o9009(_loc4_ + "lootDropPercent") != null)
            {
               _loc6_.o11071 = param2.o17521(_loc4_ + "lootDropPercent");
            }
            var _loc8_:* = _loc6_.id;
            switch(_loc8_)
            {
               case 3:
                  o19616.o18892(param2,_loc4_ + "balance.");
                  continue;
               case 4:
                  o5141.o18892(param2,_loc4_ + "balance.");
                  continue;
               case 5:
                  o8291.o18892(param2,_loc4_ + "balance.");
                  continue;
               case 7:
                  o6873.o18892(param2,_loc4_);
               case 6:
               case 101:
               case 102:
               case 103:
               case 104:
               case 100:
                  o10841.o18892(param2,"liveOps.contracts.");
                  continue;
               default:
                  continue;
            }
         }
      }
      
      private function o6160(param1:Vector.<o14018>, param2:int) : void
      {
         var _loc3_:o14018 = new o14018();
         _loc3_.o18172 = param2;
         _loc3_.o7962 = "Fake augment. Not displayed";
         o14760.push(_loc3_);
      }
      
      public function init(param1:o2693, param2:o2693, param3:o2693) : void
      {
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc6_:* = null;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         o9609.o6223().o4641(param1);
         o11370 = new o16253(o19419);
         o11370.init(param1);
         this.o418 = new o15745();
         this.o418.init(param1,"elite.");
         this.o10365 = new o3273();
         this.o10365.init(param1,"themedWeapons");
         this.o5682.value = o19419.o19552.o3554("unlockThirdCharacterSlotAtLevel");
         this.o14687.value = o19419.o19552.o17521("settings.cashXpPercent");
         this.o8675 = new o12308();
         this.o4349.value = o19419.o19552.o17521("settings.continueInvincibleDuration");
         this.o316.value = o19419.o19552.o17521("settings.multiplayerInvincibleDuration");
         this.o18982 = new o9764();
         this.o18982.init(param3);
         o11336.value = o19419.o19552.o17521("medkit.lootHealPercent");
         o9349.value = o19419.o19552.o17521("medkit.placeableHealPercent");
         o13463 = new Vector.<o16123>();
         var _loc11_:int = o19419.o19552.o3554("firstStrongboxGun");
         _loc12_ = 0;
         while(_loc12_ < _loc11_)
         {
            _loc13_ = o19419.o19552.o3554("firstStrongboxGun." + _loc12_.toString());
            _loc6_ = new o16123(_loc13_);
            o13463.push(_loc6_);
            _loc12_++;
         }
         o3543(param1);
         o16078 = new Vector.<o15645>();
         o9222(0,o16078,param1,"liveOps.tasks");
         o9222(2,o16078,param1,"liveOps.dailyTasks");
         o9222(3,o16078,param1,"liveOps.superEventTasks");
         o10965 = new Vector.<o3803>();
         o10959(o10965,param1,"liveOps.gameModes");
         o10959(o10965,param1,"liveOps.contracts");
         o18300 = o19419.o19552.o18357("settings.muliplayerEnabled");
         o18568.o2863(param1,"enemy.zombieAttributes.");
         o14576.o2863(param1,"nightmareModeProperties.");
         o20827 = new o4609();
         o20827.init(param1);
         this.o20759.value = o19419.o19552.o3554("settings.maxSkillLevel");
         this.o19938("useTurret");
         this.o19938("useFragGrenade");
         this.o19938("useCryoGrenade");
         this.o19938("prevWeapon");
         this.o19938("nextWeapon");
         this.o19938("useSkill0");
         this.o19938("useSkill1");
         this.o19938("useSkill2");
         this.o19938("pause");
         this.o19938("prevTurret");
         this.o19938("nextTurret");
         this.o19938("moveLeft");
         this.o19938("moveRight");
         this.o19938("moveUp");
         this.o19938("moveDown");
         this.o19938("reload");
         this.o4153 = new Vector.<o12377>();
         this.o4843 = new Vector.<o12377>();
         this.o15032("m45",false);
         this.o15032("cryo",false);
         this.o15032("m48",true);
         this.o15032("cryoRed",true);
         this.o923 = new o19433(param2);
         this.o3911 = new o13643();
         this.o3911.init(o19419.o19552);
         this.o6055 = new o14094(o19419.o19552);
         this.o9177 = new o5154(o19419.o19552);
         this.o15148 = o14182(param1,"augments.weaponAugments");
         this.o5052 = o14182(param1,"augments.equipmentAugments");
         o14760 = new Vector.<o14018>();
         o4032 = new Dictionary();
         o4032[1] = param1.o17521("augments.equipmentTypeBonus.body");
         o4032[0] = param1.o17521("augments.equipmentTypeBonus.head");
         o4032[3] = param1.o17521("augments.equipmentTypeBonus.hands");
         o4032[2] = param1.o17521("augments.equipmentTypeBonus.legs");
         o4032[4] = param1.o17521("augments.equipmentTypeBonus.feet");
         this.o18459.value = o19419.o19552.o3554("cost.sellWeaponCapPrice");
         this.o13263.value = o19419.o19552.o3554("cost.sellEquipmentCapPrice");
         this.o1393.value = o19419.o19552.o3554("cost.sellWeaponCapPriceRed");
         this.o10392.value = o19419.o19552.o3554("cost.sellEquipmentCapPriceRed");
         this.o17213.value = o19419.o19552.o3554("settings.showStorePerWins");
         this.o10564.value = o19419.o19552.o3554("settings.showStorePerWins");
         this.o3259.value = o19419.o19552.o3554("settings.unlockV2GenadesLevel");
         this.o1225.value = o19419.o19552.o3554("settings.inGameTurretTypeCap");
         this.o11934.value = o19419.o19552.o3554("settings.multiplayerInactiveTimeout");
         this.o3475 = o19419.o19552.o9009("settings.watchTrailerURL");
         this.o12142 = o19419.o19552.o9009("settings.nkLoginURL");
         this.o10100 = o19419.o19552.o17521("settings.hdAmmoDamage");
         o16352 = new Vector.<o14096>();
         o5195 = new Vector.<o14096>();
         var _loc15_:int = 0;
         var _loc14_:* = o4519.o8116.o1184.o6795;
         for each(var _loc7_ in o4519.o8116.o1184.o6795)
         {
            if(_loc7_.o5168 && _loc7_.o6947 == false)
            {
               _loc9_ = o19419.o15894.o19318(_loc7_.id);
               if(_loc7_.o11570 == 1)
               {
                  o16352.push(_loc9_);
               }
               else
               {
                  o5195.push(_loc9_);
               }
            }
         }
         o16352.sort(o18753);
         o5195.sort(o18753);
         o19384 = new Vector.<o16123>();
         var _loc5_:Vector.<String> = o19419.o19552.o18150("earnSasCash.videoLevel");
         o19384.push(new o16123(0));
         var _loc8_:* = 1;
         var _loc17_:int = 0;
         var _loc16_:* = _loc5_;
         for each(var _loc4_ in _loc5_)
         {
            _loc10_ = o19419.o19552.o3554("earnSasCash.videoLevel." + _loc8_.toString());
            o19384.push(new o16123(_loc10_));
            _loc8_++;
         }
         _loc8_ = _loc8_;
         o13723 = new o460();
         o13723.init(param1);
      }
      
      public function o120() : int
      {
         return (o19384[o19419.o7923.level] as o16123).value * o19419.o5292.o12970.o10833;
      }
      
      public function o11857() : int
      {
         return (o19384[o19419.o7923.level] as o16123).value;
      }
      
      public function o7392() : int
      {
         return (o19384[o19419.o7923.level] as o16123).value;
      }
      
      public function o3838() : int
      {
         return (o19384[o19419.o7923.level] as o16123).value;
      }
      
      private function o18753(param1:o14096, param2:o14096) : int
      {
         if(param1.o2752.o12734 < param2.o2752.o12734)
         {
            return -1;
         }
         if(param1.o2752.o12734 > param2.o2752.o12734)
         {
            return 1;
         }
         throw new Error("weaponConsumableOrderSort: consumableOrder must be unique");
      }
      
      public function o9024() : Dictionary
      {
         var _loc3_:int = 0;
         var _loc1_:Dictionary = new Dictionary();
         _loc3_ = 0;
         while(_loc3_ <= 4)
         {
            _loc1_[_loc3_] = [];
            _loc3_++;
         }
         var _loc8_:int = 0;
         var _loc7_:* = o5052;
         for each(var _loc4_ in o5052)
         {
            var _loc6_:int = 0;
            var _loc5_:* = _loc4_.o652;
            for each(var _loc2_ in _loc4_.o652)
            {
               (_loc1_[_loc2_.value] as Array).push(_loc4_.o18172);
            }
         }
         return _loc1_;
      }
      
      private function o511(param1:String, param2:String) : void
      {
         if(param1.indexOf("###") == 0)
         {
            param1 = param1.substring(3);
         }
         if(param1 != param2)
         {
            throw param1 + " != " + param2;
         }
      }
      
      private function o6304(param1:Vector.<o14018>, param2:int, param3:String, param4:String, param5:String, param6:String) : void
      {
         var _loc9_:int = 0;
         var _loc8_:* = param1;
         for each(var _loc7_ in param1)
         {
            if(_loc7_.o18172 == param2)
            {
               o511(_loc7_.o3279,param3);
               o511(_loc7_.name,param4);
               o511(_loc7_.o7962,param5);
               o511(_loc7_.o12087,param6);
               return;
            }
         }
         throw new Error("Augment not found: " + param4);
      }
      
      private function o10548(param1:o14018, param2:o14018) : int
      {
         if(param1.o18172 < param2.o18172)
         {
            return -1;
         }
         if(param1.o18172 > param2.o18172)
         {
            return 1;
         }
         throw new Error("Same aug id?");
      }
      
      private function o14182(param1:o2693, param2:String) : Vector.<o14018>
      {
         var _loc10_:int = 0;
         var _loc7_:* = null;
         var _loc11_:* = null;
         var _loc6_:* = null;
         var _loc12_:* = null;
         var _loc3_:* = null;
         var _loc9_:* = null;
         var _loc5_:Vector.<o14018> = new Vector.<o14018>();
         var _loc4_:Vector.<String> = param1.o4950(param2);
         var _loc14_:int = 0;
         var _loc13_:* = _loc4_;
         for each(var _loc8_ in _loc4_)
         {
            _loc3_ = param2 + "." + _loc8_ + ".";
            _loc10_ = param1.o3554(_loc3_ + "augId");
            _loc7_ = param1.o9009(_loc3_ + "statusLabel");
            _loc11_ = param1.o9009(_loc3_ + "name");
            _loc6_ = param1.o9009(_loc3_ + "description");
            _loc12_ = param1.o9009(_loc3_ + "framelabel");
            if(_loc10_ != 12)
            {
               _loc9_ = new o14018();
               _loc9_.init(_loc10_,_loc7_,_loc11_,_loc6_,_loc12_);
               _loc5_.push(_loc9_);
            }
         }
         _loc5_.sort(o10548);
         return _loc5_;
      }
      
      private function o15867(param1:Vector.<o14018>) : void
      {
         o6304(param1,13,"Physical Defense","Fortfied","Increases protection against physical damage.","fortified");
         o6304(param1,14,"Heat Defense","Heat Resistant","Increases protection against heat based damage.","heatresistance");
         o6304(param1,15,"Toxic Defense","Hazchem","Increases protection against toxic based damage.","hazchem");
         o6304(param1,16,"Energy Modifier","Energised","Increases maximum energy capacity of wearer.","energised");
         o6304(param1,17,"Health Modifier","Body Fueling","Increases maximum health of wearer.","bodyfueling");
         o6304(param1,18,"Healing Speed","Tissue Repair","Increases health regeneration rate.","tissuerepair");
         o6304(param1,19,"Energy Regen Rate","Revitalising","Increases energy replenishment rate.","revitalizing");
         o6304(param1,20,"Recovery Time Modifier","Resuscitating","Decreases recovery time when knocked down in multiplayer missions.","resuscitating");
         o6304(param1,21,"Melee Attacker Damage","CQC Enhanced","Causes damage to melee attackers that strike you.","cqcenhanced");
         o6304(param1,22,"Movement Modifier","Machine Assisted","Increases movement speed of wearer.","machineassist");
         o6304(param1,23,"Gun Spread","Target Assist","Reduces gun spread.","targetassist");
         o6304(param1,24,"Gun Damage","Smart Target","Increases weapon damage.","smarttarget");
         o6304(param1,25,"Reload Speed","Nimble","Reduces weapon reload speed.","nimble");
      }
      
      private function o15920(param1:Vector.<o14018>) : void
      {
         o6304(param1,1,"Damage","Deadly","Increases weapons base damage.","deadly");
         o6304(param1,2,"Pierce","Piercing","Allows weapons to affect or pass through more targets.","piercing");
         o6304(param1,4,"Blast Radius","Enlarged","Increases blast radius of weapon.","enlarged");
         o6304(param1,6,"Rate of fire","Overclocked","Increases rate of fire.","overclocked");
         o6304(param1,7,"Damage Over time","Tenacious","Increase damage over time effects.","tenacious");
         o6304(param1,8,"Clip size","Capacity","Increases weapon clip size.","capacity");
         o6304(param1,9,"Reload time","Race Modded","Decreases weapon reload time","raceModded");
         o6304(param1,10,"Movement Modifier","Skeletonized","Lightens weapon, decreasing movement penalties from it.","skeletonized");
      }
      
      public function o9151(param1:int) : int
      {
         var _loc2_:Number = param1 * 10 + 850;
         _loc2_ = Math.min(_loc2_,1000);
         var _loc3_:Number = 1 + Math.random() * _loc2_;
         if(_loc3_ <= 500)
         {
            return o4189.o19843;
         }
         if(_loc3_ <= 725)
         {
            return o4189.o17868;
         }
         if(_loc3_ <= 875)
         {
            return o4189.o20918;
         }
         if(_loc3_ <= 950)
         {
            return o4189.o6765;
         }
         if(_loc3_ <= 990)
         {
            return o4189.o16296;
         }
         return o4189.o11328;
      }
   }
}
