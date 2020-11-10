package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class o14911 extends o16681
   {
       
      
      private var o12970:o16236;
      
      private var o13759:o15625;
      
      private var o14069:o15625;
      
      public function o14911()
      {
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         this.visible = o4519.o8116.o476.o15026.enabled;
         o12970 = o4519.o8116.profileData.o5292.o12970;
         var _loc3_:MovieClip = param1.getChildByName("imgContainer") as MovieClip;
         _loc3_.removeChildren(0,_loc3_.numChildren - 1);
         if(o4519.o8116.profileData.o5292.o12970.o4972 != null)
         {
            _loc3_.addChild(o4519.o8116.profileData.o5292.o12970.o4972);
         }
         var _loc2_:o20565 = new o20565(this);
         o13759 = _loc2_.o17578("btnAppStore");
         o14069 = _loc2_.o17578("btnGooglePlay");
         o13759.addEventListener("click",o18302,false,0,true);
         o14069.addEventListener("click",o13188,false,0,true);
         _loc2_.o13640();
         _loc2_ = null;
      }
      
      private function o18302(param1:Event) : void
      {
      }
      
      private function o13188(param1:Event) : void
      {
      }
      
      override public function o13640() : void
      {
         o13759.removeEventListener("click",o18302);
         o14069.removeEventListener("click",o13188);
         o12970 = null;
         o13759 = null;
         o14069 = null;
         super.o13640();
      }
   }
}
