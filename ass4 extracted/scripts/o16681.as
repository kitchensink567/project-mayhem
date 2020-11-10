package
{
   import assets.ui.LoadingAsset;
   import assets.ui.LoadingWheel;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class o16681 extends EventDispatcher
   {
      
      private static const o13801:int = 20;
      
      protected static const o15215:Boolean = false;
       
      
      public var o1878:o16681;
      
      private var o12613:MovieClip;
      
      private var o11153:Boolean = true;
      
      protected var o20157:Vector.<o16681>;
      
      protected var o2815:Dictionary = null;
      
      private var o16971:Boolean = false;
      
      private var o17818:Boolean = true;
      
      private var o15061:Boolean = false;
      
      public var o7139:Boolean = false;
      
      public function o16681()
      {
         super();
         o20157 = new Vector.<o16681>();
      }
      
      public static function o1209(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         var _loc4_:* = null;
         if(param1 is LoadingWheel || param1 is LoadingAsset)
         {
            return;
         }
         var _loc3_:int = param1.numChildren;
         param1.stop();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            _loc4_ = param1.getChildAt(_loc2_);
            if(_loc4_ is MovieClip)
            {
               o1209(_loc4_ as MovieClip);
            }
            _loc2_++;
         }
      }
      
      public static function o18429(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         var _loc4_:* = null;
         if(param1 is LoadingWheel || param1 is LoadingAsset)
         {
            return;
         }
         var _loc3_:int = param1.numChildren;
         param1.play();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            _loc4_ = param1.getChildAt(_loc2_);
            if(_loc4_ is MovieClip)
            {
               o18429(_loc4_ as MovieClip);
            }
            _loc2_++;
         }
      }
      
      public static function o1256(param1:TextField, param2:String) : void
      {
         if(param1 != null && param1.text != param2)
         {
            param1.htmlText = param2 == null?"":param2;
         }
      }
      
      public function o10749() : Boolean
      {
         if(o16971)
         {
            return true;
         }
         if(o1878 == null)
         {
            return false;
         }
         return o1878.o10749();
      }
      
      public function get o12514() : Boolean
      {
         return o16971;
      }
      
      public function set o12514(param1:Boolean) : void
      {
         var _loc2_:* = null;
         this.o16971 = param1;
         var _loc6_:int = 0;
         var _loc5_:* = this.o20157;
         for each(_loc2_ in this.o20157)
         {
            _loc2_.o12514 = param1;
         }
      }
      
      public function init(param1:MovieClip) : void
      {
         o12613 = param1;
         if(o12613 != null)
         {
            o12613.addEventListener("addedToStage",o343,false,0,true);
            o12613.stop();
         }
      }
      
      protected function o343(param1:Event) : void
      {
         this.o14009(800,600,asset.stage.stageWidth,asset.stage.stageHeight);
      }
      
      public function get asset() : MovieClip
      {
         return o12613;
      }
      
      public function set asset(param1:MovieClip) : void
      {
         if(o12613 != param1)
         {
            o12613 = param1;
         }
      }
      
      public function o13640() : void
      {
         var _loc1_:* = null;
         if(o15061)
         {
            throw new Error("release called more than once");
         }
         o15061 = true;
         if(o12613 != null)
         {
            o12613.removeEventListener("addedToStage",o343);
         }
         if(asset != null)
         {
            o8867(asset);
         }
         var _loc5_:int = 0;
         var _loc4_:* = o20157;
         for each(_loc1_ in o20157)
         {
            _loc1_.o13640();
         }
         if(asset != null && asset.parent != null)
         {
            asset.parent.removeChild(asset);
            if(asset is o6539)
            {
               throw new Error("Asset parent found on BaseScreen?");
            }
         }
         o1878 = null;
         o12613 = null;
         o11153 = false;
         o20157 = null;
         o16971 = false;
         o17818 = false;
         o13064.gc();
      }
      
      public function o8867(param1:MovieClip = null) : void
      {
         if(param1 == null)
         {
            if(o12613 != null)
            {
               o1209(o12613);
            }
         }
         else
         {
            o1209(param1);
         }
      }
      
      public function o8594(param1:MovieClip = null) : void
      {
         if(param1 == null)
         {
            if(o12613 != null)
            {
               o8594(o12613);
            }
         }
         else
         {
            o18429(param1);
         }
      }
      
      public function get visible() : Boolean
      {
         if(o12613 == null)
         {
            return false;
         }
         return o12613.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = param1 && o12613.visible == false;
         o12613.visible = param1;
         if(_loc2_)
         {
            this.o1258();
         }
      }
      
      public function get enabled() : Boolean
      {
         return o11153;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:* = o11153 != param1;
         o11153 = param1;
         if(_loc2_)
         {
            this.o1258();
         }
      }
      
      public function o1258() : void
      {
         var _loc1_:* = null;
         draw();
         var _loc5_:int = 0;
         var _loc4_:* = o20157;
         for each(_loc1_ in o20157)
         {
            _loc1_.o1258();
         }
      }
      
      protected function draw() : void
      {
      }
      
      public function o5452(param1:o16681) : void
      {
         this.o20157.push(param1);
         param1.o1878 = this;
      }
      
      protected function o2484(param1:o16681) : int
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o20157;
         for each(var _loc2_ in o20157)
         {
            if(_loc2_ == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function o10877(param1:o16681) : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = undefined;
         _loc3_ = o2484(param1);
         if(_loc3_ < 0)
         {
            throw new Error("index not found");
         }
         _loc2_ = this.o20157.splice(_loc3_,1);
         if(_loc2_[0] != param1)
         {
            throw new Error("incorrect item");
         }
         param1.o13640();
      }
      
      public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:* = null;
         var _loc9_:int = 0;
         var _loc8_:* = o20157;
         for each(_loc5_ in o20157)
         {
            _loc5_.o14009(param1,param2,param3,param4);
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
      
      protected function o10008(param1:DisplayObject, param2:Boolean) : void
      {
         if(param1.visible != param2)
         {
            param1.visible = param2;
         }
      }
      
      protected function o13010(param1:MovieClip, param2:int) : void
      {
         if(param1.o12967 || param1.currentFrame != param2)
         {
            param1.gotoAndStop(param2);
         }
      }
      
      protected function o19614(param1:MovieClip, param2:String) : void
      {
         if(param1.o12967 || param1.currentFrameLabel != param2)
         {
            param1.gotoAndStop(param2);
         }
      }
      
      public function o9642(param1:o16681) : void
      {
         this.asset.addChild(param1.o12613);
         this.o5452(param1);
      }
      
      public function o3868(param1:o16681) : void
      {
         this.asset.addChildAt(param1.o12613,0);
         this.o5452(param1);
      }
      
      public function o2309(param1:o16681) : void
      {
         this.asset.removeChild(param1.o12613);
         this.o10877(param1);
      }
   }
}
