package
{
   import flash.media.Sound;
   
   public class o16916
   {
       
      
      private var o6169:o3461;
      
      private var o9592:Class;
      
      private var o13664:Class;
      
      private var o14917:Class;
      
      private var o11299:Class;
      
      private var o1314:Class;
      
      private var o12386:Class;
      
      private var o20261:Class;
      
      private var o12559:Class;
      
      private var o7444:Class;
      
      private var o13609:Class;
      
      private var o1952:Class;
      
      private var o10313:Class;
      
      private var o9876:Class;
      
      private var o13657:Class;
      
      private var o6644:Class;
      
      private var o10241:Class;
      
      private var o10721:Class;
      
      private var o14578:Class;
      
      private var o1801:Class;
      
      private var o8059:Class;
      
      private var o3424:Class;
      
      private var o20761:Class;
      
      private var o8663:Class;
      
      private var o11319:Class;
      
      private var o6732:Class;
      
      private var o11009:Class;
      
      private var o12358:Class;
      
      private var o15723:Class;
      
      public var o876:o3355;
      
      public var o14615:o3355;
      
      public var o8060:o3355;
      
      public var o15528:o3355;
      
      public var o4676:o3355;
      
      public var o6915:o3355;
      
      public var o8512:o3355;
      
      public var o3656:o3355;
      
      public var o7729:o3355;
      
      public var o17910:o3355;
      
      public var o11423:o3355;
      
      public var o16564:o3355;
      
      public var o20960:o3355;
      
      public var o14759:o3355;
      
      public var o14648:o3355;
      
      public var o4930:o3355;
      
      public var o12925:o3355;
      
      public var o2878:o3355;
      
      public var error:o3355;
      
      public var o995:o3355;
      
      public var o8804:o3355;
      
      public var o1466:o3355;
      
      public var o17861:o3355;
      
      public var o7049:o3355;
      
      public var o9744:o3355;
      
      public var o10220:o3355;
      
      private var o16071:Array;
      
      public function o16916(param1:o3461)
      {
         o9592 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d791216207621§;
         o13664 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79124366127§;
         o14917 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d7964128908§;
         o11299 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d792007945154§;
         o1314 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d791024003013§;
         o12386 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79-290548389§;
         o20261 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d791736898073§;
         o12559 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79-750823086§;
         o7444 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79652514764§;
         o13609 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d791991929669§;
         o1952 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d791568959217§;
         o10313 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d791775304774§;
         o9876 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79-1749202055§;
         o13657 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d791971798343§;
         o6644 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d7964128909§;
         o10241 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d791690226782§;
         o10721 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79-1945353396§;
         o14578 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79-450599423§;
         o1801 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79-450599424§;
         o8059 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79-450599421§;
         o3424 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79-450599422§;
         o20761 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79261102093§;
         o8663 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d791972311857§;
         o11319 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79-421398257§;
         o6732 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79-1650408110§;
         o11009 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d791804987472§;
         o12358 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d79-1367491295§;
         o15723 = §sounds-ui_swf$ff76adde2cf19c155a7df24e3f3d2d791580544292§;
         super();
         this.o6169 = param1;
      }
      
      public function get o11449() : o3355
      {
         return o16071[o20852.random(o16071.length - 1)];
      }
      
      private function o20744() : o16124
      {
         var promise:o16124 = new o16124();
         var o19165:Array = [];
         o19165.push(o6169.o16532("assets.sounds.ui.RollOver"));
         o19165.push(o6169.o16532("assets.sounds.ui.RollOver2"));
         o19165.push(o6169.o16532("assets.sounds.ui.Click2"));
         o19165.push(o6169.o16532("assets.sounds.ui.AddSkill"));
         o19165.push(o6169.o16532("assets.sounds.ui.BuyPremium"));
         o19165.push(o6169.o16532("assets.sounds.ui.BuyNormal"));
         o19165.push(o6169.o16532("assets.sounds.ui.BuyGrenades"));
         o19165.push(o6169.o16532("assets.sounds.ui.BuyTurret"));
         o19165.push(o6169.o16532("assets.sounds.ui.EquipArmour"));
         o19165.push(o6169.o16532("assets.sounds.ui.UnequipArmour"));
         o19165.push(o6169.o16532("assets.sounds.ui.UnequipWeapon"));
         o19165.push(o6169.o16532("assets.sounds.ui.OpenStrongBox"));
         o19165.push(o6169.o16532("assets.sounds.ui.RareItem"));
         o19165.push(o6169.o16532("assets.sounds.ui.Cash"));
         o19165.push(o6169.o16532("assets.sounds.ui.Click1"));
         o19165.push(o6169.o16532("assets.sounds.ui.Select"));
         o19165.push(o6169.o16532("assets.sounds.ui.CommPopup"));
         o19165.push(o6169.o16532("assets.sounds.ui.Beep1"));
         o19165.push(o6169.o16532("assets.sounds.ui.Beep2"));
         o19165.push(o6169.o16532("assets.sounds.ui.Beep3"));
         o19165.push(o6169.o16532("assets.sounds.ui.Beep4"));
         o19165.push(o6169.o16532("assets.sounds.ui.Error1"));
         o19165.push(o6169.o16532("assets.sounds.ui.Tick"));
         o19165.push(o6169.o16532("assets.sounds.ui.PlayerJoin"));
         o19165.push(o6169.o16532("assets.sounds.ui.PlayerLeave"));
         o19165.push(o6169.o16532("assets.sounds.ui.LoopTitle"));
         o19165.push(o6169.o16532("assets.sounds.ui.TrackTitle"));
         o19165.push(o6169.o16532("assets.sounds.ui.Contract"));
         o15714.o18684(o19165,function(param1:o3355, param2:o3355, param3:o3355, param4:o3355, param5:o3355, param6:o3355, param7:o3355, param8:o3355, param9:o3355, param10:o3355, param11:o3355, param12:o3355, param13:o3355, param14:o3355, param15:o3355, param16:o3355, param17:o3355, param18:o3355, param19:o3355, param20:o3355, param21:o3355, param22:o3355, param23:o3355, param24:o3355, param25:o3355, param26:o3355, param27:o3355, param28:o3355):void
         {
            o876 = param1;
            o14615 = param2;
            o8060 = param3;
            o15528 = param4;
            o4676 = param5;
            o6915 = param6;
            o8512 = param7;
            o3656 = param8;
            o7729 = param9;
            o17910 = param10;
            o11423 = param11;
            o16564 = param12;
            o20960 = param13;
            o17861 = param14;
            o14759 = param15;
            o14648 = param16;
            o2878 = param17;
            o16071 = [param18,param19,param20,param21];
            error = param22;
            o995 = param23;
            o8804 = param24;
            o1466 = param25;
            o7049 = param26;
            o9744 = param27;
            o10220 = param28;
            o4930 = param22;
            o12925 = o4676;
            promise.data = this;
         });
         return promise;
      }
      
      private function o10874(param1:Class) : o3355
      {
         var _loc3_:o3355 = new o3355();
         var _loc2_:Sound = new param1() as Sound;
         _loc3_.initialise(_loc2_,o6169);
         return _loc3_;
      }
      
      private function o18901() : o16124
      {
         var _loc1_:o16124 = new o16124();
         o876 = o10874(o9592);
         o14615 = o10874(o13664);
         o8060 = o10874(o14917);
         o15528 = o10874(o11299);
         o4676 = o10874(o1314);
         o6915 = o10874(o12386);
         o8512 = o10874(o20261);
         o3656 = o10874(o12559);
         o7729 = o10874(o7444);
         o17910 = o10874(o13609);
         o11423 = o10874(o1952);
         o16564 = o10874(o10313);
         o20960 = o10874(o9876);
         o17861 = o10874(o13657);
         o14759 = o10874(o6644);
         o14648 = o10874(o10241);
         o2878 = o10874(o10721);
         o16071 = [o10874(o14578),o10874(o1801),o10874(o8059),o10874(o3424)];
         error = o10874(o20761);
         o995 = o10874(o8663);
         o8804 = o10874(o11319);
         o1466 = o10874(o6732);
         o7049 = o10874(o11009);
         o9744 = o10874(o12358);
         o10220 = o10874(o15723);
         o4930 = o10874(o20761);
         o12925 = o4676;
         _loc1_.data = this;
         return _loc1_;
      }
      
      public function preload() : o16124
      {
         return o18901();
      }
   }
}
