package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o10339 extends o9743
   {
       
      
      private var o13480:MovieClip;
      
      public function o10339()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:String) : void
      {
         super.init(param1);
         o13480 = container.getChildByName("highLevelItemAnimation") as MovieClip;
         var _loc3_:MovieClip = container.getChildByName("icon") as MovieClip;
         _loc3_.gotoAndStop(param2);
         o4519.o8116.o4812.ui.o20960.play();
      }
      
      override protected function o6662(param1:Event) : void
      {
         if(asset == null || asset.stage == null)
         {
            return;
         }
         o11692(o13480);
         super.o6662(param1);
      }
   }
}
