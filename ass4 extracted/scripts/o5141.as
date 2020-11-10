package
{
   public class o5141
   {
      
      public static var o1309:Number;
      
      public static var o14583:Number;
      
      public static var o734:Number;
      
      public static var o13034:Number;
      
      public static var o17003:Number;
      
      public static var o3000:Number;
      
      public static var o14769:Number;
      
      public static var o2893:Number;
      
      public static var o5580:Number;
      
      public static var o1186:Number;
      
      public static var o3951:Number;
      
      public static var o4164:Number;
      
      public static var o230:Number;
      
      public static var o14945:Number;
      
      public static var o5426:Number;
      
      public static var o14777:Number;
      
      public static var o7202:Number;
      
      public static var o6508:Number;
      
      public static var o3948:Number;
      
      public static var o20369:Number;
      
      public static var o8261:Number;
      
      public static var o6857:Number;
      
      public static var o17640:Number;
      
      public static var o8136:Number;
      
      public static var o5550:Number;
      
      public static var o12922:Number;
      
      public static var o4834:Number;
      
      public static var o13033:Number;
      
      public static var o20330:Number;
      
      public static var o1439:Number;
      
      public static var o13523:Number;
      
      public static var o16202:Number;
      
      public static var o3095:Number;
      
      public static var o247:Number;
      
      public static var o9985:Number;
      
      public static var o11058:Number;
      
      public static var o11113:Vector.<Vector.<o11625>>;
       
      
      public function o5141()
      {
         super();
      }
      
      public static function o18892(param1:o2693, param2:String) : void
      {
         var _loc17_:* = null;
         var _loc13_:* = undefined;
         var _loc12_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = null;
         var _loc8_:* = null;
         var _loc20_:* = NaN;
         var _loc9_:* = null;
         var _loc11_:Number = NaN;
         var _loc10_:* = null;
         var _loc7_:int = 0;
         var _loc14_:* = null;
         var _loc4_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc5_:* = null;
         o20330 = param1.o17521(param2 + "forceFreeplayWavesAtAveragePlayerLevel");
         o1309 = param1.o17521(param2 + "forceNextWaveTimeBase");
         o14583 = param1.o17521(param2 + "forceNextWaveTimePerWave");
         o734 = param1.o17521(param2 + "forceLMSToStartAtWave");
         o13034 = param1.o17521(param2 + "awardEventPointsAfterMinTime");
         o17003 = param1.o17521(param2 + "preGameCountdownTimer");
         o3095 = param1.o3554(param2 + "maxNumZombies");
         var _loc18_:String = param2 + "freeplay.";
         o3000 = param1.o17521(_loc18_ + "waveLengthBase");
         o14769 = param1.o17521(_loc18_ + "waveLengthBase");
         o2893 = param1.o17521(_loc18_ + "numberOfRipplesBase");
         o5580 = param1.o17521(_loc18_ + "numberOfRipplesPerWave");
         o1186 = param1.o17521(_loc18_ + "minmaxRamp");
         o3951 = param1.o17521(_loc18_ + "shamblerCountBase");
         o4164 = param1.o17521(_loc18_ + "shamblerCountPerWave");
         o230 = param1.o17521(_loc18_ + "stalkerCountBase");
         o14945 = param1.o17521(_loc18_ + "stalkerCountPerWave");
         o5426 = param1.o17521(_loc18_ + "spitterCountBase");
         o14777 = param1.o17521(_loc18_ + "spitterCountPerWave");
         o7202 = param1.o17521(_loc18_ + "runnerCountBase");
         o6508 = param1.o17521(_loc18_ + "runnerCountPerWave");
         o3948 = param1.o17521(_loc18_ + "bloaterCountBase");
         o20369 = param1.o17521(_loc18_ + "bloaterCountPerWave");
         o8261 = param1.o17521(_loc18_ + "shielderCountBase");
         o6857 = param1.o17521(_loc18_ + "shielderCountPerWave");
         o17640 = param1.o17521(_loc18_ + "wormCountBase");
         o8136 = param1.o17521(_loc18_ + "wormCountPerWave");
         o1439 = param1.o17521(param2 + "scaleZombieHealthPerWave");
         o13523 = param1.o17521(param2 + "scaleZombieDamagePerWave");
         o16202 = param1.o17521(param2 + "scaleZombieSpeedPerWave");
         o5550 = param1.o17521(param2 + "bossStartAppearingAtFreeplayWave");
         o13033 = param1.o17521(param2 + "bossFreeplayWaveSeperation");
         o12922 = param1.o17521(param2 + "bossBudgetBase");
         o4834 = param1.o17521(param2 + "bossBudgetPerWave");
         o247 = param1.o17521(param2 + "ignoreArmorScalePerIncrease");
         o9985 = param1.o17521(param2 + "ignoreArmorMinStartWave");
         o11058 = param1.o17521(param2 + "ignoreArmorWavesBetweenIncrease");
         o11113 = new Vector.<Vector.<o11625>>();
         var _loc15_:int = 1;
         var _loc19_:int = 1;
         while(true)
         {
            _loc17_ = param1.o9009(param2 + "wave" + _loc15_ + ".ripple1");
            if(_loc17_ != null)
            {
               _loc13_ = new Vector.<o11625>();
               o11113.push(_loc13_);
               _loc19_ = 1;
               while(true)
               {
                  _loc12_ = param1.o9009(param2 + "wave" + _loc15_ + ".ripple" + _loc19_);
                  if(_loc12_ != null)
                  {
                     try
                     {
                        _loc6_ = _loc12_.split(",");
                        _loc3_ = _loc6_[0];
                        _loc8_ = _loc6_[1];
                        _loc20_ = 1;
                        if(_loc6_.length >= 3)
                        {
                           _loc20_ = Number(_loc6_[2]);
                        }
                        _loc9_ = _loc3_.split(" ");
                        _loc11_ = _loc9_[0];
                        _loc10_ = _loc9_[1];
                        _loc7_ = -1;
                        var _loc22_:* = _loc10_;
                        switch(_loc22_)
                        {
                           case "shambler":
                           case "shamblers":
                              _loc7_ = 0;
                              break;
                           case "stalker":
                           case "stalkers":
                              _loc7_ = 1;
                              break;
                           case "spitter":
                           case "spitters":
                              _loc7_ = 2;
                              break;
                           case "runner":
                           case "runners":
                              _loc7_ = 3;
                              break;
                           case "bloater":
                           case "bloaters":
                              _loc7_ = 4;
                              break;
                           case "shielder":
                           case "shielders":
                              _loc7_ = 5;
                              break;
                           case "worm":
                           case "worms":
                              _loc7_ = 8;
                              break;
                           default:
                              trace("Syntax error in wave: " + _loc15_ + " ripple: " + _loc19_ + " - Zombie Type not valid");
                              throw new Error("Syntax error in wave: " + _loc15_ + " ripple: " + _loc19_ + " - Zombie Type not valid");
                        }
                        _loc14_ = _loc8_.split("-");
                        _loc4_ = _loc14_[0];
                        _loc16_ = _loc14_[1] - _loc4_;
                        continue;
                     }
                     catch(o7367:Error)
                     {
                        trace("Syntax error in wave: " + _loc15_ + " ripple: " + _loc19_);
                        throw new Error("Syntax error in wave: " + _loc15_ + " ripple: " + _loc19_);
                     }
                     _loc5_ = new o11625(_loc7_,_loc4_,_loc16_,_loc11_,4,true,_loc20_);
                     _loc13_.push(_loc5_);
                     _loc19_++;
                     continue;
                  }
                  break;
               }
               _loc15_++;
               continue;
            }
            break;
         }
      }
   }
}
