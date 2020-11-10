package
{
   public class o15745
   {
       
      
      private var o15929:Vector.<o16123>;
      
      private var o8625:o15787;
      
      private var o15855:o15787;
      
      private var o9327:o15787;
      
      private var o17780:o15787;
      
      private var o14288:o15787;
      
      private var o9813:o15787;
      
      private var o11935:o15787;
      
      private var o11994:o15787;
      
      private var o13319:o16123;
      
      private var o1854:o15787;
      
      private var o15447:o16123;
      
      private var o7207:o15787;
      
      private var o12168:o16123;
      
      private var o3350:o15787;
      
      private var o20218:o15787;
      
      private var o9790:o15787;
      
      private var o4552:o15787;
      
      private var o15870:o15787;
      
      private var o4901:o16123;
      
      private var o3909:o15787;
      
      private var o16165:o15787;
      
      private var o6979:o15787;
      
      private var o3560:o16123;
      
      private var o10195:o15787;
      
      public var o1669:Vector.<o5843>;
      
      private var o16337:o16123;
      
      private var o4790:o15787;
      
      public var o2802:Vector.<o17905>;
      
      private var o19721:o15787;
      
      public var o18165:Vector.<o13706>;
      
      public var o14950:Vector.<int>;
      
      private var o12842:Vector.<o8499>;
      
      public var o17682:Vector.<o18631>;
      
      public function o15745()
      {
         o15929 = new Vector.<o16123>();
         o8625 = new o15787(1);
         o15855 = new o15787(1);
         o9327 = new o15787(1);
         o17780 = new o15787(1);
         o14288 = new o15787(1);
         o9813 = new o15787(1);
         o11935 = new o15787(1);
         o11994 = new o15787(0);
         o13319 = new o16123(0);
         o1854 = new o15787(0);
         o15447 = new o16123(0);
         o7207 = new o15787(0);
         o12168 = new o16123(0);
         o3350 = new o15787(0);
         o20218 = new o15787(0);
         o9790 = new o15787(0);
         o4552 = new o15787(0);
         o15870 = new o15787(0);
         o4901 = new o16123(0);
         o3909 = new o15787(0);
         o16165 = new o15787(0);
         o6979 = new o15787(0);
         o3560 = new o16123(0);
         o10195 = new o15787(0);
         o16337 = new o16123(0);
         o4790 = new o15787(0);
         o19721 = new o15787(0);
         o12842 = new Vector.<o8499>();
         super();
      }
      
      public function get o4304() : Number
      {
         return o8625.value;
      }
      
      public function get o2160() : Number
      {
         return o15855.value;
      }
      
      public function get o272() : Number
      {
         return o9327.value;
      }
      
      public function get o16644() : Number
      {
         return o17780.value;
      }
      
      public function get o18930() : Number
      {
         return o14288.value;
      }
      
      public function get o1116() : Number
      {
         return o9813.value;
      }
      
      public function get o863() : Number
      {
         return o11935.value;
      }
      
      public function get o18254() : Number
      {
         return o11994.value;
      }
      
      public function get o18774() : int
      {
         return o13319.value;
      }
      
      public function get o19259() : Number
      {
         return o1854.value;
      }
      
      public function get o6606() : int
      {
         return o15447.value;
      }
      
      public function get o18918() : Number
      {
         return o7207.value;
      }
      
      public function get o2109() : int
      {
         return o12168.value;
      }
      
      public function get o11898() : Number
      {
         return o3350.value;
      }
      
      public function get o10473() : Number
      {
         return o20218.value;
      }
      
      public function get o14225() : Number
      {
         return o9790.value;
      }
      
      public function get o8425() : Number
      {
         return o4552.value;
      }
      
      public function get o20545() : Number
      {
         return o15870.value;
      }
      
      public function get o13854() : int
      {
         return o4901.value;
      }
      
      public function get o6184() : Number
      {
         return o3909.value;
      }
      
      public function get o4582() : Number
      {
         return o16165.value;
      }
      
      public function get o20655() : Number
      {
         return o6979.value;
      }
      
      public function o13794() : Vector.<Number>
      {
         var _loc1_:Vector.<Number> = new Vector.<Number>();
         _loc1_.push(o6184);
         _loc1_.push(o4582);
         _loc1_.push(o20655);
         return _loc1_;
      }
      
      public function get o12650() : int
      {
         return o3560.value;
      }
      
      public function get o3417() : Number
      {
         return o10195.value;
      }
      
      public function get o6011() : int
      {
         return o16337.value;
      }
      
      public function get o13515() : Number
      {
         return o4790.value;
      }
      
      public function get o3146() : Number
      {
         return o19721.value;
      }
      
      public function o18182(param1:int) : o18631
      {
         var _loc4_:int = 0;
         var _loc3_:* = o17682;
         for each(var _loc2_ in o17682)
         {
            if(param1 == _loc2_.o1783)
            {
               return _loc2_;
            }
         }
         return new o18631(param1);
      }
      
      public function o19383(param1:o8925) : Boolean
      {
         var _loc2_:* = null;
         if(param1.o6365 == 1)
         {
            _loc2_ = o5163();
            return _loc2_.indexOf(param1.id) >= 0;
         }
         return true;
      }
      
      private function o5137(param1:int) : void
      {
         o15929.push(new o16123(param1));
      }
      
      public function o19447() : int
      {
         return o2802[o2802.length - 2].o18875;
      }
      
      public function init(param1:o2693, param2:String) : void
      {
         var _loc10_:int = 0;
         var _loc15_:* = null;
         var _loc11_:* = null;
         var _loc23_:* = null;
         var _loc7_:* = null;
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:Boolean = false;
         var _loc21_:* = null;
         var _loc22_:* = null;
         o2802 = new Vector.<o17905>();
         var _loc13_:String = param2 + "augmentRewards";
         var _loc14_:int = param1.o3554(_loc13_);
         _loc13_ = _loc13_ + ".";
         var _loc12_:* = null;
         _loc10_ = 0;
         while(_loc10_ < _loc14_)
         {
            _loc15_ = new o17905();
            _loc15_.init(param1,_loc13_ + _loc10_.toString(),_loc10_,_loc12_);
            o2802.push(_loc15_);
            _loc12_ = _loc15_;
            _loc10_++;
         }
         _loc15_ = new o17905();
         _loc15_.o20811();
         o2802.push(_loc15_);
         o19721.value = param1.o17521(param2 + "cashToAugmentXpRatio");
         var _loc9_:String = param2 + "blackPistolIds";
         var _loc24_:int = param1.o3554(_loc9_);
         _loc9_ = _loc9_ + ".";
         _loc10_ = 0;
         while(_loc10_ < _loc24_)
         {
            o5137(param1.o3554(_loc9_ + _loc10_.toString()));
            _loc10_++;
         }
         o8625.value = param1.o17521(param2 + "redToBlackAmmoPriceMultiplier");
         o15855.value = param1.o17521(param2 + "redToBlackAugmentPriceMultiplier");
         o9327.value = param1.o17521(param2 + "redToBlackRatingMultiplier");
         o17780.value = param1.o17521(param2 + "redToBlackGunDamageMultiplier");
         o14288.value = param1.o17521(param2 + "redToBlackContactDamageMultiplier");
         o9813.value = param1.o17521(param2 + "redToBlackDefenseMultiplier");
         o11935.value = param1.o17521(param2 + "redToBlackDefenseBonus");
         o11994.value = param1.o17521(param2 + "strongboxConvertToBlackChance");
         o13319.value = param1.o3554(param2 + "blackStrongboxDropLevel");
         o1854.value = param1.o17521(param2 + "blackKeyFromNantoniumBoxChance");
         o15447.value = param1.o3554(param2 + "blackKeyFromNantoniumBoxDropLevel");
         o7207.value = param1.o17521(param2 + "eliteCoreFromNantoniumBoxChance");
         o12168.value = param1.o3554(param2 + "eliteCoreFromNantoniumBoxDropLevel");
         o3350.value = param1.o17521(param2 + "eliteCoreFromNantoniumBoxChance.NightmarishSavageNecrosisElite");
         o20218.value = param1.o17521(param2 + "eliteCoreFromNantoniumBoxChance.NightmarishSavageDevistatorElite");
         o4552.value = param1.o17521(param2 + "eliteCoreFromNantoniumBoxChance.NightmarishSavageWickerElite");
         o15870.value = param1.o17521(param2 + "eliteCoreFromNantoniumBoxChance.NightmarishSavageZombieMechElite");
         o9790.value = param1.o17521(param2 + "eliteCoreFromNantoniumBoxChance.NightmarishSavageRegurgitatorElite");
         o4901.value = param1.o3554(param2 + "blackKeyFromEventLevel");
         o3909.value = param1.o17521(param2 + "event1stTierBlackKeyChance");
         o16165.value = param1.o17521(param2 + "event2ndTierBlackKeyChance");
         o6979.value = param1.o17521(param2 + "event3rdTierBlackKeyChance");
         o3560.value = param1.o3554(param2 + "maxBlackStrongboxes");
         o10195.value = param1.o17521(param2 + "eliteCoreStatsIncrease");
         var _loc19_:String = param2 + "eliteCoreEffects";
         var _loc20_:int = param1.o3554(_loc19_);
         _loc19_ = _loc19_ + ".";
         o1669 = new Vector.<o5843>();
         _loc10_ = 0;
         while(_loc10_ < _loc20_)
         {
            _loc11_ = new o5843();
            _loc11_.init(param1,_loc19_ + _loc10_.toString());
            o1669.push(_loc11_);
            _loc10_++;
         }
         o16337.value = param1.o3554(param2 + "minOpenBlackStrongboxLevel");
         o4790.value = param1.o17521(param2 + "eliteCoreStatsMax");
         o18165 = new Vector.<o13706>();
         var _loc18_:String = param2 + "tutorials";
         var _loc17_:int = param1.o3554(_loc18_);
         _loc18_ = _loc18_ + ".";
         _loc10_ = 0;
         while(_loc10_ < _loc17_)
         {
            _loc23_ = new o13706();
            _loc23_.init(param1,_loc18_ + _loc10_.toString());
            o18165.push(_loc23_);
            _loc10_++;
         }
         o12842 = new Vector.<o8499>();
         var _loc8_:String = param2 + "eliteStrongboxItems";
         var _loc16_:int = param1.o3554(_loc8_);
         _loc8_ = _loc8_ + ".";
         _loc10_ = 0;
         while(_loc10_ < _loc16_)
         {
            _loc7_ = new o8499();
            _loc7_.init(param1,_loc8_ + _loc10_.toString());
            o12842.push(_loc7_);
            _loc10_++;
         }
         o12658();
         o11946();
         o4519.o8116.o1184.o5557();
         o4519.o8116.o9511.o7612();
         var _loc5_:int = param1.o3554("weapons");
         o14950 = new Vector.<int>();
         o17682 = new Vector.<o18631>();
         _loc10_ = 0;
         while(_loc10_ < _loc5_)
         {
            _loc4_ = param1.o3554("weapons." + _loc10_.toString() + ".weaponID");
            _loc3_ = param1.o3554("weapons." + _loc10_.toString() + ".minLevel");
            _loc6_ = param1.o18357("weapons." + _loc10_.toString() + ".isPremium");
            _loc21_ = o4519.o8116.o1184.o11620[_loc4_];
            if(_loc21_)
            {
               _loc21_.o16703 = _loc3_;
               _loc21_.o19901 = _loc6_;
               _loc22_ = new o18631(_loc4_);
               _loc22_.o8044 = param1.o18357("weapons." + _loc10_.toString() + ".isChampionshipWeapon");
               _loc22_.o18417 = param1.o18357("weapons." + _loc10_.toString() + ".isUniqueCrafted");
               _loc22_.o2233 = param1.o18357("weapons." + _loc10_.toString() + ".isHalloween");
               _loc22_.o19901 = param1.o18357("weapons." + _loc10_.toString() + ".isPremium");
               o17682.push(_loc22_);
               if(_loc6_)
               {
                  o14950.push(_loc21_.id);
               }
            }
            _loc10_++;
         }
      }
      
      public function o7765(param1:int) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:* = o14950;
         for each(var _loc2_ in o14950)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o17187(param1:int) : o13706
      {
         var _loc4_:int = 0;
         var _loc3_:* = o18165;
         for each(var _loc2_ in o18165)
         {
            if(_loc2_.o5907 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o12699(param1:int) : o8499
      {
         var _loc4_:int = 0;
         var _loc3_:* = o12842;
         for each(var _loc2_ in o12842)
         {
            if(_loc2_.type == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function o5163() : Array
      {
         var _loc1_:Array = [];
         var _loc4_:int = 0;
         var _loc3_:* = o15929;
         for each(var _loc2_ in o15929)
         {
            _loc1_.push(_loc2_.value);
         }
         return _loc1_;
      }
      
      private function o12658() : void
      {
         var _loc4_:* = null;
         var _loc8_:* = null;
         var _loc7_:Array = o5163();
         var _loc5_:o19322 = o4519.o8116.o1184;
         var _loc9_:Vector.<o8347> = new Vector.<o8347>();
         var _loc2_:Vector.<o15109> = new Vector.<o15109>();
         var _loc11_:int = 0;
         var _loc10_:* = _loc5_.o11620;
         for(var _loc1_ in _loc5_.o11620)
         {
            _loc4_ = _loc5_.o11620[_loc1_];
            if(!(_loc4_.o11570 != 2 || _loc4_.o5168 || _loc4_.o6947))
            {
               if(_loc4_.o6365 == 1)
               {
                  if(_loc7_.indexOf(_loc4_.id) < 0)
                  {
                     continue;
                  }
               }
               _loc8_ = _loc5_.o17638[_loc4_.id] as o15109;
               o14343(_loc4_,_loc8_,_loc9_,_loc2_);
            }
         }
         var _loc13_:int = 0;
         var _loc12_:* = _loc9_;
         for each(var _loc3_ in _loc9_)
         {
            _loc5_.o11620[_loc3_.id] = _loc3_;
            _loc5_.o6795.push(_loc3_);
         }
         var _loc15_:int = 0;
         var _loc14_:* = _loc2_;
         for each(var _loc6_ in _loc2_)
         {
            _loc5_.o17638[_loc6_.id] = _loc6_;
         }
      }
      
      private function o8622(param1:int) : int
      {
         if(param1 == 0)
         {
            return 0;
         }
         var _loc4_:String = o4519.o8116.o5830.o9009(param1);
         var _loc3_:String = _loc4_.replace(".red.",".black.");
         var _loc2_:int = o4519.o8116.o5830.o787(_loc3_);
         if(_loc2_ < 0)
         {
            o8339("WARNING: Asset not found: " + _loc3_);
         }
         return _loc2_;
      }
      
      private function o6607(param1:Vector.<int>) : Vector.<int>
      {
         var _loc3_:Vector.<int> = new Vector.<int>();
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc2_ in param1)
         {
            _loc3_.push(o8622(_loc2_));
         }
         return _loc3_;
      }
      
      private function o14343(param1:o8347, param2:o15109, param3:Vector.<o8347>, param4:Vector.<o15109>) : void
      {
         var _loc5_:o8347 = param1.o18084();
         var _loc6_:o15109 = param2.o18084();
         _loc5_.o457 = _loc6_;
         _loc5_.id = o6360(_loc5_.id);
         _loc6_.id = _loc5_.id;
         _loc6_.o5725 = _loc6_.o5725 * o16644;
         _loc6_.o4687 = _loc6_.o4687 * o16644;
         _loc5_.o7498 = _loc5_.o7498 * o272;
         _loc5_.o11570 = 3;
         _loc5_.o9421 = _loc5_.o9421 * o2160;
         _loc5_.display = o8622(_loc5_.display);
         _loc5_.o19419 = o8622(_loc5_.o19419);
         param3.push(_loc5_);
         param4.push(_loc6_);
      }
      
      private function o11946() : void
      {
         var _loc4_:* = null;
         var _loc3_:o7944 = o4519.o8116.o9511;
         var _loc2_:Vector.<o14809> = new Vector.<o14809>();
         var _loc7_:int = 0;
         var _loc6_:* = _loc3_.o4256;
         for(var _loc5_ in _loc3_.o4256)
         {
            _loc4_ = _loc3_.o4256[_loc5_];
            if(_loc4_.o18072 == 2)
            {
               _loc2_.push(o2068(_loc4_));
            }
         }
         var _loc9_:int = 0;
         var _loc8_:* = _loc2_;
         for each(var _loc1_ in _loc2_)
         {
            _loc3_.o4256[_loc1_.id] = _loc1_;
            _loc3_.o17794.push(_loc1_);
         }
      }
      
      private function o2068(param1:o14809) : o14809
      {
         var _loc2_:o14809 = param1.o18084();
         _loc2_.id = o6360(_loc2_.id);
         _loc2_.o7498 = _loc2_.o7498 * o272;
         _loc2_.o9421 = _loc2_.o9421 * o2160;
         _loc2_.o18072 = 3;
         _loc2_.o15818 = _loc2_.o15818 * o18930;
         _loc2_.o5822 = _loc2_.o5822 * o1116 + o863;
         _loc2_.o5317 = _loc2_.o5317 * o1116 + o863;
         _loc2_.o16041 = _loc2_.o16041 * o1116 + o863;
         _loc2_.display = o6607(_loc2_.display);
         _loc2_.o19419 = o6607(_loc2_.o19419);
         _loc2_.o14623 = o6607(_loc2_.o14623);
         return _loc2_;
      }
      
      public function o6360(param1:int) : int
      {
         return param1 + 10000;
      }
      
      public function o16180(param1:int) : int
      {
         var _loc2_:int = o2802.length - 1;
         while(_loc2_ >= 0)
         {
            if(param1 >= o2802[_loc2_].o18875)
            {
               if(_loc2_ >= o2802.length - 1)
               {
                  return o2802.length - 1;
               }
               return _loc2_ + 1;
            }
            _loc2_--;
         }
         return 0;
      }
      
      private function o10156(param1:int) : Number
      {
         var _loc4_:int = o16180(param1);
         var _loc5_:o17905 = o2802[_loc4_];
         var _loc6_:int = _loc4_ == 0?0:o2802[_loc4_ - 1].o18875;
         var _loc3_:int = _loc5_.o18875;
         var _loc2_:Number = (param1 - _loc6_) / (_loc3_ - _loc6_);
         return _loc2_;
      }
   }
}
