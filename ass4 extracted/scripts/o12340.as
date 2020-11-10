package
{
   import flash.display.Sprite;
   
   public class o12340 extends Sprite
   {
       
      
      public function o12340()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8527;
      }
   }
}

import flash.events.Event;

class o8527 extends o10416
{
   
   private static var o7850:int = 0;
    
   
   public var o17535:Number = 0;
   
   public var o5725:Number = 0;
   
   public var o18640:uint = 50;
   
   function o8527()
   {
      super();
   }
   
   public function o16955(param1:int, param2:o17517, param3:Number, param4:Number) : void
   {
      this.o17535 = param3;
      this.o5725 = param4;
      this.o1432 = param2;
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(1,5);
      var _loc7_:o4332 = o4519.o8116.o11954.o10869();
      o3046 = 0;
      var _loc8_:o17761 = new o17761(_loc5_.o2535);
      _loc8_.o16716(1);
      var _loc6_:o4039 = o4519.o8116.o20600.o15803(o6365,0,o8723.o10217,true,0,0.7);
      _loc6_.o10289 = _loc8_.id;
      _loc5_.o14230(_loc6_);
      o19505 = this;
      super.o10783(param1,_loc5_,_loc7_,o4519.o8116.o11676);
      o16166.o10589("assets.skills.aerialBombardment.Bomb");
      o16166.gotoAndPlay(0);
      _loc7_.o16990 = o11381.o2131;
      o16166.o13786(o14972);
      o16166.o19926(this,o1490.o16612,o13815);
   }
   
   public function o14972(param1:String) : void
   {
      o20446();
   }
   
   public function o13815(param1:Event = null) : void
   {
      o19115();
   }
   
   public function o20446() : void
   {
      var _loc3_:int = 0;
      var _loc6_:* = null;
      var _loc5_:* = null;
      var _loc4_:Number = NaN;
      _loc3_ = 0;
      while(_loc3_ < 10)
      {
         _loc6_ = o4519.o8116.o2996.o2998(o9047,[5]) as o9047;
         _loc6_.body.o8564(body.o2697.x,body.o2697.y);
         _loc5_ = new o18509(1,0);
         _loc4_ = Math.random() * (3.14159265358979 * 2) - 3.14159265358979;
         _loc5_.rotate(_loc4_);
         _loc6_.o6141(_loc5_);
         _loc6_.o6691.rotation = Math.random() * 20 - 10;
         _loc3_++;
      }
      o4519.o13206.o16821(3,0.8);
      o13669();
      var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion.Bigger"]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = body.o2697.x;
         _loc1_.o6691.position.y = body.o2697.y;
         _loc1_.o6691.o16990 = o11381.o2131 + 1;
      }
      var _loc2_:int = 0;
      o4519.o8116.o2996.o2368(o10464,body.o2697.x,body.o2697.y,o17535,o6365,o8723.o3969 | o8723.o18180,o18640).defer(o17292);
      o16166.o13786(null);
   }
   
   private function o17292(param1:Array) : void
   {
      var _loc4_:int = 0;
      var _loc3_:* = param1;
      for each(var _loc2_ in param1)
      {
         o4519.o8116.o8361.o5725(o6270(_loc2_),o4016.o10062().initialise(o5725,o3,o1432,o19505,0,0.1,0,0,false,false,26));
      }
   }
   
   private function o13669() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o20325.o13157.play(0.5,0,0,false,_loc1_.o10088());
   }
}
