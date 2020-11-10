package
{
   import assets.ui.dialog.UnableToAddSkillPointsDialogAsset;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   
   public class o16486 extends o6539
   {
       
      
      public var o13044:Boolean = false;
      
      private var o7750:o20565;
      
      protected var o16989:o13064;
      
      protected var o19689:o978;
      
      public var o6867:Boolean = true;
      
      private var o15858:MovieClip;
      
      private var o16531:MovieClip;
      
      private var o15636:MovieClip;
      
      private var o4325:Vector.<o20912>;
      
      private var o12084:Vector.<o20912>;
      
      private var o14960:int = -1;
      
      private var o9755:int = -1;
      
      private var o4805:int = -1;
      
      private var o903:int = -1;
      
      private var o4976:TextField;
      
      protected var o4278:o15625;
      
      protected var o8400:o15625;
      
      protected var o20615:o15625;
      
      protected var o13389:o12290;
      
      protected var o2337:o12290;
      
      private var o13228:MovieClip;
      
      private var o1715:TextField;
      
      private var o3441:TextField;
      
      protected var o14898:TextField;
      
      private var o6140:MovieClip;
      
      protected var o7610:Boolean = false;
      
      private var o4390:Array;
      
      public function o16486()
      {
         o4390 = new Array(0,0,0,0,0,0,0,0);
         super();
      }
      
      public function o19591(param1:o9145) : void
      {
         o13389.visible = param1.o7768 <= 0;
         o13389.enabled = param1.o6061() == param1.level + param1.o10192?false:true;
         o2337.visible = param1.o7768 > 0;
         o2337.o13586 = param1.o7768.toString() + " RESPEC" + (param1.o7768 > 1?"S":"");
         o2337.enabled = param1.o6061() == param1.level + param1.o10192?false:true;
      }
      
      private function o6973(param1:String) : o20912
      {
         var _loc2_:o20912 = new o20912();
         var _loc3_:MovieClip = o15636.getChildByName(param1) as MovieClip;
         _loc2_.init(_loc3_);
         this.o5452(_loc2_);
         return _loc2_;
      }
      
      protected function o1499() : void
      {
      }
      
      public function o7187(param1:int, param2:String, param3:int, param4:int, param5:Boolean, param6:Boolean) : void
      {
         var _loc7_:o20912 = this.o4325[param1];
         _loc7_.o14925 = param2;
         _loc7_.o8061 = param3;
         _loc7_.o10798 = param4;
         _loc7_.o13228 = param5;
         _loc7_.o5882 = param6;
         _loc7_.visible = true;
      }
      
      public function o14083(param1:int, param2:String, param3:int, param4:int, param5:Boolean, param6:Boolean) : void
      {
         var _loc7_:o20912 = this.o12084[param1];
         _loc7_.o14925 = param2;
         _loc7_.o8061 = param3;
         _loc7_.o10798 = param4;
         _loc7_.o13228 = param5;
         _loc7_.o5882 = param6;
         _loc7_.visible = true;
      }
      
      public function o13405() : void
      {
         var _loc1_:* = null;
         var _loc3_:int = 0;
         var _loc2_:* = this.o4325;
         for each(_loc1_ in this.o4325)
         {
            _loc1_.visible = false;
         }
         var _loc5_:int = 0;
         var _loc4_:* = this.o12084;
         for each(_loc1_ in this.o12084)
         {
            _loc1_.visible = false;
         }
      }
      
      public function o17091(param1:int) : void
      {
         this.o4976.text = param1.toString() + " Skill points";
      }
      
      public function o11048() : void
      {
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc4_:int = 0;
         super.init(param1);
         this.o16989 = param2.o16989;
         this.o19689 = param2;
         param2.o14537(4);
         o7750 = new o20565(this);
         if(o13044)
         {
            return;
         }
         o15858 = param1.getChildByName("skillsConfirmBox") as MovieClip;
         o16531 = param1.getChildByName("skillsToolTip") as MovieClip;
         o15636 = param1.getChildByName("skills") as MovieClip;
         o16531.mouseChildren = false;
         o16531.mouseEnabled = false;
         o16531.visible = false;
         this.o13228 = o16531.getChildByName("locked") as MovieClip;
         this.o1715 = o16531.getChildByName("lblAddSkillPoint") as TextField;
         o4976 = o15636.getChildByName("skillPointsTotal") as TextField;
         o14898 = o15636.getChildByName("lblSkillsRole") as TextField;
         o13389 = o7750.o15961("btnRespec","Respec",o15636);
         o13389.addEventListener("click",o1680,false,0,true);
         o2337 = o7750.o15961("btnFreeRespec","Free Respec",o15636);
         o2337.addEventListener("click",o1680,false,0,true);
         o2337.visible = false;
         o4278 = o7750.o17578("btnOk",o15858);
         o8400 = o7750.o17578("btnCancel",o15858);
         o20615 = o7750.o17578("btnFakeAddSkillPointBg",o15858);
         o4278.addEventListener("click",o17963,false,0,true);
         o8400.addEventListener("click",o20078,false,0,true);
         o6140 = o15858.getChildByName("debugAddSkillPointCount") as MovieClip;
         o6140.visible = false;
         o3441 = o6140.getChildByName("txtAddSkillPoints") as TextField;
         o4325 = new Vector.<o20912>();
         o12084 = new Vector.<o20912>();
         _loc6_ = 0;
         while(_loc6_ < 12)
         {
            _loc5_ = o6973("baseSkill" + _loc6_.toString());
            _loc5_.addEventListener("click",o2910,false,0,true);
            _loc5_.o16058 = o13216;
            _loc5_.o9429 = o1084;
            o4325.push(_loc5_);
            _loc6_++;
         }
         _loc4_ = 0;
         while(_loc4_ < 8)
         {
            _loc5_ = o6973("roleSkill" + _loc4_.toString());
            _loc5_.addEventListener("click",o11208,false,0,true);
            _loc5_.o16058 = o18317;
            _loc5_.o9429 = o1084;
            o12084.push(_loc5_);
            _loc4_++;
         }
         o15858.visible = false;
         this.o13405();
         o413();
         param1.addEventListener("addedToStage",o343,false,0,true);
         param1.addEventListener("removedFromStage",o9588,false,0,true);
         this.o1258();
         param2.o9164(false);
         param2.o8987(true);
         param2.o16224(true);
         o11048();
      }
      
      private function o343(param1:Event) : void
      {
         asset.removeEventListener("addedToStage",o343);
         asset.stage.addEventListener("keyDown",o20303,false,0,true);
         asset.stage.addEventListener("keyUp",o16478,false,0,true);
      }
      
      private function o9588(param1:Event) : void
      {
         asset.stage.removeEventListener("keyDown",o20303);
         asset.stage.removeEventListener("keyUp",o16478);
      }
      
      private function o20303(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.keyCode;
         var _loc3_:* = _loc2_ >> 5;
         var _loc4_:* = o4390[_loc3_] | 1 << (_loc2_ & 31);
         o4390[_loc3_] = _loc4_;
      }
      
      private function o16478(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.keyCode;
         var _loc3_:* = _loc2_ >> 5;
         var _loc4_:* = o4390[_loc3_] & ~(1 << (_loc2_ & 31));
         o4390[_loc3_] = _loc4_;
      }
      
      public function o1395(param1:int) : Boolean
      {
         return 0 != (o4390[param1 >> 5] & 1 << (param1 & 31));
      }
      
      public function o413() : void
      {
      }
      
      override public function o13640() : void
      {
         var _loc1_:* = null;
         if(o13044)
         {
            return;
         }
         o4278.removeEventListener("click",o17963);
         o8400.removeEventListener("click",o20078);
         o13389.removeEventListener("click",o1680);
         var _loc3_:int = 0;
         var _loc2_:* = this.o4325;
         for each(_loc1_ in this.o4325)
         {
            _loc1_.removeEventListener("click",o2910);
         }
         var _loc5_:int = 0;
         var _loc4_:* = this.o12084;
         for each(_loc1_ in this.o12084)
         {
            _loc1_.removeEventListener("click",o11208);
         }
         o7750.o13640();
         o13044 = false;
         o7750 = null;
         o16989 = null;
         o19689 = null;
         o6867 = true;
         o15858 = null;
         o16531 = null;
         o15636 = null;
         o4325 = null;
         o12084 = null;
         o14960 = 0;
         o9755 = 0;
         o4805 = 0;
         o903 = 0;
         o4976 = null;
         o4278 = null;
         o8400 = null;
         o20615 = null;
         o13389 = null;
         o13228 = null;
         o1715 = null;
         o3441 = null;
         o14898 = null;
         o6140 = null;
         o7610 = false;
         o4390 = null;
         super.o13640();
      }
      
      private function o1084(param1:o20912) : void
      {
         this.o903 = -1;
         this.o4805 = -1;
         this.o16531.visible = false;
      }
      
      private function o1680(param1:Event) : void
      {
         o16989.o13483("Skill Respec","Are you sure you want to Respec your skills?",o9988);
      }
      
      private function o9988() : void
      {
         o9245();
      }
      
      protected function o9245() : void
      {
      }
      
      private function o13216(param1:o20912) : void
      {
         this.o903 = -1;
         this.o4805 = o9689(param1,o4325);
         o12705(o4805);
      }
      
      private function o18317(param1:o20912) : void
      {
         this.o903 = o9689(param1,o12084);
         this.o4805 = -1;
         o17550(o903);
      }
      
      private function o9689(param1:o20912, param2:Vector.<o20912>) : int
      {
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2.length)
         {
            if(param2[_loc3_] == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      private function o2910(param1:Event) : void
      {
         var _loc2_:o20912 = param1.target as o20912;
         this.o9755 = -1;
         this.o14960 = o9689(_loc2_,o4325);
         if(o6867 && o1395(16))
         {
            this.o12664(o14960,1);
         }
         else
         {
            o9635(o14960,true);
         }
      }
      
      private function o11208(param1:Event) : void
      {
         var _loc2_:o20912 = param1.target as o20912;
         this.o9755 = o9689(_loc2_,o12084);
         this.o14960 = -1;
         if(o6867 && o1395(16))
         {
            this.o16917(o9755,1);
         }
         else
         {
            o16974(o9755,true);
         }
      }
      
      override protected function draw() : void
      {
         super.draw();
      }
      
      protected function o9635(param1:int, param2:Boolean) : void
      {
      }
      
      protected function o16974(param1:int, param2:Boolean) : void
      {
      }
      
      protected function o9443(param1:int, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Boolean, param8:int, param9:int, param10:int) : void
      {
         this.o16531.visible = true;
         var _loc12_:int = param1 % 3;
         var _loc11_:int = param1 / 3;
         o16531.x = 166 + 150 * _loc12_;
         o16531.y = 117 + 107.3 * _loc11_ - 30;
         o4736(o16531.getChildByName("skillInfoContainer") as MovieClip,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      protected function o19025(param1:int, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Boolean, param8:int, param9:int, param10:int) : void
      {
         this.o16531.visible = true;
         var _loc12_:int = param1 % 2;
         var _loc11_:int = param1 / 2;
         o16531.x = (_loc12_ == 0?322:471) - 175;
         o16531.y = 117 + 107.3 * _loc11_ - 30;
         o4736(o16531.getChildByName("skillInfoContainer") as MovieClip,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      private function o4736(param1:MovieClip, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Boolean, param8:int, param9:int, param10:int) : void
      {
         var _loc12_:* = null;
         o7750.o17506("Title",param2,param1);
         o7750.o17506("Info",param3,param1);
         o13228.visible = param7;
         o1715.visible = param7 == false;
         if(param7)
         {
            _loc12_ = o13228.getChildByName("lblUnlockMessage") as TextField;
            _loc12_.text = "Unlock at level " + param8.toString();
         }
         o7750.o17506("lblSkillPoints",param9.toString(),o15858);
         if(param4.length == 0)
         {
            o7750.o17506("currentInfo","",param1);
         }
         else
         {
            o7750.o17506("currentInfo","Current: " + param4,param1);
         }
         if(param5 == "Max level")
         {
            o7750.o17506("nextInfo",param5,param1);
         }
         else
         {
            o7750.o17506("nextInfo","Next: " + param5,param1);
         }
         var _loc14_:MovieClip = param1.getChildByName("activatedAbilityIcon") as MovieClip;
         if(_loc14_ != null)
         {
            _loc14_.visible = param6.length > 0;
         }
         var _loc11_:MovieClip = param1.getChildByName("cooldown") as MovieClip;
         _loc11_.visible = param6.length > 0;
         var _loc13_:TextField = _loc11_.getChildByName("lblCooldown") as TextField;
         _loc13_.text = "Cooldown " + param10.toString() + " seconds";
         o7750.o17506("energyInfo",param6,param1);
      }
      
      protected function o13483(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int) : void
      {
         o4736(o15858.getChildByName("skillInfoContainer") as MovieClip,param1,param2,param3,param4,param5,param6,param7,param8,param9);
         o15858.visible = true;
         if(o16531.visible)
         {
            o16531.visible = visible == false;
         }
      }
      
      protected function o4872() : void
      {
         o15858.visible = false;
      }
      
      public function o18910(param1:Boolean) : void
      {
         o4278.visible = param1;
      }
      
      private function o17963(param1:Event) : void
      {
         if(o9755 >= 0)
         {
            o16917(o9755,o380());
            o16974(o9755,false);
         }
         else
         {
            o12664(o14960,o380());
            o9635(o14960,false);
         }
      }
      
      private function o380() : int
      {
         if(o7610 == false)
         {
            return 1;
         }
         return parseInt(o3441.text);
      }
      
      protected function o20078(param1:Event) : void
      {
         o4872();
      }
      
      protected function o12664(param1:int, param2:int) : void
      {
      }
      
      protected function o16917(param1:int, param2:int) : void
      {
      }
      
      protected function o12705(param1:int) : void
      {
      }
      
      protected function o17550(param1:int) : void
      {
      }
      
      public function o19747(param1:String, param2:String) : void
      {
         var _loc3_:o12306 = new o12306();
         _loc3_.init(new UnableToAddSkillPointsDialogAsset());
         this.o9642(_loc3_);
         _loc3_.o12407(param1,param2,null);
      }
   }
}
