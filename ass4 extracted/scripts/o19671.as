package
{
   import flash.display.Sprite;
   
   public class o19671 extends Sprite
   {
      
      public static const o12092:uint = 0;
      
      public static const o19933:uint = 1;
      
      public static const o11723:uint = 2;
       
      
      public function o19671()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o5188;
      }
   }
}

import flash.utils.ByteArray;

class o5188 extends o18442
{
    
   
   private var o19122:int;
   
   private const o12768:Number = 130;
   
   private const o4104:Number = 23;
   
   private const o11580:Number = 40;
   
   private const o19892:Number = 20;
   
   private const o12260:Number = 6.0;
   
   private var o7327:o18509;
   
   function o5188()
   {
      o7327 = new o18509();
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(15);
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
      _loc3_.push("assets.enemies.boss5Zombie.attack.physical.Projectile");
      _loc3_.push("assets.enemies.boss5Zombie.attack.fire.Projectile");
      _loc3_.push("assets.enemies.boss5Zombie.attack.chemical.Projectile");
      _loc3_.push("assets.enemies.boss5Zombie.attack.chemical.Collision");
      _loc3_.push("assets.enemies.boss5Zombie.attack.fire.Collision");
      _loc3_.push("assets.enemies.boss5Zombie.attack.physical.Collision");
      _loc3_.push("assets.enemies.boss5Zombie.attack.fire.Partical");
      return _loc3_;
   }
   
   public function o16955(param1:int, param2:int, param3:o18509, param4:int) : void
   {
      var _loc5_:* = NaN;
      o20384 = new o7600(param1);
      this.type = 15;
      o17050 = true;
      grade = int(param2 / 10);
      param2 = param2 % 10;
      this.o19122 = param2 % 10;
      var _loc9_:o1587 = o4519.o8116.o4235.o4248(15);
      var _loc7_:o14238 = _loc9_.o4036[param2 + 3 * grade];
      this.o16125 = _loc9_.o17834;
      o18043(grade);
      o20133 = _loc7_.o1603;
      o17074 = _loc9_.o19672;
      o30 = o17074;
      o11243 = _loc7_.o11243;
      o1589 = o11243;
      o4699 = 155;
      o3478 = o4519.o8116.o4550(_loc7_.o18823) * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o3843 = o3478;
      o11171 = _loc9_.o11171 / 180 * 3.14159265358979;
      o16109 = _loc7_.o16109;
      o1877 = _loc7_.o13119 * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o1690 = o4519.o8116.o4550(_loc9_.o1690);
      o5617 = _loc9_.o5617;
      o16024 = _loc7_.o16024;
      o15530 = _loc7_.o3704;
      o17198 = o4519.o8116.o4550(_loc7_.o17198);
      o3847 = o4519.o8116.o4550(_loc7_.o3847);
      o16390 = [null,_loc7_.o11598,_loc7_.o16351,_loc7_.o884,_loc7_.o1098,0,0];
      o64 = _loc9_.o10981;
      o6274 = o4519.o8116.o5830.o9009(_loc7_.o15807);
      o15091 = o4519.o8116.o5830.o9009(_loc7_.o362);
      o502 = o4519.o8116.o5830.o9009(_loc7_.o15458);
      o11196 = o4519.o8116.o5830.o9009(_loc9_.o12492);
      o11166 = o4519.o8116.o5830.o9009(_loc9_.o10021);
      o9296 = o4519.o8116.o5830.o9009(_loc9_.o6568);
      o8193 = _loc9_.o8193;
      o9747 = _loc9_.o5949;
      o1918 = _loc7_.o1918;
      o4052 = _loc9_.o4052;
      var _loc6_:o10262 = o4519.o8116.o9869.o1968(1,0);
      var _loc8_:o4332 = o4519.o8116.o11954.o10869();
      switch(int(param2))
      {
         case 0:
            o5617 = 1;
            break;
         case 1:
            o9491.push(o16109 / 2);
            o12401.push(1);
            o9491.push(o16109 / 2);
            o12401.push(2);
            o13839 = o16109 * 0.2;
            o7808 = 2;
            o6781 = 2;
            break;
         case 2:
            o9491.push(o16109 / 2);
            o12401.push(1);
            o9491.push(o16109 / 2);
            o12401.push(4);
            o13839 = o16109;
            o7808 = 5;
            o6781 = 4;
            o9296 = "assets.common.BloodImpactGreen";
            o11166 = "assets.common.BloodSplosionGreen";
            o11196 = "assets.common.BloodDecalGreen";
      }
      super.o19011(param1,_loc6_,_loc8_,param3,param4);
      _loc6_.o7191 = _loc9_.o7191;
      _loc8_.o16990 = o11381.o10850;
      var _loc10_:* = 0.8;
      _loc8_.scaleY = _loc10_;
      _loc8_.scaleX = _loc10_;
      switch(int(param2))
      {
         case 0:
            o4929(0,0,40,0,0,0);
            o11512();
            break;
         case 1:
            o4929(0,0,0,0,-0.5,-0.8);
            o8964();
            break;
         case 2:
            o4929(0,0,0,-0.3,0,-1);
            o12026();
      }
      if(o4519.o13206.o2685.o4326 == 2)
      {
         _loc5_ = 1.3;
         this.o6691.scaleX = this.o6691.scaleX * _loc5_;
         this.o6691.scaleY = this.o6691.scaleY * _loc5_;
      }
   }
   
