package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o18703 extends o9743 implements o18880, o11651
   {
      
      protected static const o12765:int = 0;
      
      protected static const o5531:int = 1;
      
      protected static const o18791:int = 2;
       
      
      protected var o4326:int = 0;
      
      private var o7750:o20565;
      
      private var o2738:MovieClip;
      
      private var o4441:MovieClip;
      
      protected var o3023:o5024;
      
      protected var o9539:o15625;
      
      protected var o5631:o15625;
      
      protected var o8638:o15625;
      
      protected var o15196:o15625;
      
      protected var o20029:o15625;
      
      protected var o1934:o15625;
      
      private var o2881:MovieClip;
      
      protected var o9193:o11112;
      
      protected var o2217:o10832;
      
      private var o363:TextField;
      
      private var o2175:TextField;
      
      private var o1950:TextField;
      
      private var o20818:TextField;
      
      private var o8398:MovieClip;
      
      protected var o16989:o13064;
      
      private var o13217:MovieClip;
      
      private var o6424:TextField;
      
      private var o13480:MovieClip;
      
      private var o18396:Boolean = false;
      
      protected var o3776:MovieClip;
      
      public function o18703()
      {
         super();
      }
      
      public function o4939() : void
      {
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         var _loc4_:int = 0;
         var _loc6_:* = null;
         var _loc3_:* = null;
         super.init(param1);
         this.o17920 = false;
         this.o16989 = param2;
         o7750 = new o20565(this);
         o8398 = this.asset.getChildByName("dialogContainer") as MovieClip;
         o9539 = o7750.o17578("btnSell",o8398);
         o5631 = o7750.o17578("btnContinue",o8398);
         o8638 = o7750.o17578("btnKeep",o8398);
         o15196 = o7750.o17578("btnMoreInfo",o8398);
         o2881 = o8398.getChildByName("infoContainer") as MovieClip;
         o2881.visible = false;
         o363 = o8398.getChildByName("lblMoreInfoCaption") as TextField;
         o2175 = o8398.getChildByName("lblMoreInfoValue") as TextField;
         o1950 = o8398.getChildByName("lblMoreInfoBonus") as TextField;
         o20818 = o8398.getChildByName("lblWeaponType") as TextField;
         o13480 = param1.getChildByName("highLevelItemAnimation") as MovieClip;
         o13480.stop();
         o13480.visible = false;
         o9193 = new o11112();
         o9193.o16384(o2881,11);
         this.o5452(o9193);
         o9539.addEventListener("click",o17899,false,0,true);
         o8638.addEventListener("click",o18212,false,0,true);
         o15196.addEventListener("click",o20124,false,0,true);
         o3776 = o8398.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(o3776)
         {
            o3776.visible = false;
         }
         o7750.o5877("aug",1,4,"on","off",4,o8398);
         o2738 = param1.getChildByName("inventoryFullMessage") as MovieClip;
         o6424 = o2738.getChildByName("lblMessage") as TextField;
         o4441 = param1.getChildByName("existingItems") as MovieClip;
         o13217 = o4441.getChildByName("strongboxRecordPagingCenter") as MovieClip;
         var _loc5_:MovieClip = param1.getChildByName("existingItems") as MovieClip;
         o20029 = o7750.o17578("btnPrev",_loc5_);
         o1934 = o7750.o17578("btnNext",_loc5_);
         var _loc7_:Vector.<o15625> = new Vector.<o15625>();
         _loc4_ = 0;
         while(_loc4_ < 4)
         {
            _loc6_ = _loc5_.getChildByName("item" + _loc4_) as MovieClip;
            _loc3_ = new o15653();
            _loc3_.init(_loc6_);
            this.o5452(_loc3_);
            _loc7_.push(_loc3_);
            _loc4_++;
         }
         o3023 = new o5024();
         o3023.init(o8398.getChildByName("imgIcon") as MovieClip);
         this.o5452(o3023);
         o2217 = o7750.o3870(o20029,o1934,_loc7_,o19269,o13217);
         o2217.addEventListener(o5595.o16737,o7685,false,0,true);
         o2217.o1746(o14793());
         o2217.o1258();
         o2217.o2120 = 0;
         o11048();
      }
      
      protected function o11048() : void
      {
      }
      
      public function o19101(param1:int, param2:Vector.<int>) : void
      {
      }
      
      private function o20124(param1:MouseEvent) : void
      {
         o15196.o3993 = !o15196.o3993;
         o2881.visible = o15196.o3993;
      }
      
      override public function o13640() : void
      {
         o9539.removeEventListener("click",o17899);
         o8638.removeEventListener("click",o18212);
         o15196.removeEventListener("click",o20124);
         o7750.o13640();
         o7750 = null;
         o2738 = null;
         o4441 = null;
         o3023 = null;
         o9539 = null;
         o5631 = null;
         o8638 = null;
         o15196 = null;
         o20029 = null;
         o1934 = null;
         o2881 = null;
         o9193 = null;
         o2217 = null;
         o3776 = null;
         o363 = null;
         o2175 = null;
         o1950 = null;
         o20818 = null;
         o8398 = null;
         o16989 = null;
         o13217 = null;
         o6424 = null;
         o13480 = null;
         super.o13640();
      }
      
      protected function o11440() : void
      {
      }
      
      protected function o14793() : int
      {
         return 0;
      }
      
      private function o7685(param1:o11507) : void
      {
         var _loc2_:int = param1.o6457;
         o4436(param1.o6457);
      }
      
      protected function o4436(param1:int) : void
      {
         o9193.clear();
         o3357(o2217.o2120,param1);
      }
      
      protected function o1087(param1:int, param2:int, param3:int, param4:String, param5:String) : void
      {
         var _loc8_:MovieClip = o8398.getChildByName("augSlot" + param1.toString()) as MovieClip;
         _loc8_.visible = true;
         var _loc7_:MovieClip = _loc8_.getChildByName("lblAugmentName") as MovieClip;
         var _loc9_:TextField = _loc7_.getChildByName("augTitle") as TextField;
         _loc9_.text = param4;
         var _loc10_:MovieClip = _loc8_.getChildByName("icon") as MovieClip;
         _loc10_.gotoAndStop(param5);
         o7750.o5877("aug",param2,param3,"on","off",12,_loc7_);
         var _loc6_:MovieClip = o8398.getChildByName("augSlotEmpty" + param1.toString()) as MovieClip;
         _loc6_.visible = false;
      }
      
      protected function o11988(param1:int, param2:int) : void
      {
         var _loc5_:MovieClip = o8398.getChildByName("augSlot" + param1.toString()) as MovieClip;
         _loc5_.visible = false;
         var _loc3_:MovieClip = o8398.getChildByName("augSlotEmpty" + param1.toString()) as MovieClip;
         var _loc4_:MovieClip = _loc3_.getChildByName("lblAugmentName") as MovieClip;
         _loc3_.visible = true;
         o7750.o5877("aug",0,param2,"on","off",12,_loc4_);
      }
      
      protected function o7355(param1:int) : void
      {
         var _loc3_:MovieClip = o8398.getChildByName("augSlot" + param1.toString()) as MovieClip;
         _loc3_.visible = false;
         var _loc2_:MovieClip = o8398.getChildByName("augSlotEmpty" + param1.toString()) as MovieClip;
         _loc2_.visible = false;
      }
      
      override public function o1258() : void
      {
         var _loc1_:int = o14793();
         o2217.o1746(_loc1_);
         super.o1258();
      }
      
      private function o16499(param1:Boolean, param2:Boolean, param3:int, param4:int, param5:int, param6:String, param7:String, param8:String, param9:String, param10:DisplayObject, param11:int, param12:int, param13:int, param14:int, param15:int, param16:int) : void
      {
         (o8398.getChildByName("grade") as MovieClip).gotoAndStop(param3 + 1);
         (o8398.getChildByName("lblTitle2") as TextField).text = param6;
         (o8398.getChildByName("lblSellFor") as TextField).text = "for $" + param11;
         (o8398.getChildByName("lblNew") as MovieClip).visible = param1;
         (o8398.getChildByName("lblClipCountCaption") as TextField).visible = false;
         (o8398.getChildByName("eliteCore") as MovieClip).visible = param16 > 0;
         var _loc18_:TextField = o8398.getChildByName("lblClipCount") as TextField;
         if(_loc18_ != null)
         {
            _loc18_.visible = false;
         }
         var _loc22_:TextField = o2881.getChildByName("lblInfo") as TextField;
         _loc22_.htmlText = param7;
         var _loc19_:TextField = o8398.getChildByName("lblTitle2") as TextField;
         _loc19_.htmlText = param6;
         _loc19_.autoSize = "left";
         var _loc17_:MovieClip = o8398.getChildByName("equipmentVersion") as MovieClip;
         _loc17_.gotoAndStop(param12);
         _loc17_.x = _loc19_.x + _loc19_.width;
         o3023.o3700 = param10;
         var _loc21_:int = o14793();
         o2217.o1746(_loc21_);
         var _loc20_:int = o393();
         var _loc23_:* = _loc21_ <= _loc20_;
         o5631.visible = false;
         o4441.visible = true;
         o8638.visible = _loc23_ && param1;
         o9539.visible = o8638.visible || o4326 == 2;
         (o8398.getChildByName("lblSellFor") as TextField).visible = o9539.visible;
         if(o4326 == 2)
         {
            o6424.text = "Your Inventory is full! Choose an item to sell";
         }
         else if(o4326 == 1)
         {
            o6424.text = o10203();
         }
         else
         {
            o6424.text = "No existing gear equipped";
         }
         o7750.o5877("aug",param4,param5,"on","off",4,o8398);
         if(param1 && param3 >= 8 && param13 >= 100 && o18396 == false)
         {
            o18396 = true;
            o13480.visible = true;
            o13480.gotoAndPlay(1);
            o301();
         }
      }
      
      protected function o301() : void
      {
      }
      
      override protected function o6662(param1:Event) : void
      {
         if(asset == null || asset.stage == null)
         {
            return;
         }
         super.o6662(param1);
         o11692(o13480);
      }
      
      protected function o10203() : String
      {
         return "";
      }
      
      protected function o393() : int
      {
         return 0;
      }
      
      protected function o3311(param1:Boolean, param2:int, param3:int, param4:int, param5:String, param6:String, param7:DisplayObject, param8:int, param9:int, param10:int, param11:int, param12:int, param13:int) : void
      {
         o16499(param1,true,param2,param3,param4,param5,param6,"","",param7,param8,param11,param12,param9,param10,param13);
      }
      
      protected function o14286(param1:Boolean, param2:int, param3:int, param4:int, param5:String, param6:String, param7:String, param8:DisplayObject, param9:int, param10:int, param11:int, param12:int) : void
      {
         o16499(param1,false,param2,param3,param4,param5,param6,param7,"",param8,param9,param10,param11,0,0,param12);
      }
      
      private function o12473(param1:String) : String
      {
         if(param1 == "+0.0" || param1 == "+0.0%" || param1 == "+0" || param1 == "+0%")
         {
            return "";
         }
         return param1;
      }
      
      public function o17796(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:int, param10:String, param11:String, param12:String) : void
      {
         o363.text = "Damage\nRate of Fire\nMovement\nClip Size";
         o2175.text = param1 + "\n" + param3 + "\n" + param5 + "\n" + param7;
         o1950.text = o12473(param2) + "\n" + o12473(param4) + "\n" + o12473(param6) + "\n" + o12473(param8);
         o20818.text = param12;
      }
      
      public function o611(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String) : void
      {
         o363.text = "Physical\nHeat\nToxic\nMovement";
         o2175.text = param1 + "\n" + param3 + "\n" + param5 + "\n" + param7;
         o1950.text = o12473(param2) + "\n" + o12473(param4) + "\n" + o12473(param6) + "\n" + o12473(param8);
         o20818.text = param9;
      }
      
      protected function o17899(param1:MouseEvent) : void
      {
         this.o9928(this.o2217.o2120);
      }
      
      protected function o18212(param1:MouseEvent) : void
      {
         o3891();
      }
      
      protected function o11059() : void
      {
         this.close();
      }
      
      protected function o9928(param1:int) : void
      {
      }
      
      protected function o3891() : void
      {
      }
      
      protected function o19269(param1:int, param2:o15625) : void
      {
      }
      
      protected function o3357(param1:int, param2:int) : void
      {
      }
      
      public function o7594() : void
      {
         o11059();
      }
   }
}
