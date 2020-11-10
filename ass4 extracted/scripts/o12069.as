package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Timer;
   
   public class o12069 extends o14585
   {
       
      
      private var o19419:o14200;
      
      private var o19393:Boolean = false;
      
      private var o8048:Timer;
      
      private var o605:Boolean = false;
      
      private var o20488:int = 0;
      
      private var o2839:int = 0;
      
      public function o12069(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      override public function o13640() : void
      {
         o19419.o202.o2685.o12657(o9782.o11785,o1354);
         asset.removeEventListener("enterFrame",o18166);
         o15935.removeEventListener("EnterVaccineState1",o12517);
         o15935.removeEventListener("EnterVaccineState2",o12517);
         o15935.removeEventListener("EnterVaccineState3",o12517);
         o15935.removeEventListener("EnterVaccineState4",o12517);
         o15935.removeEventListener("EnterDebriefState",o3118);
         o15935.removeEventListener("EnterVaccineState5",o12517);
         o15935.removeEventListener("CombotActive",o20839);
         o15935.removeEventListener("CombotNext",o4308);
         o15935.removeEventListener("CombotOff",o3447);
         if(o8048)
         {
            o8048.stop();
            o8048.removeEventListener("timer",o5488);
         }
         if(o19419.o202.o2685 != null)
         {
            o19419.o202.o2685.o12657(o9782.o10719,o6646);
         }
         o19419 = null;
         o19393 = false;
         o8048 = null;
         o605 = false;
         o20488 = 0;
         super.o13640();
      }
      
      override protected function o11048() : void
      {
         var _loc1_:o69 = o19419.o202.o18702();
         o19419.data.o9361(_loc1_.o3807);
         o4519.o8116.o9589.o8899(o19419.o202.o15222,o2055);
         this.asset.addEventListener("enterFrame",o18166,false,0,true);
         o19419.o2719.o10907(212);
      }
      
      override protected function o154() : void
      {
         super.o154();
         o8048 = new Timer(500,0);
         o8048.addEventListener("timer",o5488,false,0,true);
         o8048.start();
      }
      
      private function o5488(param1:Event) : void
      {
         o8048.stop();
         o8048.removeEventListener("timer",o5488);
         o8048 = null;
         if(o1643)
         {
            return;
         }
         o2949();
      }
      
      private function o12517(param1:Event) : void
      {
         o2052();
         o9331();
      }
      
      private function o3118(param1:Event) : void
      {
         o15021();
      }
      
      protected function o2052() : void
      {
         o20488 = Number(o20488) + 1;
      }
      
      private function o9331() : void
      {
         o8339("vaccine state: " + o20488);
         switch(int(o20488) - 1)
         {
            case 0:
               o14211();
               break;
            case 1:
               o18164();
               break;
            case 2:
               o6026();
               break;
            case 3:
               break;
            case 4:
               o9969();
         }
      }
      
      private function o20839(param1:Event) : void
      {
         o4519.o8116.o4812.ui.o11449.play();
         o4519.o8116.o4812.ui.o2878.play(0.85);
      }
      
      private function o3447(param1:Event) : void
      {
         o4519.o8116.o4812.ui.o2878.play(0.65,0,500);
      }
      
      private function o4308(param1:Event) : void
      {
         o4519.o8116.o4812.ui.o11449.play();
         o4519.o8116.o4812.ui.o2878.play(0.65,0,500);
      }
      
      override protected function o16563(param1:MouseEvent) : void
      {
         o845();
      }
      
      private function o18166(param1:Event) : void
      {
         var _loc2_:Number = o4519.o8116.o9589.o26();
         this.o3243(_loc2_);
      }
      
      private function o2949() : void
      {
         if(!o19419.o1317.o9671)
         {
            return;
         }
         var _loc1_:o7304 = o4519.o8116.o8756;
         var _loc3_:o3355 = _loc1_.o18902;
         var _loc2_:o3355 = _loc1_.o20471;
         if(_loc3_ == null || _loc2_ == null)
         {
            return;
         }
         _loc3_.play(0.5,0,0,true);
         _loc2_.play(0.2,0,0,true);
      }
      
      private function o14211() : void
      {
         if(!o19419.o1317.o9671)
         {
            return;
         }
         var _loc1_:o7304 = o4519.o8116.o8756;
         var _loc3_:o3355 = _loc1_.o18902;
         var _loc2_:o3355 = _loc1_.o20471;
         _loc1_.o16404();
         if(_loc3_ == null || _loc2_ == null)
         {
            return;
         }
         _loc3_.play(0.2,0,0,true);
         _loc2_.play(0.5,0,0,true);
      }
      
      private function o18164() : void
      {
         if(!o19419.o1317.o9671)
         {
            return;
         }
         var _loc1_:o7304 = o4519.o8116.o8756;
         var _loc3_:o3355 = _loc1_.o10531;
         var _loc2_:o3355 = _loc1_.o18953;
         _loc1_.o16404();
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.play(_loc1_.o12040,0,0,true);
         _loc2_.play(1,0,0,true);
      }
      
      private function o6026() : void
      {
         if(!o19419.o1317.o9671)
         {
            return;
         }
         var _loc2_:o7304 = o4519.o8116.o8756;
         var _loc4_:o3355 = _loc2_.o8937;
         var _loc3_:o3355 = _loc2_.o10531;
         var _loc1_:o3355 = _loc2_.o523;
         _loc2_.o16404();
         if(_loc4_ == null || _loc3_ == null)
         {
            return;
         }
         _loc4_.play(_loc2_.o12040,0,0,true);
         _loc3_.play(0.1,0,0,true);
         _loc1_.play(1,0,0,true);
      }
      
      private function o15021() : void
      {
         if(!o19419.o1317.o9671)
         {
            return;
         }
         var _loc1_:o7304 = o4519.o8116.o8756;
         var _loc3_:o3355 = _loc1_.o8937;
         var _loc2_:o3355 = _loc1_.o2770;
         _loc1_.o16404();
         if(_loc3_ == null || _loc2_ == null)
         {
            return;
         }
         _loc3_.play(_loc1_.o12040,0,0,true);
         _loc2_.play(0.5,0,0,true);
      }
      
      private function o9969() : void
      {
         if(!o19419.o1317.o9671)
         {
            return;
         }
         var _loc1_:o7304 = o4519.o8116.o8756;
         var _loc2_:o3355 = _loc1_.o11091;
         _loc1_.o16404();
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.play(0.55,0,0,true);
      }
      
      private function o824() : void
      {
         var _loc1_:o7304 = o4519.o8116.o8756;
         _loc1_.o16404();
      }
      
      private function o9669(param1:Class) : void
      {
         var _loc2_:MovieClip = new param1();
         this.o11080(_loc2_);
         o15935.addEventListener("EnterVaccineState1",o12517,false,0,true);
         o15935.addEventListener("EnterVaccineState2",o12517,false,0,true);
         o15935.addEventListener("EnterVaccineState3",o12517,false,0,true);
         o15935.addEventListener("EnterVaccineState4",o12517,false,0,true);
         o15935.addEventListener("EnterDebriefState",o3118,false,0,true);
         o15935.addEventListener("EnterVaccineState5",o12517,false,0,true);
         o15935.addEventListener("CombotActive",o20839,false,0,true);
         o15935.addEventListener("CombotNext",o4308,false,0,true);
         o15935.addEventListener("CombotOff",o3447,false,0,true);
         o15935.gotoAndPlay(1);
      }
      
      override protected function o8441() : void
      {
         o4519.o8116.o1234.o11690("assets.ui.levelIntro.VaccineIntro").defer(o9669);
      }
      
      private function o8784(param1:Event) : void
      {
         o19419.o13206.o12657(o16450.o11970,o8784);
         var _loc2_:o69 = o19419.o202.o18702();
         o4519.o9721.o8917 = _loc2_;
         o16989.screen = 31;
      }
      
      private function o6646(param1:Event) : void
      {
         o13780 = true;
         o19419.o202.o2685.o16280(null,o9782.o11785,o1354);
         o19419.o13206.o16280(null,o16450.o11970,o8784);
         o19419.o13206.initialise(o19419.o202.o15222,o19419.o202.o10211,o19419.o202.o2685,o19419.o202.o2685.o4326);
      }
      
      private function o16765(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:o69 = o19419.o202.o18702();
         if(o19419.o202.o10211)
         {
            o6646(null);
         }
         else
         {
            o19419.o202.o2685 = new o2144();
            o19419.o202.o2685.o9721 = _loc2_.o18800;
            o19419.o202.o2685.o16280(null,o9782.o10719,o6646);
            _loc3_ = new Vector.<int>();
            _loc3_.push(_loc2_.o18800);
            o19419.o202.o2685.o16955(null,0,1,0,_loc3_);
         }
      }
      
      private function o15031(param1:Object) : void
      {
         o4519.o8116.o8756.o4184().defer(o16765);
      }
      
      private function o845() : void
      {
         o2839 = Number(o2839) + 1;
         if(o2839 != 1)
         {
            throw new Error("called startGame() more than once");
         }
         o824();
         o781();
         this.o3243(1);
         o4519.o8116.o4812.o15347().defer(o15031);
      }
      
      override protected function o5020(param1:Event) : void
      {
         super.o5020(param1);
         if(o2839 == 0 && o605)
         {
            o845();
         }
      }
      
      private function o2055() : void
      {
         o8339("####### preloadComplete");
         o605 = true;
         asset.removeEventListener("enterFrame",o18166);
         this.o3243(1);
         if(this.o8228)
         {
            o845();
         }
      }
      
      private function o1354(param1:Event) : void
      {
         var _loc2_:* = null;
         if(o19419.o202.o2685 != null)
         {
            _loc2_ = o19419.o202.o2685.o10591[0];
            o9017(_loc2_.o951);
         }
      }
   }
}
