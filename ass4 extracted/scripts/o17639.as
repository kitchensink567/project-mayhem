package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o17639 extends o9743
   {
       
      
      private var o16989:o13064;
      
      private var o7750:o20565;
      
      public var o11352:o20421;
      
      public var o15868:Vector.<o5024>;
      
      public var o14966:o15625;
      
      public var o19425:MovieClip;
      
      public var o3190:TextField;
      
      public var o11915:o20421;
      
      public var o19034:o6583;
      
      public function o17639()
      {
         super();
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         super.o14009(param1,param2,param3,param4);
         this.asset.y = this.asset.y - 20;
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc9_:* = null;
         var _loc8_:* = null;
         var _loc3_:* = null;
         var _loc5_:* = null;
         super.init(param1);
         this.o16989 = param2;
         o7750 = new o20565(this);
         var _loc4_:MovieClip = container;
         var _loc11_:Array = [];
         _loc11_.push(o15854("btnHelmet","hemetImagePlaceholder","Helmet",0,_loc4_.getChildByName("lblHelmet") as TextField));
         _loc11_.push(o15854("btnVest","vestImagePlaceholder","Vest",1,_loc4_.getChildByName("lblVest") as TextField));
         _loc11_.push(o15854("btnPants","pantsImagePlaceholder","Pants",2,_loc4_.getChildByName("lblLegs") as TextField));
         _loc11_.push(o15854("btnGloves","glovesImagePlaceholder","Gloves",3,_loc4_.getChildByName("lblGloves") as TextField));
         _loc11_.push(o15854("btnBoots","bootsImagePlaceholder","Boots",4,_loc4_.getChildByName("lblBoots") as TextField));
         o11352 = o7750.o3538(_loc11_);
         o11352.addEventListener(o5595.o16737,o5093,false,0,true);
         o15868 = new Vector.<o5024>();
         var _loc10_:Array = [];
         _loc6_ = 0;
         while(_loc6_ < 3)
         {
            _loc7_ = new o5024();
            _loc9_ = container.getChildByName("weapon" + _loc6_.toString()) as MovieClip;
            _loc8_ = _loc9_.getChildByName("iconContainer") as MovieClip;
            _loc7_.init(_loc8_);
            o15868.push(_loc7_);
            this.o5452(_loc7_);
            _loc3_ = o9679.o17578("weapon" + _loc6_.toString(),container);
            _loc10_.push(_loc3_);
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < 6)
         {
            _loc5_ = container.getChildByName("skill" + _loc6_) as MovieClip;
            _loc5_.visible = false;
            _loc6_++;
         }
         o11915 = o9679.o3538(_loc10_);
         o11915.addEventListener(o5595.o16737,o10996,false,0,true);
         o14966 = o7750.o17578("btnFollow",container);
         o14966.addEventListener("click",o18276,false,0,true);
         o19425 = container.getChildByName("clanContainer") as MovieClip;
         o19425.gotoAndStop(1);
         o3190 = container.getChildByName("lblFollowing") as TextField;
         o3190.visible = false;
         o19034 = new o6583();
         o19034.init(container);
         this.o5452(o19034);
         o11048();
      }
      
      protected function o10996(param1:o11507) : void
      {
      }
      
      protected function o5093(param1:o11507) : void
      {
      }
      
      protected function o18276(param1:Event) : void
      {
      }
      
      public function o10148(param1:int, param2:DisplayObject) : void
      {
         var _loc3_:o9823 = o11352.o4364(param1) as o9823;
         _loc3_.o8923.o3700 = param2;
         _loc3_.o1258();
      }
      
      public function o765(param1:String, param2:int, param3:String, param4:int, param5:String, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean, param13:Vector.<int>) : void
      {
         var _loc18_:* = null;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc28_:* = null;
         var _loc25_:TextField = container.getChildByName("playerName") as TextField;
         var _loc20_:TextField = container.getChildByName("lvlClass") as TextField;
         _loc25_.text = param1;
         _loc20_.text = "Level " + param2.toString() + ", " + param3;
         var _loc19_:MovieClip = container.getChildByName("levelIcon") as MovieClip;
         _loc19_.gotoAndStop(param4 + 1);
         var _loc26_:MovieClip = _loc19_.getChildByName("rankIcon") as MovieClip;
         _loc26_.gotoAndStop(param2);
         var _loc17_:TextField = container.getChildByName("lblStatValues") as TextField;
         _loc17_.text = param5 + "\n\n" + param6 + "\n\n" + o16724.o10417(param7) + "\n\n" + o16724.o10417(param8) + "\n\n" + o16724.o10417(param9) + "\n\n" + o16724.o10417(param10) + "\n\n" + o16724.o10417(param11);
         var _loc22_:TextField = container.getChildByName("lblStatNames") as TextField;
         _loc22_.text = "Hit Points: \n\nEnergy: \n\nMP Games: \n\nMP Wins: \n\nMP Loses: \n\nMP Kills: \n\nMP Deaths: \n\nSkills: \n\n\n" + (!!param12?"Team Power Ups:":"Power Ups");
         var _loc21_:TextField = container.getChildByName("lblPowerUpInfo") as TextField;
         var _loc15_:String = "";
         var _loc29_:o16253 = o4519.o8116.profileData.o5292.o11370;
         var _loc27_:Vector.<MovieClip> = new Vector.<MovieClip>();
         _loc23_ = 0;
         while(_loc23_ < 8)
         {
            _loc18_ = container.getChildByName("powerUpIcon" + _loc23_.toString()) as MovieClip;
            _loc18_.visible = false;
            _loc27_.push(_loc18_);
            _loc23_++;
         }
         var _loc14_:int = 0;
         var _loc35_:int = 0;
         var _loc34_:* = param13;
         for each(var _loc16_ in param13)
         {
            _loc28_ = _loc29_.o15415(_loc16_);
            if(param12)
            {
               var _loc31_:int = 0;
               var _loc30_:* = _loc28_.o983;
               for each(_loc24_ in _loc28_.o983)
               {
                  _loc14_++;
                  _loc18_ = _loc27_[_loc14_];
                  _loc18_.visible = true;
                  _loc18_.gotoAndStop(_loc28_.o3331);
                  _loc15_ = _loc15_ + (_loc24_ + "\n");
               }
            }
            else
            {
               var _loc33_:int = 0;
               var _loc32_:* = _loc28_.o12415;
               for each(_loc24_ in _loc28_.o12415)
               {
                  _loc14_++;
                  _loc18_ = _loc27_[_loc14_];
                  _loc18_.visible = true;
                  _loc18_.gotoAndStop(_loc28_.o3331);
                  _loc15_ = _loc15_ + (_loc24_ + "\n");
               }
            }
         }
         _loc21_.text = _loc15_;
      }
      
      public function o11197(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:MovieClip = container.getChildByName("skill" + param1.toString()) as MovieClip;
         _loc4_.visible = param3 > 0;
         _loc4_.gotoAndStop(param2);
         var _loc5_:TextField = _loc4_.getChildByName("skillLevel") as TextField;
         _loc5_.text = param3.toString();
      }
      
      public function reset() : void
      {
         var _loc6_:int = 0;
         var _loc3_:* = null;
         var _loc2_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc1_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < container.numChildren)
         {
            if(container.getChildAt(_loc6_) is MovieClip)
            {
               _loc3_ = (container.getChildAt(_loc6_) as MovieClip).name;
            }
            _loc6_++;
         }
         _loc4_ = 0;
         while(_loc4_ < 3)
         {
            _loc2_ = container.getChildByName("skill" + _loc4_.toString()) as MovieClip;
            _loc2_.visible = false;
            _loc2_.stop();
            _loc4_++;
         }
         _loc1_ = 0;
         while(_loc1_ < 3)
         {
            _loc5_ = container.getChildByName("weapon" + _loc1_.toString()) as MovieClip;
            _loc5_.visible = false;
            _loc5_.stop();
            _loc1_++;
         }
      }
      
      protected function o11048() : void
      {
      }
      
      private function o15854(param1:String, param2:String, param3:String, param4:int, param5:TextField) : o9823
      {
         param5.mouseEnabled = false;
         var _loc7_:MovieClip = container;
         var _loc6_:o9823 = new o9823();
         _loc6_.init(_loc7_.getChildByName(param1) as MovieClip);
         _loc6_.o17379 = _loc7_.getChildByName(param1 + "Bg") as MovieClip;
         _loc6_.o17379.gotoAndStop(1);
         _loc6_.o20971 = param5;
         _loc6_.o11707 = param3;
         var _loc8_:MovieClip = _loc6_.asset.getChildByName("eliteCore") as MovieClip;
         _loc8_.visible = false;
         _loc6_.o8923 = new o5024();
         _loc6_.o8923.o1093 = false;
         _loc6_.o8923.init(_loc7_.getChildByName(param2) as MovieClip);
         this.o5452(_loc6_.o8923);
         this.o5452(_loc6_);
         return _loc6_;
      }
      
      public function o5745(param1:MovieClip) : void
      {
         o15868[0].o3700 = o15868[0].o3700;
      }
      
      public function o18845(param1:MovieClip) : void
      {
         o15868[1].o3700 = o15868[1].o3700;
      }
      
      public function o1741(param1:MovieClip) : void
      {
         o15868[2].o3700 = o15868[2].o3700;
      }
      
      public function o5544(param1:int) : Function
      {
         switch(int(param1))
         {
            case 0:
               return o5745;
            case 1:
               return o18845;
            case 2:
               return o1741;
         }
      }
      
      public function o14290(param1:int, param2:DisplayObject, param3:o14096, param4:int, param5:int) : void
      {
         var _loc8_:MovieClip = container.getChildByName("weapon" + param1.toString()) as MovieClip;
         o15868[param1].o3700 = param2;
         this.o7750.o13240("aug0",param4 >= 1,_loc8_);
         this.o7750.o13240("aug1",param4 >= 2,_loc8_);
         this.o7750.o13240("aug2",param4 >= 3,_loc8_);
         this.o7750.o13240("aug3",param4 >= 4,_loc8_);
         o7750.o17506("weaponLevel",param3.grade.toString(),_loc8_);
         o7750.o17506("weaponName",param3.o7501,_loc8_);
         var _loc6_:MovieClip = o11915.o19568[param1].asset.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(_loc6_)
         {
            _loc6_.gotoAndStop(o7251.o20313(param3));
         }
         var _loc7_:MovieClip = o11915.o19568[param1].asset.getChildByName("eliteCore") as MovieClip;
         _loc7_.visible = param5 > 0;
         _loc8_.visible = true;
      }
      
      override public function o13640() : void
      {
         o14966.removeEventListener("click",o18276);
         o11915.removeEventListener(o5595.o16737,o10996);
         o11352.removeEventListener(o5595.o16737,o5093);
         o7750.o13640();
         o7750 = null;
         o16989 = null;
         o11352 = null;
         o15868 = null;
         o14966 = null;
         o19425 = null;
         o3190 = null;
         o11915 = null;
         o19034 = null;
         super.o13640();
      }
   }
}
