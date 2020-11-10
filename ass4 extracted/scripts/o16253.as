package
{
   public class o16253
   {
       
      
      private var o19419:o14200;
      
      private var o8124:o16123;
      
      private var o17147:o16123;
      
      public var o10961:Vector.<o19467>;
      
      private const o11467:Number = 0.8837209302325582;
      
      public function o16253(param1:o14200)
      {
         o8124 = new o16123(0);
         o17147 = new o16123(0);
         o10961 = new Vector.<o19467>();
         super();
         this.o19419 = param1;
      }
      
      public function get o13685() : int
      {
         return o4533;
      }
      
      public function get o4533() : int
      {
         var _loc1_:int = 0;
         if(o19419.o202.o18339 == 2)
         {
            _loc1_ = o17147.value * (o14200.o19505.o7923.level / 100) * o14576.o17270 * 0.883720930232558;
         }
         else
         {
            _loc1_ = o17147.value * (o14200.o19505.o7923.level / 100) * 0.883720930232558;
         }
         if(_loc1_ < o8124.value)
         {
            _loc1_ = o8124.value;
         }
         return _loc1_;
      }
      
      public function o15415(param1:int) : o19467
      {
         var _loc4_:int = 0;
         var _loc3_:* = o10961;
         for each(var _loc2_ in o10961)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o10634() : int
      {
         if(o19419.o7923.o3525.o17992())
         {
            return o4533;
         }
         return o13685;
      }
      
      private function o14688(param1:o2693, param2:o19467, param3:String, param4:int) : void
      {
         var _loc5_:int = param1.o3554(param3);
         if(_loc5_ > 0)
         {
            param2.o6983[param4] = _loc5_;
         }
      }
      
      private function o15032(param1:o2693, param2:o19467, param3:String, param4:int) : void
      {
         var _loc5_:int = param1.o3554(param3);
         if(_loc5_ > 0)
         {
            param2.o2819[param4] = _loc5_;
         }
      }
      
      private function o9211(param1:o2693, param2:o19467, param3:String, param4:int) : void
      {
         var _loc5_:Number = param1.o17521(param3);
         if(_loc5_ > 0)
         {
            param2.o15736[param4] = _loc5_;
         }
      }
      
      private function o15571(param1:o2693, param2:o19467, param3:String, param4:int) : void
      {
         var _loc5_:Boolean = param1.o18357(param3);
         if(_loc5_ > 0)
         {
            param2.o15736[param4] = _loc5_;
         }
      }
      
      private function o17100(param1:o2693, param2:o19467, param3:String, param4:int) : void
      {
         var _loc5_:Number = param1.o17521(param3);
         if(_loc5_ > 0)
         {
            param2.o15938[param4] = _loc5_;
         }
      }
      
      private function o11812(param1:o2693, param2:o19467, param3:String, param4:int) : void
      {
         var _loc5_:Boolean = param1.o18357(param3);
         if(_loc5_ > 0)
         {
            param2.o15938[param4] = _loc5_;
         }
      }
      
      public function init(param1:o2693) : void
      {
         var _loc7_:int = 0;
         var _loc12_:* = null;
         var _loc3_:* = null;
         var _loc11_:* = null;
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc2_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:* = null;
         var _loc13_:String = "newPreMissionPowerups";
         var _loc5_:int = param1.o3554(_loc13_);
         o8124.value = param1.o3554(_loc13_ + ".buyAllPrice");
         o17147.value = param1.o3554(_loc13_ + ".redBuyAllPrice");
         _loc7_ = 0;
         while(_loc7_ < _loc5_)
         {
            _loc12_ = _loc13_ + "." + _loc7_.toString() + ".";
            _loc3_ = new o19467(this.o19419);
            _loc3_.id = param1.o3554(_loc12_ + "id");
            _loc3_.name = param1.o9009(_loc12_ + "name");
            _loc3_.o5229(param1.o3554(_loc12_ + "price"),param1.o3554(_loc12_ + "redPrice"));
            _loc3_.enabled = param1.o18357(_loc12_ + "enabled");
            _loc3_.o12087 = param1.o9009(_loc12_ + "iconFrameLabel");
            _loc3_.o7784 = param1.o9009(_loc12_ + "iconFrameLabelRed");
            _loc11_ = _loc12_ + "turrets.";
            o14688(param1,_loc3_,_loc11_ + "RonsonCryogenicTurret",5);
            o14688(param1,_loc3_,_loc11_ + "HVMHeavyMachineGunTurret",4);
            o14688(param1,_loc3_,_loc11_ + "HIKHeavyshotProtectorTurret",6);
            o14688(param1,_loc3_,_loc11_ + "TeknoboomTurret",7);
            o14688(param1,_loc3_,_loc11_ + "ZeusTurret",9);
            o14688(param1,_loc3_,_loc11_ + "FlameTurret",8);
            _loc4_ = _loc12_ + "grenades.";
            o15032(param1,_loc3_,_loc4_ + "frag",1);
            o15032(param1,_loc3_,_loc4_ + "cryo",2);
            _loc6_ = param1.o3554(_loc12_ + "inGameText");
            _loc2_ = 0;
            while(_loc2_ < _loc6_)
            {
               _loc3_.o8208.push(param1.o9009(_loc12_ + "inGameText." + _loc2_.toString()));
               _loc3_.o15474.push(param1.o18357(_loc12_ + "inGameTextRed." + _loc2_.toString()));
               _loc2_++;
            }
            _loc8_ = param1.o3554(_loc12_ + "inGameTeamEffectText");
            _loc2_ = 0;
            while(_loc2_ < _loc8_)
            {
               _loc3_.o983.push(param1.o9009(_loc12_ + "inGameTeamEffectText." + _loc2_.toString()));
               _loc2_++;
            }
            _loc9_ = param1.o3554(_loc12_ + "inGameEffectText");
            _loc2_ = 0;
            while(_loc2_ < _loc9_)
            {
               _loc3_.o12415.push(param1.o9009(_loc12_ + "inGameEffectText." + _loc2_.toString()));
               _loc2_++;
            }
            _loc10_ = _loc12_ + "effects.";
            o9211(param1,_loc3_,_loc10_ + "heatDamageImmunity",0);
            o9211(param1,_loc3_,_loc10_ + "damageBonus",1);
            o9211(param1,_loc3_,_loc10_ + "critChance",2);
            o9211(param1,_loc3_,_loc10_ + "increasedStrongboxDropChanceSelf",3);
            o15571(param1,_loc3_,_loc10_ + "increasedStrongboxQuality",4);
            o9211(param1,_loc3_,_loc10_ + "damageImmunity",5);
            o9211(param1,_loc3_,_loc10_ + "healthGainFromMedkits",6);
            o9211(param1,_loc3_,_loc10_ + "healthRegenRate",7);
            o17100(param1,_loc3_,_loc10_ + "heatDamageImmunityTeam",0);
            o17100(param1,_loc3_,_loc10_ + "damageBonusTeam",1);
            o17100(param1,_loc3_,_loc10_ + "critChanceTeam",2);
            o17100(param1,_loc3_,_loc10_ + "increasedStrongboxDropChanceTeam",3);
            o17100(param1,_loc3_,_loc10_ + "damageImmunityTeam",5);
            o17100(param1,_loc3_,_loc10_ + "healthGainFromMedkitsTeam",6);
            o17100(param1,_loc3_,_loc10_ + "healthRegenRateTeam",7);
            this.o10961.push(_loc3_);
            _loc7_++;
         }
      }
   }
}
