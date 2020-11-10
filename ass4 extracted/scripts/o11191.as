package
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class o11191 extends o6539 implements o18880
   {
       
      
      private var o13818:MovieClip;
      
      private var o7750:o20565;
      
      private const o12475:int = 3;
      
      private var o14707:int = 0;
      
      private var o1249:int = 1;
      
      public var o11915:o20421;
      
      protected var o9539:o15625;
      
      protected var o17375:o15625;
      
      protected var o4038:o12153;
      
      protected var o15476:o12153;
      
      protected var o18831:o12153;
      
      protected var o19492:o12153;
      
      protected var o15196:o15625;
      
      protected var o1934:o15625;
      
      protected var o20029:o15625;
      
      private var o18921:o5024;
      
      private var o3970:DisplayObjectContainer;
      
      protected var o15023:o10832;
      
      protected var o11890:int = 0;
      
      protected var o6791:Boolean = false;
      
      public var o10565:o12158;
      
      private var o2175:TextField;
      
      private var o1950:TextField;
      
      private var o20818:TextField;
      
      protected var o6839:Boolean;
      
      protected var o9193:o11112;
      
      protected var o16989:o13064;
      
      private var o16099:Vector.<o19067>;
      
      private var o12764:Vector.<o19067>;
      
      private var o2881:MovieClip;
      
      private var o15245:MovieClip;
      
      private var o813:int = -1;
      
      private var o3484:int;
      
      private var o7122:Boolean = false;
      
      private var o17135:MovieClip;
      
      private var o6490:MovieClip;
      
      private var o11693:int = -1;
      
      private const o1033:int = 100;
      
      private var o12717:Boolean = false;
      
      public function o11191()
      {
         o14707 = 4;
         super();
      }
      
      protected function o17382() : o12158
      {
         return new o8282();
      }
      
      protected function o11106(param1:MovieClip) : void
      {
         if(this.o18921 != null)
         {
            this.o18921.o3700 = this.o18921.o3700;
         }
      }
      
      private function o14907(param1:String, param2:String) : o12153
      {
         var _loc3_:o12153 = new o12153();
         var _loc4_:MovieClip = o3970.getChildByName(param1) as MovieClip;
         _loc3_.init(_loc4_);
         this.o5452(_loc3_);
         _loc3_.o7658(param2,0,0,0);
         return _loc3_;
      }
      
      private function o13928(param1:MovieClip, param2:String, param3:String, param4:DisplayObject) : o16327
      {
         var _loc5_:o16327 = new o16327();
         var _loc6_:MovieClip = param1.getChildByName(param2) as MovieClip;
         _loc5_.init(_loc6_);
         if(param3 != null)
         {
            _loc5_.o13586 = param3;
         }
         if(param4 != null)
         {
            _loc5_.o3700 = param4;
         }
         this.o5452(_loc5_);
         return _loc5_;
      }
      
      public function o16384(param1:MovieClip, param2:int, param3:o13064) : void
      {
         var _loc6_:int = 0;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc4_:* = null;
         var _loc15_:* = null;
         super.init(param1);
         this.o16989 = param3;
         o13818 = param1;
         o7750 = new o20565(this);
         var _loc21_:MovieClip = o13818.getChildByName("weaponsSlotsHolder") as MovieClip;
         var _loc8_:Array = [];
         var _loc13_:Array = ["Sidearm","Primary 1","Primary 2"];
         _loc6_ = 0;
         while(_loc6_ < 3)
         {
            _loc18_ = new MovieClip();
            _loc19_ = o13928(_loc21_,"btnSlot" + _loc6_,_loc13_[_loc6_],_loc18_);
            _loc8_.push(_loc19_);
            _loc6_++;
         }
         o11915 = o7750.o3538(_loc8_);
         o3970 = param1.getChildByName("weaponDetails") as DisplayObjectContainer;
         o9539 = o7750.o17578("btnSell",o3970);
         o17375 = o7750.o17578("btnEquip",o3970);
         o4038 = o14907("btnMoreAmmo","Ammo");
         o15476 = o14907("btnPremiumAmmo","Prem.Ammo");
         o18831 = o14907("btnMorePlusAmmo","Ammo");
         o19492 = o14907("btnPremiumPlusAmmo","Prem.Ammo");
         o4038.o8737 = o3131;
         o15476.o8737 = o2630;
         o18831.o8737 = o20644;
         o19492.o8737 = o376;
         o2881 = o3970.getChildByName("infoContainer") as MovieClip;
         o15196 = o7750.o17578("btnMoreInfo",o3970);
         o2175 = o3970.getChildByName("lblMoreInfoValue") as TextField;
         o1950 = o3970.getChildByName("lblMoreInfoBonus") as TextField;
         o20818 = o3970.getChildByName("lblWeaponType") as TextField;
         o17135 = o3970.getChildByName("damageTypeIcon") as MovieClip;
         o6490 = o3970.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(o6490)
         {
            o6490.visible = false;
         }
         o18921 = new o5024();
         o18921.init(o3970.getChildByName("weaponIconContainer") as MovieClip);
         this.o5452(o18921);
         var _loc16_:MovieClip = param1.getChildByName("weaponSelectHolder") as MovieClip;
         o20029 = o7750.o17578("btnPrev",_loc16_);
         o1934 = o7750.o17578("btnNext",_loc16_);
         var _loc14_:Vector.<o15625> = o10169(_loc16_);
         var _loc17_:MovieClip = _loc16_.getChildByName("weaponRecordPagingCenter") as MovieClip;
         o15023 = o7750.o3870(o20029,o1934,_loc14_,o4357,_loc17_);
         o15023.o10793 = o4294;
         o15023.o672 = true;
         o15023.asset = _loc16_;
         o15245 = asset.getChildByName("noWeaponSelectedMessage") as MovieClip;
         o15245.visible = false;
         var _loc23_:int = 0;
         var _loc22_:* = o15023.o19568;
         for each(var _loc12_ in o15023.o19568)
         {
            _loc12_.addEventListener("doubleClick",o1067,false,0,true);
         }
         this.o15196.addEventListener("click",o3785,false,0,true);
         o7750.o13962("aug",1,o14707,"on","off",o3970);
         o11915.addEventListener(o5595.o16737,o10996,false,0,true);
         o15023.addEventListener(o5595.o16737,o1142,false,0,true);
         this.o11800(false);
         var _loc9_:Vector.<o15625> = new Vector.<o15625>();
         var _loc20_:Vector.<o15625> = new Vector.<o15625>();
         var _loc25_:int = 0;
         var _loc24_:* = o11915.o19568;
         for each(var _loc7_ in o11915.o19568)
         {
            _loc9_.push(_loc7_);
            _loc20_.push(_loc7_);
         }
         var _loc27_:int = 0;
         var _loc26_:* = o15023.o19568;
         for each(var _loc5_ in o15023.o19568)
         {
            _loc9_.push(_loc5_);
         }
         o16099 = new Vector.<o19067>();
         var _loc29_:int = 0;
         var _loc28_:* = o15023.o19568;
         for each(var _loc11_ in o15023.o19568)
         {
            _loc4_ = new o19067();
            _loc4_.init(_loc11_,_loc20_,o10004,o15874,o19461,o20368);
            this.o16099.push(_loc4_);
         }
         o12764 = new Vector.<o19067>();
         var _loc31_:int = 0;
         var _loc30_:* = o11915.o19568;
         for each(var _loc10_ in o11915.o19568)
         {
            _loc15_ = new o19067();
            _loc15_.init(_loc10_,_loc9_,o13384,o10109,o16016,o19228);
            this.o12764.push(_loc15_);
         }
         this.o17375.addEventListener("click",o9560,false,0,true);
         this.o9539.addEventListener("click",o17899,false,0,true);
         this.o4038.addEventListener("click",o14803,false,0,true);
         this.o15476.addEventListener("click",o12586,false,0,true);
         this.o18831.addEventListener("click",o18889,false,0,true);
         this.o19492.addEventListener("click",o19209,false,0,true);
         o18831.visible = false;
         o19492.visible = false;
         o10565 = o17382();
         o10565.o16384(o3970 as MovieClip,param3);
         this.o5452(o10565);
         o10565.addEventListener(o5595.o16737,o8664,false,0,true);
         o9193 = new o11112();
         o9193.o16384(o2881,11);
         this.o5452(o9193);
         o2881.visible = false;
         o11915.o2120 = 1;
         this.o1258();
      }
      
      override protected function o12638(param1:Event) : void
      {
         super.o12638(param1);
      }
      
      protected function o7355(param1:int) : void
      {
      }
      
      private function o12473(param1:String) : String
      {
         return param1;
      }
      
      public function o17796(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:int, param10:String, param11:String, param12:String) : void
      {
         o2175.htmlText = param1 + "\n" + param3 + "\n" + param5 + "\n" + param7;
         o1950.text = o12473(param2) + "\n" + o12473(param4) + "\n" + o12473(param6) + "\n" + o12473(param8);
         o7750.o17506("lblClipCount","",o3970);
         o20818.text = param10 + " " + param11;
         o17135.gotoAndStop(param9);
      }
      
      private function o1067(param1:MouseEvent) : void
      {
         o9560(null);
      }
      
      override protected function o13318(param1:Event) : void
      {
      }
      
      protected function o8664(param1:o11507) : void
      {
      }
      
      override public function o13640() : void
      {
         o11915.removeEventListener(o5595.o16737,o10996);
         o15023.removeEventListener(o5595.o16737,o1142);
         this.o15196.removeEventListener("click",o3785);
         this.o17375.removeEventListener("click",o9560);
         this.o9539.removeEventListener("click",o17899);
         this.o4038.removeEventListener("click",o14803);
         this.o15476.removeEventListener("click",o12586);
         this.o10565.removeEventListener(o5595.o16737,o8664);
         this.o18831.removeEventListener("click",o18889);
         this.o19492.removeEventListener("click",o19209);
         var _loc5_:int = 0;
         var _loc4_:* = o15023.o19568;
         for each(var _loc1_ in o15023.o19568)
         {
            _loc1_.removeEventListener("doubleClick",o1067);
         }
         var _loc7_:int = 0;
         var _loc6_:* = o16099;
         for each(var _loc2_ in o16099)
         {
            _loc2_.o13640();
         }
         var _loc9_:int = 0;
         var _loc8_:* = o12764;
         for each(var _loc3_ in o12764)
         {
            _loc3_.o13640();
         }
         o7750.o13640();
         o13818 = null;
         o7750 = null;
         o1249 = 0;
         o11915 = null;
         o9539 = null;
         o17375 = null;
         o4038 = null;
         o15476 = null;
         o18831 = null;
         o19492 = null;
         o15196 = null;
         o1934 = null;
         o20029 = null;
         o18921 = null;
         o3970 = null;
         o15023 = null;
         o11890 = 0;
         o6791 = false;
         o10565 = null;
         o2175 = null;
         o1950 = null;
         o20818 = null;
         o6839 = false;
         o9193 = null;
         o16989 = null;
         o16099 = null;
         o12764 = null;
         o2881 = null;
         o15245 = null;
         o813 = 0;
         o3484 = 0;
         o7122 = false;
         o17135 = null;
         o6490 = null;
         super.o13640();
      }
      
      private function o1514(param1:MouseEvent) : void
      {
         var _loc2_:int = !!o6791?o11915.o2120:o15023.o2120;
         this.o13757(o6791,_loc2_);
         o4436();
      }
      
      private function o9311(param1:MouseEvent) : void
      {
         var _loc2_:int = !!o6791?o11915.o2120:o15023.o2120;
         this.o896(o6791,_loc2_);
         o4436();
      }
      
      protected function o9210(param1:String) : void
      {
         var _loc2_:TextField = o2881.getChildByName("lblInfo") as TextField;
         _loc2_.htmlText = param1;
      }
      
      protected function o3785(param1:MouseEvent) : void
      {
         o15196.o3993 = !o15196.o3993;
         o2881.visible = o15196.o3993;
      }
      
      protected function o20371() : Boolean
      {
         return true;
      }
      
      protected function o2329() : void
      {
      }
      
      protected function o9560(param1:MouseEvent) : void
      {
         if(o6791)
         {
            if(o20371())
            {
               this.o15023.o2120 = this.o14970(o11915.o2120);
               this.o1258();
            }
            else
            {
               o2329();
            }
            return;
         }
         this.o7247(o11915.o2120,o15023.o2120);
         this.o11915.o2120 = this.o11915.o2120;
         this.o1258();
      }
      
      protected function o5942() : void
      {
         if(o6791)
         {
            o12257(o11915.o2120);
         }
         else
         {
            this.o5400(o15023.o2120);
         }
      }
      
      protected function o2135() : int
      {
         var _loc1_:int = !!o6791?o11915.o2120:o15023.o2120;
         return o2465(o6791,_loc1_);
      }
      
      protected function o261() : void
      {
      }
      
      protected function o17899(param1:MouseEvent) : void
      {
         o261();
      }
      
      protected function o14970(param1:int) : int
      {
         return 0;
      }
      
      public function o10739() : void
      {
         this.o1258();
         o4436();
      }
      
      protected function o4436(param1:Boolean = false) : void
      {
         o9193.clear();
         var _loc2_:int = !!o6791?o11915.o2120:o15023.o2120;
         o4225(o6791,_loc2_);
         o10565.o14806(o6791,_loc2_,this.o11890);
      }
      
      protected function o20628() : int
      {
         var _loc1_:int = !!o6791?o11915.o2120:o15023.o2120;
         return _loc1_;
      }
      
      private function o14803(param1:MouseEvent) : void
      {
         var _loc2_:int = !!o6791?o11915.o2120:o15023.o2120;
         this.o13023(o6791,_loc2_);
         o4436();
      }
      
      private function o12586(param1:MouseEvent) : void
      {
         var _loc2_:int = !!o6791?o11915.o2120:o15023.o2120;
         this.o11769(o6791,_loc2_);
         o4436();
      }
      
      private function o18889(param1:MouseEvent) : void
      {
         o16452();
      }
      
      private function o19209(param1:MouseEvent) : void
      {
         o15040();
      }
      
      private function o16452() : void
      {
         var _loc1_:int = !!o6791?o11915.o2120:o15023.o2120;
         this.o7959(o6791,_loc1_);
         o4436();
      }
      
      private function o15040() : void
      {
         var _loc1_:int = !!o6791?o11915.o2120:o15023.o2120;
         this.o14627(o6791,_loc1_);
         o4436();
      }
      
      public function o3131() : void
      {
         o14803(null);
      }
      
      public function o2630() : void
      {
         o12586(null);
      }
      
      public function o20644() : void
      {
         o18889(null);
      }
      
      public function o376() : void
      {
         o19209(null);
      }
      
      private function o4357(param1:int, param2:o15625) : void
      {
         o12688(param1);
      }
      
      private function o4294(param1:int, param2:o15625) : void
      {
         o12644(param1);
      }
      
      private function o10169(param1:MovieClip) : Vector.<o15625>
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc2_:* = null;
         var _loc5_:Vector.<o15625> = new Vector.<o15625>();
         _loc3_ = 0;
         while(_loc3_ < 4)
         {
            _loc4_ = param1.getChildByName("btnWeapon" + _loc3_);
            _loc2_ = new o5910();
            _loc2_.init(_loc4_ as MovieClip);
            this.o5452(_loc2_);
            _loc5_.push(_loc2_);
            _loc3_++;
         }
         return _loc5_;
      }
      
      protected function o10996(param1:o11507) : void
      {
         var _loc2_:int = param1.o6457;
         if(_loc2_ != o813)
         {
            o14793(_loc2_);
            o15023.o1746(this.o2673);
            o15023.o1258();
         }
         o6791 = true;
         o4436(true);
         o813 = param1.o6457;
      }
      
      private function o1142(param1:o11507) : void
      {
         var _loc2_:int = param1.o6457;
         if(_loc2_ < 0)
         {
            if(o6791 == false)
            {
               this.o11800(false);
            }
         }
         else
         {
            o6791 = false;
            o4436(o11693 != param1.o6457);
            o11693 = param1.o6457;
         }
      }
      
      protected function o11800(param1:Boolean) : void
      {
         o3970.visible = param1;
         o9539.visible = param1;
         o17375.visible = param1;
         o4038.visible = param1;
         o15476.visible = param1;
         o18831.visible = param1;
         o19492.visible = param1;
         o18921.visible = param1;
         o15245.visible = param1 == false;
         var _loc2_:TextField = o15245.getChildByName("lblMessage") as TextField;
         if(o2673 == 0)
         {
            _loc2_.text = "Inventory empty";
         }
         else
         {
            _loc2_.text = "Select a Weapon from your inventory";
         }
      }
      
      override protected function draw() : void
      {
         var _loc1_:int = 0;
         o15023.o1746(this.o2673);
         _loc1_ = 0;
         while(_loc1_ < 3)
         {
            o11915.o4364(_loc1_);
            o3833(_loc1_);
            _loc1_++;
         }
         o4436();
         super.draw();
      }
      
      protected function o3311(param1:int, param2:Boolean, param3:String, param4:int, param5:String, param6:String, param7:int, param8:int, param9:int, param10:int, param11:DisplayObject, param12:Boolean, param13:int, param14:int, param15:int, param16:int, param17:int, param18:int, param19:int, param20:int, param21:int, param22:Boolean, param23:Boolean = false) : void
      {
         o7750.o17506("lblHeading",param3,o3970);
         (o3970.getChildByName("grade") as MovieClip).gotoAndStop(param4 + 1);
         o1249 = param18;
         var _loc24_:MovieClip = o3970.getChildByName("eliteCore") as MovieClip;
         if(_loc24_ != null)
         {
            _loc24_.visible = param20 > 0;
         }
         o4038.o7658("Ammo",!!param12?-1:param8,param14,param15);
         o15476.o7658("Prem.Ammo",param9,param16,param17);
         o18831.o7658("Ammo",!!param12?-1:param8,param14 * 100,param15 * 100);
         o19492.o7658("Prem.Ammo",param9,param16 * 100,param17 * 100);
         var _loc26_:TextField = o3970.getChildByName("lblHeading") as TextField;
         _loc26_.autoSize = "left";
         var _loc25_:MovieClip = o3970.getChildByName("weaponVersion") as MovieClip;
         _loc25_.gotoAndStop(param19);
         _loc25_.x = _loc26_.x + _loc26_.width;
         if(o6490)
         {
            o6490.gotoAndStop(o7251.o20313(null,param1,param23,param22,param21));
            o6490.visible = true;
         }
         if(param10 > o14707)
         {
            param10 = o14707;
         }
         o7750.o5877("aug",param10,o1249,"on","off",o14707,o3970);
         o18921.o3700 = param11;
         (o3970.getChildByName("brandname") as MovieClip).gotoAndStop(param13);
         o7750.o17506("lblSellFor","for $" + o16724.o10417(this.o2135()),o3970);
         o4038.enabled = param12 == false;
         o18831.enabled = param12 == false;
         o17375.o3993 = o6791;
         o10565.o20670(o1249);
      }
      
      protected function o8152(param1:int, param2:DisplayObject, param3:int, param4:int, param5:int, param6:int, param7:Boolean, param8:o14096) : o8535
      {
         var _loc9_:o16327 = o11915.o4364(param1) as o16327;
         _loc9_.o3 = param3;
         _loc9_.o12062 = param5;
         _loc9_.o2752 = param8;
         _loc9_.o4752 = param6;
         _loc9_.o1419 = param7;
         if(param2 == null)
         {
            _loc9_.o19146 = true;
         }
         else
         {
            _loc9_.o19146 = false;
            _loc9_.o3700 = param2;
         }
         _loc9_.o263 = param4;
         _loc9_.o1258();
         return _loc9_;
      }
      
      protected function o3855(param1:int, param2:o14096, param3:DisplayObject) : o5910
      {
         var _loc4_:o5910 = o15023.o3410(param1) as o5910;
         if(_loc4_ == null)
         {
            return null;
         }
         _loc4_.o3700 = param3;
         _loc4_.o2752 = param2;
         _loc4_.o1258();
         return _loc4_;
      }
      
      protected function o14793(param1:int) : void
      {
      }
      
      protected function get o2673() : int
      {
         return 0;
      }
      
      protected function o3833(param1:int) : void
      {
      }
      
      protected function o4225(param1:Boolean, param2:int) : void
      {
      }
      
      protected function o12688(param1:int) : void
      {
      }
      
      protected function o12644(param1:int) : void
      {
      }
      
      protected function o7247(param1:int, param2:int) : void
      {
      }
      
      protected function o5400(param1:int) : void
      {
      }
      
      protected function o12257(param1:int) : void
      {
      }
      
      protected function o13023(param1:Boolean, param2:int) : void
      {
      }
      
      protected function o11769(param1:Boolean, param2:int) : void
      {
      }
      
      protected function o7959(param1:Boolean, param2:int) : void
      {
      }
      
      protected function o14627(param1:Boolean, param2:int) : void
      {
      }
      
      protected function o13757(param1:Boolean, param2:int) : void
      {
      }
      
      protected function o896(param1:Boolean, param2:int) : void
      {
      }
      
      protected function o19493(param1:int) : MovieClip
      {
         return null;
      }
      
      protected function o10072(param1:int) : MovieClip
      {
         return null;
      }
      
      protected function o3489(param1:MovieClip) : void
      {
         var _loc2_:* = 1.3;
         o20852.o17542(param1,141.9 * _loc2_,46 * _loc2_);
         param1.x = -param1.width / 2;
         param1.y = -param1.height / 2;
      }
      
      private function o10004(param1:o19067, param2:Point) : void
      {
         var _loc5_:* = null;
         var _loc6_:MovieClip = o7213();
         var _loc3_:o5910 = param1.o11569 as o5910;
         var _loc4_:int = o15023.o8716(_loc3_);
         this.o15023.o2120 = o15023.o19452(_loc4_);
         if(this.o15023.o2120 >= 0)
         {
            _loc5_ = o10072(this.o15023.o2120);
            if(_loc5_ != null)
            {
               _loc6_.addChild(_loc5_);
            }
         }
         param1.o16088(_loc6_);
         this.asset.stage.addChild(_loc6_);
      }
      
      private function o15874(param1:o19067, param2:MovieClip) : void
      {
         o8867(param2);
         this.asset.stage.removeChild(param2);
      }
      
      protected function o11729(param1:int, param2:int) : void
      {
      }
      
      private function o19461(param1:o19067, param2:MovieClip, param3:MovieClip, param4:int) : Boolean
      {
         o12717 = false;
         var _loc5_:* = true;
         if(param4 < 3)
         {
            if(o6839)
            {
               _loc5_ = param4 == 0;
            }
            else
            {
               _loc5_ = param4 > 0;
            }
            if(_loc5_)
            {
               o10179(param2,"Equip");
            }
            else
            {
               o12717 = true;
               o10179(param2,"Cancel");
            }
         }
         else
         {
            o12717 = true;
            o10179(param2,"Cancel");
         }
         return _loc5_;
      }
      
      private function o20368(param1:o19067, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param2 < 0 || o12717)
         {
            return;
         }
         if(param2 < 3)
         {
            o11915.o2120 = param2;
            _loc3_ = param1.o11569 as o5910;
            _loc6_ = o15023.o8716(_loc3_);
            this.o15023.o2120 = o15023.o19452(_loc6_);
            this.o9560(null);
         }
         else
         {
            param2 = param2 - 3;
            _loc6_ = o15023.o8716(param1.o11569);
            _loc4_ = o15023.o19452(_loc6_);
            _loc5_ = this.o15023.o2120;
            if(_loc4_ != _loc5_)
            {
               o11729(_loc4_,_loc5_);
            }
         }
      }
      
      private function o7213() : MovieClip
      {
         var _loc3_:MovieClip = new MovieClip();
         var _loc2_:TextField = new TextField();
         _loc2_.name = "label";
         _loc2_.htmlText = "Test label";
         _loc2_.y = -55;
         _loc2_.width = 500;
         _loc2_.x = -_loc2_.width / 2;
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16777215;
         _loc1_.align = "center";
         _loc1_.font = "Doppio One";
         _loc1_.size = 14;
         _loc2_.defaultTextFormat = _loc1_;
         _loc2_.setTextFormat(_loc1_);
         _loc2_.textColor = 16777215;
         _loc3_.addChild(_loc2_);
         _loc3_.enabled = false;
         _loc3_.mouseEnabled = false;
         _loc3_.mouseChildren = false;
         return _loc3_;
      }
      
      private function o13384(param1:o19067, param2:Point) : void
      {
         var _loc4_:* = null;
         o3484 = o11915.o2120;
         var _loc5_:MovieClip = o7213();
         var _loc3_:o8535 = param1.o11569 as o8535;
         this.o11915.o2120 = o11915.o8716(_loc3_);
         if(this.o11915.o2120 >= 0)
         {
            _loc4_ = o19493(this.o11915.o2120);
            if(_loc4_ != null)
            {
               _loc5_.addChildAt(_loc4_,0);
            }
            else
            {
               return;
            }
         }
         param1.o16088(_loc5_);
         this.asset.addChild(_loc5_);
      }
      
      private function o10179(param1:MovieClip, param2:String) : void
      {
         var _loc3_:TextField = param1.getChildByName("label") as TextField;
         _loc3_.text = param2;
      }
      
      private function o10109(param1:o19067, param2:MovieClip) : void
      {
         o8867(param2);
         this.asset.removeChild(param2);
      }
      
      protected function o20136(param1:int, param2:int) : Boolean
      {
         return false;
      }
      
      protected function o6386() : Boolean
      {
         return true;
      }
      
      private function o16016(param1:o19067, param2:MovieClip, param3:MovieClip, param4:int) : Boolean
      {
         var _loc5_:int = 0;
         o7122 = false;
         if(param4 < 3)
         {
            if(param4 == o11915.o2120)
            {
               o10179(param2,"Cancel");
               o7122 = true;
               return false;
            }
            if((o11915.o2120 == 1 || o11915.o2120 == 2) && (param4 == 1 || param4 == 2))
            {
               o10179(param2,"Move");
               return true;
            }
            if(o6386())
            {
               o10179(param2,"Unequip");
            }
            else
            {
               o10179(param2,"Cancel");
            }
            return false;
         }
         _loc5_ = param4 - 3;
         _loc5_ = o15023.o19452(_loc5_);
         if(o20136(o11915.o2120,_loc5_))
         {
            o10179(param2,"Swap");
            return true;
         }
         o10179(param2,"Cancel");
         return false;
      }
      
      protected function o12414() : void
      {
      }
      
      protected function o2465(param1:Boolean, param2:int) : int
      {
         return 0;
      }
      
      private function o19228(param1:o19067, param2:int) : void
      {
         var _loc3_:int = 0;
         o3484 = o11915.o2120;
         if(o7122)
         {
            return;
         }
         if(param2 < 0)
         {
            if(o6386())
            {
               o14970(o11915.o2120);
               this.o1258();
            }
            return;
         }
         if(param2 < 3)
         {
            if(param2 != o3484)
            {
               if((o3484 == 1 || o3484 == 2) && (param2 == 1 || param2 == 2))
               {
                  o12414();
               }
               else if(o6386())
               {
                  o14970(o11915.o2120);
                  this.o1258();
               }
            }
         }
         else
         {
            param2 = param2 - 3;
            if(o20136(o11915.o2120,param2))
            {
               _loc3_ = o15023.o19452(param2);
               o15023.o2120 = _loc3_;
               this.o7247(o11915.o2120,o15023.o2120);
               this.o1258();
            }
         }
      }
   }
}
