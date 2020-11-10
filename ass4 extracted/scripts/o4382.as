package
{
   import flash.events.Event;
   
   public class o4382 extends o10384
   {
      
      private static var o8876:int = 4;
      
      private static var o15622:int = 750;
       
      
      public var o11243:int = 0;
      
      public var o1589:int = 0;
      
      private var o8812:String;
      
      private var o14622:o4332;
      
      private var o20276:o7331;
      
      private var o19505:o7848;
      
      private var o6955:Boolean = false;
      
      public function o4382()
      {
         o8812 = "assets.enemies.zombieNest.egg";
         super();
      }
      
      public function o16955(param1:int, param2:Number, param3:Number) : void
      {
         o6691 = o4519.o8116.o11954.o10869();
         o6691.o16396 = o17541.o13617(o8812);
         o6691.o16990 = o11381.o14493;
         o6691.rotation = Math.random() * 3.14159265358979;
         var _loc4_:o10262 = o4519.o8116.o9869.o1968(0,0);
         var _loc11_:o17761 = new o17761(_loc4_.o2535);
         _loc11_.o16716(20);
         var _loc10_:* = int(o8723.o10217);
         _loc10_ = _loc10_ ^ o8723.o2823;
         var _loc7_:* = 0;
         _loc7_ = _loc7_ | o8723.o17798;
         var _loc5_:o4039 = o4519.o8116.o20600.o15803(o8723.o18481,_loc10_,_loc7_);
         _loc5_.o10289 = _loc11_.id;
         _loc4_.o14230(_loc5_);
         super.o10783(param1,_loc4_,o6691,o4519.o8116.o11676);
         _loc4_.o8564(param2,param3);
         o6691.position.x = param2;
         o6691.position.y = param3;
         var _loc6_:int = Math.random() * 10;
         o16166.o10589(o8812);
         o16166.o3030("eggloop");
         o16166.gotoAndPlay(_loc6_);
         var _loc9_:Number = o10176.o13327() / 100 / o10176.o6407() / 2;
         var _loc8_:Number = o15622 * o10176.o6572();
         o1589 = _loc8_ + _loc8_ * _loc9_;
         o11243 = _loc8_ + _loc8_ * _loc9_;
         o6955 = false;
      }
      
      override public function o19115() : void
      {
         super.o19115();
      }
      
      override public function o209(param1:Number, param2:int, param3:o7848, param4:Number = 0, param5:Number = 0) : void
      {
         o317(param1,param5);
      }
      
      override public function o5725(param1:o4016) : void
      {
         var _loc2_:* = null;
         o317(param1.amount);
         o10492(param1.o9968);
         if(param1.o9968 == false)
         {
            _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.enemies.eggBurst"]) as o2130;
            if(_loc2_ != null)
            {
               _loc2_.o6691.position.x = body.position.x;
               _loc2_.o6691.position.y = body.position.y;
               _loc2_.o6691.rotation = param1.o1487 + 3.14159265358979;
            }
         }
      }
      
      private function o20970() : void
      {
         o15777(o3519.o4763);
         o16855();
      }
      
      private function o317(param1:Number, param2:Number = 0) : void
      {
         if(o11243 <= 0)
         {
            return;
         }
         o11243 = o11243 - param1;
         if(o11243 <= 0 && !o6955)
         {
            if(!o16166.o8289())
            {
               o16166.o3030("eggdeath");
               o16166.o12265 = false;
               o16166.o11("eggdeath");
               o16166.o16280(this,o1490.o16612,o20158);
               o16855();
               o6955 = true;
            }
         }
      }
      
      private function o20158(param1:Event = null) : void
      {
         o16166.o12657(o1490.o16612,o20158);
         body.o19115();
         o19115();
      }
      
      private function o10492(param1:Boolean = false) : void
      {
         var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         if(!param1)
         {
            o4519.o8116.o4812.o14142.o4202.play(0.85,0,0,false,_loc2_.o10088());
         }
      }
      
      private function o16855() : void
      {
         var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o14142.o6633.play(0.5,0,0,false,_loc1_.o10088());
      }
   }
}
