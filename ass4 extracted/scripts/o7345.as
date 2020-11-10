package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o7345 extends o16681
   {
       
      
      private var o20035:TextField;
      
      private var o4527:TextField;
      
      private var o17564:TextField;
      
      private var o18934:TextField;
      
      private var o10031:MovieClip;
      
      private var o15187:MovieClip;
      
      private var o9010:MovieClip;
      
      private var o830:o15625;
      
      public var o10220:o15723;
      
      private var o19689:o978;
      
      public function o7345()
      {
         super();
      }
      
      private function o2987() : void
      {
         var _loc1_:MovieClip = this.asset;
         o20035 = _loc1_.getChildByName("lblHeading") as TextField;
         o4527 = _loc1_.getChildByName("lblDetails") as TextField;
         o17564 = _loc1_.getChildByName("lblRewards") as TextField;
         o18934 = _loc1_.getChildByName("lblTimeRemaining") as TextField;
         o15187 = _loc1_.getChildByName("imgIcon") as MovieClip;
         o9010 = _loc1_.getChildByName("mapIcon") as MovieClip;
         o10031 = _loc1_.getChildByName("imgManufacture") as MovieClip;
      }
      
      public function o16384(param1:MovieClip, param2:o978) : void
      {
         super.init(param1);
         this.o19689 = param2;
         o2987();
         var _loc3_:o20565 = new o20565(this);
         o830 = _loc3_.o17578("btnPlay");
         o830.addEventListener("click",o19495,false,0,true);
         o15187.gotoAndStop(1);
         o9010.gotoAndStop(1);
         o10031.gotoAndStop(1);
         this.visible = false;
      }
      
      public function o10950() : void
      {
         if(this.o10220 != null)
         {
            this.o10220.removeEventListener(o15723.o16902,o16902);
         }
         this.o10220 = null;
         o6662(null);
      }
      
      public function o15312(param1:o15723) : void
      {
         if(this.o10220 != null)
         {
            this.o10220.removeEventListener(o15723.o16902,o16902);
         }
         this.o10220 = param1;
         this.o10220.addEventListener(o15723.o16902,o16902,false,0,true);
         o6662(null);
      }
      
      private function o16902(param1:Event) : void
      {
         o6662(param1);
      }
      
      public function o6662(param1:Event) : void
      {
         var _loc8_:* = null;
         if(o10220 != null)
         {
            o830.visible = o10220.o13779;
            this.visible = true;
            if(o10220 != null)
            {
               _loc8_ = "";
               asset.gotoAndStop(!!o10220.o13779?"up":"unavailable");
               o2987();
               if(o10220.o13779)
               {
                  o18934.text = o16724.o19944(o10220.o9614) + _loc8_;
               }
               else
               {
                  o18934.text = o16724.o19944(o10220.o15946()) + _loc8_;
               }
            }
            else
            {
               o2987();
            }
            var _loc3_:o14200 = o14200.o19505;
            var _loc10_:o69 = _loc3_.o5292.o9177.o17565(o10220.o12387);
            var _loc7_:String = _loc10_.o7219;
            var _loc6_:String = _loc10_.o1007 + " : " + o10220.o15231.o17977;
            _loc6_ = o10220.o15231.o160(_loc6_,o10220.o14678);
            var _loc5_:String = o10220.o15231.o160(o10220.o15231.o8398,o10220.o14678);
            var _loc4_:String = o10220.o15231.o160(o10220.o15231.o9938,o10220.o14678);
            var _loc9_:String = o10220.o15231.o7219;
            var _loc2_:int = o10220.o14678;
            o20035.text = _loc6_;
            o4527.text = _loc5_;
            o17564.text = _loc4_;
            o15187.gotoAndStop(_loc9_);
            o9010.gotoAndStop(_loc7_);
            o10031.gotoAndStop(_loc2_);
            o830.visible = o10220.o13779;
            return;
         }
         this.visible = false;
      }
      
      public function o19495(param1:MouseEvent) : void
      {
         var _loc2_:o14200 = o14200.o19505;
         _loc2_.o202.o18339 = o10220.o18339;
         o6921.o15035 = o10220.o18339;
         _loc2_.o202.o15492 = null;
         _loc2_.o202.o10220 = o10220;
         this.o19689.screen = 32;
      }
      
      override public function o13640() : void
      {
         o830.removeEventListener("click",o19495);
         if(this.o10220 != null)
         {
            this.o10220.removeEventListener(o15723.o16902,o16902);
         }
         o20035 = null;
         o4527 = null;
         o17564 = null;
         o18934 = null;
         o10031 = null;
         o15187 = null;
         o830 = null;
         o10220 = null;
         super.o13640();
      }
   }
}
