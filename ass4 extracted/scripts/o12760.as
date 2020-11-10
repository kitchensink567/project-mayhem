package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o12760 extends o15625
   {
       
      
      private var o9679:o20565;
      
      public var o2831:int;
      
      public var o18272:TextField;
      
      public var grade:MovieClip;
      
      public var o19310:MovieClip;
      
      public var o1030:TextField;
      
      public var o20818:TextField;
      
      public var o2175:TextField;
      
      public var o1950:TextField;
      
      private var o18833:MovieClip;
      
      public var o3492:o14096;
      
      private var o539:Date;
      
      private var o10153:int;
      
      public function o12760()
      {
         super();
      }
      
      private function o14724(param1:int) : void
      {
         o9679.o5877("aug",param1,3,"on","off",3);
      }
      
      private function o17816(param1:int) : void
      {
         var _loc4_:int = o14200.o19505.o7923.o2274;
         var _loc3_:MovieClip = o18833.getChildByName("levelIcon") as MovieClip;
         _loc3_.gotoAndStop(_loc4_);
         var _loc2_:MovieClip = _loc3_.getChildByName("rankIcon") as MovieClip;
         _loc2_.gotoAndStop(param1);
         var _loc5_:TextField = o18833.getChildByName("lvlRequired") as TextField;
         _loc5_.text = "LVL " + param1;
      }
      
      public function o15618(param1:MovieClip) : void
      {
         super.init(param1);
         o9679 = new o20565(this);
         o18272 = param1.getChildByName("lblCost") as TextField;
         grade = param1.getChildByName("grade") as MovieClip;
         grade.gotoAndStop(1);
         o14724(3);
         o18833 = param1.getChildByName("levelRequirements") as MovieClip;
         o17816(1);
         o19310 = param1.getChildByName("imgWeapon") as MovieClip;
         o19310.gotoAndStop(1);
         o1030 = param1.getChildByName("lblTitle") as TextField;
         o20818 = param1.getChildByName("lblWeaponType") as TextField;
         o2175 = param1.getChildByName("lblMoreInfoValue") as TextField;
         o1950 = param1.getChildByName("lblMoreInfoBonus") as TextField;
         o1950.visible = false;
         this.addEventListener("click",o13275,false,0,true);
      }
      
      private function o13275(param1:MouseEvent) : void
      {
         var _loc2_:o14200 = o14200.o19505;
         var _loc3_:o4117 = o4117.o18521(_loc2_,_loc2_.o7923);
         o4519.o10093.o16989.o2256(o3492,_loc3_,null,o539,o10153,o2831);
      }
      
      public function o1797(param1:int, param2:int, param3:int, param4:o14096, param5:Date) : void
      {
         this.o539 = param5;
         this.o10153 = param2;
         var _loc13_:o14200 = o14200.o19505;
         this.o2831 = param1;
         this.o3492 = param4;
         o1030.text = param4.o7501;
         var _loc11_:String = param4.o3227();
         var _loc16_:String = o14096.o10863(param4.o2752.o6365);
         var _loc17_:o4117 = o4117.o18521(_loc13_,_loc13_.o7923);
         var _loc6_:Boolean = _loc13_.o5292.o20827.o2820(5,_loc17_.o16992,param4.o2752.o6365);
         o20818.text = (!!_loc6_?"Full Auto":_loc11_) + " " + _loc16_;
         o19310.gotoAndStop("W_" + param4.o10748);
         grade.gotoAndStop(param4.grade + 1);
         o18272.text = param2.toString();
         o18833.visible = param3 > 1;
         var _loc7_:o6421 = new o6421();
         var _loc14_:Number = _loc7_.o14472(_loc17_,param4);
         var _loc15_:o125 = _loc7_.o12125(_loc17_,1,param4);
         var _loc10_:o125 = _loc7_.o12125(_loc17_,6,param4);
         var _loc12_:o6421 = new o6421();
         var _loc19_:o125 = _loc7_.o12125(_loc17_,8,param4);
         var _loc9_:o14018 = _loc13_.o5292.o5812(10);
         var _loc18_:o14018 = _loc13_.o5292.o5812(22);
         var _loc8_:String = _loc9_.o9277(param4,_loc9_.o10358(param4) + _loc18_.o10358(param4),false,true,true);
         o2175.text = _loc15_.o18406() + "\n";
         o2175.text = o2175.text + (_loc10_.o18406() + "\n");
         o2175.text = o2175.text + (_loc8_ + "\n");
         o2175.text = o2175.text + _loc19_.o18406();
         o17816(param4.o2752.o16703);
      }
      
      override public function o13640() : void
      {
         this.removeEventListener("click",o13275);
         o9679.o13640();
         o9679 = null;
         o18272 = null;
         grade = null;
         o19310 = null;
         o1030 = null;
         o20818 = null;
         o2175 = null;
         o1950 = null;
         o18833 = null;
         super.o13640();
      }
   }
}
