package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o11911 extends o9743
   {
       
      
      private var o16989:o13064;
      
      private var o11610:TextField;
      
      private var o1533:o12885;
      
      private var o2359:Boolean = true;
      
      public function o11911()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:String) : void
      {
         super.init(param1);
         this.o16989 = param2;
         var _loc4_:MovieClip = container.getChildByName("content") as MovieClip;
         o11610 = _loc4_.getChildByName("infoTxt") as TextField;
         o11610.htmlText = param3;
         o11610.height = o11610.textHeight;
         var _loc6_:MovieClip = container.getChildByName("contentMask") as MovieClip;
         var _loc7_:MovieClip = container.getChildByName("slider") as MovieClip;
         var _loc5_:MovieClip = container.getChildByName("track") as MovieClip;
         if(o2359 == false)
         {
            _loc6_.visible = false;
            _loc7_.visible = false;
            _loc5_.visible = false;
         }
         if(o2359)
         {
            param1.addEventListener("addedToStage",o343,false,0,true);
         }
      }
      
      private function o343(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc4_:MovieClip = container.getChildByName("contentMask") as MovieClip;
         var _loc5_:MovieClip = container.getChildByName("slider") as MovieClip;
         var _loc3_:MovieClip = container.getChildByName("track") as MovieClip;
         if(o2359)
         {
            _loc2_ = container.getChildByName("content") as MovieClip;
            o1533 = new o12885();
            o1533.init(_loc2_,_loc4_,_loc3_,_loc5_);
            asset.removeEventListener("addedToStage",o343);
         }
      }
      
      override public function o13640() : void
      {
         if(o2359)
         {
            o1533.o19115();
         }
         o16989 = null;
         o11610 = null;
         o1533 = null;
         super.o13640();
      }
   }
}
