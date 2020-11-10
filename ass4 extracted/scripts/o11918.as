package
{
   import flash.display.Sprite;
   
   public class o11918 extends Sprite
   {
       
      
      public function o11918()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o14962;
      }
   }
}

import flash.events.Event;

class o14962 extends o5600
{
   
   private static const o18993:int = 0;
   
   private static const o15:int = 1;
   
   private static const o9940:int = 2;
   
   private static const o3555:int = 3;
    
   
   private var o10938:o4332 = null;
   
   private var o12120:o7331 = null;
   
   private var o5577:o7331;
   
   private var o17182:o4332;
   
   private var o4066:Array;
   
   private var o6182:Array;
   
   private var o12977:o3622;
   
   private var o20372:o3622;
   
   private var o19506:Array;
   
   private var stage:int = 0;
   
   private var o14120:Number = 0;
   
   private var o7313:Number;
   
   private var o7055:o7848;
   
   private var o10820:o7848;
   
   private const o20946:int = 0;
   
   private const o19355:int = 1;
   
   private const o14751:int = 2;
   
   private const o165:int = 3;
   
   private var o20488:int = 0;
   
   private var o9933:Number = 0;
   
   private var o6187:int = -1;
   
   private var o8999:int = -1;
   
   private var o20066:int = -1;
   
   private var o17699:Vector.<o17517>;
   
   private const o1806:Number = 0.9;
   
   private const o9015:Number = 250;
   
   private const o8460:Number = 1000;
   
   private var o354:Number = 0;
   
   private var o18246:int = 10;
   
   private var o2408:int = 20;
   
   private var o5736:int = 0;
   
   private const o5647:Number = 0.5;
   
   private var o15338:Boolean = false;
   
