package
{
   public class o6279
   {
       
      
      private var o6169:o3461;
      
      public var o5928:o3355;
      
      public var o1244:o3355;
      
      public var o20195:o3355;
      
      public var o14757:o3355;
      
      public var o16388:o3355;
      
      public var o8748:o3355;
      
      public var o20693:o3355;
      
      public var o8765:o3355;
      
      public var o9137:o3355;
      
      public var o13016:o3355;
      
      public var o13861:o3355;
      
      public var o1147:o3355;
      
      public var o13041:o3355;
      
      public var o1213:o3355;
      
      public var o13138:o3355;
      
      public var o5732:o3355;
      
      public var o8661:o3355;
      
      public var o16064:o3355;
      
      public var o13145:o3355;
      
      public var o13272:o3355;
      
      public var o12814:o3355;
      
      public var o13298:o3355;
      
      public var o10934:o3355;
      
      public var o9472:o3355;
      
      public var o17020:o3355;
      
      public var o1959:o3355;
      
      public var o9582:o3355;
      
      public var o13035:o3355;
      
      public var o10538:o3355;
      
      public var o10205:o3355;
      
      private var o4098:Array;
      
      private var o1382:Array;
      
      public function o6279(param1:o3461)
      {
         super();
         this.o6169 = param1;
      }
      
      public function get o16806() : o3355
      {
         return o4098[o20852.random(o4098.length - 1)];
      }
      
      public function get o5477() : o3355
      {
         return o1382[o20852.random(o1382.length - 1)];
      }
      
      public function preload() : o16124
      {
         var promise:o16124 = new o16124();
         var o19165:Array = [o6169.o16532("assets.sounds.mission.Vaccine"),o6169.o16532("assets.sounds.mission.VaccineAccess"),o6169.o16532("assets.sounds.mission.VaccineAccessDenied"),o6169.o16532("assets.sounds.mission.VaccineDestruction"),o6169.o16532("assets.sounds.mission.Timer"),o6169.o16532("assets.sounds.mission.EndRound"),o6169.o16532("assets.sounds.mission.NextRound"),o6169.o16532("assets.sounds.mission.PodsAttack"),o6169.o16532("assets.sounds.mission.PodsSpikes"),o6169.o16532("assets.sounds.mission.WinOnslaught"),o6169.o16532("assets.sounds.mission.LoseOnslaught"),o6169.o16532("assets.sounds.mission.DieCivilian1"),o6169.o16532("assets.sounds.mission.DieCivilian2"),o6169.o16532("assets.sounds.mission.DieCivilian3"),o6169.o16532("assets.sounds.mission.DieCivilian4"),o6169.o16532("assets.sounds.mission.DieCivilian5"),o6169.o16532("assets.sounds.mission.DiscoverCivilian1"),o6169.o16532("assets.sounds.mission.DiscoverCivilian2"),o6169.o16532("assets.sounds.mission.DiscoverCivilian3"),o6169.o16532("assets.sounds.mission.DiscoverCivilian4"),o6169.o16532("assets.sounds.mission.DiscoverCivilian5"),o6169.o16532("assets.sounds.mission.RescueCivilian"),o6169.o16532("assets.sounds.mission.RetreatHVM"),o6169.o16532("assets.sounds.mission.SurvivorsAPC"),o6169.o16532("assets.sounds.mission.PowerOn"),o6169.o16532("assets.sounds.mission.Breach25"),o6169.o16532("assets.sounds.mission.Breach50"),o6169.o16532("assets.sounds.mission.Breach75"),o6169.o16532("assets.sounds.mission.BreachFirst"),o6169.o16532("assets.sounds.mission.BreachLast"),o6169.o16532("assets.sounds.mission.Leak"),o6169.o16532("assets.sounds.mission.Computer"),o6169.o16532("assets.sounds.mission.Crate"),o6169.o16532("assets.sounds.mission.ShutDownReactor"),o6169.o16532("assets.sounds.mission.DoomRoom"),o6169.o16532("assets.sounds.mission.LoopExtract"),o6169.o16532("assets.sounds.mission.HackStart"),o6169.o16532("assets.sounds.mission.HackAbort"),o6169.o16532("assets.sounds.mission.HackComplete")];
         o15714.o18684(o19165,function(param1:o3355, param2:o3355, param3:o3355, param4:o3355, param5:o3355, param6:o3355, param7:o3355, param8:o3355, param9:o3355, param10:o3355, param11:o3355, param12:o3355, param13:o3355, param14:o3355, param15:o3355, param16:o3355, param17:o3355, param18:o3355, param19:o3355, param20:o3355, param21:o3355, param22:o3355, param23:o3355, param24:o3355, param25:o3355, param26:o3355, param27:o3355, param28:o3355, param29:o3355, param30:o3355, param31:o3355, param32:o3355, param33:o3355, param34:o3355, param35:o3355, param36:o3355, param37:o3355, param38:o3355, param39:o3355):void
         {
            o5928 = param1;
            o1244 = param2;
            o20195 = param3;
            o14757 = param4;
            o16388 = param5;
            o8748 = param6;
            o20693 = param7;
            o9137 = param8;
            o13016 = param9;
            o13861 = param10;
            o1147 = param11;
            o13041 = param22;
            o1213 = param23;
            o4098 = [param12,param13,param14,param15,param16];
            o1382 = [param17,param18,param19,param20,param21];
            o13138 = param24;
            o5732 = param25;
            o8661 = param26;
            o16064 = param27;
            o13145 = param28;
            o13272 = param29;
            o12814 = param30;
            o13298 = param31;
            o10934 = param32;
            o9472 = param33;
            o17020 = param34;
            o1959 = param35;
            o9582 = param36;
            o13035 = param37;
            o10538 = param38;
            o10205 = param39;
            promise.data = this;
         });
         return promise;
      }
   }
}