   override protected function o14580(param1:int, param2:ByteArray) : void
   {
      switch(int(param1) - 2)
      {
         case 0:
            o11510(param2.readFloat(),param2.readFloat());
            return;
         case 1:
            o17078(param2.readFloat(),param2.readFloat(),param2.readFloat(),param2.readFloat());
            return;
      }
   }
   
   private function o11512() : void
   {
      o1051.o9310(this,o15530,o17049);
   }
   
   private function o17049() : void
   {
      if(!o16243 && !o6955 && target)
      {
         target.body.o2503().defer(o8912);
         o1051.o9310(this,o15530,o17049);
      }
      else
      {
         o1051.o9310(this,1,o17049);
      }
   }
   
   private function o8912(param1:o18509) : void
   {
      if(!target)
      {
         return;
      }
      if(param1.x == 0 && param1.y == 0)
      {
         param1.x = 1;
         param1.rotate(target.o6691.rotation);
      }
      param1.o14528();
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = target.body.position.x + param1.x * 130;
      _loc2_.y = target.body.position.y + param1.y * 130;
      o4519.o8116.o2996.o4816(target.body.position.x,target.body.position.y,_loc2_.x,_loc2_.y,o8723.o2823,o8723.o3969 | o8723.o18180 | o8723.o19523).defer(o10908);
   }
   
   private function o10908(param1:*) : void
   {
      var _loc2_:* = null;
      var _loc3_:* = null;
      var _loc4_:o18509 = o15460.o16789;
      var _loc5_:int = 0;
      _loc4_.y = _loc5_;
      _loc4_.x = _loc5_;
      if(param1.entity == 1)
      {
         _loc4_.x = param1.endX;
         _loc4_.y = param1.endY;
      }
      else
      {
         _loc2_ = o15460.o4078;
         _loc2_.x = param1.x - param1.startX;
         _loc2_.y = param1.y - param1.startY;
         if(_loc2_.x * _loc2_.x + _loc2_.y * _loc2_.y >= 23 * 23)
         {
            _loc4_.x = param1.x;
            _loc4_.y = param1.y;
         }
      }
      if(_loc4_.x != 0 || _loc4_.y != 0)
      {
         _loc3_ = new ByteArray();
         _loc3_.writeByte(3);
         _loc3_.writeFloat(param1.startX);
         _loc3_.writeFloat(param1.startY);
         _loc3_.writeFloat(_loc4_.x);
         _loc3_.writeFloat(_loc4_.y);
         dispatchData(new o2149(this,_loc3_,true));
      }
   }
   
