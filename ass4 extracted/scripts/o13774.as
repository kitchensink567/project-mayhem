package
{
   import flash.utils.Dictionary;
   
   public class o13774
   {
       
      
      private var o6169:o3461;
      
      public var o10038:o3355;
      
      public var o13713:o3355;
      
      public var o9649:o3355;
      
      public var o8144:o3355;
      
      public var o1822:o3355;
      
      public var o16814:o3355;
      
      public var o149:o3355;
      
      public var o19879:o3355;
      
      public var o18034:o3355;
      
      public var o12811:o3355;
      
      public var o19527:o3355;
      
      public var o2047:o3355;
      
      public var o7913:o3355;
      
      public var o5993:o3355;
      
      public var o15380:o3355;
      
      public var o4083:o3355;
      
      public var o7707:o3355;
      
      public var o15327:o3355;
      
      public var o9832:o3355;
      
      public var o18767:o3355;
      
      public var o18781:o3355;
      
      public var o17696:o3355;
      
      public var o6397:o3355;
      
      public var o11505:o3355;
      
      public var o4815:o3355;
      
      public var o19518:o3355;
      
      public var o18310:o3355;
      
      public var o5890:o3355;
      
      public var o12799:o3355;
      
      public var o20893:o3355;
      
      public var o8555:o3355;
      
      public var o17969:o3355;
      
      public var o17167:o3355;
      
      public var o6729:o3355;
      
      public var o3070:o3355;
      
      public var o15185:o3355;
      
      public var o15643:o3355;
      
      public var o9312:o3355;
      
      public var o3768:o3355;
      
      public var o9897:o3355;
      
      public var o18966:o3355;
      
      public var o11862:o3355;
      
      public var o13040:o3355;
      
      public var o19779:o3355;
      
      public var o1246:o3355;
      
      public var o10661:o3355;
      
      public var o8233:o3355;
      
      public var o12645:o3355;
      
      public var o12819:o3355;
      
      public var o18882:o3355;
      
      public var o3960:o3355;
      
      public var o17456:o3355;
      
      public var o1172:o3355;
      
      public var o20008:o3355;
      
      public var o646:o3355;
      
      public var o13341:o3355;
      
      public var o7297:o3355;
      
      public var o19108:o3355;
      
      public var o3252:o3355;
      
      public var o3264:o3355;
      
      public var o19525:o3355;
      
      public var o15181:o3355;
      
      public var o7026:o3355;
      
      private var o18108:Dictionary;
      
      private var o4203:Dictionary;
      
      private var o1548:Array;
      
      public function o13774(param1:o3461)
      {
         super();
         this.o6169 = param1;
         o1548 = [];
      }
      
      public function preload() : o16124
      {
         var promise:o16124 = new o16124();
         o4203 = new Dictionary();
         var o19165:Array = [];
         o19165.push(o6169.o16532("assets.sounds.guns.FirePistol1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FirePistol2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FirePistol3"));
         o19165.push(o6169.o16532("assets.sounds.guns.FirePistol4"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireSMG1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireSMG2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireSMG3"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireSMG4"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireSMG5"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireSMG6"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireAssaultRifle1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireAssaultRifle2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireAssaultRifle3"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireAssaultRifle4"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireAssaultRifle5"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireAssaultRifle6"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireRifle1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireRifle2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireRifle3"));
         o19165.push(o6169.o16532("assets.sounds.guns.FirePumpShotgun1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FirePumpShotgun2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireSemiShotgun1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireSemiShotgun2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireSemiShotgun3"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireSemiShotgun4"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireMG1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireMG2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireMG3"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireMG4"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireMG5"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireMG6"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireLaserRifle1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireLaserRifle2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireLaserRifle3"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireLaserRifle4"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireLaserRifle5"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireLaserRifle6"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireLaserSMG1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireLaserSMG2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireLaserHeavy1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireLaserHeavy2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireLaserLoop1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireShockPistol1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireShockHeavy1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireGrenade"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireGrenadeLauncher1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireRocket1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireRocket2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireRocket3"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireRocket4"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireRocket5"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireTurret1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireTurret2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireTurret3"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireFlamer1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireFlamer2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireDisc1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FireMinigunLoop1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FirePrem1"));
         o19165.push(o6169.o16532("assets.sounds.guns.FirePrem2"));
         o19165.push(o6169.o16532("assets.sounds.guns.FirePrem3"));
         o19165.push(o6169.o16532("assets.sounds.guns.FirePrem4"));
         o19165.push(o6169.o16532("assets.sounds.guns.Default"));
         var o5830:o17849 = o4519.o8116.o5830;
         var _loc5_:int = 0;
         var _loc4_:* = o4519.o8116.o1184.o2876;
         for(key in o4519.o8116.o1184.o2876)
         {
            var o208:o9418 = o4519.o8116.o1184.o2876[key] as o9418;
            var _loc3_:int = 0;
            var _loc2_:* = o208.o19375;
            for each(o16350 in o208.o19375)
            {
               var o11448:String = o5830.o9009(o16350);
               o19165.push(o6169.o16532(o11448));
            }
         }
         o15714.o18684(o19165,function(... rest):void
         {
            var _loc4_:* = null;
            var _loc2_:* = null;
            var _loc3_:int = 0;
            _loc3_++;
            o7707 = rest[_loc3_];
            _loc3_++;
            o15327 = rest[_loc3_];
            _loc3_++;
            o9832 = rest[_loc3_];
            _loc3_++;
            o18767 = rest[_loc3_];
            _loc3_++;
            o19527 = rest[_loc3_];
            _loc3_++;
            o2047 = rest[_loc3_];
            _loc3_++;
            o7913 = rest[_loc3_];
            _loc3_++;
            o5993 = rest[_loc3_];
            _loc3_++;
            o15380 = rest[_loc3_];
            _loc3_++;
            o4083 = rest[_loc3_];
            _loc3_++;
            o6397 = rest[_loc3_];
            _loc3_++;
            o11505 = rest[_loc3_];
            _loc3_++;
            o4815 = rest[_loc3_];
            _loc3_++;
            o19518 = rest[_loc3_];
            _loc3_++;
            o18310 = rest[_loc3_];
            _loc3_++;
            o5890 = rest[_loc3_];
            _loc3_++;
            o9649 = rest[_loc3_];
            _loc3_++;
            o8144 = rest[_loc3_];
            _loc3_++;
            o1822 = rest[_loc3_];
            _loc3_++;
            o18781 = rest[_loc3_];
            _loc3_++;
            o17696 = rest[_loc3_];
            _loc3_++;
            o12799 = rest[_loc3_];
            _loc3_++;
            o20893 = rest[_loc3_];
            _loc3_++;
            o8555 = rest[_loc3_];
            _loc3_++;
            o17969 = rest[_loc3_];
            _loc3_++;
            o17167 = rest[_loc3_];
            _loc3_++;
            o6729 = rest[_loc3_];
            _loc3_++;
            o3070 = rest[_loc3_];
            _loc3_++;
            o15185 = rest[_loc3_];
            _loc3_++;
            o15643 = rest[_loc3_];
            _loc3_++;
            o9312 = rest[_loc3_];
            _loc3_++;
            o3768 = rest[_loc3_];
            _loc3_++;
            o9897 = rest[_loc3_];
            _loc3_++;
            o18966 = rest[_loc3_];
            _loc3_++;
            o11862 = rest[_loc3_];
            _loc3_++;
            o13040 = rest[_loc3_];
            _loc3_++;
            o19779 = rest[_loc3_];
            _loc3_++;
            o1246 = rest[_loc3_];
            _loc3_++;
            o10661 = rest[_loc3_];
            _loc3_++;
            o8233 = rest[_loc3_];
            _loc3_++;
            o12645 = rest[_loc3_];
            _loc3_++;
            o12819 = rest[_loc3_];
            _loc3_++;
            o18882 = rest[_loc3_];
            _loc3_++;
            o3960 = rest[_loc3_];
            _loc3_++;
            o13713 = rest[_loc3_];
            _loc3_++;
            o10038 = rest[_loc3_];
            _loc3_++;
            o16814 = rest[_loc3_];
            _loc3_++;
            o149 = rest[_loc3_];
            _loc3_++;
            o19879 = rest[_loc3_];
            _loc3_++;
            o18034 = rest[_loc3_];
            _loc3_++;
            o12811 = rest[_loc3_];
            _loc3_++;
            o17456 = rest[_loc3_];
            _loc3_++;
            o1172 = rest[_loc3_];
            _loc3_++;
            o20008 = rest[_loc3_];
            _loc3_++;
            o646 = rest[_loc3_];
            _loc3_++;
            o13341 = rest[_loc3_];
            _loc3_++;
            o7297 = rest[_loc3_];
            _loc3_++;
            o19108 = rest[_loc3_];
            _loc3_++;
            o3252 = rest[_loc3_];
            _loc3_++;
            o3264 = rest[_loc3_];
            _loc3_++;
            o19525 = rest[_loc3_];
            _loc3_++;
            o15181 = rest[_loc3_];
            _loc3_++;
            o7026 = rest[_loc3_];
            var _loc10_:int = 0;
            var _loc9_:* = o4519.o8116.o1184.o2876;
            for(var _loc5_ in o4519.o8116.o1184.o2876)
            {
               _loc4_ = o4519.o8116.o1184.o2876[_loc5_] as o9418;
               var _loc8_:int = 0;
               var _loc7_:* = _loc4_.o19375;
               for each(var _loc6_ in _loc4_.o19375)
               {
                  _loc3_++;
                  _loc2_ = rest[_loc3_];
                  o4203[_loc6_] = _loc2_;
               }
            }
            o18108 = new Dictionary();
            o20777("assets.sounds.guns.FirePistol1",o7707);
            o20777("assets.sounds.guns.FirePistol2",o15327);
            o20777("assets.sounds.guns.FirePistol3",o9832);
            o20777("assets.sounds.guns.FirePistol4",o18767);
            o20777("assets.sounds.guns.FireSMG1",o19527);
            o20777("assets.sounds.guns.FireSMG2",o2047);
            o20777("assets.sounds.guns.FireSMG3",o7913);
            o20777("assets.sounds.guns.FireSMG4",o5993);
            o20777("assets.sounds.guns.FireSMG5",o15380);
            o20777("assets.sounds.guns.FireSMG6",o4083);
            o20777("assets.sounds.guns.FireAssaultRifle1",o6397);
            o20777("assets.sounds.guns.FireAssaultRifle2",o11505);
            o20777("assets.sounds.guns.FireAssaultRifle3",o4815);
            o20777("assets.sounds.guns.FireAssaultRifle4",o19518);
            o20777("assets.sounds.guns.FireAssaultRifle5",o18310);
            o20777("assets.sounds.guns.FireAssaultRifle6",o5890);
            o20777("assets.sounds.guns.FireRifle1",o9649);
            o20777("assets.sounds.guns.FireRifle2",o8144);
            o20777("assets.sounds.guns.FireRifle3",o1822);
            o20777("assets.sounds.guns.FirePumpShotgun1",o18781);
            o20777("assets.sounds.guns.FirePumpShotgun2",o17696);
            o20777("assets.sounds.guns.FireSemiShotgun1",o12799);
            o20777("assets.sounds.guns.FireSemiShotgun2",o20893);
            o20777("assets.sounds.guns.FireSemiShotgun3",o8555);
            o20777("assets.sounds.guns.FireSemiShotgun4",o17969);
            o20777("assets.sounds.guns.FireMG1",o17167);
            o20777("assets.sounds.guns.FireMG2",o6729);
            o20777("assets.sounds.guns.FireMG3",o3070);
            o20777("assets.sounds.guns.FireMG4",o15185);
            o20777("assets.sounds.guns.FireMG5",o15643);
            o20777("assets.sounds.guns.FireMG6",o9312);
            o20777("assets.sounds.guns.FireLaserRifle1",o3768);
            o20777("assets.sounds.guns.FireLaserRifle2",o9897);
            o20777("assets.sounds.guns.FireLaserRifle3",o18966);
            o20777("assets.sounds.guns.FireLaserRifle4",o11862);
            o20777("assets.sounds.guns.FireLaserRifle5",o13040);
            o20777("assets.sounds.guns.FireLaserRifle6",o19779);
            o20777("assets.sounds.guns.FireLaserSMG1",o1246);
            o20777("assets.sounds.guns.FireLaserSMG2",o10661);
            o20777("assets.sounds.guns.FireLaserHeavy1",o8233);
            o20777("assets.sounds.guns.FireLaserHeavy2",o12645);
            o20777("assets.sounds.guns.FireLaserLoop1",o12819);
            o20777("assets.sounds.guns.FireShockPistol1",o18882);
            o20777("assets.sounds.guns.FireShockHeavy1",o3960);
            o20777("assets.sounds.guns.FireGrenade",o13713);
            o20777("assets.sounds.guns.FireGrenadeLauncher1",o10038);
            o20777("assets.sounds.guns.FireRocket1",o16814);
            o20777("assets.sounds.guns.FireRocket2",o149);
            o20777("assets.sounds.guns.FireRocket3",o19879);
            o20777("assets.sounds.guns.FireRocket4",o18034);
            o20777("assets.sounds.guns.FireRocket5",o12811);
            o20777("assets.sounds.guns.FireTurret1",o17456);
            o20777("assets.sounds.guns.FireTurret2",o1172);
            o20777("assets.sounds.guns.FireTurret3",o20008);
            o20777("assets.sounds.guns.FireFlamer1",o646);
            o20777("assets.sounds.guns.FireFlamer2",o13341);
            o20777("assets.sounds.guns.FireDisc1",o7297);
            o20777("assets.sounds.guns.FireMinigunLoop1",o19108);
            o20777("assets.sounds.guns.FirePrem1",o3252);
            o20777("assets.sounds.guns.FirePrem2",o3264);
            o20777("assets.sounds.guns.FirePrem3",o19525);
            o20777("assets.sounds.guns.FirePrem4",o15181);
            o20777("assets.sounds.guns.Default",o7026);
            promise.data = this;
         });
         return promise;
      }
      
      private function o20777(param1:String, param2:o3355) : void
      {
         var _loc3_:* = null;
         var _loc6_:int = 0;
         var _loc4_:o17849 = o4519.o8116.o5830;
         var _loc8_:int = 0;
         var _loc7_:* = _loc4_.o9620;
         for(var _loc5_ in _loc4_.o9620)
         {
            _loc3_ = _loc4_.o9620[_loc5_];
            if(_loc3_ == param1)
            {
               _loc6_ = parseInt(_loc5_);
               o18108[_loc6_] = param2;
            }
         }
      }
      
      public function o4544(param1:int) : o3355
      {
         var _loc2_:o3355 = o18108[param1] as o3355;
         if(_loc2_ == null)
         {
            _loc2_ = o7026;
         }
         return _loc2_;
      }
      
      public function o10258() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < o1548.length)
         {
            _loc1_ = o1548[_loc2_];
            o1051.o19115(_loc1_);
            _loc2_++;
         }
         o1548 = [];
      }
      
      public function o11173(param1:o8023, param2:o7848, param3:int, param4:Number = 0) : void
      {
         o5589 = param1;
         o14024 = param2;
         o14929 = param3;
         o16832 = param4;
         o6013 = function(param1:o3355):Function
         {
            o17400 = param1;
            return function():void
            {
               o17400.play(0.4,0,0,false,o12034.o10088());
            };
         };
         o10258();
         var o19375:Vector.<int> = (o4519.o8116.o1184.o2876[o14929] as o9418).o19375;
         var o12034:o257 = new o257(o14024.o6691.position.x,o14024.o6691.position.y);
         var o16730:Array = [];
         var _loc7_:int = 0;
         var _loc6_:* = o19375;
         for each(o16350 in o19375)
         {
            var o14981:o3355 = o4203[o16350];
            o16730.push(o14981);
         }
         var o18168:Number = o6068(o16730,o16832);
         var o7861:Number = 0;
         var o17576:int = 0;
         var o1903:int = 0;
         while(o1903 < o16730.length)
         {
            var o10647:o3355 = o16730[o1903];
            if(o1903 == 0)
            {
               var delay:Number = 0;
            }
            else
            {
               delay = o16730[o1903 - 1].o8793 / 1000 + o18168;
            }
            o7861 = o7861 + delay;
            if(o7861 < 0)
            {
               o7861 = 0;
            }
            if(o14024 == o4519.o32)
            {
               o17576 = o1051.o9310(o5589,o7861,o10647.play);
               o1548.push(o17576);
            }
            else
            {
               o1051.o9310(o5589,o7861,o6013(o10647));
            }
            o1903 = Number(o1903) + 1;
         }
      }
      
      private function o6068(param1:Array, param2:Number) : Number
      {
         var _loc6_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = 0;
         _loc5_ = 0;
         while(_loc5_ < param1.length)
         {
            _loc6_ = param1[_loc5_];
            _loc4_ = Number(_loc4_ + _loc6_.o8793 / 1000);
            _loc5_++;
         }
         var _loc3_:Number = param2 - _loc4_;
         _loc3_ = _loc3_ / (param1.length - 1);
         return _loc3_;
      }
   }
}
