package
{
   public class o20071
   {
      
      public static const o14158:int = 0;
      
      public static const o5014:int = 1;
      
      public static const o19483:int = 2;
      
      public static const o13362:int = 3;
      
      public static const o7830:int = 4;
      
      public static const o7022:int = 5;
      
      public static const o10525:int = 6;
      
      public static const o3792:int = 7;
       
      
      public function o20071()
      {
         super();
      }
      
      public static function o318() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = NaN;
         o8339("--------- testProcessPowerUpEffects");
         var _loc12_:int = 0;
         var _loc11_:* = o4519.o8116.profileData.o202.o11032;
         for each(var _loc5_ in o4519.o8116.profileData.o202.o11032)
         {
            var _loc10_:int = 0;
            var _loc9_:* = _loc5_.o15736;
            for(var _loc7_ in _loc5_.o15736)
            {
               switch(int(_loc7_))
               {
                  case 0:
                     _loc2_ = _loc5_.o15736[_loc7_];
                     o8339("heatDamageImmunity: " + _loc2_.toString());
                     continue;
                  case 1:
                     _loc1_ = _loc5_.o15736[_loc7_];
                     o8339("damageBonus: " + _loc1_.toString());
                     continue;
                  case 2:
                     _loc3_ = _loc5_.o15736[_loc7_];
                     o8339("critChance: " + _loc3_.toString());
                     continue;
                  case 3:
                     o8339("increasedStrongboxDropChance: True");
                     continue;
                  case 4:
                     o8339("increasedStrongboxQuality: True");
                     continue;
                  case 5:
                     _loc8_ = _loc5_.o15736[_loc7_];
                     o8339("damageImmunity: " + _loc8_.toString());
                     continue;
                  case 6:
                     _loc6_ = _loc5_.o15736[_loc7_];
                     o8339("healthGainFromMedkits: " + _loc6_.toString());
                     continue;
                  case 7:
                     _loc4_ = _loc5_.o15736[_loc7_];
                     o8339("healthRegenRate: " + _loc4_.toString());
                     continue;
               }
            }
         }
         o8339("-------");
      }
      
      public function o8880() : void
      {
      }
   }
}