   private function o17078(param1:Number, param2:Number, param3:Number, param4:Number) : void
   {
      if(o6955 || o5836)
      {
         return;
      }
      var _loc5_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosionNecro",o11381.o7800]) as o2130;
      _loc5_.o6691.position.x = body.position.x;
      _loc5_.o6691.position.y = body.position.y;
      _loc5_.o6691.scaleX = 0.6;
      o20030();
      var _loc6_:o18509 = o15460.o20546;
      _loc6_.x = param1 - param3;
      _loc6_.y = param2 - param4;
      this.o6691.rotation = _loc6_.rotation;
      this.body.o8564(param3,param4);
      _loc5_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosionNecro",o11381.o7800]) as o2130;
      _loc5_.o6691.position.x = param3;
      _loc5_.o6691.position.y = param4;
      _loc5_.o6691.scaleX = 0.6;
   }
   
   private function o8964() : void
   {
      o7327.x = body.position.x;
      o7327.y = body.position.y;
      o1051.o4767(this,0.2,o16275,0);
   }
   
   private function o16275() : void
   {
      var _loc1_:* = null;
      var _loc4_:* = undefined;
      var _loc3_:Number = o7327.x - body.position.x;
      var _loc2_:Number = o7327.y - body.position.y;
      if(_loc3_ * _loc3_ + _loc2_ * _loc2_ >= 20 * 20)
      {
         _loc1_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.GroundFire"];
         _loc4_ = o4519.o8116.o2996.o2998(_loc1_,[40,6,o16024,this]);
         _loc4_.body.o8564(body.position.x,body.position.y);
         o7327.x = body.position.x;
         o7327.y = body.position.y;
      }
   }
   
   private function o12026() : void
   {
      o1051.o9310(this,o15530,o10562);
   }
   
   protected function o10562() : void
   {
      var _loc2_:* = null;
      var _loc1_:* = null;
      if(!o16243 && !o6955)
      {
         _loc2_ = o17484();
         if(_loc2_)
         {
            _loc1_ = new ByteArray();
            _loc1_.writeByte(2);
            _loc1_.writeFloat(_loc2_.body.position.x);
            _loc1_.writeFloat(_loc2_.body.position.y);
            dispatchData(new o2149(this,_loc1_,true));
            o1051.o9310(this,o15530,o10562);
            return;
         }
      }
      o1051.o9310(this,1,o10562);
   }
   
   private function o17484() : o7848
   {
      if(target)
      {
         var x:Number = body.position.x - target.body.position.x;
         var y:Number = body.position.y - target.body.position.y;
         if(x * x + y * y <= o17198 * o17198)
         {
            var o10918:Boolean = false;
            o4519.o8116.o2996.o4816(body.position.x,body.position.y,target.body.position.x,target.body.position.y,o8723.o42,1 | o8723.o32,null,1,1).defer(function(param1:*):void
            {
               if(param1.entity != 1 && param1.entity != null)
               {
                  o10918 = true;
               }
            });
            if(o10918)
            {
               return target;
            }
         }
      }
      return null;
   }
   
   protected function o11510(param1:Number, param2:Number) : void
   {
      if(o6955 || o5836 || o10672 != 0)
      {
         return;
      }
      o5666();
      o16166.stop();
      o1051.o9310(this,1,o14491);
      o20032();
      var _loc4_:o18509 = o15460.o4078;
      _loc4_.x = param1 - body.o2697.x;
      _loc4_.y = param2 - body.o2697.y;
      _loc4_.o14528();
      var _loc3_:o10416 = o4519.o8116.o2996.o2998(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.RepatitisProjectile"],[2,o16024,this,o17198 / o3847]) as o10416;
      _loc3_.body.o8564(body.position.x,body.position.y);
      _loc3_.o6691.rotation = _loc4_.rotation;
      _loc3_.body.o6141(_loc4_.x * o3847,_loc4_.y * o3847);
   }
   
   private function o14491() : void
   {
      o1941();
      o16166.play();
   }
   
   private function o20032() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o6890.play(1,0,0,false,_loc1_.o10088(),0,7);
   }
   
   private function o20030() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o3017.play(1,0,0,false,_loc1_.o10088());
   }
   
   override protected function o15119() : void
   {
      o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o12943.play(0.35,0,0,false,_loc1_.o10088());
   }
   
   override protected function o16855() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o19724.play(0.5,0,0,false,_loc1_.o10088());
   }
   
   override protected function o1607() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o15141.play(0.5,0,0,false,_loc1_.o10088());
   }
}
