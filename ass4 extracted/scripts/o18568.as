package
{
   public class o18568
   {
      
      private static const o14914:int = 0;
      
      private static const o8874:int = 1;
      
      private static const o17452:int = 2;
      
      private static const o17448:int = 3;
      
      private static const o5678:int = 4;
      
      private static const o20713:int = 5;
      
      private static const o14005:int = 6;
      
      private static var o15345:Number;
      
      private static var o3810:Number;
      
      private static var o15369:Number;
      
      private static var o18498:Number;
      
      private static var o9728:Number;
      
      private static var o7442:Number;
      
      private static var o961:Number;
      
      private static var o10600:Number;
      
      private static var o17730:Number;
      
      private static var o14931:Number;
      
      private static var o16454:Number;
      
      private static var o4094:Number;
      
      private static var o6298:Number;
      
      private static var o13630:Number;
      
      private static var o1724:Number;
      
      private static var o1154:Number;
      
      private static var o1728:Number;
      
      private static var o2534:Number;
      
      private static var o8490:Number;
      
      private static var o15878:Number;
      
      private static var o12477:Number;
      
      private static var o775:Number;
      
      private static var o7309:Number;
      
      private static var o4826:Number;
      
      private static const o4283:Number = 1.0;
       
      
      public function o18568()
      {
         super();
      }
      
      public static function o2863(param1:o2693, param2:String) : void
      {
         o15345 = param1.o17521(param2 + "boss.meleeDamage.damageIncreaseEliteBoss");
         o3810 = param1.o17521(param2 + "zombie.meleeDamage.damageIncreaseEliteZombie");
         o15369 = param1.o17521(param2 + "boss.meleeDamage.damageIncreaseNightmareBoss");
         o18498 = param1.o17521(param2 + "zombie.meleeDamage.damageIncreaseNightmareZombie");
         o9728 = param1.o17521(param2 + "boss.meleeDamage.damageIncreaseNightmareEliteBoss");
         o7442 = param1.o17521(param2 + "zombie.meleeDamage.damageIncreaseNightmareEliteZombie");
         o961 = param1.o17521(param2 + "boss.health.healthIncreaseEliteBoss");
         o10600 = param1.o17521(param2 + "zombie.health.healthIncreaseEliteZombie");
         o17730 = param1.o17521(param2 + "boss.health.healthIncreaseNightmareBoss");
         o14931 = param1.o17521(param2 + "zombie.health.healthIncreaseNightmareZombie");
         o16454 = param1.o17521(param2 + "boss.health.healthIncreaseNightmareEliteBoss");
         o4094 = param1.o17521(param2 + "zombie.health.healthIncreaseNightmareEliteZombie");
         o6298 = param1.o17521(param2 + "boss.rangedDamage.rangedDamageIncreaseEliteBoss");
         o13630 = param1.o17521(param2 + "zombie.rangedDamage.rangedDamageIncreaseEliteZombie");
         o1724 = param1.o17521(param2 + "boss.rangedDamage.rangedDamageIncreaseNightmareBoss");
         o1154 = param1.o17521(param2 + "zombie.rangedDamage.rangedDamageIncreaseNightmareZombie");
         o1728 = param1.o17521(param2 + "boss.rangedDamage.rangedDamageIncreaseNightmareEliteBoss");
         o2534 = param1.o17521(param2 + "zombie.rangedDamage.rangedDamageIncreaseNightmareEliteZombie");
         o8490 = param1.o17521(param2 + "boss.speed.speedIncreaseEliteBoss");
         o15878 = param1.o17521(param2 + "zombie.speed.speedIncreaseEliteZombie");
         o12477 = param1.o17521(param2 + "boss.speed.speedIncreaseNightmareBoss");
         o775 = param1.o17521(param2 + "zombie.speed.speedIncreaseNightmareZombie");
         o7309 = param1.o17521(param2 + "boss.speed.speedIncreaseNightmareEliteBoss");
         o4826 = param1.o17521(param2 + "zombie.speed.speedIncreaseNightmareEliteZombie");
      }
      
      public static function o6230(param1:Boolean, param2:Boolean, param3:Boolean = false) : Number
      {
         var _loc4_:int = o17678(param1,param2,param3);
         switch(int(_loc4_) - 1)
         {
            case 0:
               return o15345;
            case 1:
               return o3810;
            case 2:
               return o9728;
            case 3:
               return o7442;
            case 4:
               return o15369;
            case 5:
               return o18498;
         }
      }
      
      public static function o13039(param1:Boolean, param2:Boolean, param3:Boolean = false) : Number
      {
         var _loc4_:int = o17678(param1,param2,param3);
         switch(int(_loc4_) - 1)
         {
            case 0:
               return o961;
            case 1:
               return o10600;
            case 2:
               return o16454;
            case 3:
               return o4094;
            case 4:
               return o17730;
            case 5:
               return o14931;
         }
      }
      
      public static function o955(param1:Boolean, param2:Boolean, param3:Boolean = false) : Number
      {
         var _loc4_:int = o17678(param1,param2,param3);
         switch(int(_loc4_) - 1)
         {
            case 0:
               return o6298;
            case 1:
               return o13630;
            case 2:
               return o1728;
            case 3:
               return o2534;
            case 4:
               return o1724;
            case 5:
               return o1154;
         }
      }
      
      public static function o12934(param1:Boolean, param2:Boolean, param3:Boolean = false) : Number
      {
         var _loc4_:int = o17678(param1,param2,param3);
         switch(int(_loc4_) - 1)
         {
            case 0:
               return o8490;
            case 1:
               return o15878;
            case 2:
               return o7309;
            case 3:
               return o4826;
            case 4:
               return o12477;
            case 5:
               return o775;
         }
      }
      
      private static function o17678(param1:Boolean, param2:Boolean, param3:Boolean = false) : int
      {
         if(param2)
         {
            if(param1)
            {
               if(param3)
               {
                  return 3;
               }
               return 1;
            }
            if(param3)
            {
               return 5;
            }
         }
         else
         {
            if(param1)
            {
               if(param3)
               {
                  return 4;
               }
               return 2;
            }
            if(param3)
            {
               return 6;
            }
         }
         return 0;
      }
      
      private static function o1692() : void
      {
      }
   }
}