   function o14962()
   {
      o4066 = ["assets.enemies.boss3Zombie.HeadIdle","assets.enemies.boss3Zombie.HeadShoot","assets.enemies.boss3Zombie.HeadWalk","assets.enemies.boss3Zombie.HeadStance"];
      o6182 = ["assets.enemies.boss3Zombie.LegsIdle","assets.enemies.boss3Zombie.LegsIdle","assets.enemies.boss3Zombie.LegsWalk","assets.enemies.boss3Zombie.LegsStance"];
      o19506 = [[[117,117],[118,117],[119,118],[120,119]],[[125,125],[126,125],[127,126],[128,127]]];
      o17699 = new Vector.<o17517>();
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(12);
      _loc5_ = param1;
      while(_loc5_ <= param2)
      {
         _loc4_ = _loc6_.o4036[_loc5_];
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15540));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15807));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o362));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o16077));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15458));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o853));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o12311));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o18675));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o14586));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc6_.o12492));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc6_.o10021));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc6_.o6568));
         _loc5_++;
      }
      _loc3_.push("assets.effects.explosionEnergy");
      _loc3_.push("assets.effects.explosion1");
      _loc3_.push("assets.projectiles.RedTracerTrail");
      _loc3_.push("assets.enemies.boss3Zombie.HeadShootLeft");
      _loc3_.push("assets.enemies.boss3ZombieV2.HeadShootLeft");
      _loc3_.push("assets.enemies.boss3Zombie.HeadShootRight");
      _loc3_.push("assets.enemies.boss3ZombieV2.HeadShootRight");
      _loc3_.push("assets.flame.flame");
      _loc3_.push("assets.flame.flameSmoke");
      _loc3_.push("assets.effects.rocketTrail");
      _loc3_.push("assets.ammo.LargeMissile.Display");
      _loc3_.push("assets.common.zombie.tech.gib1");
      _loc3_.push("assets.common.zombie.tech.gib2");
      _loc3_.push("assets.common.zombie.tech.gib3");
      _loc3_.push("assets.common.zombie.tech.gib4");
      _loc3_.push("assets.common.zombie.tech.gib5");
      _loc3_.push("assets.common.zombie.tech.gib6");
      _loc3_.push("assets.common.zombie.tech.gib7");
      _loc3_.push("assets.common.zombie.tech.gib8");
      _loc3_.push("assets.common.zombie.tech.gib9");
      _loc3_.push("assets.common.zombie.tech.gib10");
      _loc3_.push("assets.common.zombie.tech.gib11");
      _loc3_.push("assets.common.zombie.tech.gib12");
      _loc3_.push("assets.common.zombie.tech.gib13");
      _loc3_.push("assets.enemies.boss3Zombie.Gib01");
      _loc3_.push("assets.enemies.boss3Zombie.Gib02");
      _loc3_.push("assets.enemies.boss3Zombie.Gib03");
      _loc3_.push("assets.enemies.boss3Zombie.Gib04");
      _loc3_.push("assets.enemies.boss3Zombie.Gib05");
      _loc3_.push("assets.enemies.boss3Zombie.Gib06");
      _loc3_.push("assets.enemies.boss3Zombie.Gib07");
      _loc3_.push("assets.enemies.boss3Zombie.Gib08");
      _loc3_.push("assets.enemies.boss3Zombie.Gib09");
      _loc3_.push("assets.enemies.boss3Zombie.Gib10");
      _loc3_.push("assets.enemies.boss3Zombie.Gib11");
      _loc3_.push("assets.enemies.boss3Zombie.Gib12");
      _loc3_.push("assets.enemies.boss3Zombie.Gib13");
      return _loc3_;
   }
   
   public function o16955(param1:int, param2:int, param3:o18509, param4:int) : void
   {
      grade = int(param2 / 10);
      stage = param2 % 10;
      type = 12;
      o17050 = true;
      o10163 = true;
      o8139 = false;
      var _loc8_:o1587 = o4519.o8116.o4235.o4248(12);
      var _loc6_:o14238 = _loc8_.o4036[grade];
      o20384 = new o7600(param1);
      this.o16125 = _loc8_.o17834;
      o18043(grade);
      o1918 = _loc6_.o1918;
      o4052 = _loc8_.o4052;
      o30 = o17074;
      o20133 = _loc6_.o1603;
      o11243 = _loc6_.o11243;
      o1589 = o11243;
      o16390 = [null,_loc6_.o11598,_loc6_.o16351,_loc6_.o884,_loc6_.o1098,0,0];
      o64 = _loc8_.o10981;
      o8193 = _loc8_.o8193;
      o9747 = _loc8_.o5949;
      o4066 = [o4519.o8116.o5830.o9009(_loc6_.o362),o4519.o8116.o5830.o9009(_loc6_.o362),o4519.o8116.o5830.o9009(_loc6_.o15458),o4519.o8116.o5830.o9009(_loc6_.o16077)];
      o6182 = [o4519.o8116.o5830.o9009(_loc6_.o853),o4519.o8116.o5830.o9009(_loc6_.o853),o4519.o8116.o5830.o9009(_loc6_.o15807),o4519.o8116.o5830.o9009(_loc6_.o12311)];
      o6274 = o6182[2];
      o11196 = o4519.o8116.o5830.o9009(_loc8_.o12492);
      o11166 = o4519.o8116.o5830.o9009(_loc8_.o10021);
      o9296 = o4519.o8116.o5830.o9009(_loc8_.o6568);
      o17074 = _loc8_.o19672;
      o16109 = _loc6_.o16109;
      o1877 = _loc6_.o13119 * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o1690 = o4519.o8116.o4550(_loc8_.o1690);
      o5617 = _loc8_.o5617;
      o4699 = 175;
      o3478 = o4519.o8116.o4550(_loc6_.o18823) * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o3843 = o3478;
      o11171 = _loc8_.o11171 / 180 * 3.14159265358979;
      o7313 = 3.14159265358979 / 9;
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(1,0);
      var _loc7_:o4332 = o4519.o8116.o11954.o10869();
      _loc7_.o16990 = o11381.o14493;
      super.o19011(param1,_loc5_,_loc7_,param3,param4);
      _loc5_.o7191 = _loc8_.o7191;
      o10938 = o4519.o8116.o11954.o10869();
      o10938.o16990 = o11381.o10850;
      o10938.position = _loc7_.position;
      o10938.o16396 = o17541.o13617(o4066[0]);
      o4519.o8116.o11954.o9226(o10938);
      o12120 = o4519.o8116.o11676.o6798(o4066[0]);
      o12120.o11525(o10938);
      o12120.o10589(o4066[2]);
      o12120.play();
      o17182 = o4519.o8116.o11954.o10869();
      o17182.position = new o2415();
      o17182.o16396 = o17541.o13617("assets.projectiles.RedTracerTrail");
      o17182.o16990 = o11381.o7800;
      o17182.scaleX = 0.0001;
      o4519.o8116.o11954.o9226(o17182);
      o4519.o8116.o11954.align(o17182,o10938);
      o5577 = o4519.o8116.o11676.o6798("assets.projectiles.RedTracerTrail");
      o5577.o11525(o17182);
      o14120 = 4294967295;
      o4519.o8116.o1184.o1557(o19506[grade][stage][0]).defer(o19649);
      o4519.o8116.o1184.o1557(o19506[grade][stage][1]).defer(o15883);
      o6187 = o1051.o4767(this,0.0333333333333333,o15592);
      o8999 = o1051.o4767(this,0.2,o15284);
      o20066 = o1051.o4767(this,0.1,o10638);
      if(o20104 && o16277)
      {
         o5610 = o14576.o16633;
      }
   }
   
   override public function o6438() : void
   {
      o4929(-100,0,0,-1,-1,-1,1,o10938);
      super.o6438();
   }
   
   private function o19649(param1:o8925) : void
   {
      var _loc2_:Number = NaN;
      o12977 = new o3622(param1,this,o10938,-1);
      o12977.o3726.x = 30;
      o12977.o3726.y = -30;
      o12977.o11119 = o8723.o42;
      o12977.o13696 = [o17517];
      o12977.o10464 = [o17517,o10384];
      o12977.o3046 = o8723.o32 | o8723.o3969 | o8723.o18180 | o8723.o19523;
      o12977.o20682 = 2147483647;
      if(o12977.o4670.o6365 == 8)
      {
         o12977.trigger();
      }
      else
      {
         _loc2_ = o4519.o8116.o4550(param1.o14120);
         if(_loc2_ < o14120)
         {
            o14120 = _loc2_;
         }
      }
   }
   
   private function o15883(param1:o8925) : void
   {
      var _loc2_:Number = NaN;
      o20372 = new o3622(param1,this,o10938,-1);
      o20372.o3726.x = 30;
      o20372.o3726.y = 30;
      o20372.o11119 = o8723.o42;
      o20372.o13696 = [o17517];
      o20372.o10464 = [o17517,o10384];
      o20372.o3046 = o8723.o32 | o8723.o3969 | o8723.o18180 | o8723.o19523;
      o20372.o20682 = 2147483647;
      if(o20372.o4670.o6365 == 8)
      {
         o20372.trigger();
      }
      else
      {
         _loc2_ = o4519.o8116.o4550(param1.o14120);
         if(_loc2_ < o14120)
         {
            o14120 = _loc2_;
         }
      }
   }
   
   override protected function o18434() : void
   {
      if(o6866 > 0)
      {
         o6866 = o6866 - 0.1;
      }
      if(o6866 <= 0 && !o6955 && !o415 && o20488 == 0)
      {
         var _loc3_:int = 0;
         var _loc2_:* = o9062;
         for(var _loc1_ in o9062)
         {
            o5423();
            o6866 = o1877;
         }
      }
   }
   
   override protected function o5423() : void
   {
      var _loc4_:* = null;
      var _loc1_:* = null;
      var _loc2_:* = null;
      o17699.splice(0,o17699.length);
      var _loc6_:int = 0;
      var _loc5_:* = o9062;
      for(var _loc3_ in o9062)
      {
         _loc4_ = _loc3_ as o17517;
         if(_loc4_)
         {
            o17699.push(_loc4_);
            o4519.o8116.o8361.o5725(_loc4_,o4016.o10062().initialise(o9491[0],o12401[0],o19505,null,o6691.rotation,0,0,!!o18200?0.75:0,false,false,0,true));
         }
      }
      if(o17699.length > 0)
      {
         o1051.o4767(this,0.0333333333333333,o10019,30 * 0.9);
         o354 = 0;
         o11171 = o11171 * 4;
         o20488 = 3;
         o5202();
         _loc1_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosionEnergy",o11381.o17002]) as o2130;
         if(_loc1_)
         {
            _loc1_.o6691.position.x = body.position.x;
            _loc1_.o6691.position.y = body.position.y;
            _loc1_.o6691.scaleY = _loc1_.o6691.scaleY * 1.6;
            _loc1_.o6691.scaleX = _loc1_.o6691.scaleY * 1.6;
         }
      }
      else
      {
         if(o18200)
         {
            return;
         }
         var _loc8_:int = 0;
         var _loc7_:* = o9062;
         for(_loc3_ in o9062)
         {
            _loc2_ = _loc3_ as o9347;
            if(_loc2_)
            {
               o10820 = o7848(_loc2_);
               o10820.o16280(this,o14571.o19115,o258);
               o1051.o9310(this,5,o258);
            }
         }
      }
   }
   
   private function o10019() : void
   {
      var _loc3_:int = 0;
      var _loc4_:* = null;
      var _loc1_:* = null;
      var _loc5_:Number = NaN;
      var _loc2_:Number = NaN;
      _loc3_ = 0;
      while(_loc3_ < o17699.length)
      {
         _loc4_ = o17699[_loc3_];
         if(_loc4_)
         {
            _loc1_ = new o18509();
            _loc1_.x = _loc4_.x - body.position.x;
            _loc1_.y = _loc4_.y - body.position.y;
            _loc5_ = _loc1_.o3215;
            if(_loc5_ <= 250)
            {
               _loc2_ = (250 - _loc5_) / 250 * 1000;
               _loc1_.o3215 = _loc2_;
               _loc4_.o11332(_loc1_);
            }
         }
         _loc3_++;
      }
   }
   
   private function o258(param1:Event = null) : void
   {
      o10820 = null;
   }
   
   private function o15592() : void
   {
      if(o6955)
      {
         o15113();
         return;
      }
      if(o20488 == 1)
      {
         o7366(true,o7313);
      }
      else if(o20488 == 2)
      {
         o7366(false,o7313 * 2.5);
         if(Math.abs(o10938.rotation - o6691.rotation) <= 0.01)
         {
            o20488 = 0;
            o1941();
            o16166.o10589(o6182[2]);
            o12120.o10589(o4066[2]);
         }
      }
      else if(o20488 == 3)
      {
         o354 = o354 + 0.0333333333333333;
         if(o354 >= 0.9)
         {
            o20488 = 0;
            o11171 = o11171 / 4;
         }
         o10938.rotation = o6691.rotation;
      }
      else
      {
         o10938.rotation = o6691.rotation;
      }
   }
   
   private function o15284() : void
   {
      if(o6955)
      {
         o15113();
         return;
      }
      var _loc1_:o7848 = o7055;
      o7055 = o10820 != null?o10820:target;
      if(o7055 == null && o10820 == null && target == null)
      {
         o7055 = _loc1_;
      }
      if(o20488 == 1)
      {
         o16617();
      }
      else if(o20488 == 0)
      {
         o1923();
         o2118();
      }
      if(o20488 != 0 || o6955 || !o15338)
      {
         o15113();
      }
   }
   
   private function o10638() : void
   {
      var _loc1_:* = null;
      var _loc2_:* = null;
      if(o6955)
      {
         o15113();
         return;
      }
      if(o20488 == 1)
      {
         _loc1_ = o15460.o4078;
         _loc1_.x = 1;
         _loc1_.y = 0;
         _loc1_.rotate(o10938.rotation);
         _loc2_ = o4519.o8116.o2996.o4816(body.o2697.x,body.o2697.y,body.o2697.x + _loc1_.x * 9000,body.o2697.y + _loc1_.y * 9000,o8723.o17798,o8723.o3969 | o8723.o19523 | o8723.o19175,null,1,o8723.o3969 | o8723.o19523);
         _loc2_.defer(o13937);
      }
      else
      {
         o17182.scaleX = 0.0001;
      }
   }
   
   private function o13937(param1:*) : void
   {
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = param1.x - param1.startX;
      _loc2_.y = param1.y - param1.startY;
      var _loc3_:Number = _loc2_.o3215;
      o17182.scaleX = _loc3_ / 100;
   }
   
   private function o7366(param1:Boolean, param2:Number) : void
   {
      var _loc5_:* = 0.0333333333333333;
      var _loc4_:o18509 = new o18509();
      if(param1 && o7055)
      {
         _loc4_.x = o7055.body.position.x - body.position.x;
         _loc4_.y = o7055.body.position.y - body.position.y;
      }
      else
      {
         _loc4_.x = 1;
         _loc4_.y = 0;
         _loc4_.rotate(o6691.rotation);
      }
      if(_loc4_.x == 0 && _loc4_.y == 0)
      {
         return;
      }
      var _loc7_:o18509 = o15460.o16789;
      _loc7_.x = 1;
      _loc7_.y = 0;
      _loc7_.rotate(o10938.rotation);
      var _loc3_:Number = _loc7_.o19203(_loc4_);
      var _loc6_:* = Number(param2 * _loc5_);
      if(_loc3_ >= 0)
      {
         if(_loc6_ > _loc3_)
         {
            _loc6_ = _loc3_;
         }
      }
      else
      {
         _loc6_ = Number(_loc6_ * -1);
         if(_loc6_ < _loc3_)
         {
            _loc6_ = _loc3_;
         }
      }
      o10938.rotation = o10938.rotation + _loc6_;
   }
   
   private function o16640(param1:*) : void
   {
      if(!(param1.x == 0 && param1.y == 0))
      {
         o7939();
      }
   }
   
   private function o16358(param1:*) : void
   {
      if(param1.x == 0 && param1.y == 0)
      {
         o13454();
      }
   }
   
   protected function o1923() : void
   {
      var _loc1_:* = null;
      var _loc2_:Number = NaN;
      if(!o7055)
      {
         return;
      }
      var _loc3_:o18509 = o15460.o16789;
      _loc3_.x = o7055.body.position.x - body.position.x;
      _loc3_.y = o7055.body.position.y - body.position.y;
      if(_loc3_.o17573 < o14120 * o14120 * 0.75)
      {
         _loc1_ = o15460.o4078;
         _loc1_.x = 1;
         _loc1_.y = 0;
         _loc1_.rotate(o6691.rotation);
         _loc2_ = _loc1_.o19203(_loc3_);
         if(Math.abs(_loc2_) < 3.14159265358979 / 25)
         {
            o4519.o8116.o2535.o4816(body.position.x,body.position.y,o7055.body.position.x,o7055.body.position.y,o8723.o42,o8723.o3969 | o8723.o18180).defer(o16358);
         }
      }
   }
   
   protected function o16617() : void
   {
      if(!o7055)
      {
         o7939();
         return;
      }
      var _loc3_:o18509 = o15460.o16789;
      _loc3_.x = o7055.body.position.x - body.position.x;
      _loc3_.y = o7055.body.position.y - body.position.y;
      if(_loc3_.o17573 > o14120 * o14120)
      {
         o7939();
         return;
      }
      var _loc1_:o18509 = o15460.o4078;
      _loc1_.x = 1;
      _loc1_.y = 0;
      _loc1_.rotate(o6691.rotation);
      var _loc2_:Number = _loc1_.o19203(_loc3_);
      if(Math.abs(_loc2_) >= 3.14159265358979 / 2)
      {
         o7939();
         return;
      }
      o4519.o8116.o2535.o4816(body.position.x,body.position.y,o7055.body.position.x,o7055.body.position.y,o8723.o42,o8723.o3969 | o8723.o18180).defer(o16640);
   }
   
   override public function o5666() : void
   {
      if(o20488 == 1)
      {
         return;
      }
      super.o5666();
   }
   
   override public function o1941() : void
   {
      if(o20488 == 1)
      {
         return;
      }
      super.o1941();
   }
   
   private function o13454() : void
   {
      if(o20488 == 1)
      {
         return;
      }
      o5666();
      o20488 = 1;
      o16166.o10589(o6182[1]);
      o12120.o10589(o4066[1]);
      if(o12977.o4670.o6365 != 8)
      {
         o12977.trigger();
      }
      if(o20372.o4670.o6365 != 8)
      {
         o20372.trigger();
      }
   }
   
   private function o7939() : void
   {
      if(o20488 != 1)
      {
         return;
      }
      o20488 = 2;
      if(o20372.o4670.o6365 != 8)
      {
         o20372.o6976();
      }
      if(o12977.o4670.o6365 != 8)
      {
         o12977.o6976();
      }
   }
   
   override protected function o1342(param1:Boolean, param2:o4016) : void
   {
      o15113();
      o6955 = true;
      o6689();
      o1051.o19115(o6187);
      o1051.o19115(o8999);
      o1051.o19115(o20066);
      super.o1342(false,param2);
   }
   
   private function o6689() : void
   {
      body.o6141(0,0);
      o12120.o10589(o4066[0]);
      o16166.o10589(o6182[0]);
      o12977.o6976();
      o20372.o6976();
      o17182.scaleX = 0.001;
      o1051.o9310(this,0.3,o3263);
      o1051.o9310(this,0.7,o3263);
      o1051.o9310(this,1,o3263);
      o1051.o9310(this,2,o3263);
   }
   
   private function o3263() : void
   {
      var _loc3_:* = NaN;
      o5736 = Number(o5736) + 1;
      if(o5736 == 1)
      {
         _loc3_ = 0;
      }
      else if(o5736 == 2)
      {
         _loc3_ = 2.35619449019235;
      }
      else if(o5736 == 3)
      {
         _loc3_ = 4.71238898038469;
      }
      else
      {
         _loc3_ = 0;
      }
      if(o5736 == 4)
      {
         o12156(o2408,_loc3_,3);
      }
      else
      {
         o12156(o18246,_loc3_,1);
      }
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = 30 + o20384.random() * 20;
      _loc2_.y = 0;
      _loc2_.rotate(_loc3_);
      if(o5736 == 4)
      {
         var _loc4_:int = 0;
         _loc2_.y = _loc4_;
         _loc2_.x = _loc4_;
      }
      var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion1"]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = body.o2697.x + _loc2_.x;
         _loc1_.o6691.position.y = body.o2697.y + _loc2_.y;
         _loc1_.o6691.rotation = _loc3_;
         _loc1_.o6691.o16990 = o11381.o1041;
      }
      o14055();
      if(o5736 == 4)
      {
         o19115();
      }
   }
   
   private function o12156(param1:int, param2:Number, param3:int, param4:Boolean = false) : void
   {
      var _loc7_:int = 0;
      var _loc8_:* = null;
      var _loc5_:Number = NaN;
      var _loc6_:* = null;
      var _loc9_:Number = 3.14159265358979 * 2 / param1;
      _loc7_ = 0;
      while(_loc7_ < param1)
      {
         _loc8_ = o4519.o8116.o2996.o2998(o9047,[param3]) as o9047;
         _loc8_.body.o8564(body.o2697.x,body.o2697.y);
         _loc5_ = _loc9_ * _loc7_ - _loc9_ + 2 * _loc9_ * Math.random();
         _loc6_ = o15460.o4078;
         _loc6_.x = Math.cos(_loc5_);
         _loc6_.y = Math.sin(_loc5_);
         _loc8_.o6141(_loc6_);
         _loc8_.o6691.rotation = o20384.random() * 3.14159265358979 * 2;
         _loc7_++;
      }
   }
   
   override public function o19115() : void
   {
      o15113();
      o12120.o19115();
      o10938.o19115();
      o5577.o19115();
      o17182.o19115();
      o5666();
      body.o19115();
      if(o12977)
      {
         o12977.o6976();
         o12977.o19115();
      }
      o12977 = null;
      if(o20372)
      {
         o20372.o6976();
         o20372.o19115();
      }
      o20372 = null;
      super.o19115();
   }
   
   override protected function o15119() : void
   {
      o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o16360.play(1.5,0,0,false,_loc1_.o10088(),0,9);
   }
   
   override protected function o10492(param1:Boolean = false) : void
   {
      var _loc2_:* = NaN;
      if(o8289())
      {
         return;
      }
      var _loc3_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      if(!param1)
      {
         _loc2_ = Number(Math.random());
         if(_loc2_ > 0.5)
         {
            _loc2_ = 0.5;
         }
         o4519.o8116.o4812.o14142.o1242.play(_loc2_,0,0,false,_loc3_.o10088());
      }
   }
   
   private function o5202() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o3540.o3768.play(0.5,0,0,false,_loc1_.o10088());
   }
   
   private function o14055() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o20325.o13157.play(0.5,0,0,false,_loc1_.o10088());
   }
   
   override protected function o16855() : void
   {
      o15113();
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o267.play(1,0,0,false,_loc1_.o10088());
   }
   
   private function o2118() : void
   {
      var _loc1_:* = null;
      if(o6955)
      {
         o15113();
         return;
      }
      if(!o15338)
      {
         o15113();
         _loc1_ = new Date();
         o9933 = _loc1_.valueOf();
         o4519.o8116.o4812.o14142.o5834.play(0.5,2147483647,0,false,null,0,0,o9933);
         o15338 = true;
      }
   }
   
   private function o15113() : void
   {
      o15338 = false;
      o4519.o8116.o6169.o1529(o9933);
   }
}
