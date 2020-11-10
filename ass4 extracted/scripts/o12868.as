package
{
   import assets.ui.debug.DebugAsset;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   
   public class o12868 extends MovieClip
   {
      
      private static const o13801:int = 20;
      
      private static var o9085:DebugAsset;
       
      
      public var o16989:o13064;
      
      public var o8436:MovieClip;
      
      public var o1489:int;
      
      public var o3271:Boolean;
      
      private var o20090:Boolean = false;
      
      public function o12868(param1:int, param2:Boolean)
      {
         super();
         this.o3271 = param2;
         this.o1489 = param1;
         o8436 = new MovieClip();
         o8436.tabChildren = false;
         this.addEventListener("addedToStage",o3602,false,0,true);
      }
      
      protected function o5879() : o13064
      {
         return new o13064();
      }
      
      private function o3602(param1:Event) : void
      {
         this.removeEventListener("addedToStage",o3602);
         this.stage.addEventListener("resize",o13318);
         this.stage.addEventListener("enterFrame",o11482);
         this.addChild(o8436);
         this.o16989 = o5879();
         this.o16989.o1489 = o1489;
         this.o16989.o16384(o8436,o3271);
         this.stage.quality = "medium";
         this.y = this.o1489 / 2;
         o14652();
      }
      
      private function o8772(param1:int, param2:int, param3:int, param4:int, param5:int) : Shape
      {
         var _loc6_:Shape = new Shape();
         _loc6_.graphics.beginFill(param5);
         _loc6_.graphics.drawRect(param1,param2,param3,param4);
         _loc6_.graphics.endFill();
         this.addChild(_loc6_);
         return _loc6_;
      }
      
      private function o14652() : void
      {
         if(o20090)
         {
            return;
         }
         var _loc4_:Number = 800;
         var _loc2_:Number = 620;
         var _loc3_:Number = 800;
         var _loc1_:* = 2;
         o8772(-_loc3_ - _loc1_,0,_loc3_,_loc2_,0);
         o8772(_loc4_ + _loc1_,0,_loc3_,_loc2_,0);
         o8772(0,-_loc3_ - _loc1_,_loc4_,_loc3_,0);
         o8772(0,_loc2_ + _loc1_,_loc4_,_loc3_,0);
         o20090 = true;
      }
      
      private function o11482(param1:Event) : void
      {
         o13318(null);
      }
      
      private function o13318(param1:Event) : void
      {
         if(o16989 == null || stage == null)
         {
            return;
         }
      }
      
      public function get screen() : int
      {
         return o16989.screen;
      }
      
      public function set screen(param1:int) : void
      {
         o16989.screen = param1;
      }
   }
}
