package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o2445 extends o16681
   {
      
      private static var o2793:Boolean = false;
      
      private static var o19320:int = 2;
       
      
      private var o7750:o20565;
      
      public var o19419:o14200;
      
      public var o634:Vector.<o1412>;
      
      public var o16989:o13064;
      
      public var o13639:Function;
      
      public var o9089:Vector.<int>;
      
      private var o7678:Boolean = false;
      
      private var o19728:Boolean = false;
      
      public function o2445()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:MovieClip, param3:o14200, param4:o13064, param5:int, param6:Function, param7:Vector.<int>) : void
      {
         var _loc8_:int = 0;
         super.init(param1);
         this.o9089 = param7;
         this.o13639 = param6;
         o7750 = new o20565(this);
         this.o19419 = param3;
         this.o16989 = param4;
         if(param1 == null)
         {
            param1 = param1;
         }
         o634 = new Vector.<o1412>();
         _loc8_ = 0;
         while(_loc8_ < param5)
         {
            o683(param2,"challengeContainer" + _loc8_,_loc8_);
            _loc8_++;
         }
         this.o13495();
         this.asset.addEventListener("enterFrame",o6662,false,0,true);
         this.o16927();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         .super.visible = param1;
      }
      
      private function o18814() : void
      {
         var _loc3_:* = null;
         if(this.o19419 == null)
         {
            return;
         }
         var _loc4_:int = 0;
         o13495();
         var _loc1_:int = o19419.o5292.o16679.o12738.length;
         var _loc6_:int = 0;
         var _loc5_:* = o19419.o5292.o16679.o12738;
         for each(var _loc2_ in o19419.o5292.o16679.o12738)
         {
            if(o9089.indexOf(_loc2_.o11392.type) >= 0)
            {
               if(_loc2_.o3514())
               {
                  _loc3_ = _loc2_.o11392 as o14128;
                  if(_loc3_)
                  {
                     _loc2_ = _loc2_;
                     switch(int(_loc3_.o9854) - 1)
                     {
                        case 0:
                           o17363(_loc4_,_loc2_);
                           break;
                        case 1:
                           o12530(_loc4_,_loc2_);
                        default:
                           o12530(_loc4_,_loc2_);
                        default:
                        case 4:
                           o12530(_loc4_,_loc2_);
                        default:
                           o12530(_loc4_,_loc2_);
                        default:
                           o12530(_loc4_,_loc2_);
                        default:
                           o12530(_loc4_,_loc2_);
                        default:
                           o12530(_loc4_,_loc2_);
                        default:
                           o12530(_loc4_,_loc2_);
                        default:
                           o12530(_loc4_,_loc2_);
                        default:
                           o12530(_loc4_,_loc2_);
                        default:
                           o12530(_loc4_,_loc2_);
                        default:
                        case 14:
                           o12530(_loc4_,_loc2_);
                     }
                  }
                  else
                  {
                     o17363(_loc4_,_loc2_);
                  }
               }
               _loc4_++;
            }
         }
      }
      
      public function o13495() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o634;
         for each(var _loc1_ in o634)
         {
            _loc1_.o118.stop();
            _loc1_.visible = false;
            _loc1_.o2285.visible = false;
         }
      }
      
      private function o16106(param1:int) : void
      {
         var _loc2_:o1412 = o634[param1];
         _loc2_.o118.stop();
         _loc2_.visible = false;
      }
      
      private function o12267(param1:Number) : String
      {
         return Math.round(param1 * 100).toString() + "%";
      }
      
      public function o16927() : void
      {
         var o20416:o2445 = this;
         o19419.o5292.o16679.o840().defer(function():*
         {
            var /*UnknownSlot*/:* = function(param1:Boolean):void
            {
               if(o8289())
               {
                  return;
               }
               if(o20416.o19419 == null)
               {
                  return;
               }
               o18814();
               o18859();
            };
            return function(param1:Boolean):void
            {
               if(o8289())
               {
                  return;
               }
               if(o20416.o19419 == null)
               {
                  return;
               }
               o18814();
               o18859();
            };
         }());
      }
      
      private function o4174(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         if(param2 <= 0)
         {
            return;
         }
         o19419.o202.o11362();
         _loc3_ = 0;
         while(_loc3_ < param2)
         {
            o19419.o202.o11612(o4189.o4718(param1));
            _loc3_++;
         }
         o19419.o202.o19266(o19419.o7923);
      }
      
      private function o10752(param1:o14801, param2:o11614) : void
      {
         var _loc8_:int = 0;
         var _loc10_:int = 0;
         var _loc4_:int = 0;
         var _loc11_:* = null;
         var _loc3_:* = null;
         var _loc6_:* = null;
         var _loc7_:o9145 = o19419.o7923;
         if(_loc7_ != null && param2 != null && param1 != null)
         {
            _loc8_ = 0;
            while(_loc8_ < param2.o6287)
            {
               _loc7_.o20170 = _loc7_.o20170 + o19419.o5292.o11857();
               _loc8_++;
            }
            var _loc13_:int = 0;
            var _loc12_:* = param2.o16978;
            for(var _loc5_ in param2.o16978)
            {
               _loc10_ = param2.o16978[_loc5_];
               _loc7_.o3525.o780(_loc5_,_loc10_);
            }
            var _loc15_:int = 0;
            var _loc14_:* = param2.o642;
            for(var _loc9_ in param2.o642)
            {
               _loc10_ = param2.o642[_loc9_];
               o4174(_loc9_,_loc10_);
            }
            if(param1.o2877)
            {
               o19419.o7923.o5532++;
            }
            if(param2.o5532 > 0)
            {
               o19419.o7923.o5532 = o19419.o7923.o5532 + param2.o5532;
            }
            if(param2.o7634 > 0)
            {
               o19419.o7923.o7768 = o19419.o7923.o7768 + param2.o7634;
            }
            if(param2.o7136 > 0)
            {
               o19419.o7923.o201(param2.o7136);
            }
            if(param2.o2754 > 0)
            {
               o19419.o7923.o18104 = o19419.o7923.o18104 + param2.o2754;
            }
            if(o19419.data && param2.o10252 > 0)
            {
               o19419.o7923.o10252 = o19419.o7923.o10252 + param2.o10252;
               o19419.data.o1553 = o19419.data.o1553 + param2.o10252;
            }
            if(param1.o15084())
            {
               _loc4_ = param2.o15076;
               _loc11_ = o19419.o5292.o16679.o9622();
               if(_loc11_ != null)
               {
                  _loc11_.o1760();
                  if(o19419.data.o433)
                  {
                     o19419.data.o433.o14461 = o19419.data.o433.o14461 + _loc4_;
                  }
                  if(o19419.o5292.o16679)
                  {
                     o19419.o5292.o16679.o7489();
                  }
               }
            }
            if(param1 && param1.o17593 == 3 && param2.o10936 >= 0)
            {
               if(param1.o11392 is o14128)
               {
                  _loc3_ = param1.o11392 as o14128;
                  if(_loc3_)
                  {
                     o19419.data.o433.o3053(_loc3_.o20963,param2.o10936);
                  }
               }
            }
            if(param2.o15217 != null)
            {
               o19419.o7923.o20444(param2.o15217.o229());
               _loc6_ = new o19508();
               _loc6_.o14906(param2.o15217.o10748);
            }
            o19419.data.o911 = o19419.data.o911 + param2.o3998;
            o19419.data.o15459 = o19419.data.o15459 + param2.o3223;
            if(param2.o12753 > 0)
            {
               o14200.o19505.data.o19738(param2.o12753);
            }
            param1.o17811 = true;
            if(o19419 && o19419.o11453 && param1.o14283)
            {
               if(param1.o2889 <= 0.01)
               {
                  o19419.o11453.o3724++;
                  if(o19419.o11453.o3724 >= 2)
                  {
                     this.setAchievement(486,1);
                  }
                  else
                  {
                     o19419.o11453.o3724 = 0;
                  }
               }
               if(param1.o2889 <= 0.01)
               {
                  o19419.o11453.o20850++;
                  this.setAchievement(487,o15053(o19419.o11453.o20850,5));
               }
            }
            else if(param1.o6228)
            {
               if(param1.o2889 <= 0.25)
               {
                  o19419.o11453.o10487++;
                  this.setAchievement(489,o15053(o19419.o11453.o10487,25));
               }
               if(param1.o2889 <= 0.5)
               {
                  o19419.o11453.o4596++;
                  this.setAchievement(490,o15053(o19419.o11453.o4596,50));
               }
            }
         }
         o2793 = false;
         if(o19419 && o18859() == false)
         {
            if(o19419.o12094)
            {
               o19419.o12094.o15666(o19419);
            }
            o19419.saveData();
            if(o19419.o202 && o19419.o7923.o11248 && o19419.o7923.o11248.length > 0)
            {
               o19419.o202.o11362();
               o19419.o202.o19424(o19419.o7923);
               o4519.o10093.o16989.o13000();
            }
            if(o19419.o5292.o16679)
            {
               o19419.o5292.o16679.o7489();
            }
         }
         o19419.saveData();
      }
      
      public function setAchievement(param1:int, param2:Number) : void
      {
         if(o19419.o15894.o4539 == null)
         {
            return;
         }
         var _loc3_:int = param2 * 100;
         if(_loc3_ == 0)
         {
            return;
         }
         if(o4519.o17061 == false)
         {
            o19419.o15894.o4539.setAchievement(param1,_loc3_);
         }
      }
      
      private function o15053(param1:int, param2:int) : Number
      {
         if(param1 >= param2)
         {
            return 1;
         }
         return param1 / param2;
      }
      
      private function o11426(param1:o1770) : void
      {
         o10752(param1.o10486,param1.o5546);
      }
      
      private function o17851() : void
      {
         o18859();
      }
      
      private function o19824(param1:o14801) : void
      {
         o16989.o6233(o17851,param1);
      }
      
      public function o18859() : Boolean
      {
         if(o19419 == null)
         {
            return false;
         }
         if(o2793)
         {
            return false;
         }
         o2793 = true;
         var o7923:o9145 = o19419.o7923;
         var o6760:int = 0;
         var o3134:int = 0;
         var _loc3_:int = 0;
         var _loc2_:* = o19419.data.o13955;
         for each(o10486 in o19419.data.o13955)
         {
            if(o10486.o4210 && o10486.o17811 == false && o10486.o14423 && o10486.o11392 != null)
            {
               if(o10486.o11392.type == 3)
               {
                  o3134 = Number(o3134) + 1;
               }
               else
               {
                  o6760 = Number(o6760) + 1;
               }
            }
         }
         var _loc5_:int = 0;
         var _loc4_:* = o19419.data.o13955;
         for each(o10486 in o19419.data.o13955)
         {
            if(o10486.o4210 && o10486.o17811 == false && o10486.o14423 && o10486.o11392 != null)
            {
               if(o10486.o11392.type == 3)
               {
                  if(o6760 <= 0)
                  {
                     if(o10486.o13174 == false && o10486.o20093())
                     {
                        var o9066:o14801 = o10486;
                        o10486.o1760().defer(function(param1:String):void
                        {
                           if(o8289())
                           {
                              return;
                           }
                           if(param1 == "STATUS_COMPILED")
                           {
                              o19824(o9066);
                           }
                           else if(param1 == "STATUS_COMPILING")
                           {
                              o16989.o12407("Competition compiling","Try returning to this screen in a few minutes");
                           }
                           else
                           {
                              o16989.o12407("Competition error",param1);
                           }
                        });
                        continue;
                     }
                  }
                  else
                  {
                     continue;
                  }
               }
               var o7237:Boolean = o10486.o20093();
               var o4627:o15645 = o10486.o2395();
               var o5384:int = o10486.o14373();
               var o1491:String = o19419.o5292.o923.o5711(o7923.o2274,o7923.level);
               var o15820:String = o11282.o5217(o19419.o115());
               var o5546:o11614 = o10486.o9694();
               if(o5546 != null)
               {
                  if(o10486.o11392.type == 3)
                  {
                     var o11390:o1770 = o16989.o14258("Championship complete: " + o10486.o16776(),o10486.o16070(),o7923.o12110,o1491,o15820,o7923.o2274,o7923.level,o10486.o19189,o11426);
                     var o16964:String = o5546.o18656(false,true,true,true,true,true,false);
                  }
                  else
                  {
                     o11390 = o16989.o16412("Event complete: " + o10486.o16776(),o10486.o16070(),o7923.o12110,o1491,o15820,o7923.o2274,o7923.level,o10486.o19189,o11426);
                     o16964 = o5546.o18656(false);
                  }
                  o11390.o10486 = o10486;
                  o11390.o5546 = o5546;
                  var o17977:String = o2038.o3159(o10486.o10340()) + " Rewards: ";
                  var o20398:int = 0;
                  if(o10486.o15084())
                  {
                     o20398 = o5546.o15076;
                  }
                  if(o10486.o11392.type == 3)
                  {
                     (o11390 as o3715).o16577(o5384,o17977,o16964,o10486.o15427,o10486.o640,o10486.o2889,o5546.o12753,o5546.o10936,o10486.o19189,o5546.o15217 == null?null:o5546.o15217.o229());
                  }
                  else
                  {
                     o11390.o12066(o5384,o17977,o16964,o10486.o15427,o10486.o640,o10486.o2889,o10486.o2877,o20398);
                  }
                  return true;
               }
            }
         }
         if(o19728)
         {
            o19728 = false;
         }
         o2793 = false;
         return false;
      }
      
      private function o8289() : Boolean
      {
         return asset == null;
      }
      
      private function o17363(param1:int, param2:o14801) : void
      {
         o7023 = param1;
         o10486 = param2;
         if(o4519.o8116.o15020 == null)
         {
            return;
         }
         var o5858:o15645 = o10486.o2395();
         var o539:Date = o10486.o11392.o5897.end;
         var o4498:int = o10486.o19189;
         var o2889:String = "Top: " + "Loading";
         var o16964:String = "";
         var o19189:String = "Score: " + o4498.toString();
         var o5384:int = o10486.o14373();
         var o3686:int = o19419.o7923.level;
         if(o10486.o11392.type == 3)
         {
            var o10486:o14801 = o10486;
         }
         this.o2759(o7023,o10486);
         o10486.o15785().defer(function(param1:o14801):void
         {
            if(o8289())
            {
               return;
            }
            o2759(o7023,o10486);
            var _loc3_:String = o12685(param1.o2889);
            var _loc4_:String = param1.o7713();
            var _loc2_:int = param1.o14373();
            o19007(o7023,_loc3_,_loc4_,_loc2_,param1.o10664(),param1.o15427,param1.o640);
         });
      }
      
      private function o12530(param1:int, param2:o14801) : void
      {
         o7023 = param1;
         o10486 = param2;
         if(o4519.o8116.o15020 == null)
         {
            return;
         }
         var o5858:o15645 = o10486.o2395();
         var o539:Date = o10486.o11392.o5897.end;
         var o4498:int = o10486.o19189;
         var o2889:String = "Top: " + "Loading";
         var o16964:String = "";
         var o19189:String = "Score: " + o4498.toString();
         var o5384:int = o10486.o14373();
         var o3686:int = o19419.o7923.level;
         if(o10486.o11392.type == 3)
         {
            var o10486:o14801 = o10486;
         }
         this.o2759(o7023,o10486);
         o10486.o720().defer(function(param1:o14801):void
         {
            var _loc8_:* = null;
            var _loc5_:* = null;
            var _loc3_:* = NaN;
            if(o8289())
            {
               return;
            }
            o2759(o7023,o10486);
            var _loc4_:o14128 = o10486.o11392 as o14128;
            if(_loc4_)
            {
               _loc8_ = "Infinity";
               _loc5_ = "";
               _loc3_ = 0;
               if(_loc4_.o6680)
               {
                  _loc8_ = o16724.o10417(_loc4_.o6680.o20022);
                  _loc3_ = Number(Math.ceil(o10486.o14209 / _loc4_.o6680.o20022 * 100));
               }
            }
            var _loc6_:String = "";
            var _loc7_:String = param1.o7713(1 - _loc3_ / 100);
            var _loc2_:int = param1.o14373(1 - _loc3_ / 100);
            o19007(o7023,_loc6_,_loc7_,_loc2_,param1.o10664(1 - _loc3_ / 100),param1.o15427,param1.o640,1 - _loc3_ / 100);
         });
      }
      
      private function o2804(param1:int, param2:o14801) : void
      {
         o7023 = param1;
         o10486 = param2;
         if(o4519.o8116.o15020 == null)
         {
            return;
         }
         o14598(o7023,o10486);
         o10486.o15785().defer(function(param1:o14801):void
         {
            if(o8289())
            {
               return;
            }
            var _loc3_:String = o12685(param1.o2889);
            var _loc4_:String = param1.o7713();
            var _loc2_:int = param1.o14373();
            o19007(o7023,_loc3_,_loc4_,_loc2_,param1.o10664(),param1.o15427,param1.o640);
         });
      }
      
      private function o12685(param1:Number) : String
      {
         return "Top: " + o16724.o20031(param1 * 100) + "%";
      }
      
      public function o8117() : void
      {
         var _loc2_:Boolean = false;
         var _loc4_:int = 0;
         var _loc3_:* = o634;
         for each(var _loc1_ in o634)
         {
            if(_loc1_.o3123)
            {
               _loc2_ = true;
               _loc1_.o3123 = false;
            }
         }
         if(_loc2_)
         {
            o16927();
         }
      }
      
      public function o19007(param1:int, param2:String, param3:String, param4:int, param5:int, param6:int, param7:int, param8:Number = -1) : void
      {
         var _loc9_:* = null;
         if(o634 == null)
         {
            return;
         }
         if(param1 < o634.length)
         {
            _loc9_ = o634[param1];
            _loc9_.o19007(param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public function o2759(param1:int, param2:o14801) : void
      {
         if(param1 >= o634.length)
         {
            return;
         }
         var _loc3_:o1412 = o634[param1];
         _loc3_.visible = true;
         _loc3_.o2285.visible = false;
         switch(int((param2.o11392 as o14128).o9854) - 2)
         {
            case 0:
               _loc3_.o19123(param2);
               break;
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
            default:
               _loc3_.o11015(param2);
               break;
            case 13:
               _loc3_.o445(param2);
         }
      }
      
      public function o14598(param1:int, param2:o14801) : void
      {
         if(param1 >= o634.length)
         {
            return;
         }
         var _loc3_:o1412 = o634[param1];
         _loc3_.visible = true;
         _loc3_.o2285.visible = true;
         _loc3_.o11015(param2);
      }
      
      public function o683(param1:MovieClip, param2:String, param3:int) : o1412
      {
         var _loc13_:MovieClip = asset.getChildByName(param2) as MovieClip;
         var _loc4_:o15625 = o7750.o17578("btnLeaderboard",_loc13_);
         var _loc15_:o15625 = o7750.o17578("btnJoinChallenge",_loc13_);
         var _loc16_:o15625 = o7750.o15961("btnBossKillsLeaderboard","Boss Kills Leaderboard",_loc13_,true);
         if(_loc16_ != null)
         {
            _loc16_.visible = false;
         }
         var _loc11_:o15625 = o7750.o15961("btnCompile","Compile",_loc13_,true);
         if(_loc11_ != null)
         {
            _loc11_.visible = false;
         }
         var _loc6_:MovieClip = _loc13_.getChildByName("progessBar") as MovieClip;
         _loc6_.visible = false;
         var _loc7_:MovieClip = _loc13_.getChildByName("btnChallenge") as MovieClip;
         var _loc10_:MovieClip = _loc13_.getChildByName("challengeLocked") as MovieClip;
         var _loc8_:TextField = _loc10_.getChildByName("txt") as TextField;
         var _loc9_:o15625 = o7750.o17578("btnRewards",_loc13_);
         var _loc14_:o12290 = o7750.o15961("btnAddHighScore","+1 HighScore",_loc13_,true);
         if(_loc14_)
         {
            _loc14_.visible = false;
         }
         var _loc12_:MovieClip = _loc13_.getChildByName("earnSuperEventMedals") as MovieClip;
         if(_loc12_ != null)
         {
            _loc12_.mouseEnabled = false;
            _loc12_.mouseChildren = false;
         }
         var _loc5_:o1412 = new o1412();
         _loc5_.o10913(_loc7_,_loc15_,_loc4_,_loc9_,param1,_loc10_,_loc8_,o13639,_loc12_,_loc16_,_loc11_,_loc6_,_loc14_);
         _loc5_.o7023 = param3;
         this.o5452(_loc5_);
         o634.push(_loc5_);
         return _loc5_;
      }
      
      protected function o6662(param1:Event) : void
      {
         if(asset == null)
         {
            return;
         }
         o8117();
      }
      
      override public function o13640() : void
      {
         this.asset.removeEventListener("enterFrame",o6662);
         o7750.o13640();
         var _loc3_:int = 0;
         var _loc2_:* = o634;
         for each(var _loc1_ in o634)
         {
            _loc1_.o11691();
         }
         o19419 = null;
         o634 = null;
         o16989 = null;
         o7750 = null;
         super.o13640();
      }
   }
}
