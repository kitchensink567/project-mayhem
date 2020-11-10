package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Timer;
   
   public class o19048 extends o18257
   {
       
      
      private var o19419:o14200;
      
      private var o19393:Boolean = false;
      
      private var o8048:Timer;
      
      private var o605:Boolean = false;
      
      public function o19048(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      override protected function o3941() : o17904
      {
         return new o5123();
      }
      
      override public function o13640() : void
      {
         o19419.o202.o2685.o12657(o9782.o11785,o1354);
         o4519.o8116.o20488.o12657(o7961.o10402,o10402);
         asset.removeEventListener("enterFrame",o18166);
         if(o8048)
         {
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
         super.o13640();
      }
      
      private function o10402(param1:o1447) : void
      {
         if(o1643)
         {
            return;
         }
         this.o6023.o7047(param1.o3700,param1.o1216,param1.o15258,param1.o5268,param1.o4312);
         this.o6023.o15691();
      }
      
      override protected function o5552(param1:MouseEvent) : void
      {
         if(o1643)
         {
            return;
         }
         this.o6023.o4381(null);
      }
      
      private function o2251(param1:int, param2:String, param3:Function = null, param4:Function = null, param5:Number = 0) : void
      {
         o4519.o8116.o20488.o2251(param1,param2,param3,param4,param5);
      }
      
      override protected function o11048() : void
      {
         var _loc1_:o69 = o19419.o202.o18702();
         o19419.data.o9361(_loc1_.o3807);
         o4519.o8116.o20488.o16280(null,o7961.o10402,o10402);
         o4519.o8116.o9589.o8899(o19419.o202.o15222,o2055);
         this.asset.addEventListener("enterFrame",o18166,false,0,true);
         o19419.o2719.o10907(211);
      }
      
      override protected function o154() : void
      {
         super.o154();
         o8048 = new Timer(3000,0);
         o8048.addEventListener("timer",o5488,false,0,true);
         o8048.start();
      }
      
      private function o5488(param1:Event) : void
      {
         if(o1643)
         {
            return;
         }
         o8048.stop();
         o8048.removeEventListener("timer",o5488);
         o8048 = null;
         o2052();
         o2949();
         var _loc3_:String = "dialogMessage.onslaughtMessages.message";
         var _loc2_:o2693 = o19419.o5099;
         o2251(1,_loc2_.o9009(_loc3_ + "1"),null,o2052,int(_loc2_.o9009(_loc3_ + "1.duration")));
         o2251(2,_loc2_.o9009(_loc3_ + "2"),null,o2052,int(_loc2_.o9009(_loc3_ + "2.duration")));
         o2251(1,_loc2_.o9009(_loc3_ + "3"),null,o2052,int(_loc2_.o9009(_loc3_ + "3.duration")));
      }
      
      override protected function o2052() : void
      {
         if(o1643)
         {
            return;
         }
         o8339("Next State: " + o20488);
         super.o2052();
         if(o20488 == 3)
         {
            o4519.o8116.o8756.o2009.play(0.5,3,0,true);
         }
         if(o20488 == 7)
         {
            o15207();
            o4519.o8116.o8756.o14438.play(0.5);
         }
      }
      
      override protected function o9331(param1:int) : void
      {
         var _loc3_:String = "dialogMessage.onslaughtMessages.message";
         var _loc2_:o2693 = o19419.o5099;
         o8339("State: " + param1);
         if(!(int(param1) - 4))
         {
            o2251(3,_loc2_.o9009(_loc3_ + "4"),null,o2052,int(_loc2_.o9009(_loc3_ + "4.duration")));
            o2251(3,_loc2_.o9009(_loc3_ + "5"),null,o2052,int(_loc2_.o9009(_loc3_ + "5.duration")));
            o2251(3,_loc2_.o9009(_loc3_ + "6"),null,o2052,int(_loc2_.o9009(_loc3_ + "6.duration")));
            o2251(2,_loc2_.o9009(_loc3_ + "7"),null,o2052,int(_loc2_.o9009(_loc3_ + "7.duration")));
         }
      }
      
      override protected function o12791(param1:Event) : void
      {
         o2052();
      }
      
      override protected function o17606(param1:Event) : void
      {
         if(o605)
         {
            o845();
         }
      }
      
      override protected function o16563(param1:MouseEvent) : void
      {
         o845();
      }
      
      private function o2949() : void
      {
         var _loc1_:o7304 = o4519.o8116.o8756;
         var _loc2_:o3355 = _loc1_.o11940;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.play(_loc1_.o12040,0,0,true);
      }
      
      private function o15207() : void
      {
         if(!o19419.o1317.o9671)
         {
            return;
         }
         var _loc1_:o7304 = o4519.o8116.o8756;
         var _loc2_:o3355 = _loc1_.o16639;
         _loc1_.o16404();
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.play(_loc1_.o12040,0,0,true);
      }
      
      private function o824() : void
      {
         var _loc1_:o7304 = o4519.o8116.o8756;
         _loc1_.o16404();
      }
      
      private function o8658() : void
      {
      }
      
      private function o9669(param1:Class) : void
      {
         var _loc2_:MovieClip = new param1();
         this.o11080(_loc2_);
      }
      
      override protected function o8441() : void
      {
         o4519.o8116.o1234.o11690("assets.ui.levelIntro.OnslaughtIntroAnimation").defer(o9669);
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
      
      private function o1354(param1:Event) : void
      {
         var _loc2_:* = null;
         if(o19419.o202.o2685 != null)
         {
            _loc2_ = o19419.o202.o2685.o10591[0];
            o9017(_loc2_.o951);
         }
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
         o824();
         o4519.o8116.o20488.o12657(o7961.o10402,o10402);
         o781();
         this.o3243(1);
         o4519.o8116.o4812.o15347().defer(o15031);
      }
      
      private function o2055() : void
      {
         o8339("####### preloadComplete");
         o605 = true;
         asset.removeEventListener("enterFrame",o18166);
         this.o3243(1);
         if(this.o20488 == 8)
         {
            o845();
         }
      }
      
      private function o18166(param1:Event) : void
      {
         var _loc2_:Number = o4519.o8116.o9589.o26();
         this.o3243(_loc2_);
      }
   }
}
