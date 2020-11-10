package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class o12539 extends o10639
   {
      
      public static const o12574:int = 4;
       
      
      private var o19419:o14200;
      
      private var o5510:int = -1;
      
      public function o12539()
      {
         super();
      }
      
      override public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         var _loc5_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc6_:* = NaN;
         super.o16384(param1,param2,param3);
         o19419 = o4519.o8116.profileData;
         o19419.o202.o15492 = null;
         if(o19419.o5292.o20622)
         {
            o3050(o19419.o7923.o20148,o19419.data.o15459);
            o11317.visible = true;
            o10800.visible = true;
            o19184(true);
            _loc5_ = o4519.o8116.o15020.time;
            _loc8_ = o19419.o7923.o20068;
            _loc4_ = _loc8_ - _loc5_;
            _loc6_ = _loc4_;
            if(_loc6_ > 0)
            {
               o20534(_loc6_);
            }
            else
            {
               o20534(_loc6_);
               o19419.o7923.o13832();
               o3050(o19419.o7923.o20148,o19419.data.o15459);
               o19419.saveData();
            }
            o1000();
         }
         else
         {
            o7586.visible = false;
            o7586.enabled = false;
         }
         var _loc7_:o15745 = o19419.o5292.o418;
         o13445.text = "Black key reward chance:\n" + "Diamond: " + o12267(_loc7_.o6184) + "\n" + "Platinum: " + o12267(_loc7_.o4582) + "\n" + "Gold: 0.5%";
         o1051.o19115(o5510);
         o5510 = -1;
         o5510 = o1051.o4767(o4519.o8116.o2996,0.0666666666666667,o7664);
      }
      
      private function o12267(param1:Number) : String
      {
         return Math.round(param1 * 100).toString() + "%";
      }
      
      private function o7664() : void
      {
         o3050(o19419.o7923.o20148,o19419.data.o15459);
      }
      
      private function o19608() : void
      {
         o19419.o202.o10211 = true;
         if(true && o19419.o202.o18339 == 1)
         {
            if(o19419.data.o12697())
            {
               o19419.data.o14047();
               o19689.screen = 20;
            }
            else
            {
               o19689.screen = 26;
            }
         }
         else
         {
            this.o19689.screen = 20;
         }
      }
      
      override protected function o3366(param1:MouseEvent) : void
      {
         o19419.o202.o18339 = 1;
         o19419.o202.o15492 = null;
         o19608();
      }
      
      override protected function o8704(param1:MouseEvent) : void
      {
         o19419.o202.o18339 = 2;
         o19419.o202.o15492 = null;
         this.o19689.screen = 24;
      }
      
      private function o11561() : void
      {
         this.o19689.screen = 24;
      }
      
      override protected function o17925(param1:MouseEvent) : void
      {
         o19419.o202.o18339 = 1;
         o19419.o202.o15492 = null;
         this.o19689.screen = 24;
      }
      
      override protected function o3313(param1:o14801) : void
      {
         if(param1.o14283 == false)
         {
            return;
         }
         o19419.o202.o18339 = param1.o15421;
         o19419.o202.o10211 = true;
         if(o19419.data.o12697())
         {
            o19419.data.o14047();
            o19689.screen = 20;
         }
         else
         {
            o19689.screen = 26;
         }
      }
      
      override protected function o6172(param1:Event) : void
      {
         var _loc4_:int = o19419.o5292.o3911.o4291(666);
         var _loc2_:String = o19419.o5099.o9009("dialogMessage.confirmNightmareCooldown.title");
         var _loc3_:String = o19419.o5099.o9009("dialogMessage.confirmNightmareCooldown.message");
         (o16989 as o14043).o13414(_loc2_,_loc3_,666,o17298);
      }
      
      private function o17298() : void
      {
         o3050(o19419.o7923.o20148,o19419.data.o15459,true);
      }
      
      override public function o13640() : void
      {
         o1051.o19115(o5510);
         super.o13640();
      }
   }
}
