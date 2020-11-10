package
{
   import flash.events.Event;
   
   public class o18437 extends o8023
   {
      
      public static const o7178:int = o19504.o4386();
       
      
      private var o7099:o4332;
      
      private var o2737:o4332;
      
      private var o15805:o4332;
      
      private var o12958:o7331;
      
      private var o17713:o18509;
      
      private var o3709:o18509;
      
      private var o13508:Number;
      
      private var o5298:Number;
      
      private const o11408:Number = 400;
      
      private var o14994:Boolean = false;
      
      private var o800:o18509;
      
      public var o5728:o18509;
      
      public var o1493:o18509;
      
      public var o2779:Number;
      
      public var o2241:Number;
      
      public function o18437()
      {
         o800 = new o18509();
         o5728 = new o18509();
         o1493 = new o18509();
         super();
      }
      
      public function initialise(param1:o18509, param2:o18509) : void
      {
         o17713 = param1;
         o3709 = param2;
         this.o17713 = o17713;
         this.o3709 = o3709;
         o7099 = o4519.o8116.o11954.o10869();
         o7099.o16396 = o17541.o13617("assets.maps.governor.helicopter");
         o7099.position = new o2415();
         o2737 = o4519.o8116.o11954.o10869();
         o2737.o16396 = o17541.o13617("assets.maps.governor.heiicopterBlade");
         o2737.position = new o2415();
         o15805 = o4519.o8116.o11954.o10869();
         o15805.o16396 = o17541.o13617("assets.maps.governor.heiicopterBlade");
         o15805.position = new o2415();
         o7099.position.x = o17713.x;
         o7099.position.y = o17713.y;
         o7099.o16990 = 110;
         o2737.o16990 = 111;
         o15805.o16990 = 100;
         var o19693:o18509 = o15460.o4078;
         o19693.x = o3709.x - o17713.x;
         o19693.y = o3709.y - o17713.y;
         o7099.rotation = o19693.rotation;
         o12958 = o4519.o8116.o11676.o6798("assets.maps.governor.heiicopterBlade");
         o12958.o11525(o2737);
         o12958.play();
         o1051.o9310(this,0.5,function():void
         {
            o4519.o8116.o11954.o9226(o7099);
            o4519.o8116.o11954.o9226(o2737);
            o4519.o8116.o11954.align(o2737,o7099);
            o14891();
         });
      }
      
      public function o14891() : void
      {
         o12958.gotoAndPlay(0);
         o13508 = 0;
         o14994 = false;
         o800.x = o3709.x - o17713.x;
         o800.y = o3709.y - o17713.y;
         var _loc1_:Number = o800.o3215;
         o5298 = _loc1_ / 400;
         o1051.o4767(this,0.0333333333333333,o12886,(o5298 + 1) * 30);
         o1051.o4767(this,0.0333333333333333,o11896);
      }
      
      private function o11896(param1:Event = null) : void
      {
         o15805.position.x = o7099.position.x;
         o15805.position.y = o7099.position.y + 100;
         o15805.rotation = o7099.rotation;
      }
      
      private function o12886() : void
      {
         if(o14994)
         {
            return;
         }
         var _loc2_:* = 0.0333333333333333;
         o13508 = o13508 + _loc2_;
         if(o13508 >= o5298)
         {
            o14994 = true;
            o13508 = o5298;
         }
         var _loc1_:Number = o13508 / o5298;
         _loc1_ = Math.pow(_loc1_,0.5);
         o7099.position.x = o17713.x + _loc1_ * o800.x;
         o7099.position.y = o17713.y + _loc1_ * o800.y;
         if(o14994)
         {
            o13916();
         }
      }
      
      private function o2088() : void
      {
         var _loc3_:* = 0.0333333333333333;
         o2779 = o2779 + _loc3_;
         if(o2779 >= o2241)
         {
            o2779 = o2241;
         }
         var _loc1_:Number = o2779 / o2241;
         var _loc2_:Number = (1 - _loc1_) * 2;
         _loc1_ = Math.pow(_loc1_,_loc2_);
         o7099.position.x = o5728.x + _loc1_ * o1493.x;
         o7099.position.y = o5728.y + _loc1_ * o1493.y;
         if(o2779 >= o2241)
         {
            o2241 = 3;
            o2779 = 0;
            o5728.x = o7099.position.x;
            o5728.y = o7099.position.y;
            o1493.x = o3709.x + (Math.random() * 100 - 50) - o5728.x;
            o1493.y = o3709.y + (Math.random() * 100 - 50) - o5728.y;
         }
      }
      
      private function o13916() : void
      {
         o2241 = 3;
         o2779 = 0;
         o5728.x = o7099.position.x;
         o5728.y = o7099.position.y;
         o1493.x = o3709.x + (Math.random() * 100 - 50) - o5728.x;
         o1493.y = o3709.y + (Math.random() * 100 - 50) - o5728.y;
         o1051.o4767(this,0.0333333333333333,o2088);
         o1051.o9310(this,10,function():void
         {
            o4519.o13206.o15777(o7178);
         });
      }
      
      override public function o19115() : void
      {
         super.o19115();
         o7099.o19115();
         o2737.o19115();
         o12958.o19115();
      }
   }
}
