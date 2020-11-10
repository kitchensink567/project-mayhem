package
{
   public class o13467 extends o8023
   {
      
      public static const o902:String = "Locked";
      
      private static const o10547:o16123 = new o16123(4);
      
      public static const o17034:Boolean = true;
       
      
      public var o11661:Boolean = true;
      
      private var o3821:o16123;
      
      private var o15825:o10411;
      
      private var o11973:o16123;
      
      private var o10136:o10411;
      
      private var o8501:o10411;
      
      private var o4943:o10411;
      
      public var o16204:String;
      
      public var o1745:String;
      
      public var o17465:Vector.<o14096>;
      
      public var o703:Vector.<o1253>;
      
      public var o19062:Vector.<int>;
      
      public var o16835:Vector.<int>;
      
      public var o14384:Vector.<int>;
      
      public var o19419:o14200;
      
      public var o16393:int;
      
      public var o15910:int;
      
      public var o1164:int;
      
      private var o2046:o16123;
      
      private var o20115:o16123;
      
      private var o7369:o16123;
      
      public var o9500:Vector.<Boolean>;
      
      private var o17171:o16123;
      
      public var o16608:o10411;
      
      public var o17896:o10411;
      
      public var o11032:Vector.<o19467>;
      
      public var o4161:o5638;
      
      public var o10740:Boolean = true;
      
      private var o866:o16123;
      
      private var o1540:o16123;
      
      public var o3063:Boolean = true;
      
      public var o9453:Function;
      
      public var o17943:Vector.<o193>;
      
      private var o16039:o16123;
      
      public var o10220:o15723;
      
      private var o9205:String;
      
      public var o324:Boolean = false;
      
      public var o1091:int = 0;
      
      public var o508:int = 0;
      
      public var o18270:String = null;
      
      public var o4694:String = null;
      
      private var o9028:o3803;
      
      public var o20766:int;
      
      public var o20274:Boolean = false;
      
      public var o9389:Boolean = false;
      
      public var o2582:Boolean = false;
      
      public var o6557:int;
      
      public var o11155:Boolean = false;
      
      public var o17654:Boolean = false;
      
      public var o17289:Boolean = false;
      
      public var o18081:Boolean = false;
      
      public var o9706:int = -1;
      
      public var o13798:o69;
      
      public var o7702:Boolean = false;
      
      public var o12874:o1377;
      
      public var o20327:o16123;
      
      private var o559:Boolean = false;
      
      public var o9954:Vector.<o2084>;
      
      public var o11275:Boolean = false;
      
      private var o16539:o16123;
      
      public var o15278:int = -1;
      
      public var o2432:String = null;
      
      public function o13467(param1:o14200)
      {
         o3821 = new o16123(1008);
         o15825 = new o10411(false);
         o11973 = new o16123(0);
         o10136 = new o10411(true);
         o8501 = new o10411(false);
         o4943 = new o10411(false);
         o17465 = new Vector.<o14096>();
         o703 = new Vector.<o1253>();
         o19062 = new Vector.<int>();
         o16835 = new Vector.<int>();
         o14384 = new Vector.<int>();
         o2046 = new o16123(0);
         o20115 = new o16123(0);
         o7369 = new o16123(0);
         o9500 = new Vector.<Boolean>();
         o17171 = new o16123(0);
         o16608 = new o10411(false);
         o17896 = new o10411(false);
         o11032 = new Vector.<o19467>();
         o866 = new o16123(0);
         o1540 = new o16123(0);
         o17943 = new Vector.<o193>();
         o16039 = new o16123(0);
         o12874 = new o1377();
         o20327 = new o16123(1);
         o16539 = new o16123(0);
         super();
         this.o19419 = param1;
         o4161 = new o5638(param1);
      }
      
      public static function get o16734() : int
      {
         return o10547.value;
      }
      
      public function get o5509() : int
      {
         return o2046.value;
      }
      
      public function set o5509(param1:int) : void
      {
         o2046.value = param1;
      }
      
      public function get o2997() : int
      {
         return o866.value;
      }
      
      public function set o2997(param1:int) : void
      {
         o866.value = param1;
      }
      
      public function get o9359() : Boolean
      {
         return o18339 != 1 && o18339 != 2;
      }
      
      public function get o17551() : Boolean
      {
         return o9359 && o4519.o13206.o17551;
      }
      
      public function get o15890() : Boolean
      {
         return o9359 && o4519.o13206.o15890;
      }
      
      public function get o13771() : Boolean
      {
         return o9359 && o4519.o13206.o13771;
      }
      
      public function get o2200() : Boolean
      {
         return o9359 && o4519.o13206.o2200;
      }
      
      public function get o15251() : Boolean
      {
         return o4519.o13206.o15251;
      }
      
      public function get o4521() : String
      {
         return o4519.o13206.o14417;
      }
      
      public function get o15287() : int
      {
         return o4519.o13206.o19357;
      }
      
      public function get o4732() : Boolean
      {
         return o9359 && o4519.o13206.o4732;
      }
      
      public function get o5468() : Boolean
      {
         return o9359 && o4519.o13206.o7;
      }
      
      public function get o7975() : Boolean
      {
         return o9359 && o4519.o13206.o7975;
      }
      
      public function o9381() : Boolean
      {
         if(o9359 == false)
         {
            return true;
         }
         return o18339 == 5;
      }
      
      public function get o4701() : Boolean
      {
         var _loc1_:int = o19419.o7923.level;
         return _loc1_ >= 15 && _loc1_ < 30 && (o18339 == 4 || o18339 == 3);
      }
      
      public function o13597() : Vector.<int>
      {
         var _loc2_:Vector.<int> = new Vector.<int>();
         var _loc4_:int = 0;
         var _loc3_:* = o11032;
         for each(var _loc1_ in o11032)
         {
            _loc2_.push(_loc1_.id);
         }
         return _loc2_;
      }
      
      public function get o17812() : int
      {
         return o1540.value;
      }
      
      public function set o17812(param1:int) : void
      {
         o1540.value = param1;
      }
      
      public function o8486(param1:int) : int
      {
         if(o9453 == null)
         {
            return 0;
         }
         return o9453(param1);
      }
      
      public function get o18271() : int
      {
         return o16039.value;
      }
      
      public function get o10211() : Boolean
      {
         return o15825.value;
      }
      
      public function get o18479() : Boolean
      {
         return o10136.value;
      }
      
      public function get o18730() : Boolean
      {
         return o8501.value;
      }
      
      public function get o8971() : Boolean
      {
         return o4943.value;
      }
      
      public function get o10342() : int
      {
         return o20115.value;
      }
      
      public function get o4312() : int
      {
         return o7369.value;
      }
      
      public function get o8689() : int
      {
         return o17171.value;
      }
      
      public function set o18271(param1:int) : void
      {
         o16039.value = param1;
      }
      
      public function set o10211(param1:Boolean) : void
      {
         o15825.value = param1;
      }
      
      public function set o18479(param1:Boolean) : void
      {
         o10136.value = param1;
      }
      
      public function set o18730(param1:Boolean) : void
      {
         o8501.value = param1;
      }
      
      public function set o8971(param1:Boolean) : void
      {
         o4943.value = param1;
      }
      
      public function set o10342(param1:int) : void
      {
         o20115.value = param1;
      }
      
      public function set o4312(param1:int) : void
      {
         o7369.value = param1;
      }
      
      public function set o8689(param1:int) : void
      {
         o17171.value = param1;
      }
      
      public function get o20837() : Boolean
      {
         return o18339 == 1 || o18339 == 2;
      }
      
      public function get o15492() : String
      {
         return o9205;
      }
      
      public function set o15492(param1:String) : void
      {
         o9205 = param1;
      }
      
      public function get o7920() : Number
      {
         return o9028 == null?1:o9028.o11071;
      }
      
      public function get o20410() : Number
      {
         return o9028 == null?1:o9028.o2064;
      }
      
      public function get o1092() : Boolean
      {
         return o18339 != 1 && o18339 != 2 && o10220 == null;
      }
      
      public function get o2685() : o2144
      {
         return o4519.o13206.o2685;
      }
      
      public function set o2685(param1:o2144) : void
      {
         o4519.o13206.o2685 = param1;
      }
      
      public function get o15222() : int
      {
         return o3821.value;
      }
      
      public function set o15222(param1:int) : void
      {
         o3821.value = param1;
      }
      
      public function get o18339() : int
      {
         return o20327.value;
      }
      
      public function set o18339(param1:int) : void
      {
         o20327.value = param1;
         o9028 = o19419.o5292.o3907(param1);
      }
      
      public function o6464() : void
      {
         o559 = true;
         o4519.o8116.o6895.o16280(null,o19254.o13083,o779);
      }
      
      public function o13640() : void
      {
         if(o559)
         {
            o4519.o8116.o6895.o12657(o19254.o13083,o779);
         }
      }
      
      public function get o11075() : int
      {
         return o11973.value;
      }
      
      public function set o11075(param1:int) : void
      {
         var _loc2_:Boolean = param1 != o11973.value && param1 >= 0;
         o11973.value = param1;
         o19419.data.o8118 = param1;
         if(_loc2_)
         {
            o4519.o8116.o9589.o3369();
         }
      }
      
      public function o11362() : void
      {
         this.o17465 = new Vector.<o14096>();
         this.o703 = new Vector.<o1253>();
         this.o19062 = new Vector.<int>();
         this.o16835 = new Vector.<int>();
         this.o14384 = new Vector.<int>();
      }
      
      public function o19424(param1:o9145, param2:int = 0) : void
      {
         var _loc8_:int = 0;
         var _loc7_:* = param1.o6864;
         for each(var _loc4_ in param1.o6864)
         {
            _loc4_.o2397 = true;
            this.o17465.push(_loc4_);
         }
         var _loc10_:int = 0;
         var _loc9_:* = param1.o2575;
         for each(var _loc3_ in param1.o2575)
         {
            _loc3_.o2397 = true;
            _loc3_.o10518 = _loc3_.o3021();
            this.o703.push(_loc3_);
         }
         var _loc12_:int = 0;
         var _loc11_:* = param1.o8312;
         for each(var _loc5_ in param1.o8312)
         {
            this.o19062.push(_loc5_);
            this.o14384.push(0);
         }
         var _loc14_:int = 0;
         var _loc13_:* = param1.o11248;
         for each(var _loc6_ in param1.o11248)
         {
            this.o16835.push(_loc6_);
         }
         o4590(param2);
      }
      
      public function o4590(param1:int = 0) : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:* = o16835;
         for each(var _loc3_ in o16835)
         {
            if(_loc3_ == 0)
            {
               _loc2_++;
            }
            else if(_loc3_ == 1)
            {
               _loc4_++;
            }
         }
         if(_loc2_ != o17465.length || _loc4_ != o703.length)
         {
            if(param1 == 0)
            {
               o3953(param1);
            }
            else
            {
               throw new Error("validateStrongboxes: reassign error: isWeapon counts don\'t match");
            }
         }
      }
      
      public function o3953(param1:int) : void
      {
         var _loc5_:* = 0;
         param1++;
         var _loc4_:o9145 = o14200.o19505.o7923;
         var _loc2_:Vector.<int> = new Vector.<int>();
         var _loc3_:int = 20;
         var _loc6_:int = 0;
         var _loc8_:int = 0;
         var _loc7_:* = _loc4_.o8312;
         for each(_loc5_ in _loc4_.o8312)
         {
            if(_loc6_ < _loc3_)
            {
               _loc2_.push(_loc5_);
               _loc6_++;
               continue;
            }
            break;
         }
         this.o11362();
         _loc4_.o6864.length = 0;
         _loc4_.o2575.length = 0;
         _loc4_.o11248.length = 0;
         _loc4_.o8312.length = 0;
         var _loc10_:int = 0;
         var _loc9_:* = _loc2_;
         for each(_loc5_ in _loc2_)
         {
            _loc5_ = _loc5_;
            this.o11612(o4189.o4718(_loc5_));
         }
         this.o19266(_loc4_);
         o19419.saveData();
         this.o11362();
         param1++;
         this.o19424(_loc4_,param1);
      }
      
      public function o19266(param1:o9145) : void
      {
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = this.o17465;
         for each(var _loc3_ in this.o17465)
         {
            _loc3_.o2397 = true;
            param1.o6864.push(_loc3_);
         }
         var _loc9_:int = 0;
         var _loc8_:* = this.o703;
         for each(var _loc2_ in this.o703)
         {
            _loc2_.o2397 = true;
            param1.o2575.push(_loc2_);
         }
         var _loc11_:int = 0;
         var _loc10_:* = this.o19062;
         for each(_loc5_ in this.o19062)
         {
            param1.o8312.push(_loc5_);
         }
         var _loc13_:int = 0;
         var _loc12_:* = this.o16835;
         for each(var _loc4_ in this.o16835)
         {
            param1.o11248.push(_loc4_);
         }
         o19419.saveData();
      }
      
      public function o7474(param1:int, param2:int) : void
      {
         var _loc4_:o12443 = new o12443(null);
         _loc4_.o7743 = param2;
         var _loc3_:o14331 = o4519.o8116.o6895.o16809(param1,_loc4_);
         o4519.o8116.o6895.o13665(_loc3_);
      }
      
      public function o892(param1:int) : void
      {
         var _loc2_:o14331 = o4519.o8116.o6895.o892(param1);
         o4519.o8116.o6895.o13665(_loc2_);
      }
      
      public function o11612(param1:o16123, param2:Boolean = false) : void
      {
         var _loc3_:o14331 = o4519.o8116.o6895.o6716(param1.value);
         _loc3_.o5408 = param2;
         o4519.o8116.o6895.o13665(_loc3_);
      }
      
      public function o5517(param1:o14096) : int
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o17465;
         for each(var _loc2_ in o17465)
         {
            if(_loc2_ == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function o7986(param1:o1253) : int
      {
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = this.o703;
         for each(var _loc3_ in this.o703)
         {
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function o20732(param1:o14096) : void
      {
         var _loc2_:int = this.o5517(param1);
         if(_loc2_ >= 0)
         {
            o19419.o7923.o15336(param1.o2752.o9421);
            this.o17465.splice(_loc2_,1);
         }
      }
      
      public function o2513(param1:o1253) : void
      {
         var _loc2_:int = this.o7986(param1);
         if(_loc2_ >= 0)
         {
            o19419.o7923.o15336(param1.o10239.o9421);
            this.o703.splice(_loc2_,1);
         }
      }
      
      public function o1526(param1:String, param2:o17517) : void
      {
         this.dispatchData(new o8860(param1,param2));
      }
      
      private function o12105(param1:int, param2:o17517) : void
      {
         this.dispatchData(new o8860("",param2,param1));
      }
      
      public function o20823(param1:o14331) : String
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:* = null;
         if(param1.type == o19053.o14325)
         {
            _loc3_ = param1.value as int;
            switch(int(param1.o17401) - 1)
            {
               case 0:
                  if(_loc3_ > 1)
                  {
                     return _loc3_.toString() + " Frag Grenades";
                  }
                  return "Frag Grenade";
               case 1:
                  if(_loc3_ > 1)
                  {
                     return _loc3_.toString() + " Cryo Grenades";
                  }
                  return "Cryo Grenade";
            }
         }
         else
         {
            return "Invalid consumable";
         }
      }
      
      private function o779(param1:o16898) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc4_:o14331 = param1.o16809;
         var _loc9_:o17517 = o4519.o32;
         if(_loc4_.type == o19053.o17861)
         {
            o19419.log("Cash:\t$" + o16724.o10417(_loc4_.value));
            o1526("$" + o16724.o10417(_loc4_.value),_loc9_);
         }
         else if(_loc4_.type == o19053.o14325)
         {
            _loc3_ = _loc4_.value as int;
            switch(int(_loc4_.o17401) - 1)
            {
               case 0:
                  this.o19419.o7923.o3525.o780(1,_loc3_);
                  o19419.log("FragGrenade:\t" + _loc3_.toString());
                  if(_loc3_ > 1)
                  {
                     o1526(_loc3_.toString() + " Frag Grenades",_loc9_);
                  }
                  else
                  {
                     o1526("Frag Grenade",_loc9_);
                  }
                  break;
               case 1:
                  this.o19419.o7923.o3525.o780(2,_loc3_);
                  o19419.log("Cryo:\t" + _loc3_.toString());
                  if(_loc3_ > 1)
                  {
                     o1526(_loc3_.toString() + " Cryo Grenades",_loc9_);
                  }
                  else
                  {
                     o1526("Cryo Grenade",_loc9_);
                  }
                  break;
               default:
               default:
               default:
               default:
               default:
               default:
               default:
               default:
                  _loc2_ = _loc4_.o17401;
                  _loc8_ = this.o19419.o5292.o9063(_loc2_);
                  this.o19419.o7923.o3525.o19338(_loc2_,_loc3_);
                  o19419.log("Consumable turret:\t" + _loc4_.o17401 + " : " + _loc3_);
                  if(_loc3_ > 1)
                  {
                     o1526(_loc3_.toString() + " x " + _loc8_.o7501,_loc9_);
                     break;
                  }
                  o1526(_loc8_.o7501,_loc9_);
                  break;
               case 10:
                  o6260(o19419.o5292.o1610,_loc9_);
                  break;
               case 11:
                  o1526("High Damage Ammo",_loc9_);
                  break;
               case 12:
                  o19419.log("Alloy:\t" + _loc3_.toString());
                  o1526("Alloy",_loc9_);
            }
         }
         else if(_loc4_.type == o19053.o14669)
         {
            _loc7_ = o4519.o8116.o6895;
            _loc5_ = _loc4_.value;
            if(_loc5_ < o4189.o19843 || _loc5_ > o4189.o16191)
            {
               throw new Error("Invalid strongbox type " + _loc5_.toString());
            }
            if(o9389 && _loc5_ == o4189.o12328)
            {
               this.o2997++;
               o12105(_loc5_,_loc9_);
               return;
            }
            _loc6_ = o7473(_loc5_);
            o19062.push(_loc5_);
            o12105(_loc5_,_loc9_);
            o19419.o14216(_loc6_ + "\t",false);
            _loc7_.o11612(_loc5_,_loc4_.o5408,_loc4_.o11938).defer(o20445);
         }
      }
      
      public function o7473(param1:int) : String
      {
         var _loc2_:String = "";
         var _loc3_:* = param1;
         switch(_loc3_)
         {
            case o4189.o19843:
               _loc2_ = "Steel";
               break;
            case o4189.o17868:
               _loc2_ = "Titanium";
               break;
            case o4189.o20918:
               _loc2_ = "Molybdenum";
               break;
            case o4189.o6765:
               _loc2_ = "Iridium";
               break;
            case o4189.o16296:
               _loc2_ = "Neodymium";
               break;
            case o4189.o11328:
               _loc2_ = "Promethium";
               break;
            case o4189.o15243:
               _loc2_ = "Thulium";
               break;
            case o4189.o1897:
               _loc2_ = "Nantonium";
               break;
            case o4189.o12328:
               _loc2_ = "Black";
               break;
            default:
               throw new Error("Invalid strongbox type " + param1.toString());
         }
         _loc2_ = _loc2_ + " Strongbox";
         return _loc2_;
      }
      
      private function o6260(param1:Number, param2:o17517) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param2 != null && param2 == o4519.o32 && !param2.o7694 && param2.o11243 < param2.o1589)
         {
            _loc3_ = new o18848();
            _loc3_.amount = param2.o1589 * param1;
            _loc3_.o127 = true;
            o4519.o8116.o8361.o3742(param2,_loc3_);
            _loc4_ = o4519.o8116.o13427.o11961(o2130,["assets.skills.StimShot",o11381.o7800]) as o2130;
            if(_loc4_ != null)
            {
               o4519.o8116.o11954.o2429(_loc4_.o6691,param2.o6691);
               _loc4_.o6691.rotation = 0;
            }
            param2.o13635();
            o4519.o8116.o4812.o1162.o16132.play(1);
         }
      }
      
      private function o20445(param1:o20401) : void
      {
         var _loc11_:int = 0;
         var _loc10_:* = null;
         var _loc13_:* = null;
         var _loc21_:* = null;
         var _loc20_:int = 0;
         var _loc3_:int = 0;
         var _loc18_:* = null;
         var _loc14_:* = null;
         var _loc7_:* = null;
         var _loc5_:int = 0;
         var _loc8_:* = null;
         var _loc15_:* = null;
         var _loc4_:* = null;
         var _loc19_:* = null;
         var _loc22_:int = 0;
         var _loc17_:* = null;
         var _loc16_:int = 0;
         var _loc9_:* = null;
         var _loc2_:* = null;
         var _loc12_:* = null;
         var _loc6_:o17849 = o4519.o8116.o16619;
         o16835.push(param1.type);
         if(param1.o8031)
         {
            o14384.push(3);
            o15910 = Number(o15910) + 1;
         }
         else if(param1.o3257)
         {
            o14384.push(2);
            o16393 = Number(o16393) + 1;
         }
         else
         {
            o14384.push(param1.type);
         }
         if(param1.type == 0)
         {
            _loc3_ = param1.o11876;
            _loc18_ = o4519.o8116.o1184.o11620[_loc3_];
            if(_loc18_ == null)
            {
               o19419.log("ERROR: weapon " + _loc3_.toString() + " not found");
               return;
            }
            _loc14_ = o4519.o8116.o1184.o17638[_loc18_.id];
            _loc7_ = new o10481(_loc18_,param1.grade);
            _loc5_ = param1.o631;
            _loc8_ = new o14096().init(_loc7_,_loc14_,_loc6_,_loc5_,o19419.data.o20953());
            if(o12696.o20082())
            {
               _loc15_ = o14200.o19505.o5292.o10365.o2100(_loc8_.o10748);
               if(_loc15_.o16173 != 0)
               {
                  _loc8_.o4752 = _loc15_.o16173;
               }
            }
            if(_loc5_ > 0)
            {
               _loc20_ = 0;
               while(_loc20_ < _loc5_)
               {
                  _loc11_ = param1.o4530(_loc20_);
                  if(_loc11_ > 0)
                  {
                     _loc21_ = o19419.o5292.o6345(_loc11_);
                     _loc10_ = _loc21_.o129;
                     if(_loc10_ == null)
                     {
                        throw new Error("Loot aug not found " + _loc11_);
                     }
                     _loc13_ = new o3743().init(_loc10_,_loc21_.grade);
                     _loc8_.o17656.push(_loc13_);
                  }
                  _loc20_++;
               }
            }
            _loc8_.o4339();
            _loc4_ = "";
            if(_loc8_.o2752 is o10481)
            {
               _loc4_ = (_loc8_.o2752 as o10481).o2752.o20133.toString();
            }
            else
            {
               _loc4_ = _loc8_.o2752.o20133.toString();
            }
            _loc19_ = "Not set";
            o19419.o14216("Weapon\t" + _loc8_.o7501 + "\t" + _loc8_.o4680.toString() + "\t" + param1.grade.toString() + "\t" + _loc4_ + "\t" + (_loc8_.o2752.o11570 == 2?"red":"") + "\t" + _loc19_);
            o17465.push(_loc8_);
         }
         else if(param1.type == 1)
         {
            _loc22_ = param1.o11876;
            _loc17_ = o4519.o8116.o9511.o4256[_loc22_];
            if(_loc17_ == null)
            {
               o19419.log("ERROR: equipment " + _loc22_.toString() + " not found");
               return;
            }
            _loc16_ = param1.o631;
            _loc9_ = new o1253().init(_loc17_,param1.grade,_loc6_,_loc16_,o19419.data.o8334());
            if(_loc16_ > 0)
            {
               _loc20_ = 0;
               while(_loc20_ < _loc16_)
               {
                  _loc11_ = param1.o4530(_loc20_);
                  if(_loc11_ > 0)
                  {
                     _loc21_ = o19419.o5292.o6345(_loc11_);
                     _loc10_ = _loc21_.o129;
                     if(_loc10_ == null)
                     {
                        throw new Error("Loot aug not found " + _loc11_);
                     }
                     _loc13_ = new o3743().init(_loc10_,_loc21_.grade);
                     _loc9_.o17656.push(_loc13_);
                  }
                  _loc20_++;
               }
            }
            _loc9_.o1281();
            _loc2_ = _loc9_.o10239.o20133.toString();
            _loc12_ = "Not set";
            o19419.o14216("Equipment\t" + _loc9_.o9912 + "\t" + _loc9_.o4680.toString() + "\t" + param1.grade.toString() + "\t" + _loc2_ + "\t" + (_loc9_.o10239.o18072 == 2?"red":"") + "\t" + _loc12_);
            o703.push(_loc9_);
         }
         else if(param1.type == 2)
         {
            o19419.log("Black key");
         }
         else if(param1.type == 3)
         {
            o19419.log("Elite Core");
         }
      }
      
      public function o14782() : void
      {
         var _loc1_:int = 0;
         if(o19062.length >= 1 && o16835.length >= 1 && o14384.length >= 1)
         {
            o19062.splice(0,1);
            _loc1_ = o16835[0];
            if(_loc1_ == 0)
            {
               o17465.splice(0,1);
            }
            else if(_loc1_ == 1)
            {
               o703.splice(0,1);
            }
            o16835.splice(0,1);
            o14384.splice(0,1);
         }
      }
      
      public function o5354() : void
      {
         var _loc1_:* = null;
         if(o10740)
         {
            if(o19419.o202.o10211)
            {
               o19419.o7923.o12159++;
               o19419.o11453.o4635(o15222).o13590++;
            }
            else
            {
               o19419.o7923.o3710++;
               o19419.o11453.o4635(o15222).o15682++;
            }
            _loc1_ = o19637(o4519.o32);
            if(_loc1_)
            {
               o1164 = _loc1_.o18448;
            }
         }
      }
      
      public function o20859() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         if(o10740)
         {
            _loc2_ = o19419.o5292.o9177.o17565(o15222);
            _loc1_ = _loc2_.o7023;
            try
            {
               if(o15825.value)
               {
                  if(o20837)
                  {
                     o19419.o7923.o6470++;
                     o19419.o11453.o4635(_loc2_.o18800).o18433++;
                  }
               }
               else
               {
                  o19419.o7923.o18704++;
                  o19419.o11453.o4635(_loc2_.o18800).o8293++;
               }
            }
            catch(o19631:Error)
            {
               var _loc4_:Boolean = false;
               return _loc4_;
            }
         }
         return false;
      }
      
      public function o18702() : o69
      {
         var _loc2_:* = null;
         var _loc1_:o69 = o19419.o5292.o9177.o17565(o19419.o202.o15222);
         if(_loc1_ == null)
         {
            _loc1_ = o19419.o5292.o9177.o17565(o19419.o202.o15222);
            if(_loc1_ == null)
            {
               _loc2_ = o19419.o5292.o9177.o946(1).o19855[0].o18084();
               _loc2_.o18800 = o19419.o202.o15222;
               return _loc2_;
            }
            return _loc1_;
         }
         return _loc1_;
      }
      
      public function o14613() : o69
      {
         var _loc2_:o69 = o19419.o5292.o9177.o17565(o19419.o202.o15222);
         var _loc3_:o2736 = _loc2_.o5916;
         var _loc1_:int = _loc3_.o12404(_loc2_);
         if(_loc1_ <= 0)
         {
            return null;
         }
         return _loc3_.o19855[_loc1_ - 1];
      }
      
      public function o701() : o69
      {
         var _loc2_:o69 = o19419.o5292.o9177.o17565(o19419.o202.o15222);
         var _loc3_:o2736 = _loc2_.o5916;
         var _loc1_:int = _loc3_.o12404(_loc2_);
         if(_loc1_ >= _loc3_.o19855.length - 1)
         {
            return _loc3_.o19855[0];
         }
         return _loc3_.o19855[_loc1_ + 1];
      }
      
      public function o10318() : void
      {
         var _loc1_:o4733 = o19419.o11453.o4635(o15222);
         o19419.o11453.o4635(o15222).o10318 = true;
      }
      
      public function get o20461() : int
      {
         return o16539.value;
      }
      
      public function set o20461(param1:int) : void
      {
         o16539.value = param1;
      }
      
      public function o4800() : o2084
      {
         var _loc3_:int = 0;
         var _loc2_:* = o19419.o202.o9954;
         for each(var _loc1_ in o19419.o202.o9954)
         {
            if(_loc1_.o7923)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function o1738(param1:o2084, param2:o2084) : int
      {
         if(param1.o19189 < param2.o19189)
         {
            return 1;
         }
         if(param1.o19189 > param2.o19189)
         {
            return -1;
         }
         if(param1.o20915 < param2.o20915)
         {
            return 1;
         }
         if(param1.o20915 > param2.o20915)
         {
            return -1;
         }
         if(param1.o7874 < param2.o7874)
         {
            return 1;
         }
         if(param1.o7874 > param2.o7874)
         {
            return -1;
         }
         throw new Error("avatar sort. duplicate client id");
      }
      
      private function o3916(param1:o2084, param2:o2084) : int
      {
         if(param1.o3049 && param2.o3049)
         {
            if(param1.o7874 < param2.o7874)
            {
               return 1;
            }
            return -1;
         }
         if(param1.o3049 && !param2.o3049)
         {
            return 1;
         }
         if(param1.o2306 && param2.o2306)
         {
            if(param1.o19189 < param2.o19189)
            {
               return 1;
            }
            if(param1.o19189 > param2.o19189)
            {
               return -1;
            }
            if(param1.o20915 < param2.o20915)
            {
               return 1;
            }
            if(param1.o20915 > param2.o20915)
            {
               return -1;
            }
            if(param1.o7874 < param2.o7874)
            {
               return 1;
            }
            if(param1.o7874 > param2.o7874)
            {
               return -1;
            }
            throw new Error("avatar sort. duplicate client id");
         }
         if(!param1.o2306 && !param2.o2306)
         {
            if(param1.o7874 < param2.o7874)
            {
               return 1;
            }
            return -1;
         }
         if(!param1.o2306 && param2.o2306)
         {
            return -1;
         }
         return 1;
      }
      
      private function o2674(param1:o17517, param2:o2084) : void
      {
         param2.o11243 = param1.o11243;
         param2.o2306 = param1.o2306;
         param2.o20915 = param1.o20915;
         param2.o8256 = param1.o8256;
         var _loc3_:o8443 = o4519.o13206.o2685.o10591[param2.o7874];
         if(_loc3_ != null)
         {
            param2.o19189 = _loc3_.o19189;
            param2.o19113 = _loc3_.o19113;
            param2.o19778 = _loc3_.o19778;
            if(param2.o19189 < 0)
            {
               param2.o19189 = 0;
            }
            if(param2.o19778 == "Null")
            {
               param2.o19778 = "Score: ";
            }
            param2.o16286 = _loc3_.o11008;
         }
      }
      
      private function o19037(param1:o17517, param2:o2084) : void
      {
         param2.o7211 = param1.o7211;
         param2.o20915 = param1.o20915;
         param2.o8256 = param1.o8256;
         param2.o17861 = param1.o17861;
         param2.o17984 = param1.o17984;
         param2.o7923 = param1 == o4519.o32;
         param2.level = param1.level;
         param2.o11243 = param1.o11243;
         param2.o1589 = param1.o1589;
         param2.o2306 = param1.o2306;
         var _loc3_:o8443 = o4519.o13206.o2685.o10591[param2.o7874];
         if(_loc3_ != null)
         {
            param2.o19189 = _loc3_.o19189;
            param2.o18448 = _loc3_.o18448;
            if(param2.o19189 < 0)
            {
               param2.o19189 = 0;
            }
            param2.o16286 = _loc3_.o11008;
            this.o1164 = param2.o18448;
         }
      }
      
      public function o19637(param1:o17517) : o2084
      {
         var _loc4_:int = 0;
         var _loc3_:* = o9954;
         for each(var _loc2_ in o9954)
         {
            if(_loc2_.o7874 == param1.o5973)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o20769(param1:o17517) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:* = o9954;
         for each(var _loc2_ in o9954)
         {
            if(_loc2_.o7874 == param1.o5973)
            {
               return _loc2_.o3049 || _loc2_.o17984;
            }
         }
         return true;
      }
      
      private function o19309(param1:o17517) : o2084
      {
         var _loc4_:o2084 = new o2084();
         _loc4_.o2274 = param1.o1217;
         _loc4_.o7874 = param1.o5973;
         if(o19419.o202.o10211)
         {
            _loc4_.o18731 = param1.o10615;
         }
         else
         {
            _loc4_.o18731 = o19419.o7923.o12110;
         }
         _loc4_.o7211 = param1.o7211;
         _loc4_.o20915 = param1.o20915;
         _loc4_.o8256 = param1.o8256;
         _loc4_.o17861 = param1.o17861;
         _loc4_.o17984 = param1.o17984;
         _loc4_.o7923 = param1 == o4519.o32;
         _loc4_.level = param1.level;
         _loc4_.o11243 = param1.o11243;
         _loc4_.o1589 = param1.o1589;
         _loc4_.o2306 = param1.o2306;
         var _loc3_:String = o19419.o5292.o923.o5711(param1.o1217,param1.level);
         _loc4_.o20285 = "Lv " + param1.level.toString() + ", " + _loc3_;
         var _loc2_:o8443 = o4519.o13206.o2685.o10591[_loc4_.o7874];
         if(_loc2_ != null)
         {
            _loc4_.client = _loc2_;
            _loc4_.o115 = _loc2_.o115;
            _loc4_.o19189 = _loc2_.o19189;
            if(_loc4_.o19189 < 0)
            {
               _loc4_.o19189 = 0;
            }
            _loc4_.o16286 = _loc2_.o11008;
         }
         return _loc4_;
      }
      
      public function o20131(param1:int) : o2084
      {
         var _loc4_:int = 0;
         var _loc3_:* = o9954;
         for each(var _loc2_ in o9954)
         {
            if(_loc2_.o7874 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o19842() : void
      {
         var _loc4_:* = null;
         var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
         var _loc6_:int = 0;
         var _loc5_:* = o9954;
         for each(var _loc2_ in o9954)
         {
            _loc2_.o3049 = true;
         }
         var _loc8_:int = 0;
         var _loc7_:* = _loc1_;
         for each(var _loc3_ in _loc1_)
         {
            _loc4_ = o20131(_loc3_.o5973);
            if(_loc4_ == null)
            {
               _loc4_ = o19309(_loc3_);
               o9954.push(_loc4_);
            }
            else
            {
               o2674(_loc3_,_loc4_);
            }
            _loc4_.o3049 = false;
         }
         if(o17551)
         {
            o9954 = o9954.sort(o1738);
         }
         else if(o7975)
         {
            o9954 = o9954.sort(o3916);
         }
      }
      
      public function o17378() : void
      {
         var _loc4_:* = null;
         var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
         var _loc6_:int = 0;
         var _loc5_:* = o9954;
         for each(var _loc2_ in o9954)
         {
            _loc2_.o3049 = true;
         }
         var _loc8_:int = 0;
         var _loc7_:* = _loc1_;
         for each(var _loc3_ in _loc1_)
         {
            _loc4_ = o20131(_loc3_.o5973);
            if(_loc4_ == null)
            {
               _loc4_ = o19309(_loc3_);
               o9954.push(_loc4_);
            }
            else
            {
               o19037(_loc3_,_loc4_);
            }
            _loc4_.o3049 = false;
         }
         o9954 = o9954.sort(o1738);
      }
      
      private function o5018(param1:int, param2:Vector.<o2084>) : o2084
      {
         var _loc5_:int = 0;
         var _loc4_:* = param2;
         for each(var _loc3_ in param2)
         {
            if(_loc3_.o7874 == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
   }
}
