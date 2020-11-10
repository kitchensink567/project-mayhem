package
{
   import assets.ui.dialog.AddAugmentDialogAsset;
   import assets.ui.dialog.AddAugmentPremiumDialogAsset;
   import assets.ui.dialog.AugmentExpertiseRewardsDialogAsset;
   import assets.ui.dialog.UpgradeAugmentDialogAsset;
   import assets.ui.dialog.UpgradeAugmentPremiumDialogAsset;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o8282 extends o12158
   {
       
      
      private var o7750:o20565;
      
      private var o16989:o13064;
      
      private var o5253:o20421;
      
      private var o16344:o20421;
      
      public var o1550:Boolean;
      
      public var o4230:int = -1;
      
      public var o7042:int;
      
      protected var o13425:int = 3;
      
      protected var o16870:int = 3;
      
      private var o19116:int;
      
      private var o11360:int;
      
      private var o13243:MovieClip;
      
      private var o7603:o6776;
      
      private var o11056:o15306;
      
      protected var o19684:o13066;
      
      protected var o10149:o12271;
      
      private var o9637:Vector.<TextField>;
      
      private var o4990:int;
      
      private var o16647:int;
      
      private var o1418:int;
      
      protected var o8837:o20516;
      
      public function o8282()
      {
         super();
      }
      
      override public function o12496() : int
      {
         return o16870;
      }
      
      protected function o19788(param1:int) : void
      {
         dispatchEvent(new o11507(o5595.o16737,param1));
      }
      
      override public function o20670(param1:int) : void
      {
         o16870 = param1;
         this.o1258();
      }
      
      override public function o16384(param1:MovieClip, param2:o13064) : void
      {
         var _loc6_:* = null;
         var _loc5_:int = 0;
         var _loc7_:* = null;
         super.init(param1);
         this.o16989 = param2;
         o7750 = new o20565(this);
         o13243 = param1;
         o9637 = new Vector.<TextField>();
         o9637.push(param1.getChildByName("lblHelmet") as TextField);
         o9637.push(param1.getChildByName("lblVest") as TextField);
         o9637.push(param1.getChildByName("lblGloves") as TextField);
         o9637.push(param1.getChildByName("lblLegs") as TextField);
         o9637.push(param1.getChildByName("lblBoots") as TextField);
         var _loc3_:Array = [];
         _loc5_ = 0;
         while(_loc5_ < o13425)
         {
            _loc6_ = new o11343();
            _loc6_.init(o13243.getChildByName("btnAug" + _loc5_) as MovieClip);
            this.o5452(_loc6_);
            _loc6_.o13586 = "test " + _loc5_;
            _loc3_.push(_loc6_);
            _loc5_++;
         }
         o5253 = o7750.o3538(_loc3_);
         o5253.o2345 = false;
         var _loc4_:Array = [];
         _loc5_ = 0;
         while(_loc5_ < o13425)
         {
            _loc6_ = new o11343();
            _loc6_.init(o13243.getChildByName("btnAugSelect" + _loc5_) as MovieClip);
            this.o5452(_loc6_);
            _loc6_.o13586 = "<Empty Slot>";
            _loc6_.grade = 0;
            _loc4_.push(_loc6_);
            _loc5_++;
         }
         o16344 = o7750.o3538(_loc4_);
         o16344.o2345 = false;
         o5253.addEventListener(o5595.o16737,o11345,false,0,true);
         o16344.addEventListener(o5595.o16737,o17701,false,0,true);
      }
      
      protected function o5996() : void
      {
      }
      
      protected function o13459() : void
      {
      }
      
      override public function close(param1:Function) : void
      {
         super.close(param1);
      }
      
      protected function o14175(param1:int) : void
      {
         var _loc2_:int = o5253.o2120;
         if(o6967(param1,o19116,o1550,o4230,o7042))
         {
            if(o16647 > 1)
            {
               o3549();
               o8085(o4990 - 1,o1550,o4230,o7042);
               o16975();
            }
         }
      }
      
      protected function o8807(param1:int) : void
      {
         var _loc2_:int = o5253.o2120;
         if(o6967(param1,o19116,o1550,o4230,o7042,true))
         {
            if(o16647 > 1)
            {
               o3549();
               o8085(o4990 - 1,o1550,o4230,o7042);
               o16975();
            }
         }
      }
      
      protected function o5278(param1:int, param2:Boolean = false) : void
      {
         if(o17185(param1,o1550,o4230,o7042,param2))
         {
            if(o1418 == o16647 - 1)
            {
               o8085(param1,o1550,o4230,o7042);
               o16975();
               if(o10149)
               {
                  o10149.o12157();
               }
               else
               {
                  o19684.o12157();
               }
            }
            else
            {
               o8085(param1,o1550,o4230,o7042);
               o16975();
            }
         }
      }
      
      protected function o7867(param1:int) : void
      {
         if(o7813(param1,o1550,o4230,o7042))
         {
            o10149.o12157();
         }
      }
      
      protected function o11345(param1:o11507) : void
      {
         o19116 = param1.o6457;
         if(o19116 < 0)
         {
            return;
         }
         o16344.removeEventListener(o5595.o16737,o17701);
         o16344.o2120 = o5253.o2120;
         o16344.addEventListener(o5595.o16737,o17701,false,0,true);
         if(o5253.o2120 >= 0)
         {
            o3549();
            o8085(param1.o6457,o1550,o4230,o7042);
         }
         o19788(param1.o6457);
      }
      
      private function o17217() : o15306
      {
         o11056 = new o15306();
         var _loc1_:MovieClip = o13243.parent as MovieClip;
         o11056.o16384(new AddAugmentPremiumDialogAsset(),o8807,o5996);
         o16989.o9642(o11056);
         o11056.o9072(null);
         return o11056;
      }
      
      private function o14963() : o6776
      {
         o7603 = new o6776();
         var _loc1_:MovieClip = o13243.parent as MovieClip;
         o7603.o16384(new AddAugmentDialogAsset(),o14175,o5996);
         o16989.o9642(o7603);
         o7603.o9072(null);
         return o7603;
      }
      
      protected function o3549(param1:Boolean = false) : o13066
      {
         o8837 = new o20516();
         o8837.o17920 = false;
         o8837.o16384(new AugmentExpertiseRewardsDialogAsset(),o4519.o10093.o16989);
         o16989.o9642(o8837);
         o8837.o9072(null,null);
         var _loc3_:o14096 = null;
         var _loc2_:o1253 = null;
         if(o1878 is o16381)
         {
            _loc2_ = o14200.o19505.o7923.o16325(o1550,o4230,o7042);
         }
         else
         {
            _loc3_ = o14200.o19505.o7923.o17303(o1550,o4230,o7042);
         }
         if(_loc3_ && _loc3_.o2752.o19901 || _loc2_ && _loc2_.o19901)
         {
            o10149 = new o12271();
            o10149.o16384(new UpgradeAugmentPremiumDialogAsset(),o5278,o13459,o7867,o8837);
            o16989.o9642(o10149);
            o10149.o9072(null);
         }
         else
         {
            o19684 = new o13066();
            o19684.o16384(new UpgradeAugmentDialogAsset(),o5278,o13459,o8837);
            o16989.o9642(o19684);
            o19684.o9072(null);
         }
         return o19684;
      }
      
      protected function o17701(param1:o11507, param2:Boolean = false) : void
      {
         var _loc7_:* = null;
         var _loc3_:* = null;
         o19116 = param1.o6457;
         if(o19116 < 0)
         {
            return;
         }
         o5253.removeEventListener(o5595.o16737,o11345);
         o5253.o2120 = o16344.o2120;
         o5253.addEventListener(o5595.o16737,o11345,false,0,true);
         var _loc6_:o14096 = null;
         var _loc5_:o1253 = null;
         if(this.o1878 is o16381)
         {
            _loc5_ = o14200.o19505.o7923.o16325(o1550,o4230,o7042);
         }
         else
         {
            _loc6_ = o14200.o19505.o7923.o17303(o1550,o4230,o7042);
         }
         if(_loc6_ && _loc6_.o2752.o19901 || _loc5_ && _loc5_.o19901)
         {
            _loc7_ = o17217();
            o11360 = 0;
            var _loc9_:int = 0;
            var _loc8_:* = _loc7_.o912;
            for each(var _loc4_ in _loc7_.o912)
            {
               _loc4_.visible = false;
            }
         }
         else
         {
            _loc3_ = o14963();
            o11360 = 0;
            var _loc11_:int = 0;
            var _loc10_:* = _loc3_.o912;
            for each(_loc4_ in _loc3_.o912)
            {
               _loc4_.visible = false;
            }
         }
         o16909(o1550,o4230,o7042);
         o19788(param1.o6457);
      }
      
      private function o16975() : void
      {
         var _loc1_:int = 0;
         if(o4230 >= 0)
         {
            o4990 = o15561(o1550,o4230,o7042);
            _loc1_ = o4990;
            while(_loc1_ < o16870)
            {
               o16344.o4364(_loc1_).visible = true;
               o16344.o4364(_loc1_).enabled = true;
               _loc1_++;
            }
         }
      }
      
      override protected function draw() : void
      {
         var _loc1_:int = 0;
         super.draw();
         _loc1_ = 0;
         while(_loc1_ < o13425)
         {
            o5253.o4364(_loc1_).visible = false;
            o16344.o4364(_loc1_).visible = false;
            _loc1_++;
         }
         o16975();
      }
      
      protected function o5831(param1:int) : void
      {
         var _loc2_:int = 0;
         this.o16647 = param1;
         _loc2_ = 0;
         while(_loc2_ < o13425)
         {
            (o16344.o4364(_loc2_) as o11343).o16647 = param1;
            _loc2_++;
         }
      }
      
      override public function o14806(param1:Boolean, param2:int, param3:int) : void
      {
         this.o1550 = param1;
         this.o4230 = param2;
         this.o7042 = param3;
         o5253.o2120 = -1;
         o16344.o2120 = -1;
         this.o1258();
      }
      
      protected function o7252(param1:int, param2:String, param3:String, param4:int, param5:int, param6:String, param7:String, param8:int, param9:String) : void
      {
         this.o1418 = param4;
         var _loc11_:o14096 = null;
         var _loc10_:o1253 = null;
         if(this.o1878 is o16381)
         {
            _loc10_ = o14200.o19505.o7923.o16325(o1550,o4230,o7042);
         }
         else
         {
            _loc11_ = o14200.o19505.o7923.o17303(o1550,o4230,o7042);
         }
         if(_loc11_ && _loc11_.o2752.o19901 || _loc10_ && _loc10_.o19901)
         {
            this.o10149.o11246(param1,param2,param3,param4,param5,param6,param7,0,null,param9);
         }
         else
         {
            this.o19684.o11246(param1,param2,param3,param4,param5,param6,param7,param8,null,param9);
         }
      }
      
      protected function o6875(param1:int, param2:String, param3:int, param4:int, param5:String) : void
      {
         o16344.o4364(param1).visible = false;
         var _loc6_:o11343 = o5253.o4364(param1) as o11343;
         _loc6_.visible = true;
         _loc6_.o13586 = param2;
         var _loc7_:MovieClip = _loc6_.asset.getChildByName("icon") as MovieClip;
         _loc7_.gotoAndStop(param5);
         _loc6_.grade = param3;
         _loc6_.o16647 = param4;
      }
      
      protected function o6498(param1:int, param2:String, param3:String, param4:int, param5:Boolean, param6:String, param7:String) : void
      {
         var _loc8_:* = null;
         var _loc10_:o14096 = null;
         var _loc9_:o1253 = null;
         if(this.o1878 is o16381)
         {
            _loc9_ = o14200.o19505.o7923.o16325(o1550,o4230,o7042);
         }
         else
         {
            _loc10_ = o14200.o19505.o7923.o17303(o1550,o4230,o7042);
         }
         if(_loc10_ && _loc10_.o2752.o19901 || _loc9_ && _loc9_.o19901)
         {
            _loc8_ = o11056.o912[o11360];
         }
         else
         {
            _loc8_ = o7603.o912[o11360];
         }
         _loc8_.visible = true;
         _loc8_.o13586 = param2;
         _loc8_.o9421 = param4;
         _loc8_.o8398 = param3;
         _loc8_.enabled = param5 == false;
         _loc8_.o7219 = param6;
         _loc8_.o18619 = param7;
         o11360 = Number(o11360) + 1;
      }
      
      override public function o13640() : void
      {
         o5253.removeEventListener(o5595.o16737,o11345);
         o16344.removeEventListener(o5595.o16737,o17701);
         o7750.o13640();
         o7750 = null;
         o16989 = null;
         o5253 = null;
         o16344 = null;
         o1550 = false;
         o4230 = 0;
         o7042 = 0;
         o13425 = 0;
         o16870 = 0;
         o19116 = 0;
         o11360 = 0;
         o13243 = null;
         o7603 = null;
         o11056 = null;
         o19684 = null;
         o10149 = null;
         o9637 = null;
         o8837 = null;
         super.o13640();
      }
   }
}
