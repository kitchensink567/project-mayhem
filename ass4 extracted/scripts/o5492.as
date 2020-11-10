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
   
   public class o5492 extends o6539 implements o11651
   {
       
      
      private var o2481:MovieClip;
      
      private var o7750:o20565;
      
      private const o20265:int = 5;
      
      private var o14707:int = 3;
      
      protected var o16989:o13064;
      
      private var o6847:int = 1;
      
      public var o11352:o20421;
      
      protected var o9539:o15625;
      
      protected var o17375:o15625;
      
      protected var o8021:o15625;
      
      protected var o5084:o12290;
      
      protected var o7091:o12290;
      
      protected var o9301:o12290;
      
      protected var o1934:o15625;
      
      protected var o20029:o15625;
      
      private var o19925:o5024;
      
      private var o1502:DisplayObjectContainer;
      
      protected var o19854:o10832;
      
      protected var o15591:int = 0;
      
      protected var o14177:Boolean = false;
      
      public var o10565:o12158;
      
      protected var o9193:o11112;
      
      private var o7836:MovieClip;
      
      private var o16861:Vector.<o19067>;
      
      private var o5090:Vector.<o19067>;
      
      private var o2881:MovieClip;
      
      private var o2175:TextField;
      
      private var o1950:TextField;
      
      private var o20145:TextField;
      
      private var o19435:MovieClip;
      
      private var o19923:MovieClip;
      
      private var o4681:TextField;
      
      private var o16720:int = -1;
      
      private var o12717:Boolean;
      
      protected var o12063:int;
      
      public function o5492()
      {
         super();
         o14707 = 3;
      }
      
      protected function o17382() : o12158
      {
         return new o8282();
      }
      
      protected function o8195(param1:MovieClip) : void
      {
         o19925.o3700 = o19925.o3700;
      }
      
      public function o10148(param1:int, param2:DisplayObject) : void
      {
         var _loc3_:o9823 = o11352.o4364(param1) as o9823;
         _loc3_.o8923.o3700 = param2;
         _loc3_.o1258();
      }
      
      private function o15854(param1:String, param2:String, param3:String, param4:int, param5:TextField) : o9823
      {
         param5.mouseEnabled = false;
         var _loc7_:MovieClip = o2481.getChildByName("newSlotsContainer") as MovieClip;
         var _loc6_:o9823 = new o9823();
         _loc6_.init(_loc7_.getChildByName(param1) as MovieClip);
         _loc6_.o17379 = _loc7_.getChildByName(param1 + "Bg") as MovieClip;
         _loc6_.o17379.gotoAndStop(1);
         _loc6_.o20971 = param5;
         _loc6_.o11707 = param3;
         _loc6_.o8923 = new o5024();
         _loc6_.o8923.o1093 = false;
         _loc6_.o8923.init(_loc7_.getChildByName(param2) as MovieClip);
         this.o5452(_loc6_.o8923);
         this.o5452(_loc6_);
         return _loc6_;
      }
      
      public function o16384(param1:MovieClip, param2:int, param3:o13064) : void
      {
         var _loc5_:* = null;
         var _loc13_:* = null;
         super.init(param1);
         this.o16989 = param3;
         o2481 = param1;
         o7750 = new o20565(this);
         var _loc4_:MovieClip = o2481.getChildByName("newSlotsContainer") as MovieClip;
         var _loc8_:Array = [];
         _loc8_.push(o15854("btnHelmet","hemetImagePlaceholder","Helmet",0,_loc4_.getChildByName("lblHelmet") as TextField));
         _loc8_.push(o15854("btnVest","vestImagePlaceholder","Vest",1,_loc4_.getChildByName("lblVest") as TextField));
         _loc8_.push(o15854("btnPants","pantsImagePlaceholder","Pants",2,_loc4_.getChildByName("lblLegs") as TextField));
         _loc8_.push(o15854("btnGloves","glovesImagePlaceholder","Gloves",3,_loc4_.getChildByName("lblGloves") as TextField));
         _loc8_.push(o15854("btnBoots","bootsImagePlaceholder","Boots",4,_loc4_.getChildByName("lblBoots") as TextField));
         o11352 = o7750.o3538(_loc8_);
         o1502 = o2481.getChildByName("armorDetails") as DisplayObjectContainer;
         o9539 = o7750.o17578("btnSell",o1502);
         o17375 = o7750.o17578("btnEquip",o1502);
         o7836 = o1502.getChildByName("brandName") as MovieClip;
         o19435 = asset.getChildByName("noEquipmentSelectedMessage") as MovieClip;
         o19435.visible = false;
         o2881 = o1502.getChildByName("infoContainer") as MovieClip;
         o19925 = new o5024();
         o19925.init(o1502.getChildByName("armorIconContainer") as MovieClip);
         this.o5452(o19925);
         var _loc14_:MovieClip = o2481.getChildByName("armorSelectHolder") as MovieClip;
         o20029 = o7750.o17578("btnPrev",_loc14_);
         o1934 = o7750.o17578("btnNext",_loc14_);
         var _loc17_:Vector.<o15625> = o4708(_loc14_);
         var _loc12_:MovieClip = _loc14_.getChildByName("armorRecordPagingCenter") as MovieClip;
         o19854 = o7750.o3870(o20029,o1934,_loc17_,o2474,_loc12_);
         o19854.o10793 = o16659;
         o19854.o672 = true;
         var _loc19_:int = 0;
         var _loc18_:* = o19854.o19568;
         for each(var _loc10_ in o19854.o19568)
         {
            _loc10_.addEventListener("doubleClick",o10146,false,0,true);
         }
         o7750.o13962("aug",1,o14707,"on","off",o1502);
         var _loc15_:Vector.<o15625> = new Vector.<o15625>();
         var _loc16_:Vector.<o15625> = new Vector.<o15625>();
         var _loc21_:int = 0;
         var _loc20_:* = o11352.o19568;
         for each(var _loc11_ in o11352.o19568)
         {
            _loc15_.push(_loc11_);
            _loc16_.push(_loc11_);
         }
         var _loc23_:int = 0;
         var _loc22_:* = o19854.o19568;
         for each(var _loc9_ in o19854.o19568)
         {
            _loc15_.push(_loc9_);
         }
         o16861 = new Vector.<o19067>();
         var _loc25_:int = 0;
         var _loc24_:* = o19854.o19568;
         for each(var _loc7_ in o19854.o19568)
         {
            _loc5_ = new o19067();
            _loc5_.init(_loc7_,_loc16_,o5626,o5708,o6317,o19491);
            this.o16861.push(_loc5_);
         }
         o5090 = new Vector.<o19067>();
         var _loc27_:int = 0;
         var _loc26_:* = o11352.o19568;
         for each(var _loc6_ in o11352.o19568)
         {
            _loc13_ = new o19067();
            _loc13_.init(_loc6_,_loc15_,o18112,o19661,o18844,o16726);
            this.o5090.push(_loc13_);
         }
         o11352.addEventListener(o5595.o16737,o5093,false,0,true);
         o19854.addEventListener(o5595.o16737,o2805,false,0,true);
         o19923 = o2481.getChildByName("armorTotals") as MovieClip;
         o5084 = o7750.o15961("btnTotalPhysical","TODO",o19923);
         o7091 = o7750.o15961("btnTotalHeat","TODO",o19923);
         o9301 = o7750.o15961("btnTotalToxic","TODO",o19923);
         o4681 = o19923.getChildByName("lblMovementTotal") as TextField;
         this.o7599(false);
         this.o8021 = o7750.o17578("btnMoreInfo",o1502);
         this.o8021.addEventListener("click",o3785,false,0,true);
         this.o17375.addEventListener("click",o9560,false,0,true);
         this.o9539.addEventListener("click",o17899,false,0,true);
         o10565 = o17382();
         o10565.o16384(o1502 as MovieClip,this.o16989);
         this.o5452(o10565);
         o10565.addEventListener(o5595.o16737,o8664,false,0,true);
         o9193 = new o11112();
         o9193.o16384(o2881 as MovieClip,11);
         this.o5452(o9193);
         o2881.visible = false;
         o2175 = o1502.getChildByName("lblMoreInfoValue") as TextField;
         o1950 = o1502.getChildByName("lblMoreInfoBonus") as TextField;
         o20145 = o1502.getChildByName("lblSlot") as TextField;
         o11352.o2120 = 1;
      }
      
      override protected function o12638(param1:Event) : void
      {
         this.o8867();
         super.o12638(param1);
      }
      
      private function o12473(param1:String) : String
      {
         if(param1 == "+0.0" || param1 == "+0.0%" || param1 == "+0" || param1 == "+0%")
         {
            return "";
         }
         return param1;
      }
      
      public function o611(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String) : void
      {
         o2175.text = param1 + "\n" + param3 + "\n" + param5 + "\n" + param7;
         o1950.text = o12473(param2) + "\n" + o12473(param4) + "\n" + o12473(param6) + "\n" + o12473(param8);
         o20145.text = param9;
      }
      
      protected function o18299(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String) : void
      {
         if(o5084 != null)
         {
            o5084.o13586 = param1;
            o5084.o20692 = param2;
         }
         if(o7091 != null)
         {
            o7091.o13586 = param3;
            o7091.o20692 = param4;
         }
         if(o9301 != null)
         {
            o9301.o13586 = param5;
            o9301.o20692 = param6;
         }
         if(o4681)
         {
            o4681.text = param7;
         }
      }
      
      protected function o8664(param1:o11507) : void
      {
      }
      
      override public function o13640() : void
      {
         o11352.removeEventListener(o5595.o16737,o5093);
         o19854.removeEventListener(o5595.o16737,o2805);
         this.o8021.removeEventListener("click",o3785);
         this.o17375.removeEventListener("click",o9560);
         this.o9539.removeEventListener("click",o17899);
         var _loc4_:int = 0;
         var _loc3_:* = o19854.o19568;
         for each(var _loc1_ in o19854.o19568)
         {
            _loc1_.removeEventListener("doubleClick",o10146);
         }
         var _loc6_:int = 0;
         var _loc5_:* = o16861;
         for each(var _loc2_ in o16861)
         {
            _loc2_.o13640();
         }
         o10565.removeEventListener(o5595.o16737,o8664);
         o7750.o13640();
         o2481 = null;
         o7750 = null;
         o16989 = null;
         o6847 = 0;
         o11352 = null;
         o9539 = null;
         o17375 = null;
         o8021 = null;
         o5084 = null;
         o7091 = null;
         o9301 = null;
         o1934 = null;
         o20029 = null;
         o19925 = null;
         o1502 = null;
         o19854 = null;
         o15591 = 0;
         o14177 = false;
         o10565 = null;
         o9193 = null;
         o7836 = null;
         o16861 = null;
         o5090 = null;
         o2881 = null;
         o2175 = null;
         o1950 = null;
         o20145 = null;
         o19435 = null;
         o19923 = null;
         o4681 = null;
         o16720 = 0;
         o12717 = false;
         o12063 = 0;
         super.o13640();
      }
      
      protected function o9210(param1:String, param2:String) : void
      {
         var _loc3_:TextField = o2881.getChildByName("lblInfo") as TextField;
         _loc3_.text = param1;
      }
      
      private function o3785(param1:MouseEvent) : void
      {
         o8021.o3993 = !o8021.o3993;
         o2881.visible = o8021.o3993;
      }
      
      private function o10146(param1:MouseEvent) : void
      {
         o9560(null);
      }
      
      private function o9560(param1:MouseEvent) : void
      {
         if(o14177)
         {
            this.o19854.o2120 = o14970(this.o11352.o2120);
            this.o1258();
            return;
         }
         this.o7247(o11352.o2120,o19854.o2120);
         this.o11352.o2120 = this.o11352.o2120;
         this.o1258();
      }
      
      protected function o5942() : void
      {
         if(o14177)
         {
            this.o12257(o11352.o2120);
         }
         else
         {
            this.o5400(o19854.o2120);
         }
      }
      
      protected function o13219() : void
      {
      }
      
      private function o17899(param1:MouseEvent) : void
      {
         o13219();
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
      
      protected function o4436() : void
      {
         o9193.clear();
         var _loc1_:* = int(!!o14177?o11352.o2120:o19854.o2120);
         if(_loc1_ < 0)
         {
            _loc1_ = _loc1_;
         }
         o14379(o14177,_loc1_);
         o10565.o14806(o14177,_loc1_,this.o15591);
      }
      
      private function o2474(param1:int, param2:o15625) : void
      {
         o14921(param1);
      }
      
      private function o16659(param1:int, param2:o15625) : void
      {
         o15860(param1);
      }
      
      private function o4708(param1:MovieClip) : Vector.<o15625>
      {
         var _loc2_:* = null;
         var _loc5_:Vector.<o15625> = new Vector.<o15625>();
         var _loc3_:Vector.<DisplayObject> = o7750.o17043("btnArmor",param1);
         var _loc7_:int = 0;
         var _loc6_:* = _loc3_;
         for each(var _loc4_ in _loc3_)
         {
            _loc2_ = new o736();
            _loc2_.init(_loc4_ as MovieClip);
            this.o5452(_loc2_);
            _loc5_.push(_loc2_);
         }
         return _loc5_;
      }
      
      private function o5093(param1:o11507) : void
      {
         var _loc2_:int = param1.o6457;
         if(_loc2_ != o16720)
         {
            o14793(_loc2_);
            o19854.o1746(this.o2297);
            o19854.o1258();
         }
         o14177 = true;
         o4436();
         o16720 = param1.o6457;
      }
      
      protected function o2805(param1:o11507) : void
      {
         var _loc2_:int = param1.o6457;
         if(_loc2_ < 0)
         {
            if(o14177 == false)
            {
               this.o7599(false);
            }
         }
         else
         {
            o14177 = false;
            o4436();
         }
      }
      
      protected function o7599(param1:Boolean) : void
      {
         o1502.visible = param1;
         o9539.visible = param1;
         o17375.visible = param1;
         o19925.visible = param1;
         o19435.visible = param1 == false;
         o19923.visible = param1;
         var _loc2_:TextField = o19435.getChildByName("lblMessage") as TextField;
         if(o2297 == 0)
         {
            _loc2_.text = "Inventory empty";
         }
         else
         {
            _loc2_.text = "Select an item from your inventory";
         }
      }
      
      override protected function draw() : void
      {
         var _loc1_:int = 0;
         o19854.o1746(this.o2297);
         _loc1_ = 0;
         while(_loc1_ < 5)
         {
            o11352.o4364(_loc1_);
            o10708(_loc1_);
            _loc1_++;
         }
         o4436();
         super.draw();
      }
      
      protected function o2135() : int
      {
         var _loc1_:int = !!o14177?o11352.o2120:o19854.o2120;
         return o2465(o14177,_loc1_);
      }
      
      protected function o18213(param1:Boolean, param2:String, param3:int, param4:String, param5:String, param6:int, param7:DisplayObject, param8:int, param9:int, param10:int, param11:int) : void
      {
         if(param9 > 3)
         {
            this.o16989.o12407("Ignore invalid data. set to " + 3.toString() + " slots","Equipment can only support up to " + 3.toString() + " augments (currently has " + param9.toString() + " augments)");
            param9 = 3;
         }
         var _loc14_:MovieClip = o1502.getChildByName("eliteCore") as MovieClip;
         if(_loc14_ != null)
         {
            _loc14_.visible = param11 > 0;
         }
         o7750.o17506("lblHeading",param2,o1502);
         var _loc13_:TextField = o1502.getChildByName("lblHeading") as TextField;
         _loc13_.mouseEnabled = false;
         (o1502.getChildByName("grade") as MovieClip).gotoAndStop(param3 + 1);
         o6847 = param9;
         o10565.o20670(o6847);
         o7750.o5877("aug",param6,o10565.o12496(),"on","off",o14707,o1502);
         o19925.o3700 = param7;
         _loc13_.autoSize = "left";
         _loc13_.visible = true;
         var _loc12_:MovieClip = o1502.getChildByName("equipmentVersion") as MovieClip;
         _loc12_.gotoAndStop(param10);
         _loc12_.x = _loc13_.x + _loc13_.width;
         (o1502.getChildByName("brandname") as MovieClip).gotoAndStop(param8);
         o7750.o17506("lblSellFor","for $" + o16724.o10417(this.o2135()),o1502);
         o17375.o3993 = o14177;
      }
      
      protected function o19439(param1:int, param2:DisplayObject, param3:int) : void
      {
      }
      
      protected function o13524(param1:int, param2:int) : void
      {
         var _loc3_:MovieClip = this.o11352.o19568[param1].asset.getChildByName("eliteCore") as MovieClip;
         if(_loc3_ != null)
         {
            _loc3_.visible = param2 > 0;
         }
      }
      
      protected function o7176(param1:int, param2:int, param3:DisplayObject, param4:String, param5:int, param6:int, param7:int, param8:int, param9:Boolean, param10:int) : o736
      {
         var _loc11_:o736 = o19854.o3410(param1) as o736;
         if(_loc11_ == null)
         {
            return null;
         }
         _loc11_.o13586 = param4;
         _loc11_.o3700 = param3;
         _loc11_.o19948 = param2;
         _loc11_.grade = param5;
         _loc11_.o4990 = param6;
         _loc11_.o14075 = param7;
         _loc11_.o11262 = param8;
         _loc11_.o2397 = param9;
         _loc11_.o263 = param10;
         _loc11_.o1258();
         return _loc11_;
      }
      
      private function o5626(param1:o19067, param2:Point) : void
      {
         var _loc4_:* = null;
         var _loc6_:MovieClip = o7213();
         var _loc5_:o736 = param1.o11569 as o736;
         var _loc3_:int = o19854.o8716(_loc5_);
         this.o19854.o2120 = o19854.o19452(_loc3_);
         if(this.o19854.o2120 >= 0)
         {
            _loc4_ = o10072(this.o19854.o2120);
            if(_loc4_ != null)
            {
               _loc6_.addChild(_loc4_);
            }
         }
         param1.o16088(_loc6_);
         this.asset.stage.addChild(_loc6_);
      }
      
      private function o5708(param1:o19067, param2:MovieClip) : void
      {
         o8867(param2);
         this.asset.stage.removeChild(param2);
      }
      
      private function o6317(param1:o19067, param2:MovieClip, param3:MovieClip, param4:int) : Boolean
      {
         o12717 = false;
         var _loc5_:* = true;
         if(param4 < 5)
         {
            _loc5_ = o12063 == param4;
            if(_loc5_)
            {
               o10179(param2,"Equip");
            }
            else
            {
               o10179(param2,"Cancel");
               o12717 = true;
            }
         }
         else
         {
            o10179(param2,"Cancel");
            o12717 = true;
         }
         return _loc5_;
      }
      
      private function o19491(param1:o19067, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(o12717)
         {
            return;
         }
         if(param2 >= 0)
         {
            if(param2 < 5)
            {
               o11352.o2120 = param2;
               _loc6_ = param1.o11569 as o736;
               _loc5_ = o19854.o8716(_loc6_);
               this.o19854.o2120 = o19854.o19452(_loc5_);
               this.o9560(null);
            }
            else
            {
               param2 = param2 - 5;
               _loc5_ = o19854.o8716(param1.o11569);
               _loc3_ = o19854.o19452(_loc5_);
               _loc4_ = this.o19854.o2120;
               if(_loc3_ != _loc4_)
               {
                  o11729(_loc3_,_loc4_);
               }
            }
         }
      }
      
      protected function o3489(param1:MovieClip) : void
      {
         var _loc2_:* = 1.3;
         o20852.o17542(param1,113.85 * _loc2_,61.05 * _loc2_);
         param1.x = -param1.width / 2;
         param1.y = -param1.height / 2;
      }
      
      private function o7213() : MovieClip
      {
         var _loc3_:MovieClip = new MovieClip();
         var _loc2_:TextField = new TextField();
         _loc2_.name = "label";
         _loc2_.text = "Test label";
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
      
      private function o18112(param1:o19067, param2:Point) : void
      {
         var _loc3_:* = null;
         var _loc4_:MovieClip = o7213();
         var _loc5_:o9823 = param1.o11569 as o9823;
         this.o11352.o2120 = o11352.o8716(_loc5_);
         if(this.o11352.o2120 >= 0)
         {
            _loc3_ = o19493(this.o11352.o2120);
            if(_loc3_ != null)
            {
               _loc4_.addChildAt(_loc3_,0);
            }
            else
            {
               return;
            }
         }
         param1.o16088(_loc4_);
         this.asset.addChild(_loc4_);
      }
      
      private function o10179(param1:MovieClip, param2:String) : void
      {
         var _loc3_:TextField = param1.getChildByName("label") as TextField;
         _loc3_.text = param2;
      }
      
      private function o19661(param1:o19067, param2:MovieClip) : void
      {
         o8867(param2);
         this.asset.removeChild(param2);
      }
      
      protected function o19971(param1:int, param2:int) : Boolean
      {
         return false;
      }
      
      private function o18844(param1:o19067, param2:MovieClip, param3:MovieClip, param4:int) : Boolean
      {
         var _loc5_:int = 0;
         if(param4 < 5)
         {
            if(param4 == o11352.o2120)
            {
               o10179(param2,"Cancel");
               return false;
            }
            o10179(param2,"Unequip");
            return true;
         }
         _loc5_ = param4 - 5;
         _loc5_ = o19854.o19452(_loc5_);
         if(o19971(o11352.o2120,_loc5_))
         {
            o10179(param2,"Swap");
            return true;
         }
         o10179(param2,"Cancel");
         return false;
      }
      
      private function o16726(param1:o19067, param2:int) : void
      {
         if(param2 < 0)
         {
            this.o19854.o2120 = o14970(this.o11352.o2120);
            this.o1258();
            return;
         }
         if(param2 >= 5)
         {
            param2 = param2 - 5;
            param2 = o19854.o19452(param2);
            if(o19971(o11352.o2120,param2))
            {
               o19854.o2120 = param2;
               this.o7247(o11352.o2120,o19854.o2120);
               this.o1258();
            }
         }
      }
      
      protected function o10072(param1:int) : MovieClip
      {
         return null;
      }
      
      protected function o19493(param1:int) : MovieClip
      {
         return null;
      }
      
      protected function o14793(param1:int) : void
      {
      }
      
      protected function get o2297() : int
      {
         return 0;
      }
      
      protected function o10708(param1:int) : void
      {
      }
      
      protected function o14379(param1:Boolean, param2:int) : void
      {
      }
      
      protected function o14921(param1:int) : void
      {
      }
      
      protected function o15860(param1:int) : void
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
      
      protected function o11729(param1:int, param2:int) : void
      {
      }
      
      protected function o2465(param1:Boolean, param2:int) : int
      {
         return 0;
      }
   }
}
