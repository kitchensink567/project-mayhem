package
{
   public class o7304
   {
       
      
      public var o6169:o3461;
      
      private var o11153:Boolean;
      
      private var o5089:o3355;
      
      private var o3983:Number = 0;
      
      public var o16433:o3355;
      
      public var o11421:o3355;
      
      public var o2506:o3355;
      
      public var o11940:o3355;
      
      public var o14438:o3355;
      
      public var o10145:o3355;
      
      public var o15832:o3355;
      
      public var o10655:o3355;
      
      public var o16639:o3355;
      
      public var o14059:o3355;
      
      public var o13179:o3355;
      
      public var o20219:o3355;
      
      public var o2009:o3355;
      
      public var o8937:o3355;
      
      public var o18902:o3355;
      
      public var o11091:o3355;
      
      public var o2745:o3355;
      
      public var o15725:o3355;
      
      public var o20471:o3355;
      
      public var o2770:o3355;
      
      public var o523:o3355;
      
      public var o10531:o3355;
      
      public var o18953:o3355;
      
      public var o20541:o3355;
      
      public var o456:o3355;
      
      public var o2783:o3355;
      
      public var o5186:o4821;
      
      public var o2282:o7430;
      
      public var o3663:o8023;
      
      public var o16269:Boolean = false;
      
      public var o3594:Boolean = false;
      
      public var o12040:Number = 0.65;
      
      private var o6413:Boolean = false;
      
      public function o7304(param1:o3461)
      {
         super();
         this.o6169 = param1;
      }
      
      public function get enabled() : Boolean
      {
         return o11153;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         o11153 = param1;
      }
      
      public function o18374(param1:int) : o3355
      {
         var _loc2_:* = null;
         var _loc3_:* = param1;
         switch(_loc3_)
         {
            case 1008:
               _loc2_ = o16639;
               break;
            case 1009:
               _loc2_ = o15832;
               break;
            case 1016:
               _loc2_ = o16433;
               break;
            case 1018:
               _loc2_ = o2506;
               break;
            case 1043:
               _loc2_ = o2745;
               break;
            case 1054:
               _loc2_ = o14059;
               break;
            case 1067:
               _loc2_ = o13179;
               break;
            case 1092:
               _loc2_ = o16639;
               break;
            case 1093:
               _loc2_ = o2506;
               break;
            case 1094:
               _loc2_ = o13179;
               break;
            case 1095:
               _loc2_ = o15832;
               break;
            case 1096:
               _loc2_ = o14059;
               break;
            case 1099:
               _loc2_ = o2745;
               break;
            case 1100:
               _loc2_ = o16433;
               break;
            case 1101:
               _loc2_ = o13179;
               break;
            case 1102:
               _loc2_ = o16639;
               break;
            case 1103:
               _loc2_ = o2506;
               break;
            case 1104:
               _loc2_ = o13179;
               break;
            case 1105:
               _loc2_ = o15832;
               break;
            case 1106:
               _loc2_ = o14059;
               break;
            case 1107:
               _loc2_ = o2745;
               break;
            case 1108:
               _loc2_ = o16433;
               break;
            case 1109:
               _loc2_ = o13179;
               break;
            case 1110:
               _loc2_ = o20219;
               break;
            case 1111:
               _loc2_ = o16433;
               break;
            case 1112:
               _loc2_ = o20219;
               break;
            case 1113:
               _loc2_ = o20219;
               break;
            case 1114:
               _loc2_ = o2506;
               break;
            case 1115:
               _loc2_ = o13179;
               break;
            case 1116:
               _loc2_ = o13179;
               break;
            case 1117:
               _loc2_ = o16639;
               break;
            case 1118:
               _loc2_ = o2745;
               break;
            case 1119:
               _loc2_ = o15725;
               break;
            default:
               _loc2_ = o8937;
         }
         return _loc2_;
      }
      
      public function o6339() : o3355
      {
         var _loc1_:o3355 = o2745;
         return _loc1_;
      }
      
      public function o15176() : void
      {
      }
      
      public function o13458() : void
      {
      }
      
      public function o17836() : void
      {
         if(!o16269)
         {
            o16269 = true;
            o5186 = new o4821(this);
         }
      }
      
      public function o13375(param1:int) : void
      {
         if(!o3594)
         {
            o3594 = true;
            o2282 = new o7430(this,param1);
         }
      }
      
      public function o733() : void
      {
         o16269 = false;
         if(o5186 != null)
         {
            o5186.o19115();
         }
      }
      
      public function o9641() : void
      {
         o3594 = false;
         if(o2282 != null)
         {
            o2282.o19115();
         }
      }
      
      public function o16404() : void
      {
         o6169.o16404();
      }
      
      public function o2564() : void
      {
         o6169.o18040();
      }
      
      public function o4184() : o16124
      {
         var promise:o16124 = new o16124();
         if(o6413)
         {
            promise.data = this;
            return promise;
         }
         o6413 = true;
         var o19165:Array = [o6169.o16532("assets.sounds.music.LoopBasement"),o6169.o16532("assets.sounds.music.LoopBossFight"),o6169.o16532("assets.sounds.music.LoopCargoBay"),o6169.o16532("assets.sounds.music.LoopCrowd"),o6169.o16532("assets.sounds.music.LoopFullPanic"),o6169.o16532("assets.sounds.music.LoopGenerator"),o6169.o16532("assets.sounds.music.LoopHeartBeat"),o6169.o16532("assets.sounds.music.LoopIndoor"),o6169.o16532("assets.sounds.music.LoopOnslaught"),o6169.o16532("assets.sounds.music.LoopVIP"),o6169.o16532("assets.sounds.music.LoopOutdoor"),o6169.o16532("assets.sounds.music.LoopReactor"),o6169.o16532("assets.sounds.music.LoopRisingPanic"),o6169.o16532("assets.sounds.music.LoopSmallRoom"),o6169.o16532("assets.sounds.music.LoopSpaceDrone"),o6169.o16532("assets.sounds.music.LoopUndersea"),o6169.o16532("assets.sounds.music.LoopShipRumble"),o6169.o16532("assets.sounds.music.LoopShipTurbulence"),o6169.o16532("assets.sounds.music.LoopBridge"),o6169.o16532("assets.sounds.music.LoopDebrief"),o6169.o16532("assets.sounds.music.LoopStatic"),o6169.o16532("assets.sounds.music.LoopPressConference"),o6169.o16532("assets.sounds.music.LoopSpeech"),o6169.o16532("assets.sounds.music.LoopTrain"),o6169.o16532("assets.sounds.music.TrackLose"),o6169.o16532("assets.sounds.music.TrackVictory")];
         o15714.o18684(o19165,function(param1:o3355, param2:o3355, param3:o3355, param4:o3355, param5:o3355, param6:o3355, param7:o3355, param8:o3355, param9:o3355, param10:o3355, param11:o3355, param12:o3355, param13:o3355, param14:o3355, param15:o3355, param16:o3355, param17:o3355, param18:o3355, param19:o3355, param20:o3355, param21:o3355, param22:o3355, param23:o3355, param24:o3355, param25:o3355, param26:o3355):void
         {
            o16433 = param1;
            o11421 = param2;
            o2506 = param3;
            o11940 = param4;
            o14438 = param5;
            o10145 = param6;
            o15832 = param7;
            o10655 = param8;
            o16639 = param9;
            o14059 = param10;
            o13179 = param11;
            o20219 = param12;
            o2009 = param13;
            o8937 = param14;
            o2745 = param15;
            o15725 = param16;
            o18902 = param17;
            o11091 = param18;
            o20471 = param19;
            o2770 = param20;
            o523 = param21;
            o10531 = param22;
            o18953 = param23;
            o20541 = param24;
            o456 = param25;
            o2783 = param26;
            promise.data = this;
         });
         return promise;
      }
   }
}
