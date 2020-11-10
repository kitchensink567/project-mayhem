package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class o17603 extends o9743
   {
       
      
      private var o16989:o13064;
      
      private var o13759:o15625;
      
      private var o14069:o15625;
      
      private var o9806:o15625;
      
      public function o17603()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         super.init(param1);
         this.o16989 = param2;
         var _loc3_:o20565 = new o20565(this);
         var _loc4_:MovieClip = container.getChildByName("imgContainer") as MovieClip;
         _loc4_.removeChildren(0,_loc4_.numChildren - 1);
         if(o4519.o8116.profileData.o5292.o12970.o3296 != null)
         {
            _loc4_.addChild(o4519.o8116.profileData.o5292.o12970.o3296);
         }
         o13759 = _loc3_.o17578("btnAppStore",container);
         o14069 = _loc3_.o17578("btnGooglePlay",container);
         o9806 = _loc3_.o17578("btnFakeBg2",container);
         o13759.addEventListener("click",o18302,false,0,true);
         o14069.addEventListener("click",o13188,false,0,true);
         o9806.addEventListener("click",o9005,false,0,true);
         _loc3_.o13640();
         _loc3_ = null;
      }
      
      private function o18302(param1:Event) : void
      {
      }
      
      private function o13188(param1:Event) : void
      {
      }
      
      private function o9005(param1:Event) : void
      {
      }
      
      override protected function o2635(param1:Event) : void
      {
         super.o2635(param1);
         o4519.o8116.profileData.saveData();
      }
      
      override public function o13640() : void
      {
         o13759.removeEventListener("click",o18302);
         o14069.removeEventListener("click",o13188);
         o9806.removeEventListener("click",o9005);
         o13759 = null;
         o14069 = null;
         o9806 = null;
         o16989 = null;
         super.o13640();
      }
   }
}
