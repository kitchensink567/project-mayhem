package
{
   import flash.display.Sprite;
   
   public class o15166 extends Sprite
   {
       
      
      public function o15166()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o371;
      }
   }
}

import flash.events.Event;
import flash.utils.Dictionary;

class o371 extends o10416
{
    
   
   private var o14894:int = 20;
   
   private var o13748:Number = 3.0;
   
   private var o5725:Number;
   
   private var o8239:o4039 = null;
   
   private var o8655:Number;
   
   private const o4776:Number = 123;
   
   private var o10077:Dictionary;
   
   private var o7018:Array;
   
   function o371()
   {
      o10077 = new Dictionary();
      o7018 = [];
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("asset.support.ZombieAntidoteBomb");
      _loc1_.push("assets.effects.explosionNecro");
      _loc1_.push("assets.skills.zombieAntidote.CloudEffect");
      return _loc1_;
   }
   
   public function o16955(param1:int, param2:o17517, param3:Number, param4:Number, param5:Number) : void
   {
      this.o13748 = param5;
      this.o5725 = param4;
      this.o1432 = param2;
      o8655 = param3;
      o3 = 7;
      o7742 = 0.3;
      var _loc6_:o10262 = o4519.o8116.o9869.o1968(1,5,false);
      var _loc8_:o4332 = o4519.o8116.o11954.o10869();
      o4982 = false;
      o3046 = o8723.o2823 | o8723.o19523 | o8723.o3969 | o8723.o18180;
      o7742 = 0.3;
      o9531 = "asset.support.ZombieAntidoteBomb";
      super.o5179(param1,_loc6_,_loc8_,param2);
      _loc8_.o16990 = o11381.o7238;
      o16166.o12265 = false;
      o16166.play();
      o4519.o13206.propertyIsEnumerable("assets.effects.explosionNecro");
      var _loc7_:* = this;
      o1051.o9310(_loc7_,1.3,o19344);
      fixture.o16280(this,o2841.o1516,o18142);
   }
   
   private function o19344() : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = null;
      var _loc5_:* = null;
      var _loc4_:o17761 = new o17761(body.o2535);
      _loc4_.o16716(o8655);
      o8239 = o4519.o8116.o20600.o15803(o6365,o3046,o8723.o10217,true);
      o8239.o10289 = _loc4_.id;
      body.o14230(o8239);
      o13669();
      o4519.o8116.o11954.o11867(o6691);
      o6691 = null;
      var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosionNecro",o11381.o7800 + 1]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = body.position.x;
         _loc1_.o6691.position.y = body.position.y;
         var _loc6_:* = o8655 / 123;
         _loc1_.o6691.scaleY = _loc6_;
         _loc1_.o6691.scaleX = _loc6_;
      }
      o8239.o16280(o19505,o2841.o1516,o7085);
      o8239.o16280(o19505,o2841.o15204,o63);
      _loc2_ = 0;
      while(_loc2_ < o14894)
      {
         _loc3_ = o15460.o4078;
         _loc3_.x = (_loc2_ % 2 == 0?o8655 * 0.5:o8655) - Math.random() * (o8655 * 0.5);
         _loc3_.y = 0;
         _loc3_.rotate(_loc2_ * (2 * 3.14159265358979 / o14894) + Math.random() * 0.1);
         _loc5_ = o4519.o8116.o13427.o11961(o19627,["assets.skills.zombieAntidote.CloudEffect",o11381.o7800]) as o19627;
         if(_loc5_ != null)
         {
            _loc5_.o6691.position.x = body.position.x + _loc3_.x;
            _loc5_.o6691.position.y = body.position.y + _loc3_.y;
            _loc5_.o16166.o12265 = false;
            _loc5_.o16166.o3030("fadein");
            _loc5_.o16166.o11("fadein");
            if(_loc2_ % 2 == 0)
            {
               _loc5_.o16166.gotoAndPlay(_loc5_.o16166.currentFrame + 1);
            }
            o7018.push(_loc5_);
         }
         _loc2_++;
      }
      if(_loc5_)
      {
         _loc5_.o16166.o19926(o19505,o1490.o16612,o1038);
      }
      o1051.o9310(o19505,o13748,o14862);
   }
   
   private function o7085(param1:o4217) : void
   {
      var _loc2_:o18442 = o4519.o8116.o2996.o14389(param1.o11541.body) as o18442;
      if(_loc2_ != null && o10077[_loc2_] == null)
      {
         o10077[_loc2_] = _loc2_.o13423(o5725,o13748,o3,o1432,this,7,0,-1,19);
      }
   }
   
   private function o63(param1:o20312) : void
   {
      var _loc2_:o18442 = o4519.o8116.o2996.o14389(param1.o11541.body) as o18442;
      if(_loc2_ != null && o10077[_loc2_] != null)
      {
         _loc2_.o17092(o10077[_loc2_]);
         o10077[_loc2_] = null;
      }
   }
   
   public function o18142(param1:Event) : void
   {
      body.o11496(fixture.id,o3046 ^ o8723.o2823);
   }
   
   private function o1038(param1:Event = null) : void
   {
      var _loc2_:int = 0;
      if(o8289())
      {
         return;
      }
      _loc2_ = 0;
      while(_loc2_ < o7018.length)
      {
         o7018[_loc2_].o16166.o12265 = true;
         o7018[_loc2_].o16166.o3030("loop");
         o7018[_loc2_].o16166.o11("loop");
         _loc2_++;
      }
   }
   
   private function o14862(param1:Event = null) : void
   {
      var _loc2_:int = 0;
      _loc2_ = 0;
      while(_loc2_ < o7018.length)
      {
         o7018[_loc2_].o16166.o12265 = false;
         o7018[_loc2_].o16166.o3030("fadeout");
         o7018[_loc2_].o16166.o11("fadeout");
         o7018[_loc2_].o15428();
         _loc2_++;
      }
      o19115();
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      var _loc3_:int = 0;
      var _loc2_:* = o10077;
      for(var _loc1_ in o10077)
      {
         _loc1_.o17092(o10077[_loc1_]);
      }
      super.o19115();
   }
   
   private function o13669() : void
   {
      var _loc1_:o257 = new o257(body.position.x,body.position.y);
      o4519.o8116.o4812.o1162.o8070.play(0.75,0,0,false,_loc1_.o10088());
   }
}
