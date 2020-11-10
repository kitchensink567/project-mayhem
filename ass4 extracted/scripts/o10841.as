package
{
   public class o10841
   {
      
      public static var o4071:Boolean = false;
      
      public static var o8660:int;
      
      public static var o8869:int;
      
      public static var o1102:Number;
      
      public static var o20954:int;
      
      public static var o4769:int;
      
      public static var o15406:int;
      
      public static var o3448:int;
      
      public static var o16607:int;
      
      public static var o8413:int;
      
      public static var o5491:int;
      
      public static var o8329:int;
      
      public static var o13370:int;
      
      public static var o14082:int;
      
      private static const o5859:int = 100;
      
      private static const o15073:int = 0;
      
      private static const o17744:int = 1;
      
      private static const o7274:int = 2;
      
      private static const o725:int = 3;
      
      private static const o15466:int = 4;
      
      public static var o18722:String;
      
      public static var o10166:int;
      
      public static var o6069:int;
      
      public static var o9233:int;
      
      public static var o19272:String;
      
      public static var o17601:int;
      
      public static var o8579:int;
      
      public static var o6371:String;
      
      public static var o4664:int;
      
      public static var o18206:String;
      
      public static var o15071:int;
      
      public static var o381:String;
      
      public static var o18292:int;
      
      public static var o4915:int;
      
      public static var o9616:int;
      
      public static var o2954:int;
       
      
      public function o10841()
      {
         super();
      }
      
      public static function o18892(param1:o2693, param2:String) : void
      {
         if(o4071)
         {
            return;
         }
         var _loc3_:String = param2 + 100 + ".settings.";
         o13370 = param1.o3554(_loc3_ + "avatarMinRecoveryTime");
         o14082 = param1.o3554(_loc3_ + "avatarBaseRecoveryTime");
         _loc3_ = param2 + 100 + ".spawnerData.";
         o8660 = param1.o3554(_loc3_ + "waveLength");
         o8869 = param1.o3554(_loc3_ + "numRipples");
         o1102 = param1.o17521(_loc3_ + "minMaxRamp");
         _loc3_ = param2 + 100 + ".spawnerData.enemyDistribution.";
         o20954 = param1.o3554(_loc3_ + "shamblers");
         o4769 = param1.o3554(_loc3_ + "stalkers");
         o15406 = param1.o3554(_loc3_ + "spitters");
         o3448 = param1.o3554(_loc3_ + "runners");
         o16607 = param1.o3554(_loc3_ + "bloaters");
         o8413 = param1.o3554(_loc3_ + "shielders");
         o5491 = param1.o3554(_loc3_ + "worms");
         o8329 = param1.o3554(_loc3_ + "additionalZombiesPerWaveMultiplier");
         _loc3_ = param2 + 0;
         o18722 = param1.o9009(_loc3_ + ".details");
         _loc3_ = param2 + 0 + ".settings.";
         o10166 = param1.o3554(_loc3_ + "timeLimit");
         o6069 = param1.o3554(_loc3_ + "maxAmmoCachesSpawned");
         o9233 = param1.o3554(_loc3_ + "ammoCacheSpawnInterval");
         _loc3_ = param2 + 1;
         o19272 = param1.o9009(_loc3_ + ".details");
         _loc3_ = param2 + 1 + ".settings.";
         o8579 = param1.o3554(_loc3_ + "timeLimit");
         o17601 = param1.o3554(_loc3_ + "dataPerTerminal");
         _loc3_ = param2 + 3;
         o6371 = param1.o9009(_loc3_ + ".details");
         _loc3_ = param2 + 3 + ".settings.";
         o4664 = param1.o3554(_loc3_ + "timeLimit");
         _loc3_ = param2 + 2;
         o18206 = param1.o9009(_loc3_ + ".details");
         _loc3_ = param2 + 2 + ".settings.";
         o15071 = param1.o3554(_loc3_ + "timeLimit");
         _loc3_ = param2 + 4;
         o381 = param1.o9009(_loc3_ + ".details");
         _loc3_ = param2 + 4 + ".settings.";
         o18292 = param1.o3554(_loc3_ + "timeLimit");
         o4915 = param1.o3554(_loc3_ + "zombieRatingValue");
         o9616 = param1.o3554(_loc3_ + "expectedMaxWave");
         o2954 = param1.o3554(_loc3_ + "minZombiesNeededToSpawnNextWave");
         _loc3_ = param2 + 4 + ".settings.";
         o4071 = true;
      }
      
      public static function o14790() : void
      {
      }
   }
}
