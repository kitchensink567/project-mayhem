package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o10639 extends o6539
   {
       
      
      protected var o7741:o2445;
      
      protected var o1322:o2445;
      
      protected var o16989:o13064;
      
      protected var o19689:o978;
      
      protected var o3048:o15625;
      
      protected var o10013:o15625;
      
      private var o7750:o20565;
      
      private var o6170:MovieClip;
      
      protected var o7586:o15625;
      
      protected var o11317:MovieClip;
      
      protected var o4067:o12290;
      
      protected var o18708:MovieClip;
      
      private var o10208:Timer;
      
      protected var o19844:Number = -1;
      
      protected var o13445:TextField;
      
      protected var o16725:TextField;
      
      protected var o10800:MovieClip;
      
      protected var o5428:o12290;
      
      protected var o9572:MovieClip;
      
      private var o7947:TextField;
      
      private var o18761:MovieClip;
      
      public function o10639()
      {
         super();
         o10208 = new Timer(1000);
         o10208.addEventListener("timer",o11588,false,0,true);
      }
      
      public function o2093(param1:int) : void
      {
         var _loc2_:TextField = o18708.getChildByName("label") as TextField;
         _loc2_.text = "Nightmare mode will be unlocked at level " + param1.toString();
      }
      
      public function o20534(param1:Number) : void
      {
         o19844 = param1;
         o10208.start();
         o11588(null);
      }
      
      protected function o11588(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Number = NaN;
         o19844 = o19844 - 1000;
         if(o19844 < 0)
         {
            o14200.o19505.o7923.o13832();
            o3050(o14200.o19505.o7923.o20148,o14200.o19505.data.o15459);
            _loc3_ = o4519.o8116.o15020.time;
            _loc4_ = o14200.o19505.o7923.o20068;
            _loc2_ = _loc4_ - _loc3_;
            o19844 = _loc2_;
            this.o4067.visible = false;
            o7586.enabled = true;
            o7586.visible = true;
         }
         o7947.text = o16724.o8717(o19844);
      }
      
      public function o3050(param1:int, param2:int = 0, param3:Boolean = false) : void
      {
         var _loc8_:* = null;
         var _loc5_:Number = NaN;
         var _loc4_:* = null;
         if(param3)
         {
            this.o4067.visible = false;
            o7586.enabled = true;
            o7586.visible = true;
         }
         o18761.gotoAndStop(param1 + param2 <= 0?2:1);
         var _loc9_:TextField = o18761.getChildByName("label") as TextField;
         _loc9_.text = "Daily Tickets: " + param1.toString();
         var _loc6_:TextField = o18761.getChildByName("premiumTicketsRemaining") as TextField;
         _loc6_.text = "Premium Tickets: " + param2.toString();
         o9572.visible = false;
         var _loc7_:o14801 = o14200.o19505.o5292.o16679.o9622();
         if(_loc7_)
         {
            _loc8_ = new Date();
            _loc5_ = o4519.o8116.o15020.time;
            _loc8_.time = _loc5_ + 1800000;
            if(_loc7_.o11392.o5897.o4574(_loc8_))
            {
               _loc4_ = _loc7_.o11392 as o14128;
               if(_loc4_ && _loc4_.o956.o5788)
               {
                  o9572.visible = param1 > 0;
               }
            }
         }
      }
      
      public function o19184(param1:Boolean) : void
      {
         var _loc2_:TextField = o18761.getChildByName("label") as TextField;
         _loc2_.visible = param1;
      }
      
      protected function o1000() : void
      {
         if(o14200.o19505.o7923.level < o14576.o2846)
         {
            o2093(o14576.o2846);
            o4067.visible = false;
            o18708.visible = true;
            o7586.visible = true;
            o7586.enabled = true;
         }
         else if(o14200.o19505.o7923.o11348.value)
         {
            o4067.visible = true;
            o7586.visible = false;
            o7586.enabled = false;
            o18708.visible = false;
         }
         else
         {
            o4067.visible = false;
            o7586.visible = true;
            o7586.enabled = true;
            o18708.visible = false;
         }
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         var _loc6_:* = null;
         super.init(param1);
         this.o16989 = param2.o16989;
         this.o19689 = param2;
         o7750 = new o20565(this);
         o3048 = o7750.o17578("btnMpQuickMatch");
         o6170 = param1.getChildByName("eventList") as MovieClip;
         o10013 = o7750.o17578("btnMpPrivateMatch");
         o3048.addEventListener("click",o3366,false,0,true);
         o10013.addEventListener("click",o17925,false,0,true);
         o7586 = o7750.o17578("btnPlayNightmareMode");
         o7586.addEventListener("click",o8704,false,0,true);
         var _loc8_:MovieClip = o6170.getChildByName("info") as MovieClip;
         _loc8_.visible = false;
         o13445 = _loc8_.getChildByName("lblBlackKeyInfo") as TextField;
         o18761 = param1.getChildByName("nightmareMode") as MovieClip;
         o18761.gotoAndStop(1);
         o10800 = o18761.getChildByName("replenishTicketsTimer") as MovieClip;
         o9572 = o18761.getChildByName("superEventMedal") as MovieClip;
         o7947 = o10800.getChildByName("timeRemaining") as TextField;
         o5428 = o7750.o15961("btnAddDailyTickets","Add Daily Tickets",o18761);
         o5428.visible = false;
         _loc6_ = param1.getChildByName("btnTestClaim") as MovieClip;
         _loc6_.visible = false;
         o11317 = o18761.getChildByName("nightmareModeInfo") as MovieClip;
         o16725 = o18761.getChildByName("rewardModifier") as TextField;
         o4067 = o7750.o15961("btnNightmareModeTimeLocked");
         o18708 = param1.getChildByName("nightmareModeLevelLocked") as MovieClip;
         o11317.visible = false;
         o4067.visible = false;
         o18708.visible = false;
         o16725.visible = false;
         o4067.addEventListener("click",o6172,false,0,true);
         if(o16725 && o13800.o15839().o19134 && o13800.o15839().o9777)
         {
            o16725.text = o16725.text + (o13800.o15839().o4602 / 100 + "x Alloy Bonus!");
            o16725.visible = true;
         }
         o7741 = new o2445();
         var _loc4_:Vector.<int> = new Vector.<int>();
         _loc4_.push(1);
         _loc4_.push(0);
         _loc4_.push(5);
         o7741.o16384(o6170,_loc8_,o4519.o8116.profileData,o16989,2,o3313,_loc4_);
         this.o5452(o7741);
         o1322 = new o2445();
         var _loc7_:Vector.<int> = new Vector.<int>();
         _loc7_.push(3);
         var _loc5_:MovieClip = param1.getChildByName("superEventContainer") as MovieClip;
         o1322.o16384(_loc5_,null,o4519.o8116.profileData,o16989,1,o3313,_loc7_);
         this.o5452(o1322);
         _loc5_.visible = true;
         o1322.visible = true;
      }
      
      protected function o3313(param1:o14801) : void
      {
      }
      
      protected function o3366(param1:MouseEvent) : void
      {
      }
      
      protected function o17925(param1:MouseEvent) : void
      {
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null)
         {
            return;
         }
         o11692(o3048.asset.getChildByName("arrow") as MovieClip);
         o11692(o10013.asset.getChildByName("arrow") as MovieClip);
         o11692(o7586.asset.getChildByName("arrow") as MovieClip);
      }
      
      override public function o13640() : void
      {
         o7750.o13640();
         o3048.removeEventListener("click",o3366);
         o10013.removeEventListener("click",o17925);
         o10208.removeEventListener("timer",o11588);
         o4067.removeEventListener("click",o6172);
         o7586.removeEventListener("click",o8704);
         o7750 = null;
         o3048 = null;
         o6170 = null;
         o10013 = null;
         o11317 = null;
         o4067 = null;
         o18708 = null;
         o10208 = null;
         o13445 = null;
         o7741 = null;
         o7586 = null;
         o10800 = null;
         o9572 = null;
         o7947 = null;
         o18761 = null;
         super.o13640();
      }
      
      protected function o6172(param1:Event) : void
      {
      }
      
      protected function o8704(param1:MouseEvent) : void
      {
      }
   }
}
