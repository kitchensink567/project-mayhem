package
{
   import flash.display.Sprite;
   
   public class o2242 extends Sprite
   {
       
      
      public function o2242()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o5978;
      }
   }
}

import flash.utils.ByteArray;

class o5978 extends o10384
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"image"],[2,o17243.o2013,o13351.o10420,"physics"]];
    
   
   private var o11243:Number = 0;
   
   private var o1589:Number = 0;
   
   private var o15545:o7848;
   
   private var o19505:o7848;
   
   private const o8655:Number = 250;
   
   private const o10277:Number = 1000;
   
   function o5978()
   {
      super();
   }
   
   override public function getCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push(o6691.o16396.assetID);
      _loc1_.push("assets.effects.explosion1");
      return _loc1_;
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc4_:int = param2.readShort();
      var _loc10_:int = param2.readShort();
      var _loc6_:o4332 = o4519.o9721.o12831(_loc4_);
      _loc6_.o16990 = o11381.o18806;
      var _loc9_:Number = 2300;
      body = o4519.o8116.o9869.o1968(0,0,false);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc10_].o6041[0].id);
      var _loc12_:int = 0;
      var _loc11_:* = _loc5_;
      for each(var _loc8_ in _loc5_)
      {
         _loc8_.x = _loc8_.x - _loc6_.position.x;
         _loc8_.y = _loc8_.y - _loc6_.position.y;
         _loc8_.x = _loc8_.x * 1.01;
         _loc8_.y = _loc8_.y * 1.01;
         _loc8_.rotate(-_loc6_.rotation);
      }
      var _loc7_:o17761 = new o17761(body.o2535);
      _loc7_.o14486(_loc5_);
      var _loc3_:o4039 = o4519.o8116.o20600.o15803(o8723.o19523,o8723.o10217,o8723.o17798 | o8723.o42);
      _loc3_.o10289 = _loc7_.id;
      body.o14230(_loc3_);
      body.o16687(_loc6_.rotation);
      body.o8564(_loc6_.position.x,_loc6_.position.y);
      o1589 = _loc9_;
      o11243 = _loc9_;
      super.o10783(param1,body,_loc6_,o4519.o8116.o11676);
      o16166.o3030("damage0");
      o16166.gotoAndPlay(0);
      o4519.o9721.o3865(Vector.<int>([_loc10_]),o8723.o3969,o8723.o10217 ^ (o8723.o17798 | o8723.o42));
   }
   
   override public function o5725(param1:o4016) : void
   {
      if(o11243 <= 0)
      {
         return;
      }
      o15545 = param1.o16334;
      if(param1.o16334 is o17517)
      {
         o317(param1.amount * (param1.o16334 as o17517).o13012.o13072);
      }
      else
      {
         o317(param1.amount);
      }
      o10492(param1.o9968);
   }
   
   private function o317(param1:Number) : void
   {
      var _loc3_:* = null;
      var _loc2_:int = 0;
      if(o11243 <= 0)
      {
         return;
      }
      o11243 = o11243 - param1;
      if(o11243 <= 0)
      {
         o4929(0,0,0,0,0,0);
         _loc3_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o16166.o3030("destroyed");
         o16166.o11("destroyed");
         o19344();
         body.o19115();
      }
      else
      {
         _loc2_ = Math.floor((1 - o11243 / o1589) * 4);
         o16166.o3030("damage" + _loc2_.toString());
      }
   }
   
   private function o10492(param1:Boolean = false) : void
   {
      if(o8289())
      {
         return;
      }
      var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      if(!param1)
      {
         o4519.o8116.o4812.o4404.o18609.play(0.45,0,0,false,_loc2_.o10088());
      }
   }
   
   private function o19344() : void
   {
      o19505 = this;
      o4519.o13206.o16821(10,0.3);
      var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o20325.o19111.play(0.75,0,0,false,_loc2_.o10088());
      var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion1"]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = body.o2697.x;
         _loc1_.o6691.position.y = body.o2697.y;
         _loc1_.o6691.scaleX = 250 / 80;
         _loc1_.o6691.scaleY = 250 / 80;
      }
      o4519.o8116.o2996.o2368([o18442,o10384],body.position.x,body.position.y,250,o8723.o17798,o8723.o3969 | o8723.o18180).defer(o13172);
   }
   
   private function o13172(param1:Array) : void
   {
      var _loc4_:* = null;
      var _loc2_:* = null;
      var _loc6_:int = 0;
      var _loc5_:* = param1;
      for each(var _loc3_ in param1)
      {
         _loc4_ = o15460.o4078;
         _loc4_.x = _loc3_.body.o2697.x - body.o2697.x;
         _loc4_.y = _loc3_.body.o2697.y - body.o2697.y;
         _loc2_ = o4016.o10062().initialise(1000,2,o15545,this,_loc4_.rotation,0.1);
         o4519.o8116.o8361.o5725(o6270(_loc3_),_loc2_);
      }
   }
}
