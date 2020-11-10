package
{
   public class o8291
   {
      
      public static var o1309:Number;
      
      public static var o14583:Number;
      
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
      
      public static var o19605:Number;
      
      public static var o12922:Number;
      
      public static var o4834:Number;
      
      public static var o20958:Number;
      
      public static var o13033:Number;
      
      public static var o1439:Number;
      
      public static var o13523:Number;
      
      public static var o16202:Number;
      
      public static var o3095:Number;
      
      public static var o247:Number;
      
      public static var o9985:Number;
      
      public static var o11058:Number;
      
      public static var o11113:Vector.<Vector.<o11625>>;
      
      public static var o19142:Vector.<int>;
      
      public static var o19530:Vector.<int>;
      
      public static var o11978:Vector.<Number>;
       
      
      public function o8291()
      {
         super();
      }
      
      public static function o18892(param1:o2693, param2:String) : void
      {
         var _loc9_:* = null;
         var _loc3_:* = null;
         var _loc24_:* = null;
         var _loc21_:* = undefined;
         var _loc20_:* = null;
         var _loc18_:* = null;
         var _loc14_:* = null;
         var _loc19_:* = null;
         var _loc13_:* = NaN;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc8_:* = null;
         var _loc5_:int = 0;
         var _loc22_:* = null;
         var _loc16_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc4_:* = null;
         var _loc12_:* = null;
         var _loc17_:* = null;
         o1309 = param1.o17521(param2 + "forceNextWaveTimeBase");
         o14583 = param1.o17521(param2 + "forceNextWaveTimePerWave");
         o13034 = param1.o17521(param2 + "awardEventPointsAfterMinTime");
         o17003 = param1.o17521(param2 + "preGameCountdownTimer");
         o3095 = param1.o3554(param2 + "maxNumZombies");
         var _loc25_:String = param2 + "freeplay.";
         o3000 = param1.o17521(_loc25_ + "waveLengthBase");
         o14769 = param1.o17521(_loc25_ + "waveLengthBase");
         o2893 = param1.o17521(_loc25_ + "numberOfRipplesBase");
         o5580 = param1.o17521(_loc25_ + "numberOfRipplesPerWave");
         o1186 = param1.o17521(_loc25_ + "minmaxRamp");
         o3951 = param1.o17521(_loc25_ + "shamblerCountBase");
         o4164 = param1.o17521(_loc25_ + "shamblerCountPerWave");
         o230 = param1.o17521(_loc25_ + "stalkerCountBase");
         o14945 = param1.o17521(_loc25_ + "stalkerCountPerWave");
         o5426 = param1.o17521(_loc25_ + "spitterCountBase");
         o14777 = param1.o17521(_loc25_ + "spitterCountPerWave");
         o7202 = param1.o17521(_loc25_ + "runnerCountBase");
         o6508 = param1.o17521(_loc25_ + "runnerCountPerWave");
         o3948 = param1.o17521(_loc25_ + "bloaterCountBase");
         o20369 = param1.o17521(_loc25_ + "bloaterCountPerWave");
         o8261 = param1.o17521(_loc25_ + "shielderCountBase");
         o6857 = param1.o17521(_loc25_ + "shielderCountPerWave");
         o17640 = param1.o17521(_loc25_ + "wormCountBase");
         o8136 = param1.o17521(_loc25_ + "wormCountPerWave");
         o1439 = param1.o17521(param2 + "scaleZombieHealthPerWave");
         o13523 = param1.o17521(param2 + "scaleZombieDamagePerWave");
         o16202 = param1.o17521(param2 + "scaleZombieSpeedPerWave");
         o19605 = param1.o17521(param2 + "bossStartAppearingAtWave");
         o20958 = param1.o17521(param2 + "bossStructuredWaveSeperation");
         o13033 = param1.o17521(param2 + "bossFreeplayWaveSeperation");
         o12922 = param1.o17521(param2 + "bossBudgetBase");
         o4834 = param1.o17521(param2 + "bossBudgetPerWave");
         o247 = param1.o17521(param2 + "ignoreArmorScalePerIncrease");
         o9985 = param1.o17521(param2 + "ignoreArmorMinStartWave");
         o11058 = param1.o17521(param2 + "ignoreArmorWavesBetweenIncrease");
         o19142 = new Vector.<int>();
         o19530 = new Vector.<int>();
         o11978 = new Vector.<Number>();
         var _loc15_:int = 1;
         while(true)
         {
            _loc9_ = param1.o9009(param2 + "waveScore.tier" + _loc15_);
            _loc3_ = param1.o9009(param2 + "waveScore.tier" + _loc15_ + ".score");
            if(_loc9_ == null || _loc3_ == null)
            {
               break;
            }
            o19142.push(int(_loc9_));
            o19530.push(int(_loc3_));
            _loc15_++;
         }
         if(_loc15_ != 1)
         {
         }
         o11113 = new Vector.<Vector.<o11625>>();
         var _loc10_:int = 1;
         var _loc26_:int = 1;
         while(true)
         {
            _loc24_ = param1.o9009(param2 + "wave" + _loc10_ + ".ripple1");
            if(_loc24_ != null)
            {
               _loc21_ = new Vector.<o11625>();
               o11113.push(_loc21_);
               _loc26_ = 1;
               while(true)
               {
                  _loc20_ = param1.o9009(param2 + "wave" + _loc10_ + ".ripple" + _loc26_);
                  if(_loc20_ != null)
                  {
                     try
                     {
                        _loc18_ = _loc20_.split(",");
                        _loc14_ = _loc18_[0];
                        _loc19_ = _loc18_[1];
                        _loc13_ = 1;
                        if(_loc18_.length >= 3)
                        {
                           _loc13_ = Number(_loc18_[2]);
                        }
                        _loc6_ = _loc14_.split(" ");
                        _loc7_ = _loc6_[0];
                        _loc8_ = _loc6_[1];
                        _loc5_ = -1;
                        var _loc28_:* = _loc8_;
                        switch(_loc28_)
                        {
                           case "shambler":
                           case "shamblers":
                              _loc5_ = 0;
                              break;
                           case "stalker":
                           case "stalkers":
                              _loc5_ = 1;
                              break;
                           case "spitter":
                           case "spitters":
                              _loc5_ = 2;
                              break;
                           case "runner":
                           case "runners":
                              _loc5_ = 3;
                              break;
                           case "bloater":
                           case "bloaters":
                              _loc5_ = 4;
                              break;
                           case "shielder":
                           case "shielders":
                              _loc5_ = 5;
                              break;
                           case "worm":
                           case "worms":
                              _loc5_ = 8;
                              break;
                           default:
                              trace("Syntax error in wave: " + _loc10_ + " ripple: " + _loc26_ + " - Zombie Type not valid");
                              throw new Error("Syntax error in wave: " + _loc10_ + " ripple: " + _loc26_ + " - Zombie Type not valid");
                        }
                        _loc22_ = _loc19_.split("-");
                        _loc16_ = _loc22_[0];
                        _loc11_ = _loc22_[1] - _loc16_;
                        continue;
                     }
                     catch(o7367:Error)
                     {
                        trace("Syntax error in wave: " + _loc10_ + " ripple: " + _loc26_);
                        throw new Error("Syntax error in wave: " + _loc10_ + " ripple: " + _loc26_);
                     }
                     _loc4_ = new o11625(_loc5_,_loc16_,_loc11_,_loc7_,4,true,_loc13_);
                     _loc21_.push(_loc4_);
                     _loc26_++;
                     continue;
                  }
                  break;
               }
               _loc10_++;
               continue;
            }
            break;
         }
         var _loc23_:int = 1;
         while(true)
         {
            _loc12_ = param1.o9009(param2 + "bossBudgetModifier");
            _loc17_ = param1.o9009(param2 + "bossBudgetModifier.modifier" + _loc23_);
            if(_loc12_ == null || _loc17_ == null)
            {
               break;
            }
            o11978.push(Number(_loc17_));
            _loc23_++;
         }
         if(_loc17_ == null)
         {
         }
      }
      
      public static function o14790() : void
      {
      }
   }
}
