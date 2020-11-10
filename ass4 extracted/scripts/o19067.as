package
{
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   
   public class o19067
   {
       
      
      public var o11569:o15625;
      
      private var o238:Vector.<o15625>;
      
      private var o4784:MovieClip;
      
      private var o5818:int = -1;
      
      public var o16090:Function;
      
      public var o13703:Function;
      
      public var o6687:Function;
      
      public var o14029:Function;
      
      private var o7724:MovieClip;
      
      private var o14429:Boolean = false;
      
      private var o10893:Boolean = false;
      
      private var o7204:Boolean = false;
      
      private var o6697:int = -1;
      
      private var o16714:Point;
      
      private var o20351:Point;
      
      private var o3681:GlowFilter;
      
      private var o1130:GlowFilter;
      
      private var stage:DisplayObjectContainer;
      
      private var o19993:o16076;
      
      public function o19067()
      {
         o16714 = new Point();
         o20351 = new Point();
         super();
         o3681 = new GlowFilter();
         var _loc1_:int = 5;
         o3681.blurY = _loc1_;
         o3681.blurX = _loc1_;
         o3681.color = 1619426;
         o3681.strength = 2;
         o1130 = new GlowFilter();
         _loc1_ = 5;
         o1130.blurY = _loc1_;
         o1130.blurX = _loc1_;
         o1130.color = 16253699;
         o1130.strength = 2;
         o19993 = new o16076(3);
      }
      
      public function init(param1:o15625, param2:Vector.<o15625>, param3:Function, param4:Function, param5:Function, param6:Function) : void
      {
         this.o11569 = param1;
         this.o6589 = param2;
         this.o16090 = param3;
         this.o13703 = param4;
         this.o14029 = param5;
         this.o6687 = param6;
         param1.asset.addEventListener("addedToStage",o343,false,0,true);
      }
      
      private function o343(param1:Event) : void
      {
         this.stage = o11569.asset.stage;
         o11569.asset.removeEventListener("addedToStage",o343);
         o11569.asset.addEventListener("mouseDown",o9978,false,0,true);
         o11569.asset.stage.addEventListener("mouseMove",o10003,false,0,true);
         o11569.asset.stage.addEventListener("mouseUp",o8618,false,0,true);
         o11569.asset.addEventListener("enterFrame",o6662,false,0,true);
      }
      
      public function get o6589() : Vector.<o15625>
      {
         return o238;
      }
      
      public function set o6589(param1:Vector.<o15625>) : void
      {
         var _loc2_:* = null;
         o4784 = null;
         if(o238 != null)
         {
            var _loc4_:int = 0;
            var _loc3_:* = this.o6589;
            for each(_loc2_ in this.o6589)
            {
               _loc2_.asset.removeEventListener("mouseOver",o20641);
               _loc2_.asset.removeEventListener("mouseOut",o15649);
            }
         }
         o238 = param1;
         if(o238 != null)
         {
            var _loc6_:int = 0;
            var _loc5_:* = this.o6589;
            for each(_loc2_ in this.o6589)
            {
               _loc2_.asset.addEventListener("mouseOver",o20641,false,0,true);
               _loc2_.asset.addEventListener("mouseOut",o15649,false,0,true);
            }
         }
      }
      
      private function o15440(param1:Vector.<o15625>, param2:o15625) : int
      {
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param1.length)
         {
            if(param1[_loc3_] == param2)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function o20641(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         o4784 = param1.target as MovieClip;
         o5818 = -1;
         _loc2_ = 0;
         while(_loc2_ < o238.length)
         {
            if(o238[_loc2_].asset == o4784)
            {
               o5818 = _loc2_;
               break;
            }
            _loc2_++;
         }
      }
      
      public function o15649(param1:MouseEvent) : void
      {
         o4784 = null;
         o5818 = -1;
      }
      
      public function o16088(param1:MovieClip) : void
      {
         this.o7724 = param1;
      }
      
      public function o9978(param1:MouseEvent) : void
      {
         if(o11569.enabled)
         {
            o10893 = true;
            o16714.x = param1.stageX;
            o16714.y = param1.stageY;
         }
      }
      
      public function o10003(param1:MouseEvent) : void
      {
         if(o10893 == false)
         {
            return;
         }
         o20351.x = param1.stageX;
         o20351.y = param1.stageY;
         var _loc2_:int = 15;
         if(o7204 == false && (Math.abs(o20351.x - o16714.x) > _loc2_ || Math.abs(o20351.y - o16714.y) > _loc2_))
         {
            o7204 = true;
            if(o16090 != null)
            {
               o16090(this,o20351);
            }
         }
         if(o7204 && o7724 != null)
         {
            o14429 = false;
            if(o14029 != null)
            {
               o14429 = o14029(this,o7724,o4784,o5818);
               if(o4784 == null || o14429 == false)
               {
                  o7724.filters = [o1130];
               }
               else
               {
                  o7724.filters = [o3681];
               }
            }
         }
      }
      
      public function o8618(param1:MouseEvent) : void
      {
         if(o7724 != null && o13703 != null)
         {
            if(o5818 >= 0 && o14429)
            {
               o6687(this,o5818);
            }
            else if(o5818 >= 0)
            {
               o6687(this,o5818);
            }
            else
            {
               o6687(this,-1);
            }
            o13703(this,o7724);
            o7724 = null;
         }
         o10893 = false;
         o7204 = false;
      }
      
      public function o6662(param1:Event) : void
      {
         var _loc2_:* = null;
         if(o7724 != null)
         {
            o20351.x = o7724.stage.mouseX;
            o20351.y = o7724.stage.mouseY;
            _loc2_ = o7724.parent.globalToLocal(o20351);
            o19993.o18184(_loc2_.x,_loc2_.y);
            o7724.x = o19993.o10976;
            o7724.y = o19993.o15734;
         }
      }
      
      public function o13640() : void
      {
         o11569.asset.removeEventListener("mouseDown",o9978);
         stage.removeEventListener("mouseMove",o10003);
         stage.removeEventListener("mouseUp",o8618);
         o19993.o13640();
         o11569.asset.removeEventListener("enterFrame",o6662);
         o11569 = null;
         o238 = null;
         o4784 = null;
         o5818 = 0;
         o16090 = null;
         o13703 = null;
         o6687 = null;
         o14029 = null;
         o7724 = null;
         o14429 = false;
         o10893 = false;
         o7204 = false;
         o6697 = 0;
         o16714 = null;
         o20351 = null;
         o3681 = null;
         o1130 = null;
         stage = null;
         o19993 = null;
      }
   }
}
