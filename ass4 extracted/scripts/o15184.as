package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o15184 extends o9743
   {
       
      
      private var o10912:TextField;
      
      private var o10952:MovieClip;
      
      protected var o3023:o5024;
      
      protected var o9193:o11112;
      
      private var o363:TextField;
      
      private var o2175:TextField;
      
      private var o1950:TextField;
      
      private var o2881:MovieClip;
      
      protected var o15196:o15625;
      
      private var o20818:TextField;
      
      public function o15184()
      {
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         this.o17920 = false;
         o10912 = container.getChildByName("lblPurchasePrice") as TextField;
         o10952 = container.getChildByName("processing") as MovieClip;
         o10952.visible = false;
         o20173.enabled = true;
         o7770.enabled = true;
         if(o4527 != null)
         {
            o4527.visible = true;
         }
         var _loc2_:MovieClip = this.asset.getChildByName("dialogContainer") as MovieClip;
         o363 = _loc2_.getChildByName("lblMoreInfoCaption") as TextField;
         o2175 = _loc2_.getChildByName("lblMoreInfoValue") as TextField;
         o1950 = _loc2_.getChildByName("lblMoreInfoBonus") as TextField;
         o20818 = _loc2_.getChildByName("lblWeaponType") as TextField;
         o2881 = _loc2_.getChildByName("infoContainer") as MovieClip;
         o2881.visible = false;
         o9193 = new o11112();
         o9193.o16384(o2881,11);
         this.o5452(o9193);
         o3023 = new o5024();
         o3023.init(_loc2_.getChildByName("imgIcon") as MovieClip);
         this.o5452(o3023);
         o15196 = o9679.o17578("btnMoreInfo",_loc2_);
         o15196.addEventListener("click",o20124,false,0,true);
      }
      
      override public function o13640() : void
      {
         o15196.removeEventListener("click",o20124);
         o10912 = null;
         o10952 = null;
         o3023 = null;
         o9193 = null;
         o363 = null;
         o2175 = null;
         o1950 = null;
         o2881 = null;
         o15196 = null;
         o20818 = null;
         super.o13640();
      }
      
      private function o20124(param1:MouseEvent) : void
      {
         o15196.o3993 = !o15196.o3993;
         o2881.visible = o15196.o3993;
      }
      
      public function o6959(param1:int) : void
      {
         o10912.text = "Purchase for " + param1.toString();
      }
      
      override protected function o5382(param1:Event) : void
      {
         o10952.visible = true;
         o10912.visible = false;
         o20173.enabled = false;
         o7770.enabled = false;
         if(o4527 != null)
         {
            o4527.visible = false;
         }
         if(o8714 != null)
         {
            o8714();
         }
      }
      
      public function o1602() : void
      {
         o10952.visible = false;
         o10912.visible = true;
         o20173.enabled = true;
         o7770.enabled = true;
         if(o4527 != null)
         {
            o4527.visible = true;
         }
         this.close();
      }
      
      protected function o4436() : void
      {
         o9193.clear();
      }
      
      protected function o1087(param1:int, param2:int, param3:int, param4:String) : void
      {
         var _loc6_:MovieClip = this.asset.getChildByName("dialogContainer") as MovieClip;
         var _loc5_:MovieClip = _loc6_.getChildByName("augSlot" + param1.toString()) as MovieClip;
         _loc5_.visible = true;
         _loc5_.o1079.o20956.text = param4;
         o9679.o5877("aug",param2,param3,"on","off",10,_loc5_.o1079);
      }
      
      protected function o7355(param1:int) : void
      {
         var _loc3_:MovieClip = this.asset.getChildByName("dialogContainer") as MovieClip;
         var _loc2_:MovieClip = _loc3_.getChildByName("augSlot" + param1.toString()) as MovieClip;
         _loc2_.visible = false;
      }
      
      private function o16499(param1:Boolean, param2:Boolean, param3:int, param4:int, param5:int, param6:String, param7:String, param8:String, param9:String, param10:DisplayObject, param11:int, param12:int, param13:int = 0, param14:int = 0) : void
      {
         var _loc16_:MovieClip = this.asset.getChildByName("dialogContainer") as MovieClip;
         (_loc16_.getChildByName("grade") as MovieClip).gotoAndStop(param3 + 1);
         (_loc16_.getChildByName("lblTitle2") as TextField).text = param6;
         (_loc16_.getChildByName("lblPurchasePrice") as TextField).text = "Purchase for $" + param11;
         (_loc16_.getChildByName("lblClipCountCaption") as TextField).visible = false;
         (_loc16_.getChildByName("lblClipCount") as TextField).visible = param2;
         (_loc16_.getChildByName("lblClipCount") as TextField).text = param13.toString();
         var _loc18_:TextField = o2881.getChildByName("lblInfo") as TextField;
         _loc18_.text = param7;
         o3023.o3700 = param10;
         var _loc17_:TextField = _loc16_.getChildByName("lblTitle2") as TextField;
         _loc17_.htmlText = param6;
         _loc17_.autoSize = "left";
         var _loc15_:MovieClip = _loc16_.getChildByName("equipmentVersion") as MovieClip;
         _loc15_.gotoAndStop(param12);
         _loc15_.x = _loc17_.x + _loc17_.width;
         o9679.o5877("aug",param4,param5,"on","off",3,_loc16_);
      }
      
      protected function o3311(param1:Boolean, param2:int, param3:int, param4:int, param5:String, param6:String, param7:DisplayObject, param8:int, param9:int, param10:int, param11:int) : void
      {
         o16499(param1,true,param2,param3,param4,param5,param6,"","",param7,param8,param11,param9,param10);
      }
      
      protected function o14286(param1:Boolean, param2:int, param3:int, param4:int, param5:String, param6:String, param7:String, param8:DisplayObject, param9:int, param10:int) : void
      {
         o16499(param1,false,param2,param3,param4,param5,param6,param7,"",param8,param9,param10);
      }
      
      private function o12473(param1:String) : String
      {
         if(param1 == "+0.0" || param1 == "+0.0%" || param1 == "+0" || param1 == "+0%")
         {
            return "";
         }
         return param1;
      }
      
      protected function o17796(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String) : void
      {
         o363.text = "Damage\nRate of Fire\nMovement\nClip Size";
         o2175.text = param1 + "\n" + param3 + "\n" + param5 + "\n" + param7;
         o1950.text = o12473(param2) + "\n" + o12473(param4) + "\n" + o12473(param6) + "\n" + o12473(param8);
         o20818.text = param9;
      }
      
      protected function o611(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String) : void
      {
         o363.text = "Physical\nHeat\nToxic\nMovement";
         o2175.text = param1 + "\n" + param3 + "\n" + param5 + "\n" + param7;
         o1950.text = o12473(param2) + "\n" + o12473(param4) + "\n" + o12473(param6) + "\n" + o12473(param8);
         o20818.text = param9;
      }
      
      protected function o3357(param1:int) : void
      {
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
      }
   }
}
