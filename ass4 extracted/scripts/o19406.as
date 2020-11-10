package
{
   import assets.ui.screen.MissionSummaryDetailsScreenAsset;
   import assets.ui.screen.MissionSummaryDetailsSinglePlayerScreenAsset;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o19406 extends o6539
   {
       
      
      public var o17257:int = 2;
      
      public var o16989:o13064;
      
      private var o9029:o3376;
      
      public function o19406()
      {
         super();
         o14592 = true;
      }
      
      protected function o17774() : o5853
      {
         return new o5853();
      }
      
      protected function o4907() : o18703
      {
         return new o18703();
      }
      
      protected function o16736() : o3376
      {
         return new o3376();
      }
      
      override protected function o1789(param1:int, param2:int) : o6539
      {
         if(!(int(param2) - 2))
         {
            o9029 = o16736();
            if(o16989.o470)
            {
               o9029.o16384(new MissionSummaryDetailsScreenAsset(),this,param1);
            }
            else
            {
               o9029.o16384(new MissionSummaryDetailsSinglePlayerScreenAsset(),this,param1);
            }
            return o9029;
         }
         return null;
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         super.init(param1);
         this.o16989 = param2;
         o11048();
      }
      
      protected function o11048() : void
      {
      }
      
      public function o12729(param1:Boolean, param2:String) : void
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc6_:MovieClip = asset.getChildByName("levelFailed") as MovieClip;
         var _loc5_:MovieClip = asset.getChildByName("levelComplete") as MovieClip;
         _loc5_.visible = param1;
         _loc6_.visible = param1 == false;
         if(param1 == false)
         {
            _loc4_ = _loc6_.getChildByName("lblHeadingFailed") as TextField;
            _loc4_.text = "MISSION SUMMARY: Level Failed";
            if(param2.length > 0)
            {
               _loc4_.text = _loc4_.text + (" (" + param2 + ")");
            }
            _loc4_.autoSize = "center";
            _loc3_ = _loc6_.getChildByName("blinkIcon") as MovieClip;
            _loc3_.x = _loc4_.x - 5;
         }
      }
      
      private function o13844() : void
      {
         o9029.o7893();
      }
      
      public function o11059() : void
      {
      }
      
      override public function o13315(param1:int, param2:Function) : void
      {
         this.screen = 22;
         super.o13315(param1,param2);
      }
      
      override public function o13640() : void
      {
         o17257 = 0;
         o16989 = null;
         o9029 = null;
         super.o13640();
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o674();
         super.o14009(param1,param2,param3,param4);
      }
   }
}
