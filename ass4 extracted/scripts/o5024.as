package
{
   import assets.ui.LoadingWheel;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class o5024 extends o16681
   {
      
      public static const o4281:String = "iconSetEvent";
       
      
      private var o1157:int;
      
      private var o9410:int;
      
      private var o9365:DisplayObject;
      
      public var o7359:Boolean = true;
      
      public var o3687:Number = 1.0;
      
      public var o19243:Point;
      
      private var o15959:Number;
      
      private var o18170:Number;
      
      public var o1093:Boolean = true;
      
      private var o6142:LoadingWheel = null;
      
      public function o5024()
      {
         o19243 = new Point();
         super();
      }
      
      public function get o3700() : DisplayObject
      {
         return o9365;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         .super.visible = param1;
         if(o9365 != null)
         {
            o9365.visible = param1;
         }
      }
      
      public function set o3700(param1:DisplayObject) : void
      {
         if(o9365 != null)
         {
            o8867(o9365 as MovieClip);
            asset.removeChild(o9365);
         }
         o9365 = param1;
         this.dispatchEvent(new Event(o4281));
         this.o1258();
      }
      
      override public function init(param1:MovieClip) : void
      {
         this.asset = param1;
         asset.mouseEnabled = false;
         asset.mouseChildren = false;
         o1157 = asset.width;
         o9410 = asset.height;
         o15959 = asset.scaleX;
         o18170 = asset.scaleY;
         if(asset.numChildren > 0)
         {
            asset.removeChildren(0,asset.numChildren - 1);
         }
      }
      
      override protected function draw() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:Number = NaN;
         super.draw();
         if(asset.numChildren > 0)
         {
            asset.removeChildren(0,asset.numChildren - 1);
         }
         if(asset != null)
         {
            if(o9365 != null && o9365.parent == null)
            {
               if(o6142 != null)
               {
                  o8867(o6142);
                  asset.removeChild(o6142);
               }
               asset.addChild(o9365);
               asset.scaleX = 1;
               asset.scaleY = 1;
               o9365.scaleX = 1;
               o9365.scaleY = 1;
               o17542(o9365,o1157,o9410);
            }
            else if(o1093 && o6142 != null && o6142.parent == null)
            {
               _loc2_ = o1157 / 2 / asset.scaleX;
               _loc1_ = o9410 / 2 / asset.scaleY;
               o6142 = new LoadingWheel();
               o6142.scaleX = 1 / asset.scaleX;
               o6142.scaleY = 1 / asset.scaleY;
               o6142.x = _loc2_;
               o6142.y = _loc1_;
               asset.addChild(o6142);
            }
         }
      }
      
      private function o17542(param1:DisplayObject, param2:int, param3:int) : void
      {
         var _loc4_:Number = NaN;
         if(o7359)
         {
            _loc4_ = param3 / param2 > param1.height / param1.width?param2 / param1.width:param3 / param1.height;
            param1.scaleX = _loc4_;
            param1.scaleY = _loc4_;
            param1.x = param2 / 2 - param1.width / 2;
            param1.y = param3 / 2 - param1.height / 2;
         }
         else
         {
            param1.scaleX = o3687;
            param1.scaleY = o3687;
            param1.x = o19243.x;
            param1.y = o19243.y;
         }
      }
      
      override public function o13640() : void
      {
         if(o9365 != null && o9365.parent != null)
         {
            o9365.parent.removeChild(o9365);
         }
         o1157 = 0;
         o9410 = 0;
         o9365 = null;
         o7359 = false;
         o3687 = 0;
         o19243 = null;
         o15959 = 0;
         o18170 = 0;
         o1093 = false;
         o6142 = null;
         super.o13640();
      }
   }
}
