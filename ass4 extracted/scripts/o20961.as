package
{
   public class o20961
   {
       
      
      private var o6169:o3461;
      
      private var o18160:Array;
      
      private var o215:Array;
      
      private var o9355:Array;
      
      private var o3377:Array;
      
      private var o19713:Array;
      
      private var o860:Array;
      
      private var o4041:Array;
      
      private var o13320:Array;
      
      private var o17584:Array;
      
      private var o5255:Array;
      
      private var o11817:Array;
      
      private var o18121:Array;
      
      private var o20237:Array;
      
      private var o16888:Array;
      
      private var o13402:Array;
      
      private var o13062:Array;
      
      private var o18558:Array;
      
      private var o20189:Array;
      
      public var o18047:o3355;
      
      public var o5985:o3355;
      
      public var o4333:o3355;
      
      public var o1795:o3355;
      
      public var o6244:o3355;
      
      public var o10055:o3355;
      
      public var o8458:o3355;
      
      public var o14791:o3355;
      
      public var o16977:o3355;
      
      public var o8750:o3355;
      
      public var o14277:o3355;
      
      public var o16364:o3355;
      
      public var o219:o3355;
      
      public var o11811:o3355;
      
      public var o13024:o3355;
      
      public var o13059:o3355;
      
      public var o17980:o3355;
      
      public var o5612:o3355;
      
      public var o2374:o3355;
      
      public var o14151:o3355;
      
      public var o14686:o3355;
      
      public var o15171:o3355;
      
      public var o11681:o3355;
      
      public var o7092:o3355;
      
      public var o7343:o3355;
      
      public var o3530:o3355;
      
      public var o10736:o3355;
      
      public var o6716:o3355;
      
      public var o10426:o3355;
      
      public function o20961(param1:o3461)
      {
         super();
         this.o6169 = param1;
      }
      
      public function get o11253() : o3355
      {
         return o18160[o20852.random(o18160.length - 1)];
      }
      
      public function get o14442() : o3355
      {
         return o215[o20852.random(o215.length - 1)];
      }
      
      public function get o3018() : o3355
      {
         return o9355[o20852.random(o9355.length - 1)];
      }
      
      public function get o17009() : o3355
      {
         return o3377[o20852.random(o3377.length - 1)];
      }
      
      public function get o19817() : o3355
      {
         return o19713[o20852.random(o19713.length - 1)];
      }
      
      public function get o7259() : o3355
      {
         return o860[o20852.random(o860.length - 1)];
      }
      
      public function get o492() : o3355
      {
         return o4041[o20852.random(o4041.length - 1)];
      }
      
      public function get o11205() : o3355
      {
         return o13320[o20852.random(o13320.length - 1)];
      }
      
      public function get o11677() : o3355
      {
         return o17584[o20852.random(o17584.length - 1)];
      }
      
      public function get o15083() : o3355
      {
         return o5255[o20852.random(o5255.length - 1)];
      }
      
      public function get o15709() : o3355
      {
         return o11817[o20852.random(o11817.length - 1)];
      }
      
      public function get o6485() : o3355
      {
         return o18121[o20852.random(o18121.length - 1)];
      }
      
      public function get o18609() : o3355
      {
         return o20237[o20852.random(o20237.length - 1)];
      }
      
      public function get o17023() : o3355
      {
         return o16888[o20852.random(o16888.length - 1)];
      }
      
      public function get o8918() : o3355
      {
         return o13402[o20852.random(o13402.length - 1)];
      }
      
      public function get o11304() : o3355
      {
         return o13062[o20852.random(o13062.length - 1)];
      }
      
      public function get o16453() : o3355
      {
         return o18558[o20852.random(o18558.length - 1)];
      }
      
      public function get o2567() : o3355
      {
         return o20189[o20852.random(o20189.length - 1)];
      }
      
      public function get o12307() : o3355
      {
         return o20189[o20852.random(o20189.length - 1)];
      }
      
      public function preload() : o16124
      {
         var promise:o16124 = new o16124();
         var o19165:Array = [];
         o19165.push(o6169.o16532("assets.sounds.environment.BreakGlass1"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakGlass2"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakGlass3"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakGlass4"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakCeramic1"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakCeramic2"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakHeavyBarricade1"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakHeavyBarricade2"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakHeavyBarricade3"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakHeavyDoor1"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakHeavyDoor2"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakHeavyDoor3"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakLightDoor1"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakLightDoor2"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakLightDoor3"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakVase1"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakVase2"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakWood1"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakWood2"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakWood3"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakWood4"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakWood5"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakWood6"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakWood7"));
         o19165.push(o6169.o16532("assets.sounds.environment.CollapseRubble1"));
         o19165.push(o6169.o16532("assets.sounds.environment.CollapseAvalanche"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorOpenAirlock"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorCloseAirlock"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorOpenBay"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorCloseBay"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorShipExtended"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorShip"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorShipShort"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorSlide"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorSlideLarge"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorOpenWood"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorCloseWood"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorOpenChain"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorCloseChain"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorCloseMetal"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorOpenLargeMetal"));
         o19165.push(o6169.o16532("assets.sounds.environment.DropCash"));
         o19165.push(o6169.o16532("assets.sounds.environment.DropConsumable"));
         o19165.push(o6169.o16532("assets.sounds.environment.DropStrongbox"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitAcid1"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitAcid2"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitFire1"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitFire2"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitShock1"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitShock2"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitShock3"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitShock4"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitGlass1"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitGlass2"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitGlass3"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitFoliage1"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitFoliage2"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitFoliage3"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitMetal1"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitMetal2"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitMetal3"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitMetal4"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitMetal5"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitMetal6"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitMetal7"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitMetal8"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitMetal9"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWood1"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWood2"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWood3"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWood4"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWood5"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWood6"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWood7"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWood8"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWood9"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWood10"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWall1"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWall2"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWall3"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWall4"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWall5"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWall6"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWall7"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWall8"));
         o19165.push(o6169.o16532("assets.sounds.environment.HitWall9"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakMetal1"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakMetal2"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakMetal3"));
         o19165.push(o6169.o16532("assets.sounds.environment.BreakMetal4"));
         o19165.push(o6169.o16532("assets.sounds.environment.RepairMetal1"));
         o19165.push(o6169.o16532("assets.sounds.environment.Ricochet1"));
         o19165.push(o6169.o16532("assets.sounds.environment.Ricochet2"));
         o19165.push(o6169.o16532("assets.sounds.environment.Ricochet3"));
         o19165.push(o6169.o16532("assets.sounds.environment.Ricochet4"));
         o19165.push(o6169.o16532("assets.sounds.environment.Ricochet5"));
         o19165.push(o6169.o16532("assets.sounds.environment.Ricochet6"));
         o19165.push(o6169.o16532("assets.sounds.environment.Ricochet7"));
         o19165.push(o6169.o16532("assets.sounds.environment.Ricochet8"));
         o19165.push(o6169.o16532("assets.sounds.environment.Ricochet9"));
         o19165.push(o6169.o16532("assets.sounds.environment.DoorBeep"));
         o19165.push(o6169.o16532("assets.sounds.environment.LandedDropship"));
         o19165.push(o6169.o16532("assets.sounds.environment.DescendingDropship"));
         o19165.push(o6169.o16532("assets.sounds.environment.AscendingDropship"));
         o19165.push(o6169.o16532("assets.sounds.environment.Chopper"));
         o19165.push(o6169.o16532("assets.sounds.environment.LoopAPCIdle"));
         o19165.push(o6169.o16532("assets.sounds.environment.LoopAPCMove"));
         o19165.push(o6169.o16532("assets.sounds.environment.StartAPC"));
         o19165.push(o6169.o16532("assets.sounds.environment.TriggerGas"));
         o15714.o18684(o19165,function(param1:o3355, param2:o3355, param3:o3355, param4:o3355, param5:o3355, param6:o3355, param7:o3355, param8:o3355, param9:o3355, param10:o3355, param11:o3355, param12:o3355, param13:o3355, param14:o3355, param15:o3355, param16:o3355, param17:o3355, param18:o3355, param19:o3355, param20:o3355, param21:o3355, param22:o3355, param23:o3355, param24:o3355, param25:o3355, param26:o3355, param27:o3355, param28:o3355, param29:o3355, param30:o3355, param31:o3355, param32:o3355, param33:o3355, param34:o3355, param35:o3355, param36:o3355, param37:o3355, param38:o3355, param39:o3355, param40:o3355, param41:o3355, param42:o3355, param43:o3355, param44:o3355, param45:o3355, param46:o3355, param47:o3355, param48:o3355, param49:o3355, param50:o3355, param51:o3355, param52:o3355, param53:o3355, param54:o3355, param55:o3355, param56:o3355, param57:o3355, param58:o3355, param59:o3355, param60:o3355, param61:o3355, param62:o3355, param63:o3355, param64:o3355, param65:o3355, param66:o3355, param67:o3355, param68:o3355, param69:o3355, param70:o3355, param71:o3355, param72:o3355, param73:o3355, param74:o3355, param75:o3355, param76:o3355, param77:o3355, param78:o3355, param79:o3355, param80:o3355, param81:o3355, param82:o3355, param83:o3355, param84:o3355, param85:o3355, param86:o3355, param87:o3355, param88:o3355, param89:o3355, param90:o3355, param91:o3355, param92:o3355, param93:o3355, param94:o3355, param95:o3355, param96:o3355, param97:o3355, param98:o3355, param99:o3355, param100:o3355, param101:o3355, param102:o3355, param103:o3355, param104:o3355, param105:o3355, param106:o3355, param107:o3355, param108:o3355, param109:o3355):void
         {
            o18160 = [param16,param17];
            o215 = [param13,param14,param15];
            o9355 = [param10,param11,param12];
            o3377 = [param7,param8,param9];
            o19713 = [param18,param19,param20,param21,param22,param23,param24];
            o860 = [param1,param2,param3,param4];
            o4041 = [param5,param6];
            o14151 = param25;
            o14686 = param26;
            o18047 = param32;
            o5985 = param33;
            o4333 = param30;
            o10055 = param34;
            o8458 = param35;
            o14791 = param27;
            o16977 = param28;
            o8750 = param39;
            o1795 = param40;
            o6244 = param41;
            o14277 = param38;
            o16364 = param36;
            o219 = param29;
            o11811 = param37;
            o13024 = param31;
            o13059 = param101;
            o15171 = param102;
            o11681 = param103;
            o7092 = param104;
            o7343 = param105;
            o17980 = param106;
            o5612 = param107;
            o2374 = param108;
            o10426 = param109;
            o3530 = param42;
            o10736 = param43;
            o6716 = param44;
            o13320 = [param45,param46];
            o17584 = [param47,param48];
            o5255 = [param49,param50,param51,param52];
            o11817 = [param53,param54,param55];
            o18121 = [param56,param57,param58];
            o20237 = [param59,param60,param61,param62,param63,param64,param65,param66,param67,param96,param97,param98,param99,param100];
            o16888 = [param59,param60,param61,param62,param63,param64,param65,param66,param67];
            o13402 = [param68,param69,param70,param71,param72,param73,param74,param75,param76,param77];
            o13062 = [param78,param79,param80,param81,param82,param83,param84,param85,param86,param92,param93,param94,param95];
            o18558 = [param91];
            o20189 = [param87,param88,param89,param90];
            promise.data = this;
         });
         return promise;
      }
   }
}
