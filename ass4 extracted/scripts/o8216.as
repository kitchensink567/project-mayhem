package
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class o8216
   {
      
      private static const o760:Boolean = false;
      
      private static const o15824:Boolean = false;
      
      private static const o19913:int = 0;
      
      private static const o12178:int = 0;
      
      private static const o12428:Rectangle = new Rectangle(75 - 0,61 - 0,625 - 0,459 - 0);
      
      private static const o3918:Rectangle = new Rectangle(0 - 0,0 - 0,165 - 0,175 - 0);
      
      private static const o1081:Rectangle = new Rectangle(627 - 0,0 - 0,176 - 0,165 - 0);
       
      
      public var entity:o7848;
      
      public var o10496:o4332 = null;
      
      public var o12129:o7331 = null;
      
      private var o7789:o4332 = null;
      
      private var o15508:o7331 = null;
      
      private var o6604:o2415;
      
      private var o4638:o16518;
      
      private var o5019:String;
      
      private var o5836:Boolean = false;
      
      public function o8216()
      {
         super();
      }
      
      public function get name() : String
      {
         return o5019;
      }
      
      public function init(param1:o7848, param2:int, param3:String) : void
      {
         this.entity = param1;
         o4638 = o7559.o4121.create(param3,new Point(0,56));
         o10496 = o4519.o8116.o11954.o10869();
         o10496.position = new o2415();
         o10496.o16990 = o11381.ui;
         o10496.o16396 = o17541.o13617("assets.avatar.HealthBar");
         o12129 = o4519.o8116.o11676.o6798("assets.avatar.HealthBar");
         o12129.o11525(o10496);
         o12129.gotoAndStop(0);
         o4519.o8116.o11954.o9226(o10496);
         if(!(param1 is o17517))
         {
            if(param1 is o13732)
            {
            }
         }
         o4519.o10093.stage.addEventListener("enterFrame",o2727,false,1000,true);
      }
      
      private function o2727(param1:Event) : void
      {
         var _loc13_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc2_:int = 0;
         var _loc14_:int = 0;
         var _loc3_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc7_:o17517 = o4519.o32;
         var _loc10_:Number = entity.o6691.position.x;
         var _loc6_:Number = entity.o6691.position.y;
         o10496.position.x = _loc10_;
         o10496.position.y = _loc6_;
         if(o4638)
         {
            o4638.o2440 = _loc10_;
            o4638.o20177 = _loc6_;
         }
         var _loc4_:Number = Object(entity).o10691();
         var _loc11_:int = 10 - Math.ceil(_loc4_ * 10);
         if(_loc11_ >= 0 && o12129.currentFrame != _loc11_)
         {
            o12129.gotoAndStop(_loc11_);
         }
      }
      
      public function o13240(param1:Boolean) : void
      {
         if(o10496)
         {
            o10496.o9824 = param1;
         }
         if(o7789)
         {
            o7789.o9824 = param1;
         }
         if(param1)
         {
            o4638 = o7559.o4121.create(name,new Point(0,56));
         }
         else
         {
            o4638 = null;
         }
      }
      
      public function o12033(param1:Boolean) : void
      {
         if(o10496)
         {
            o10496.o9824 = param1;
         }
      }
      
      public function o5953() : void
      {
         if(o5836)
         {
            return;
         }
         o5836 = true;
         o4519.o10093.stage.removeEventListener("enterFrame",o2727);
         o4519.o8116.o11954.o11867(o10496);
         o4638.o19115();
         entity = null;
         o10496 = null;
         o12129 = null;
         o7789 = null;
         o15508 = null;
         o4638 = null;
         o5019 = null;
      }
   }
}
