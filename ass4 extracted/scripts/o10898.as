package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o10898 extends o9743
   {
       
      
      private var o16989:o13064;
      
      private var o2755:o15625;
      
      private var o11133:o15625;
      
      private var o3013:o15625;
      
      private var o5706:o15625;
      
      public function o10898()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         super.init(param1);
         this.o16989 = param2;
         o2755 = o9679.o17578("btnKills",container);
         o11133 = o9679.o17578("btnSinglePlayerWins",container);
         o3013 = o9679.o17578("btnMultiplayerWins",container);
         o5706 = o9679.o17578("btnTopSpot",container);
         o2755.addEventListener("click",o14126,false,0,true);
         o11133.addEventListener("click",o13551,false,0,true);
         o3013.addEventListener("click",o15937,false,0,true);
         o5706.addEventListener("click",o14582,false,0,true);
         o11048();
      }
      
      protected function o11048() : void
      {
      }
      
      override public function o13640() : void
      {
         o2755.removeEventListener("click",o14126);
         o11133.removeEventListener("click",o13551);
         o3013.removeEventListener("click",o15937);
         o5706.removeEventListener("click",o14582);
         o16989 = null;
         o2755 = null;
         o11133 = null;
         o3013 = null;
         o5706 = null;
         super.o13640();
      }
      
      public function o14126(param1:Event) : void
      {
      }
      
      public function o13551(param1:Event) : void
      {
      }
      
      public function o15937(param1:Event) : void
      {
      }
      
      public function o14582(param1:Event) : void
      {
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null || asset.stage == null)
         {
            return;
         }
         o11692(o2755.asset.getChildByName("arrow") as MovieClip);
         o11692(o11133.asset.getChildByName("arrow") as MovieClip);
         o11692(o3013.asset.getChildByName("arrow") as MovieClip);
         o11692(o5706.asset.getChildByName("arrow") as MovieClip);
      }
   }
}
