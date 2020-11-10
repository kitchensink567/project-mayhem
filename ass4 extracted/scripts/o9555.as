package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o9555 extends o978
   {
       
      
      private var o8027:o14200;
      
      private var o3703:int = 0;
      
      public function o9555(param1:o14200)
      {
         super();
         o8027 = param1;
      }
      
      override protected function o3281() : o5714
      {
         return new o19064();
      }
      
      override protected function o7438() : o16486
      {
         if(o13044)
         {
            return new o16486();
         }
         return new o10784(o8027);
      }
      
      override protected function o13835() : o11979
      {
         return new o19391(o8027);
      }
      
      override public function set screen(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(o8027.o7923 == null)
         {
            this.o19509(0);
         }
         else
         {
            this.o19509(o8027.o7923.o6061());
         }
         if(o8027.o7923 == null && param1 != 21)
         {
            param1 = 1;
         }
         if(o8027.o7923 != null && o8027.o202.o15278 >= 0)
         {
            param1 = 20;
         }
         if(o8027.o7923 != null && param1 == 5 && o8027.o7923.o18936() == 0)
         {
            _loc2_ = o8027.o5099.o9009("dialogMessage.mustEquipWeaponToPlay.title");
            _loc3_ = o8027.o5099.o9009("dialogMessage.mustEquipWeaponToPlay.message");
            this.o16989.o12407(_loc2_,_loc3_);
            return;
         }
         .super.screen = param1;
      }
      
      override protected function draw() : void
      {
         var _loc3_:* = null;
         var _loc1_:Number = NaN;
         super.draw();
         o17590();
         var _loc2_:o9145 = o8027.o7923;
         if(_loc2_ != null)
         {
            _loc3_ = o8027.o5292.o923.o5711(_loc2_.o2274,_loc2_.level);
            _loc1_ = o8027.o5292.o923.o7275(_loc2_.o7211);
            this.o8465(_loc2_.o12110,_loc2_.o11990,_loc2_.level,_loc3_,_loc2_.o2274,_loc1_);
         }
      }
      
      override public function o16384(param1:MovieClip, param2:int, param3:o13064) : void
      {
         super.o16384(param1,param2,param3);
         var _loc4_:o14200 = o4519.o8116.profileData;
         if(o13044)
         {
            return;
         }
         o8027.addEventListener(o14200.SAS_MONEY_CHANGED,o7465,false,0,true);
         o9799.addEventListener(o5595.o16737,o9155,false,0,true);
         this.o1258();
         o6550.enabled = o10846.o19505.o6382;
         o10846.o19505.o16280(null,o7880.o6138,o6046);
      }
      
      private function o1497(param1:Event) : void
      {
      }
      
      override protected function o2635(param1:Event) : void
      {
         super.o2635(param1);
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null)
         {
            return;
         }
         var _loc3_:Object = o8027.o15894.o4848;
         var _loc2_:Object = o8027.o15894.o4848.o18278;
         if(o8027.o7923 != null)
         {
            this.o4096(o8027.o7923.o20159());
         }
      }
      
      private function o6046(param1:o7880) : void
      {
         o6550.enabled = param1.o13662;
      }
      
      override protected function o2053() : o11902
      {
         return new o172();
      }
      
      override protected function o12587() : void
      {
         var _loc1_:* = null;
         var _loc3_:* = null;
         var _loc2_:int = 0;
         if(true && o8027.o12094.isGuest)
         {
            _loc1_ = o8027.o5099.o9009("dialogMessage.mustLoginToEarnSasCash.title");
            _loc3_ = o8027.o5099.o9009("dialogMessage.mustLoginToEarnSasCash.message");
            o16989.o12407(_loc1_,_loc3_);
         }
         else
         {
            _loc2_ = o8027.o5292.o120();
            o16989.o6578(_loc2_);
         }
      }
      
      private function o9155(param1:o11507) : void
      {
         if(param1.o6457 != 0 && o3703 != param1.o6457)
         {
            o3703 = param1.o6457;
         }
      }
      
      override public function o13640() : void
      {
         if(o13044)
         {
            return;
         }
         o10846.o19505.o12657(o7880.o6138,o6046);
         o8027.removeEventListener(o14200.SAS_MONEY_CHANGED,o7465);
         o9799.removeEventListener(o5595.o16737,o9155);
         o8027 = null;
         o3703 = 0;
         super.o13640();
      }
      
      private function o17590() : void
      {
         if(o8027.o7923 != null && o5187 != null)
         {
            o1256(o5187,"$" + o16724.o10417(o8027.o7923.o20170));
         }
      }
      
      private function o7465(param1:Event) : void
      {
         o17590();
      }
      
      override protected function o11639(param1:o15625) : void
      {
         if(param1 == o2665 || param1 == o1934 || param1 == o1934)
         {
            o4519.o8116.o4812.ui.o14759.play();
         }
         else
         {
            o4519.o8116.o4812.ui.o8060.play();
         }
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override protected function o3419() : o19454
      {
         return new o796(o8027);
      }
      
      override protected function o2356() : o18725
      {
         return new o16299(o8027);
      }
      
      override protected function o15172() : o766
      {
         return new o11636(o8027);
      }
      
      override protected function o8849() : o16216
      {
         return new o7788(o8027);
      }
      
      override protected function o12548() : o13660
      {
         return new o9861(o8027);
      }
      
      override protected function o2376() : o17639
      {
         return new o7534();
      }
      
      override protected function o13295() : o10639
      {
         return new o12539();
      }
   }
}
