package
{
   public class o19616
   {
      
      public static var o9508:Number = 900.0;
      
      public static var o5272:Number = 500;
      
      public static var o4621:Number = 0.666;
      
      public static var o18805:Number = 5;
      
      public static var o3002:Number = 3.5;
      
      public static var o10974:Number = 0.22;
      
      public static var o1122:Number = -0.22;
      
      public static var o20930:Number = -4.0;
      
      public static var o6401:Number = 0.75;
      
      public static var o6146:Number = 1000;
      
      public static var o7400:Number = 0.9;
      
      public static var o12119:Number = 3;
      
      public static var o18366:Number = 2;
      
      public static var o12409:Number = 12;
      
      public static var o4613:Number = 6;
      
      public static var o3575:Number = 6;
      
      public static var o15143:Number = 0;
      
      public static var o16468:Number = 4.2;
      
      public static var o18473:Number = 3;
      
      public static var o1547:Vector.<o18509>;
      
      public static var o5676:Vector.<int> = Vector.<int>([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,4,5,8,8,8,8]);
       
      
      public function o19616()
      {
         super();
      }
      
      public static function o18892(param1:o2693, param2:String) : void
      {
         var _loc11_:Number = NaN;
         var _loc15_:* = null;
         var _loc4_:int = 0;
         o5272 = param1.o17521(param2 + "scoreToWin");
         o18805 = param1.o17521(param2 + "scorePerTick");
         o4621 = param1.o17521(param2 + "scoreTickTime");
         o3002 = param1.o17521(param2 + "baseZombsPerSecond");
         o10974 = param1.o17521(param2 + "difficultyPerSecondHaveVirus");
         o1122 = param1.o17521(param2 + "difficultyPerSecondNoVirus");
         o20930 = param1.o17521(param2 + "difficultyChangeOnCarrierDeath");
         o6401 = param1.o17521(param2 + "virusCarrierSpeedMod");
         o6146 = param1.o17521(param2 + "virusCarrierThreatLevel");
         o7400 = param1.o17521(param2 + "percentZombsTargetingThreat");
         o12409 = param1.o17521(param2 + "virusCarrierRespawnTime");
         o3575 = param1.o17521(param2 + "nonVirusCarrierRespawnTime");
         o16468 = param1.o17521(param2 + "virusExplosionRadiusMetres");
         o18473 = param1.o17521(param2 + "virusThrownDistanceMetres");
         o1547 = new Vector.<o18509>();
         var _loc3_:String = param2 + "dotDamages";
         var _loc5_:Vector.<String> = param1.o18150(_loc3_);
         var _loc18_:int = 0;
         var _loc17_:* = _loc5_;
         for each(var _loc16_ in _loc5_)
         {
            if(_loc16_ != "")
            {
               _loc11_ = param1.o17521(_loc3_ + "." + _loc16_);
               _loc15_ = new o18509(Number(_loc16_),_loc11_);
               o1547.push(_loc15_);
            }
         }
         o1547.sort(o19156);
         o5676 = new Vector.<int>();
         var _loc12_:String = param2 + "enemyDistribution.";
         var _loc10_:int = param1.o3554(_loc12_ + "shamblers");
         var _loc13_:int = param1.o3554(_loc12_ + "stalkers");
         var _loc8_:int = param1.o3554(_loc12_ + "spitters");
         var _loc9_:int = param1.o3554(_loc12_ + "runners");
         var _loc14_:int = param1.o3554(_loc12_ + "bloaters");
         var _loc6_:int = param1.o3554(_loc12_ + "shielders");
         var _loc7_:int = param1.o3554(_loc12_ + "worms");
         _loc4_ = 0;
         while(_loc4_ < _loc10_)
         {
            o5676.push(0);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc13_)
         {
            o5676.push(1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc8_)
         {
            o5676.push(2);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc9_)
         {
            o5676.push(3);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc14_)
         {
            o5676.push(4);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc6_)
         {
            o5676.push(5);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc7_)
         {
            o5676.push(8);
            _loc4_++;
         }
      }
      
      private static function o19156(param1:o18509, param2:o18509) : int
      {
         if(param1.x < param2.x)
         {
            return 1;
         }
         if(param1.x > param2.x)
         {
            return -1;
         }
         return 0;
      }
   }
}
