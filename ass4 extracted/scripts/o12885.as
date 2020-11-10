package
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class o12885 extends Sprite
   {
       
      
      private var o12346:MovieClip;
      
      private var o8352:MovieClip;
      
      private var o14992:MovieClip;
      
      private var o12656:MovieClip;
      
      private var o7672:Number = 0.5;
      
      private var o13893:int = 10;
      
      private var o9828:Stage;
      
      public function o12885()
      {
         super();
      }
      
      public function get o8328() : MovieClip
      {
         return o8352;
      }
      
      public function init(param1:MovieClip, param2:MovieClip, param3:MovieClip, param4:MovieClip, param5:Stage = null, param6:Number = 0.5) : void
      {
         o12346 = param1;
         o8352 = param2;
         o14992 = param4;
         o12656 = param3;
         o7672 = param6;
         o12346.mask = o8352;
         if(param5 != null)
         {
            o9828 = param5;
         }
         else
         {
            o9828 = o14992.parent.stage;
         }
         o14992.visible = false;
         o12656.visible = false;
         o2327();
      }
      
      public function o2327() : void
      {
         o14992.buttonMode = true;
         o14992.addEventListener("mouseDown",o17006,false,0,true);
         o9828.addEventListener("mouseWheel",o19560,false,0,true);
         o9828.stage.addEventListener("mouseUp",o14861,false,0,true);
         o9997();
      }
      
      public function o20648() : void
      {
         o14992.buttonMode = false;
         o14992.removeEventListener("mouseDown",o17006);
         o9828.removeEventListener("mouseWheel",o19560);
         o9828.removeEventListener("mouseUp",o14861);
      }
      
      private function o19560(param1:MouseEvent) : void
      {
         var _loc2_:int = param1.delta;
         var _loc3_:int = o12656.y;
         var _loc4_:int = o12656.height + o12656.y - o14992.height;
         if(_loc2_ > 0 && o14992.y <= _loc4_ || _loc2_ < 0 && o14992.y >= _loc3_)
         {
            o14992.y = o14992.y - _loc2_ * o13893;
            if(o14992.y < _loc3_)
            {
               o14992.y = _loc3_;
            }
            else if(o14992.y > _loc4_)
            {
               o14992.y = _loc4_;
            }
            o8783();
         }
      }
      
      private function o17006(param1:MouseEvent) : void
      {
         var _loc2_:Rectangle = new Rectangle(o12656.x,o12656.y,0,o12656.height - o14992.height);
         o14992.startDrag(false,_loc2_);
         o9828.addEventListener("enterFrame",o8783,false,0,true);
      }
      
      private function o14861(param1:MouseEvent) : void
      {
         o14992.stopDrag();
         if(o9828 != null)
         {
            o9828.removeEventListener("enterFrame",o8783);
         }
      }
      
      private function o8783(param1:Event = null) : void
      {
         var _loc2_:Number = 100 / (o12656.height - o14992.height) * (o14992.y - o12656.y);
         var _loc3_:Number = o8352.y + (o8352.height - o12346.height) / 100 * _loc2_;
         o12346.y = _loc3_;
      }
      
      public function o18441() : void
      {
         var _loc2_:Number = Math.abs((o12346.y - o8352.y) / (o12346.height - o8352.height) * 100);
         var _loc1_:int = _loc2_ / 100 * (o12656.height - o14992.height) + o12656.y;
         o14992.y = _loc1_;
      }
      
      public function o7346() : void
      {
         o12346.y = o12346.y - 100;
         o18441();
      }
      
      public function o9997() : void
      {
         if(o8352.height >= o12346.height)
         {
            o14992.visible = false;
            o12656.visible = false;
         }
         else
         {
            o14992.visible = true;
            o12656.visible = true;
         }
      }
      
      public function o19115() : void
      {
         if(o9828.hasEventListener("enterFrame"))
         {
            o14992.stopDrag();
            o9828.removeEventListener("enterFrame",o8783);
         }
         o20648();
         o12346 = null;
         o8352 = null;
         o14992 = null;
         o12656 = null;
         o7672 = 0;
         o13893 = 0;
         o9828 = null;
      }
   }
}
