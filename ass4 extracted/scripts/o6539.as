package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.Dictionary;
   
   public class o6539 extends o731
   {
       
      
      public var o16362:Function;
      
      public var o11050:int;
      
      public var o7173:int;
      
      public var o14592:Boolean = false;
      
      public var o310:MovieClip = null;
      
      public var o7817:o6539;
      
      private var o18056:int;
      
      private var o8187:int;
      
      private var o17211:int = -1;
      
      private var o83:String = null;
      
      private var o4917:Boolean = false;
      
      public function o6539()
      {
         super();
      }
      
      protected function get o4292() : MovieClip
      {
         return this.asset;
      }
      
      protected function get o4715() : String
      {
         return "In";
      }
      
      protected function get o12794() : String
      {
         return "Out";
      }
      
      protected function get o13116() : String
      {
         return "InComplete";
      }
      
      protected function get o7426() : String
      {
         return "OutComplete";
      }
      
      protected function get o7233() : String
      {
         return "InComplete";
      }
      
      protected function get o10614() : String
      {
         return "OutComplete";
      }
      
      override public function o13640() : void
      {
         if(asset != null)
         {
            o8867(asset);
         }
         asset.removeEventListener("enterFrame",o6662);
         if(o7233 != null)
         {
            asset.removeEventListener(o7233,o12638);
         }
         if(o10614 != null)
         {
            asset.removeEventListener(o10614,o2635);
         }
         o16362 = null;
         o11050 = 0;
         o7173 = 0;
         o14592 = false;
         o310 = null;
         o7817 = null;
         o18056 = 0;
         o8187 = 0;
         o17211 = 0;
         o83 = null;
         super.o13640();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         o13064.o13834(this);
         o13064.o13834(this.asset);
         param1.gotoAndPlay(o4715);
         if(o7233 != null)
         {
            param1.addEventListener(o7233,o12638,false,0,true);
         }
         if(o10614 != null)
         {
            param1.addEventListener(o10614,o2635,false,0,true);
         }
         o310 = param1.getChildByName("childControlContainer") as MovieClip;
         if(o310 != null)
         {
            o310.scaleX = 1;
            o310.scaleY = 1;
            o310.removeChildren(0,o310.numChildren - 1);
         }
         param1.addEventListener("enterFrame",o6662,false,100,true);
      }
      
      protected function o6662(param1:Event) : void
      {
         if(asset == null || asset.stage == null)
         {
            return;
         }
         if(o83 != asset.currentFrameLabel)
         {
            if(asset.currentFrameLabel == o13116)
            {
               o12638(null);
            }
            else if(asset.currentFrameLabel == o7426)
            {
               asset.stop();
               o2635(null);
            }
            o83 = asset == null?null:asset.currentFrameLabel;
         }
      }
      
      public function o8900(param1:int) : void
      {
         this.o7173 = param1;
         o4292.gotoAndPlay(o4715);
      }
      
      public function o13315(param1:int, param2:Function) : void
      {
         this.o8867();
         o4917 = true;
         this.o12514 = true;
         this.o11050 = param1;
         this.o16362 = param2;
         o4292.gotoAndPlay(o12794);
      }
      
      protected function o12638(param1:Event) : void
      {
         if(this.o12514 == false)
         {
            return;
         }
         if(param1 != null)
         {
            throw new Error("Need to remove all dispatchEvent\'s from swc");
         }
         asset.stop();
         this.o12514 = false;
         o154();
         o13064.gc();
      }
      
      protected function o2635(param1:Event) : void
      {
         if(param1 != null)
         {
            throw new Error("Need to remove all dispatchEvent\'s from swc");
         }
         o8867(asset);
         if(o16362 != null)
         {
            o16362(null);
            o16362 = null;
         }
      }
      
      protected function o154() : void
      {
      }
      
      protected function o13318(param1:Event) : void
      {
         if(o7817 == null || asset.stage == null)
         {
            return;
         }
         o7817.o14009(800,600,asset.stage.stageWidth,asset.stage.stageHeight);
      }
      
      public function get screen() : int
      {
         return o8187;
      }
      
      private function o19220(param1:Event) : void
      {
         this.o12514 = false;
         o803(o8187,o18056);
      }
      
      protected function o1789(param1:int, param2:int) : o6539
      {
         return null;
      }
      
      private function o803(param1:int, param2:int) : void
      {
         if(o7817 != null && o7817.o12514)
         {
            this.o12514 = this.o12514;
         }
         if(o7817 != null)
         {
            this.o2309(o7817);
         }
         o7817 = null;
         o8187 = param2;
         o7817 = o1789(param1,param2);
         if(o7817 != null)
         {
            if(o14592)
            {
               this.o9642(o7817);
            }
            else
            {
               this.o3868(o7817);
            }
            o7817.o12514 = true;
            o8187 = param2;
            o17211 = o8187;
            o13318(null);
         }
      }
      
      public function set screen(param1:int) : void
      {
         o18056 = param1;
         if(o7817 == null)
         {
            o8187 = -1;
            o17211 = param1;
            o803(o8187,o18056);
         }
         else if(o8187 != o18056 && param1 != o17211 && o12514 == false)
         {
            o17211 = param1;
            o7817.o13315(o18056,o19220);
         }
      }
      
      override public function o9642(param1:o16681) : void
      {
         super.o9642(param1);
      }
      
      override public function o3868(param1:o16681) : void
      {
         if(o310 == null)
         {
            super.o3868(param1);
         }
         else
         {
            this.o310.addChildAt(param1.asset,0);
            this.o5452(param1);
         }
      }
      
      override public function o2309(param1:o16681) : void
      {
         if(o310 == null)
         {
            super.o2309(param1);
         }
         else if(param1.asset.parent == o310)
         {
            o8867(param1.asset);
            this.o310.removeChild(param1.asset);
            this.o10877(param1);
         }
         else
         {
            super.o2309(param1);
         }
      }
      
      public function o11692(param1:MovieClip) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.currentFrameLabel != null && param1.currentFrameLabel.indexOf("Stop") == 0)
         {
            param1.stop();
         }
      }
      
      private function o4056(param1:o6539) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         var _loc4_:Vector.<o16681> = param1.o20157;
         var _loc5_:Dictionary = param1.o2815;
         var _loc7_:int = 0;
         var _loc6_:* = param1.o20157;
         for each(_loc3_ in param1.o20157)
         {
            if(_loc3_ is o18819)
            {
               _loc3_ = _loc3_;
            }
            if(_loc3_ is o9743)
            {
               _loc2_ = _loc3_ as o9743;
               _loc2_.o16335 = null;
               _loc2_.o11280();
            }
            else if(_loc3_ is o6539)
            {
               o4056(_loc3_ as o6539);
            }
         }
      }
      
      public function o19931() : void
      {
         o4056(this);
      }
   }
}
