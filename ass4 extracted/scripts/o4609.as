package
{
   import flash.utils.Dictionary;
   
   public class o4609
   {
       
      
      private var o18598:Vector.<o16123>;
      
      public var o20687:Dictionary;
      
      private var o14298:Dictionary;
      
      private var o13191:Dictionary;
      
      private var o121:Dictionary;
      
      private var o12453:Dictionary;
      
      private var o15718:Dictionary;
      
      private var o5013:Dictionary;
      
      private var o11211:Dictionary;
      
      private var o18079:Dictionary;
      
      private var o11708:Dictionary;
      
      public var o15285:Vector.<int>;
      
      public var o20880:Vector.<String>;
      
      private var o7535:o16123;
      
      private var o11870:o16123;
      
      private var o16848:o16123;
      
      private var o5135:o15787;
      
      private var o17704:o15787;
      
      private var o18444:o15787;
      
      private var o13671:o15787;
      
      private var o11831:o16123;
      
      private var o11434:o16123;
      
      private var o14261:o16123;
      
      private var o2033:o16123;
      
      private var o1731:o16123;
      
      private var o10161:o15787;
      
      private var o4261:o16123;
      
      public function o4609()
      {
         o20687 = new Dictionary();
         o14298 = new Dictionary();
         o13191 = new Dictionary();
         o121 = new Dictionary();
         o12453 = new Dictionary();
         o15718 = new Dictionary();
         o5013 = new Dictionary();
         o11211 = new Dictionary();
         o18079 = new Dictionary();
         o11708 = new Dictionary();
         o7535 = new o16123(0);
         o11870 = new o16123(0);
         o16848 = new o16123(0);
         o5135 = new o15787(0);
         o17704 = new o15787(0);
         o18444 = new o15787(0);
         o13671 = new o15787(0);
         o11831 = new o16123(0);
         o11434 = new o16123(0);
         o14261 = new o16123(0);
         o2033 = new o16123(0);
         o1731 = new o16123(0);
         o10161 = new o15787(0);
         o4261 = new o16123(0);
         super();
      }
      
      public function get o2785() : int
      {
         return o7535.value;
      }
      
      public function get o5887() : int
      {
         return o11870.value;
      }
      
      public function get o13418() : int
      {
         return o16848.value;
      }
      
      public function get o19204() : Number
      {
         return o5135.value;
      }
      
      public function get o8953() : Number
      {
         return o17704.value;
      }
      
      public function get o4348() : Number
      {
         return o18444.value;
      }
      
      public function get o7819() : Number
      {
         return o13671.value;
      }
      
      public function get o12335() : int
      {
         return o11831.value;
      }
      
      public function get o13843() : int
      {
         return o11434.value;
      }
      
      public function get o20246() : int
      {
         return o14261.value;
      }
      
      public function get o2295() : int
      {
         return o2033.value;
      }
      
      public function get o9117() : int
      {
         return o1731.value;
      }
      
      public function get o4707() : Number
      {
         return o10161.value;
      }
      
      public function get o16491() : int
      {
         return o4261.value;
      }
      
      public function get o19041() : int
      {
         return o18598.length;
      }
      
      public function o8206(param1:int) : o6993
      {
         return o20687[param1] as o6993;
      }
      
      public function o722(param1:int) : String
      {
         return o20880[param1];
      }
      
      public function o15484(param1:int) : o6993
      {
         return o14298[param1];
      }
      
      public function o9445(param1:int) : o6993
      {
         return o13191[param1];
      }
      
      public function o14524(param1:int) : o6993
      {
         return o121[param1];
      }
      
      public function init(param1:o2693) : void
      {
         var _loc8_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc10_:String = "masteries.xpLevels";
         var _loc9_:int = param1.o3554(_loc10_);
         _loc10_ = _loc10_ + ".";
         o18598 = new Vector.<o16123>();
         var _loc6_:int = 0;
         _loc8_ = 0;
         while(_loc8_ < _loc9_)
         {
            _loc5_ = param1.o3554(_loc10_ + _loc8_.toString());
            _loc6_ = _loc6_ + _loc5_;
            o18598.push(new o16123(_loc6_));
            _loc8_++;
         }
         _loc10_ = "masteries.masteryTypeXpGainInfo";
         o20880 = new Vector.<String>();
         var _loc4_:int = param1.o3554(_loc10_);
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            o20880.push(param1.o9009(_loc10_ + "." + _loc3_.toString()));
            _loc3_++;
         }
         o15285 = new Vector.<int>();
         _loc10_ = "masteries.eventWeapons";
         var _loc7_:int = param1.o3554(_loc10_);
         _loc2_ = 0;
         while(_loc2_ < _loc7_)
         {
            o15285.push(param1.o3554(_loc10_ + "." + _loc2_.toString()));
            _loc2_++;
         }
         _loc10_ = "masteries.config.";
         o7535.value = param1.o3554(_loc10_ + "manufacturerMasteryUnlockOnLevel");
         o11870.value = param1.o3554(_loc10_ + "armorXPMin");
         o16848.value = param1.o3554(_loc10_ + "armorXPMax");
         o5135.value = param1.o17521(_loc10_ + "armorRedBonus");
         o17704.value = param1.o17521(_loc10_ + "armorBlackBonus");
         o18444.value = param1.o17521(_loc10_ + "armorGrade10Bonus");
         o13671.value = param1.o17521(_loc10_ + "manufacturerMasteryPercent");
         o11831.value = param1.o3554(_loc10_ + "turretPlacedXP");
         o11434.value = param1.o3554(_loc10_ + "turretKillXP");
         o14261.value = param1.o3554(_loc10_ + "turretManufactureXPPercent");
         o2033.value = param1.o3554(_loc10_ + "grenadeUseXP");
         o1731.value = param1.o3554(_loc10_ + "grenadeKillXP");
         o4261.value = param1.o17521(_loc10_ + "weaponKillXP");
         o10161.value = param1.o17521(_loc10_ + "failedMissionXPPercent");
         this.o20687 = new Dictionary();
         o16785(param1);
         o20362(param1);
      }
      
      private function o16785(param1:o2693) : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         var _loc9_:String = "masteries.levelRewards";
         var _loc2_:int = param1.o3554(_loc9_);
         _loc9_ = _loc9_ + ".";
         _loc5_ = 0;
         while(_loc5_ < _loc2_)
         {
            _loc4_ = _loc9_ + _loc5_.toString();
            _loc7_ = new o6993();
            _loc7_.init(_loc4_,param1);
            if(o20687[_loc7_.id] != null)
            {
               throw new Error("Already exists " + _loc7_.id.toString());
            }
            o20687[_loc7_.id] = _loc7_;
            if(_loc7_.o2409 == 0)
            {
               _loc8_ = param1.o3554(_loc4_ + ".weaponCategory");
               o14298[_loc8_] = _loc7_;
            }
            else if(_loc7_.o2409 == 4)
            {
               _loc6_ = param1.o3554(_loc4_ + ".armorType");
               o13191[_loc6_] = _loc7_;
            }
            else if(_loc7_.o2409 == 5)
            {
               _loc3_ = param1.o3554(_loc4_ + ".manufacturer");
               o121[_loc3_] = _loc7_;
            }
            _loc5_++;
         }
      }
      
      private function o17669(param1:o2693, param2:String, param3:int, param4:Dictionary) : o6993
      {
         var _loc5_:* = new o6993();
         if(_loc5_.o2743(param2,param1,param3) == false)
         {
            return null;
         }
         if(_loc5_.id == 33)
         {
            _loc5_ = _loc5_;
         }
         o20687[_loc5_.id] = _loc5_;
         var _loc6_:int = param1.o3554(param2 + ".weaponCategory");
         param4[_loc6_] = _loc5_;
         return _loc5_;
      }
      
      private function o12856(param1:o2693, param2:String, param3:int, param4:Dictionary) : o6993
      {
         var _loc6_:o6993 = new o6993();
         if(_loc6_.o2743(param2,param1,param3) == false)
         {
            return null;
         }
         o20687[_loc6_.id] = _loc6_;
         var _loc5_:int = param1.o3554(param2 + ".armorType");
         param4[_loc5_] = _loc6_;
         return _loc6_;
      }
      
      private function o9993(param1:o2693, param2:String, param3:int) : o6993
      {
         var _loc4_:* = new o6993();
         if(_loc4_.o2743(param2,param1,param3) == false)
         {
            return null;
         }
         if(_loc4_.id == 70)
         {
            _loc4_ = _loc4_;
         }
         o20687[_loc4_.id] = _loc4_;
         return _loc4_;
      }
      
      private function o20362(param1:o2693) : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         var _loc6_:String = "masteries.collectionRewards";
         var _loc3_:int = param1.o3554(_loc6_);
         _loc6_ = _loc6_ + ".";
         _loc5_ = 0;
         while(_loc5_ < _loc3_)
         {
            _loc4_ = _loc6_ + _loc5_.toString();
            _loc2_ = param1.o3554(_loc4_ + ".type");
            if(_loc2_ == 6)
            {
               o17669(param1,_loc4_,1,o12453);
               o17669(param1,_loc4_,2,o5013);
               o17669(param1,_loc4_,3,o18079);
            }
            else if(_loc2_ == 7)
            {
               o12856(param1,_loc4_,1,o15718);
               o12856(param1,_loc4_,2,o11211);
               o12856(param1,_loc4_,3,o11708);
            }
            else if(_loc2_ == 8)
            {
               o9993(param1,_loc4_,1);
               o9993(param1,_loc4_,2);
               o9993(param1,_loc4_,3);
            }
            _loc5_++;
         }
      }
      
      public function o4518(param1:int) : int
      {
         if(param1 <= 0)
         {
            return 0;
         }
         if(param1 > 5)
         {
            throw new Error("Invalid level");
         }
         return o18598[param1 - 1].value;
      }
      
      public function o18156() : int
      {
         return o18598.length;
      }
      
      public function o9238() : int
      {
         return o18598[o18598.length - 1].value;
      }
      
      public function o14852(param1:int, param2:int) : o6993
      {
         var _loc3_:o6993 = null;
         switch(int(param2) - 1)
         {
            case 0:
               _loc3_ = o12453[param1];
               break;
            case 1:
               _loc3_ = o5013[param1];
               break;
            case 2:
               _loc3_ = o18079[param1];
         }
         return _loc3_;
      }
      
      public function o6194(param1:int, param2:int) : o6993
      {
         var _loc3_:o6993 = null;
         switch(int(param2) - 1)
         {
            case 0:
               _loc3_ = o15718[param1];
               break;
            case 1:
               _loc3_ = o11211[param1];
               break;
            case 2:
               _loc3_ = o11708[param1];
         }
         return _loc3_;
      }
      
      public function o7544(param1:int) : o6993
      {
         var _loc2_:o6993 = null;
         switch(int(param1) - 1)
         {
            case 0:
               _loc2_ = o20687[65] as o6993;
               break;
            case 1:
               _loc2_ = o20687[66] as o6993;
               break;
            case 2:
               _loc2_ = o20687[67] as o6993;
         }
         return _loc2_;
      }
      
      public function o6120(param1:int) : o6993
      {
         var _loc2_:o6993 = null;
         switch(int(param1) - 1)
         {
            case 0:
               _loc2_ = o20687[68] as o6993;
               break;
            case 1:
               _loc2_ = o20687[69] as o6993;
               break;
            case 2:
               _loc2_ = o20687[70] as o6993;
         }
         return _loc2_;
      }
      
      public function o320(param1:int) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = o18598.length;
         var _loc4_:int = o18598.length;
         _loc3_ = o18598.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = o18598[_loc3_].value;
            if(param1 >= _loc4_)
            {
               return _loc2_;
            }
            _loc2_--;
            _loc3_--;
         }
         return 0;
      }
      
      public function o20829(param1:int) : Boolean
      {
         var _loc2_:int = o4518(o18598.length);
         return param1 >= _loc2_;
      }
      
      public function o5319(param1:int) : Number
      {
         if(o20829(param1))
         {
            return 1;
         }
         var _loc3_:int = o320(param1);
         var _loc7_:int = _loc3_ + 1;
         var _loc2_:int = o4518(_loc3_);
         var _loc5_:int = o4518(_loc7_);
         var _loc4_:Number = param1 - _loc2_;
         var _loc6_:Number = _loc5_ - _loc2_;
         return _loc4_ / _loc6_;
      }
      
      public function o2820(param1:int, param2:Vector.<int>, param3:int) : Boolean
      {
         var _loc4_:int = 0;
         var _loc8_:* = null;
         var _loc7_:o6993 = o15484(param3);
         var _loc5_:int = param2[_loc7_.id];
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            _loc8_ = _loc7_.o9938[_loc4_];
            var _loc10_:int = 0;
            var _loc9_:* = _loc8_.o8855;
            for each(var _loc6_ in _loc8_.o8855)
            {
               if(_loc6_.id == param1)
               {
                  return true;
               }
            }
            _loc4_++;
         }
         return false;
      }
   }
}
