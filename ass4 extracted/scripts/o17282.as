package
{
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class o17282 extends o3644
   {
      
      private static var o2859:Boolean = false;
      
      private static var o13058:Boolean = false;
       
      
      private var o19419:o14200;
      
      private var o20061:Bitmap;
      
      public function o17282(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      override protected function o10995() : void
      {
         if(o20061 != null)
         {
            o20061.visible = false;
         }
      }
      
      override protected function o12638(param1:Event) : void
      {
         var _loc2_:* = null;
         super.o12638(param1);
         if(asset != null && o19419.o202.o11155)
         {
            o19419.o202.o11155 = false;
            _loc2_ = o19419.o5099.o9009("dialogMessage.multiplayerTimeout.message");
            o16989.o12407("Quit game",_loc2_);
         }
         o19419.o2719.o10907(209);
         if(o4519.o17061 && !o13058)
         {
            o4519.kong.submitStat("initialized",1);
            o13058 = true;
         }
      }
      
      override public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         super.o16384(param1,param2,param3);
         if(o4519.o17061)
         {
            this.o17529.visible = false;
         }
         o8537.o9759 = false;
         if(o19419.o5292.o12970.o18744 != null)
         {
            o14691(null);
         }
         o19419.o5292.o12970.addEventListener(o16236.o5815,o14691,false,0,true);
         if(o2859 == false)
         {
            o2859 = true;
            o19419.o15894.o4848.o7478();
         }
         o10421.removeEventListener("click",o7659);
         StandardStuff.setClick(o10421,o7659);
         var _loc5_:o7897 = o9609.o6223().o17179;
         var _loc4_:String = _loc5_.o12853;
         o19346.visible = true;
         o19346.o13586 = _loc5_.o12853 + ": " + _loc5_.o5252;
         o4519.o8116.o17066();
      }
      
      private function o14691(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(o20061 != null)
         {
            this.asset.removeChild(o20061);
            o20061 = null;
         }
         if(o19419.o5292.o12970.o18744 != null)
         {
            o20061 = o19419.o5292.o12970.o18744;
            o20061.x = 250;
            o20061.y = 20;
            this.asset.addChild(o20061);
            _loc2_ = o19419.o5292.o12970.o13543();
            if(_loc2_ > 0)
            {
               this.o14969(_loc2_);
            }
         }
      }
      
      override protected function o13819(param1:MouseEvent) : void
      {
         o4077(o9609.o6223().o17179.o17615);
      }
      
      override protected function o2993() : o1227
      {
         return new o10760(o19419,true);
      }
      
      override protected function o1329() : o10898
      {
         return new o498(o19419);
      }
      
      override protected function o20113() : o13499
      {
         return null;
      }
      
      override protected function o7659(param1:MouseEvent) : void
      {
         if(o19419.o15894.o3501)
         {
            o16989.o12407("Loading store inventory","Try again in a few seconds");
         }
         else
         {
            this.o19419.saveData();
            o16989.screen = 5;
         }
      }
      
      override protected function o3647(param1:Boolean) : void
      {
         super.o3647(param1);
         o19419.o1317.o400 = param1;
      }
      
      override protected function o20254(param1:Boolean) : void
      {
         super.o20254(param1);
         o19419.o1317.o9671 = param1;
      }
      
      override protected function o7293(param1:Boolean) : void
      {
         super.o7293(param1);
         o19419.o1317.o3288 = param1;
      }
      
      override protected function o11048() : void
      {
         this.o3647(o19419.o1317.o400);
         this.o20254(o19419.o1317.o9671);
         this.o7293(o19419.o1317.o3288);
      }
      
      override protected function o521() : void
      {
         o19419.saveData();
      }
      
      override protected function o7334(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(o19419.o12094.isGuest)
         {
            _loc2_ = o19419.o5099.o9009("dialogMessage.loginToViewLeaderboards.title");
            _loc3_ = o19419.o5099.o9009("dialogMessage.loginToViewLeaderboards.message");
            o16989.o12407(_loc2_,_loc3_);
         }
         else
         {
            o4019();
         }
      }
      
      override protected function o11639(param1:o15625) : void
      {
         if(param1 == this.o9583)
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
      
      override public function o13640() : void
      {
         o19419.o5292.o12970.removeEventListener(o16236.o5815,o14691);
         o19419 = null;
         o20061 = null;
         super.o13640();
      }
   }
}
