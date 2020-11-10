package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o5853 extends o6539
   {
       
      
      private var o9679:o20565;
      
      private var o1794:MovieClip;
      
      protected var o9059:o15625;
      
      private var o9192:TextField;
      
      private var o2771:TextField;
      
      private var o13646:TextField;
      
      private var o3700:MovieClip;
      
      private var o749:MovieClip;
      
      private var o20035:TextField;
      
      private var o16989:o13064;
      
      private var o14263:TextField;
      
      private var o2274:MovieClip;
      
      private var o17858:MovieClip;
      
      public function o5853()
      {
         super();
      }
      
      protected function o11048() : void
      {
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         super.init(param1);
         this.o16989 = param2;
         o9679 = new o20565(this);
         o1794 = param1.getChildByName("dialogContainer") as MovieClip;
         o9059 = o9679.o17578("btnOk",o1794);
         o9059.addEventListener("click",o16631,false,0,true);
         o17858 = o1794.getChildByName("medalAndName") as MovieClip;
         o2274 = o1794.getChildByName("characterClass") as MovieClip;
         o2274.stop();
         o9192 = o17858.getChildByName("lblRank") as TextField;
         o2771 = o1794.getChildByName("lblSkillPoints") as TextField;
         o13646 = o1794.getChildByName("lblNextLevelUp") as TextField;
         o3700 = o17858.getChildByName("icon") as MovieClip;
         o20035 = o1794.getChildByName("levelUpNumber") as TextField;
         o749 = o1794.getChildByName("newGrenadesUnlocked") as MovieClip;
         o14263 = o1794.getChildByName("lblBonusHitPoints") as TextField;
         o19565(1);
         o11048();
      }
      
      protected function o16631(param1:MouseEvent) : void
      {
         o16989.screen = 33;
      }
      
      override public function o13640() : void
      {
         o9059.removeEventListener("click",o16631);
         o9679.o13640();
         o9679 = null;
         o1794 = null;
         o9059 = null;
         o9192 = null;
         o2771 = null;
         o13646 = null;
         o3700 = null;
         o749 = null;
         o20035 = null;
         o14263 = null;
         this.o2274 = null;
         this.o17858 = null;
         super.o13640();
      }
      
      protected function o19565(param1:int) : void
      {
         var _loc2_:MovieClip = o1794.getChildByName("strongBoxIcon") as MovieClip;
         _loc2_.gotoAndStop(param1);
         o1209(_loc2_);
      }
      
      protected function o14414(param1:int, param2:int, param3:String, param4:int, param5:int, param6:Boolean, param7:int) : void
      {
         o9192.text = param3;
         o17858.visible = param2 % 5 == 0;
         o2274.gotoAndStop(param1 + 1);
         o3700.gotoAndStop(param1 + 1);
         var _loc8_:MovieClip = o3700.getChildByName("rankIcon") as MovieClip;
         _loc8_.gotoAndStop(param2);
         o20035.text = "LEVEL " + param2.toString();
         o2771.text = param4.toString() + " Skill point" + (param4 > 1?"s":"");
         if(param5 < 0)
         {
            o13646.text = "Max level reached";
         }
         else
         {
            o13646.text = "Next Level Up : XP " + param5.toString();
         }
         o749.visible = param6;
         asset.y = asset.y + o13064.o17460;
         o14263.text = "+" + param7.toString() + " hit points";
      }
   }
}
