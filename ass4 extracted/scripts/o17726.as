package
{
   import flash.display.Sprite;
   
   public class o17726 extends Sprite
   {
       
      
      public function o17726()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8504;
      }
   }
}

import flash.events.Event;

class o8504 extends o10416
{
    
   
   private var o20700:Vector.<o6925>;
   
   private var length:Number;
   
   private var o8655:Number;
   
   private const o4776:Number = 133;
   
   private const o1893:Number = 100;
   
   private const o2015:Number = 45;
   
   private const o8191:Number = 95;
   
   private const o489:int = 4;
   
   private const o13619:int = 8;
   
   private var o7637:o4039;
   
   private var o7018:Array;
   
   function o8504()
   {
      o20700 = new Vector.<o6925>();
      o7018 = [];
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("asset.support.bioCleanseBomb");
      _loc1_.push("assets.effects.explosionBioCleanse");
      _loc1_.push("assets.skills.bioCleanse.CloudEffect");
      return _loc1_;
   }
   
   public function o16955(param1:int, param2:Number, param3:Number, param4:o17517) : void
   {
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(1,5,false);
      var _loc6_:o4332 = o4519.o8116.o11954.o10869();
      length = param3;
      o8655 = param2;
      o4982 = false;
      o3046 = o8723.o2823 | o8723.o19523 | o8723.o3969 | o8723.o18180;
      o7742 = 0.3;
      o9531 = "asset.support.bioCleanseBomb";
      super.o5179(param1,_loc5_,_loc6_,param4);
      _loc6_.o16990 = o11381.o7238;
      o16166.o12265 = false;
      o16166.play();
      o1051.o9310(this,1.3,o19344);
      fixture.o16280(this,o2841.o1516,o18142);
   }
   
   private function o19344() : void
   {
      var _loc3_:int = 0;
      var _loc4_:* = null;
      var _loc6_:* = null;
      var _loc5_:o17761 = new o17761(body.o2535);
      _loc5_.o16716(o8655);
      o7637 = o4519.o8116.o20600.o15803(o6365,o8723.o2823 | o8723.o3732,o8723.o2823 | o8723.o3732,true);
      o7637.o10289 = _loc5_.id;
      body.o14230(o7637);
      o13669();
      o4519.o8116.o11954.o11867(o6691);
      o6691 = null;
      var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosionBioCleanse",o11381.o7800 + 1]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = body.position.x;
         _loc1_.o6691.position.y = body.position.y;
         var _loc7_:* = o8655 / 133;
         _loc1_.o6691.scaleY = _loc7_;
         _loc1_.o6691.scaleX = _loc7_;
      }
      o7637.o16280(this,o2841.o1516,o1516);
      o7637.o16280(this,o2841.o15204,o5586);
      var _loc2_:Vector.<o18509> = new Vector.<o18509>();
      _loc2_.push(new o18509(0,0));
      _loc3_ = 0;
      while(_loc3_ < 4)
      {
         _loc4_ = new o18509();
         _loc4_.x = 45 * o8655 / 100;
         _loc4_.y = 0;
         _loc4_.rotate(_loc3_ * 2 * 3.14159265358979 / 4 + Math.random() * 3.14159265358979 / 10);
         _loc2_.push(_loc4_);
         _loc3_++;
      }
      _loc3_ = 0;
      while(_loc3_ < 8)
      {
         _loc4_ = new o18509();
         _loc4_.x = 95 * o8655 / 100;
         _loc4_.y = 0;
         _loc4_.rotate(_loc3_ * 2 * 3.14159265358979 / 8 + Math.random() * 3.14159265358979 / 10);
         _loc2_.push(_loc4_);
         _loc3_++;
      }
      _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         _loc6_ = o4519.o8116.o13427.o11961(o19627,["assets.skills.bioCleanse.CloudEffect",o11381.o7800]) as o19627;
         if(_loc6_ != null)
         {
            _loc4_ = _loc2_[_loc3_];
            _loc6_.o6691.position.x = body.position.x + _loc4_.x;
            _loc6_.o6691.position.y = body.position.y + _loc4_.y;
            _loc7_ = o8655 / 100;
            _loc6_.o6691.scaleY = _loc7_;
            _loc6_.o6691.scaleX = _loc7_;
            _loc6_.o16166.o12265 = false;
            _loc6_.o16166.o3030("fadein");
            _loc6_.o16166.o11("fadein");
            o7018.push(_loc6_);
         }
         _loc3_++;
      }
      if(_loc6_)
      {
         _loc6_.o16166.o19926(o19505,o1490.o16612,o1038);
      }
      o1051.o9310(o19505,length,o14862);
   }
   
   private function o1516(param1:o4217) : void
   {
      var _loc2_:o6925 = o4519.o8116.o2996.o14389(param1.o11541.body) as o6925;
      if(_loc2_ != null && o20700.indexOf(_loc2_) == -1)
      {
         o4519.o8116.o8361.o20009(o6925(_loc2_),o2940.o19216().initialise(o5973,2,0.5,length));
         if(_loc2_ is o18442)
         {
            o18442(_loc2_).o14390(0.5,4);
         }
         o20700.push(_loc2_);
         o16228();
      }
   }
   
   private function o5586(param1:o20312) : void
   {
      var _loc2_:o6925 = o4519.o8116.o2996.o14389(param1.o11541.body) as o6925;
      if(_loc2_ != null && o20700.indexOf(_loc2_) != -1)
      {
         o4519.o8116.o8361.o19378(_loc2_,o2940.o19216().initialise(o5973,2,0.5,length));
         if(_loc2_ is o18442)
         {
            o18442(_loc2_).o5416(4);
         }
         o20700.splice(o20700.indexOf(_loc2_),1);
      }
   }
   
   private function o18142(param1:Event) : void
   {
      body.o15838(o3046 ^ (o8723.o2823 | o8723.o3732));
      fixture.o12657(o2841.o1516,o18142);
   }
   
   private function o16228() : void
   {
      if(o1432 == o4519.o32)
      {
         o4519.o8116.profileData.o11453.o14783++;
      }
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
      super.o19115();
      var _loc3_:int = 0;
      var _loc2_:* = o20700;
      for each(var _loc1_ in o20700)
      {
         o4519.o8116.o8361.o19378(_loc1_,o2940.o19216().initialise(o5973,2,0.5,length));
         if(_loc1_ is o18442)
         {
            o18442(_loc1_).o5416(4);
         }
      }
      o20700 = null;
   }
   
   private function o13669() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o1162.o3824.play(0.75,0,0,false,_loc1_.o10088());
   }
}
