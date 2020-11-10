package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class o7849 extends MovieClip
   {
      
      public static const SCROLL_EVENT:String = "SCROLL_EVENT";
       
      
      public var o4962:DisplayObject;
      
      public var o3964:DisplayObject;
      
      public var o16697:DisplayObject;
      
      public var o8858:DisplayObject;
      
      private var position:Number;
      
      private var o19922:Number;
      
      private var o16715:Boolean;
      
      private var o3858:Boolean;
      
      private var o3292:Boolean;
      
      private var o12975:Number;
      
      private var o9877:Number;
      
      private var o4460:Boolean;
      
      private var o7214:Number;
      
      private var o2722:Number;
      
      private var o730:DisplayObject;
      
      private var container:DisplayObject;
      
      public function o7849()
      {
         super();
         position = 0;
         o19922 = 0.033;
         o2722 = 20;
         o16715 = false;
         o3858 = false;
         o3292 = false;
         o12975 = 0;
         o4460 = false;
         this.addEventListener("addedToStage",o3312,false,0,true);
      }
      
      public function o8615(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         o730 = param1;
         container = param2;
         if(o730 == null || container == null)
         {
            o8339("WARNING: ScrollBar given a null scrollable object or container in SetScrollableObject()");
            o730 = null;
            container = null;
         }
         else if(stage)
         {
            _loc3_ = container.getBounds(stage).top;
            _loc4_ = container.getBounds(stage).bottom - o1058(o730);
            _loc5_ = Number(o730.getBounds(stage).top);
            if(_loc5_ < _loc4_)
            {
               _loc5_ = _loc4_;
            }
            else if(_loc5_ > _loc3_)
            {
               _loc5_ = _loc3_;
            }
            position = (_loc5_ - _loc3_) / (_loc4_ - _loc3_);
            o15970();
            o14436();
            o5199();
         }
      }
      
      public function o18090(param1:Number) : void
      {
         if(stage)
         {
            o19922 = param1 / stage.frameRate;
         }
         else
         {
            o19922 = param1 / 30;
         }
      }
      
      public function o15749(param1:Number) : void
      {
         position = param1;
         if(stage)
         {
            o14436();
            o5199();
         }
         dispatchEvent(new Event(SCROLL_EVENT));
      }
      
      public function o5667() : Number
      {
         return position;
      }
      
      public function o3008(param1:Number) : void
      {
         o2722 = param1;
      }
      
      public function o16677(param1:MovieClip, param2:MovieClip, param3:MovieClip, param4:MovieClip) : void
      {
         this.o8858 = param1;
         this.o16697 = param2;
         this.o4962 = param3;
         this.o3964 = param4;
      }
      
      private function o3312(param1:Event) : void
      {
         if(o8858 == null)
         {
            this.o8858 = this.getChildByName("track_mc");
            this.o16697 = this.getChildByName("thumb_mc");
            this.o4962 = this.getChildByName("up_mc");
            this.o3964 = this.getChildByName("down_mc");
         }
         o7214 = o8349(o16697) / o8349(o8858);
         this.addEventListener("enterFrame",o1797,false,0,true);
         o15970();
         o14436();
         o5199();
         o4962.addEventListener("mouseDown",o7895,false,100000,true);
         o4962.addEventListener("mouseUp",o4633,false,100000,true);
         o4962.addEventListener("mouseOut",o4633,false,100000,true);
         o3964.addEventListener("mouseDown",o15887,false,100000,true);
         o3964.addEventListener("mouseUp",o19985,false,100000,true);
         o3964.addEventListener("mouseOut",o19985,false,100000,true);
         o16697.addEventListener("mouseDown",o7752,false,100000,true);
         o8858.addEventListener("click",o17596,false,100000,true);
         stage.addEventListener("mouseUp",o15904,false,100000,true);
         stage.addEventListener("mouseMove",o19128,false,100000,true);
         stage.addEventListener("mouseWheel",o6876,false,100000,true);
         this.addEventListener("mouseDown",o2231,false,100001,true);
      }
      
      private function o1797(param1:Event) : void
      {
         if(!o730)
         {
            if(o16715)
            {
               position = position - o19922;
            }
            if(o3858)
            {
               position = position + o19922;
            }
         }
         else
         {
            if(o16715)
            {
               position = position - o7214 * o19922;
               if(position < 0)
               {
                  position = 0;
               }
               o14436();
               o5199();
               dispatchEvent(new Event(SCROLL_EVENT));
            }
            if(o3858)
            {
               position = position + o7214 * o19922;
               if(position > 1)
               {
                  position = 1;
               }
               o14436();
               o5199();
               dispatchEvent(new Event(SCROLL_EVENT));
            }
         }
      }
      
      private function o7895(param1:MouseEvent) : void
      {
         o16715 = true;
         o4460 = true;
      }
      
      private function o4633(param1:MouseEvent) : void
      {
         o16715 = false;
      }
      
      private function o15887(param1:MouseEvent) : void
      {
         o3858 = true;
         o4460 = true;
      }
      
      private function o19985(param1:MouseEvent) : void
      {
         o3858 = false;
      }
      
      private function o7752(param1:MouseEvent) : void
      {
         o3292 = true;
         o12975 = o16697.y;
         o9877 = stage.mouseY;
         o4460 = true;
      }
      
      private function o17596(param1:MouseEvent) : void
      {
         if(this.mouseY < o16697.getBounds(this).top)
         {
            position = position - o7214;
            if(position < 0)
            {
               position = 0;
            }
            o14436();
            o5199();
            dispatchEvent(new Event(SCROLL_EVENT));
         }
         else if(this.mouseY > o16697.getBounds(this).bottom)
         {
            position = position + o7214;
            if(position > 1)
            {
               position = 1;
            }
            o14436();
            o5199();
            dispatchEvent(new Event(SCROLL_EVENT));
         }
      }
      
      private function o15904(param1:MouseEvent) : void
      {
         o3292 = false;
      }
      
      private function o19128(param1:MouseEvent) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:* = null;
         var _loc6_:* = null;
         var _loc5_:Number = NaN;
         var _loc4_:Number = NaN;
         if(o3292 && o7214 < 1)
         {
            _loc3_ = stage.mouseY - o9877;
            o16697.y = o12975 + _loc3_;
            _loc2_ = o16697.getBounds(this);
            _loc6_ = o8858.getBounds(this);
            if(_loc2_.top < _loc6_.top)
            {
               o16697.y = o16697.y + (_loc6_.top - _loc2_.top);
            }
            if(_loc2_.bottom > _loc6_.bottom)
            {
               o16697.y = o16697.y + (_loc6_.bottom - _loc2_.bottom);
            }
            _loc5_ = o8349(o8858) - o8349(o16697);
            _loc4_ = o16697.getBounds(this).top - _loc6_.top;
            position = _loc4_ / _loc5_;
            o14436();
            dispatchEvent(new Event(SCROLL_EVENT));
         }
      }
      
      private function o6876(param1:MouseEvent) : void
      {
         if(o4460)
         {
            position = position - param1.delta * o7214 * o19922;
            if(position > 1)
            {
               position = 1;
            }
            else if(position < 0)
            {
               position = 0;
            }
            o14436();
            o5199();
            dispatchEvent(new Event(SCROLL_EVENT));
         }
      }
      
      private function o2231(param1:MouseEvent) : void
      {
         o4460 = true;
      }
      
      private function o14436() : void
      {
         var _loc1_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc2_:Number = NaN;
         if(o730)
         {
            _loc1_ = container.getBounds(stage).top;
            _loc3_ = container.getBounds(stage).bottom - o1058(o730);
            _loc2_ = _loc1_ + (_loc3_ - _loc1_) * position;
            o730.y = o730.parent.globalToLocal(new Point(0,_loc2_)).y - o730.getBounds(o730).top;
         }
      }
      
      private function o15970() : void
      {
         if(o730)
         {
            o7214 = o1058(container) / o1058(o730);
            if(o7214 <= 1)
            {
               o16697.height = o8349(o8858) * o7214;
               if(o16697.height < o2722)
               {
                  o16697.height = o2722;
               }
            }
            else
            {
               o16697.height = o8349(o8858);
            }
         }
      }
      
      private function o5199() : void
      {
         var _loc2_:Number = (o8349(o8858) - o8349(o16697)) * position;
         var _loc1_:Number = o16697.y - o16697.getBounds(this).top;
         o16697.y = o8858.getBounds(this).top + _loc2_ + _loc1_;
      }
      
      private function o8349(param1:DisplayObject) : Number
      {
         return param1.getBounds(this).bottom - param1.getBounds(this).top;
      }
      
      private function o1058(param1:DisplayObject) : Number
      {
         return param1.getBounds(stage).bottom - param1.getBounds(stage).top;
      }
   }
}
