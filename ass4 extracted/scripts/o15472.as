package
{
   import assets.ui.UIMainLoading;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class o15472
   {
      
      private static const o13801:int = 20;
       
      
      public var asset:MovieClip;
      
      private var o557:MovieClip;
      
      public function o15472()
      {
         super();
      }
      
      public function init(param1:Stage) : void
      {
         asset = new UIMainLoading();
         var _loc2_:String = "loadingBar";
         o557 = asset.getChildByName("loadingBar") as MovieClip;
         param1.addChild(asset);
         o674();
         this.o3243(0);
      }
      
      public function o13640() : void
      {
         if(asset.parent != null)
         {
            o16681.o1209(asset);
            asset.parent.removeChild(asset);
            asset = null;
         }
      }
      
      public function o3243(param1:Number) : void
      {
         var _loc2_:int = param1 * 100;
         if(o557.currentFrame != _loc2_)
         {
            o557.gotoAndStop(_loc2_);
         }
      }
      
      protected function o3097(param1:DisplayObject, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number = param3 / param2 > param1.height / param1.width?param2 / param1.width:param3 / param1.height;
         param1.scaleX = _loc6_;
         param1.scaleY = _loc6_;
         param1.x = param2 / 2 - param1.width * param4 / 2;
         param1.y = param3 / 2 - param1.height * param5 / 2 + 20;
      }
      
      protected function o674() : void
      {
         asset.scaleX = 1;
         asset.scaleY = 1;
         var _loc4_:Number = 800;
         var _loc1_:Number = 600;
         var _loc2_:Number = _loc4_ / asset.width;
         var _loc3_:Number = _loc1_ / asset.height;
         asset.scaleX = _loc2_;
         asset.scaleY = _loc3_;
         o3097(this.asset,this.asset.stage.stageWidth,this.asset.stage.stageHeight - 20,_loc2_,_loc3_);
      }
   }
}
