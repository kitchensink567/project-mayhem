package
{
   import flash.events.Event;
   
   public class o45 extends o8023 implements o4332
   {
       
      
      private var o17893:o14748 = null;
      
      private var o16026:Number = 0;
      
      private var o4665:Number = 0;
      
      private var o2697:o2415 = null;
      
      private var o5142:Boolean = false;
      
      private var o2546:Boolean = false;
      
      private var o11043:Number = 1;
      
      private var o16209:Number = 1;
      
      private var o14718:Boolean = false;
      
      private var o8477:Vector.<Number>;
      
      private var o17054:Vector.<Number>;
      
      private var o17955:int = 6;
      
      private var o7868:Boolean = true;
      
      public var o11491:Function = null;
      
      public function o45()
      {
         super();
      }
      
      public function get rotation() : Number
      {
         return o4665;
      }
      
      public function set rotation(param1:Number) : void
      {
         o4665 = param1;
         o4519.o8116.o11954.o4946(this);
      }
      
      public function get position() : o2415
      {
         return o2697;
      }
      
      public function set position(param1:o2415) : void
      {
         if(o2697 != null)
         {
            o2697.o19115();
         }
         o2697 = param1;
         if(o2697 != null)
         {
            o15777(o6783.o1457);
         }
      }
      
      private function o8585(param1:Event) : void
      {
         o15777(o6783.o1457);
      }
      
      public function get o16990() : Number
      {
         return o16026;
      }
      
      public function set o16990(param1:Number) : void
      {
         o16026 = param1;
         o15777(o6783.o600);
      }
      
      public function get o16396() : o14748
      {
         return o17893;
      }
      
      public function set o16396(param1:o14748) : void
      {
         var _loc2_:o14748 = o17893;
         o17893 = param1;
         if(o11491 != null)
         {
            o11491(this,_loc2_);
         }
      }
      
      public function get o9663() : Boolean
      {
         return o5142;
      }
      
      public function set o9663(param1:Boolean) : void
      {
         if(o5142 == param1)
         {
            return;
         }
         o5142 = param1;
         o15777(o6783.o11541);
      }
      
      public function get o13979() : Boolean
      {
         return o2546;
      }
      
      public function set o13979(param1:Boolean) : void
      {
         if(o2546 == param1)
         {
            return;
         }
         o2546 = param1;
      }
      
      override public function o19115() : void
      {
         if(o2697)
         {
            o2697.o19115();
         }
         o11491 = null;
         super.o19115();
         o17893 = null;
         o2697 = null;
         o8477 = null;
         o17054 = null;
      }
      
      public function get scaleX() : Number
      {
         return o11043;
      }
      
      public function set scaleX(param1:Number) : void
      {
         o11043 = param1;
         o15777(o6783.o18801);
      }
      
      public function get scaleY() : Number
      {
         return o16209;
      }
      
      public function set scaleY(param1:Number) : void
      {
         o16209 = param1;
         o15777(o6783.o18801);
      }
      
      public function get o16444() : Boolean
      {
         return o14718;
      }
      
      public function set o16444(param1:Boolean) : void
      {
         o14718 = param1;
      }
      
      public function get colorTransform() : Vector.<Number>
      {
         return o8477;
      }
      
      public function set colorTransform(param1:Vector.<Number>) : void
      {
         o8477 = param1;
         o15777(o6783.o2903);
      }
      
      public function get o6034() : Vector.<Number>
      {
         return o17054;
      }
      
      public function set o6034(param1:Vector.<Number>) : void
      {
         o17054 = param1;
         o15777(o6783.o5922);
      }
      
      public function get o2158() : int
      {
         return o17955;
      }
      
      public function set o2158(param1:int) : void
      {
         o17955 = param1;
         o15777(o6783.o986);
      }
      
      public function get o9824() : Boolean
      {
         return o7868;
      }
      
      public function set o9824(param1:Boolean) : void
      {
         if(o7868 == param1)
         {
            return;
         }
         o7868 = param1;
         o15777(o6783.o9262);
      }
   }
}
