package
{
   import assets.ui.screen.BlankScreenAsset;
   import assets.ui.screen.HelpControlsScreenAsset;
   import assets.ui.screen.HelpEnemiesScreenAsset;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o1931 extends o9743
   {
       
      
      private var o16989:o13064;
      
      private var o10902:MovieClip;
      
      private var o3033:o15625;
      
      private var o9679:o20565;
      
      private var o1365:o20421;
      
      private var o2643:TextField;
      
      private var o6586:TextField;
      
      public var o15575:int = 0;
      
      protected var o16028:Boolean;
      
      protected var o4721:Boolean;
      
      protected var o9178:o15625;
      
      protected var o11249:o15625;
      
      public function o1931()
      {
         super();
         o14592 = true;
      }
      
      public function o13410() : int
      {
         return o1365.o2120;
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int, param4:Boolean, param5:Boolean) : void
      {
         super.init(param1);
         this.o16028 = param4;
         this.o4721 = param5;
         this.o16989 = param2;
         o9679 = new o20565(this);
         this.o17920 = false;
         this.o10902 = param1.getChildByName("dialogContainer") as MovieClip;
         o3033 = o7770;
         var _loc7_:o15625 = o9679.o17578("btnControls",o10902);
         var _loc6_:o15625 = o9679.o17578("btnEnemies",o10902);
         o9178 = o9679.o17578("btnEnemiesCharacter",o10902);
         o11249 = o9679.o17578("btnEnemiesOverall",o10902);
         o1365 = o9679.o3538([_loc7_,_loc6_,o9178,o11249]);
         o2643 = o10902.getChildByName("lblEnemyStats") as TextField;
         o2643.visible = false;
         o6586 = o10902.getChildByName("lblControls") as TextField;
         o6586.visible = false;
         o3033.addEventListener("click",o17206,false,0,true);
         o9178.visible = false;
         o11249.visible = false;
         o1365.addEventListener(o5595.o16737,o7851,false,0,true);
         o3033.visible = true;
      }
      
      public function o1981(param1:Boolean) : void
      {
         o2643.visible = true;
         o6586.visible = false;
         if(o16028)
         {
            o15575 = 1;
         }
         else if(param1)
         {
            o15575 = 2;
         }
         else
         {
            o15575 = 3;
         }
         var _loc4_:int = 0;
         var _loc3_:* = o1365.o19568;
         for each(var _loc2_ in o1365.o19568)
         {
            _loc2_.visible = false;
         }
         o9178.visible = true;
         o11249.visible = true;
      }
      
      public function o2523() : void
      {
         o2643.visible = false;
         o6586.visible = true;
         o15575 = 0;
         var _loc3_:int = 0;
         var _loc2_:* = o1365.o19568;
         for each(var _loc1_ in o1365.o19568)
         {
            _loc1_.visible = false;
         }
      }
      
      override protected function o154() : void
      {
         o1365.o2120 = o15575;
      }
      
      protected function o2587() : o714
      {
         return new o714();
      }
      
      protected function o170() : o15408
      {
         return new o15408();
      }
      
      override public function set screen(param1:int) : void
      {
         if(o1365.o2120 != param1)
         {
            o1365.removeEventListener(o5595.o16737,o7851);
            o1365.o2120 = param1;
            o1365.addEventListener(o5595.o16737,o7851,false,0,true);
         }
         .super.screen = param1;
      }
      
      override protected function o1789(param1:int, param2:int) : o6539
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = null;
         var _loc7_:* = null;
         switch(int(param2))
         {
            case 0:
               _loc4_ = o2587();
               _loc4_.o16384(new HelpControlsScreenAsset(),this.o16989,param1);
               return _loc4_;
            case 1:
               _loc5_ = o170();
               _loc5_.o16384(new HelpEnemiesScreenAsset(),this.o16989,param1,false);
               return _loc5_;
            case 2:
               _loc3_ = o170();
               _loc3_.o16384(new HelpEnemiesScreenAsset(),this.o16989,param1,true);
               return _loc3_;
            case 3:
               _loc7_ = o170();
               _loc7_.o16384(new HelpEnemiesScreenAsset(),this.o16989,param1,false);
               return _loc7_;
            case 4:
               _loc6_ = new o6539();
               _loc6_.init(new BlankScreenAsset());
               return _loc6_;
         }
      }
      
      override public function close() : void
      {
         super.close();
         this.screen = 4;
         this.o7817.o13315(0,null);
      }
      
      override public function o13315(param1:int, param2:Function) : void
      {
         this.screen = 4;
         super.o13315(param1,param2);
      }
      
      private function o7851(param1:o11507) : void
      {
         this.screen = param1.o6457;
      }
      
      private function o9103(param1:o11507) : void
      {
         this.screen = param1.o6457 + 4;
      }
      
      private function o17206(param1:Event) : void
      {
      }
      
      override public function o13640() : void
      {
         o3033.removeEventListener("click",o17206);
         o1365.removeEventListener(o5595.o16737,o7851);
         o9679.o13640();
         o16989 = null;
         o10902 = null;
         o3033 = null;
         o9679 = null;
         o1365 = null;
         o16028 = false;
         o9178 = null;
         o11249 = null;
         super.o13640();
      }
   }
}
