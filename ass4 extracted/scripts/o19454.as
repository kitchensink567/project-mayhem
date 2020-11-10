package
{
   import assets.ui.screen.BlankScreenAsset;
   import assets.ui.screen.EquipmentArmorScreenAsset;
   import assets.ui.screen.EquipmentSupportScreenAsset;
   import assets.ui.screen.EquipmentWeaponsScreenAsset;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o19454 extends o6539
   {
       
      
      protected var o19689:o978;
      
      private var o7750:o20565;
      
      public var o14188:o20421;
      
      private var o10362:int = -1;
      
      public var o339:o11191;
      
      public var o9643:o5492;
      
      public var o14382:o10676;
      
      protected var o16989:o13064;
      
      private var o6399:MovieClip;
      
      public function o19454()
      {
         super();
      }
      
      override protected function o154() : void
      {
         this.screen = 0;
         this.o19689.o8544 = o16446;
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         super.init(param1);
         this.o19689 = param2;
         this.o16989 = param2.o16989;
         o7750 = new o20565(this);
         this.o8900(param3);
         param2.o14537(3);
         o6399 = param1;
         var _loc6_:o15625 = o7750.o17578("btnTabWeapons");
         var _loc5_:o15625 = o7750.o17578("btnTabArmor");
         var _loc4_:o15625 = o7750.o17578("btnTabSupport");
         o14188 = o7750.o3538([_loc6_,_loc5_,_loc4_]);
         o14188.addEventListener(o5595.o16737,o14804,false,0,true);
         param2.o9164(false);
         param2.o8987(true);
         param2.o16224(true);
      }
      
      protected function o19412() : o11191
      {
         return new o11191();
      }
      
      protected function o10512() : o5492
      {
         return new o5492();
      }
      
      protected function o9999() : o10676
      {
         return new o10676();
      }
      
      protected function o9564(param1:Event) : void
      {
         super.o13315(o11050,o16362);
      }
      
      override public function set screen(param1:int) : void
      {
         if(o14188.o2120 != param1)
         {
            o14188.removeEventListener(o5595.o16737,o14804);
            o14188.o2120 = param1;
            o14188.addEventListener(o5595.o16737,o14804,false,0,true);
         }
         .super.screen = param1;
      }
      
      public function get o19448() : int
      {
         return o14188.o2120;
      }
      
      public function set o19448(param1:int) : void
      {
         o14188.o2120 = param1;
      }
      
      override protected function o1789(param1:int, param2:int) : o6539
      {
         var _loc3_:* = null;
         o339 = null;
         o9643 = null;
         o14382 = null;
         switch(int(param2))
         {
            case 0:
               o339 = o19412();
               o339.o16384(new EquipmentWeaponsScreenAsset(),param1,this.o16989);
               return o339;
            case 1:
               o9643 = o10512();
               o9643.o16384(new EquipmentArmorScreenAsset(),param1,this.o16989);
               return o9643;
            case 2:
               o14382 = o9999();
               o14382.o16384(new EquipmentSupportScreenAsset(),param1,this.o16989);
               return o14382;
            case 3:
               _loc3_ = new o6539();
               _loc3_.init(new BlankScreenAsset());
               return _loc3_;
         }
      }
      
      private function o14804(param1:o11507) : void
      {
         this.screen = param1.o6457;
      }
      
      override public function o13640() : void
      {
         this.o19689.o8544 = null;
         if(o14188)
         {
            o14188.removeEventListener(o5595.o16737,o14804);
         }
         o7750.o13640();
         o19689 = null;
         o7750 = null;
         o14188 = null;
         o10362 = 0;
         o339 = null;
         o9643 = null;
         o14382 = null;
         o16989 = null;
         o6399 = null;
         super.o13640();
      }
      
      protected function o16446() : void
      {
         if(this.o339 != null)
         {
            o339.o1258();
         }
         if(this.o9643 != null)
         {
            this.o9643.o1258();
         }
      }
      
      override public function o13315(param1:int, param2:Function) : void
      {
         this.screen = 3;
         super.o13315(param1,param2);
      }
   }
}
