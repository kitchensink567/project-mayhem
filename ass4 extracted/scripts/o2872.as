package
{
   import flash.events.Event;
   
   public class o2872 extends o18442
   {
      
      public static var o6365:int = o8723.o18481;
      
      private static const o8890:int = 0;
      
      private static const o6556:int = 1;
      
      private static const o3685:int = 2;
      
      private static const o4644:int = 3;
      
      private static const o3654:int = 4;
       
      
      private var o20488:int = 4;
      
      private var o18181:int = 10;
      
      private var o13104:int = 30;
      
      private var o11099:int = 10;
      
      private var o2179:o18509;
      
      private var o2752:o4411;
      
      private var o4226:o4411;
      
      private var o14622:o4332 = null;
      
      private var fixture:o4039 = null;
      
      private var o7562:Array = null;
      
      private var o4574:Array = null;
      
      private var o9477:o17517 = null;
      
      private var o2913:int = 0;
      
      private var o12479:Number = 0;
      
      public function o2872()
      {
         o2179 = new o18509();
         super();
      }
      
      override public function getCacheAssets() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         _loc1_.push(o4519.o8116.o5830.o9009(o2752.o4670.o19739));
         _loc1_.push(o4519.o8116.o5830.o9009(o2752.o4670.o910));
         _loc1_.push(o4519.o8116.o5830.o9009(o2752.o4670.o10012));
         _loc1_.push("assets.ammo.enemy1.Display");
         _loc1_.push("assets.maps.zombieEgg.eggBurst");
         _loc1_.push("assets.projectiles.mechaSupernova.MuzzleFlash");
         _loc1_.push("assets.turrets.zombieSupernova.BaseASSET");
         _loc1_.push("assets.turrets.zombieSupernova.Disabled");
         _loc1_.push("assets.turrets.zombieSupernova.Turret");
         _loc1_.push("assets.turrets.zombieSupernova.Turret");
         _loc1_.push("assets.turrets.zombieSupernova.Base");
         _loc1_.push("assets.common.zombie.tech.gib1");
         _loc1_.push("assets.common.zombie.tech.gib2");
         _loc1_.push("assets.common.zombie.tech.gib3");
         _loc1_.push("assets.common.zombie.tech.gib4");
         _loc1_.push("assets.common.zombie.tech.gib5");
         _loc1_.push("assets.common.zombie.tech.gib6");
         _loc1_.push("assets.common.zombie.tech.gib7");
         _loc1_.push("assets.common.zombie.tech.gib8");
         _loc1_.push("assets.common.zombie.tech.gib9");
         _loc1_.push("assets.common.zombie.tech.gib10");
         _loc1_.push("assets.common.zombie.tech.gib11");
         _loc1_.push("assets.common.zombie.tech.gib12");
         _loc1_.push("assets.common.zombie.tech.gib13");
         _loc1_.push("assets.enemies.boss3Zombie.Gib01");
         _loc1_.push("assets.enemies.boss3Zombie.Gib02");
         _loc1_.push("assets.enemies.boss3Zombie.Gib03");
         _loc1_.push("assets.enemies.boss3Zombie.Gib04");
         _loc1_.push("assets.enemies.boss3Zombie.Gib05");
         _loc1_.push("assets.enemies.boss3Zombie.Gib06");
         _loc1_.push("assets.enemies.boss3Zombie.Gib07");
         _loc1_.push("assets.enemies.boss3Zombie.Gib08");
         _loc1_.push("assets.enemies.boss3Zombie.Gib09");
         _loc1_.push("assets.enemies.boss3Zombie.Gib10");
         _loc1_.push("assets.enemies.boss3Zombie.Gib11");
         _loc1_.push("assets.enemies.boss3Zombie.Gib12");
         _loc1_.push("assets.enemies.boss3Zombie.Gib13");
         return _loc1_;
      }
      
      public function o16955(param1:int, param2:int, param3:o18509, param4:int) : void
      {
         var _loc5_:o10262 = o4519.o8116.o9869.o1968(0,0,false);
         var _loc7_:o4332 = o4519.o8116.o11954.o10869();
         var _loc8_:o17761 = new o17761(_loc5_.o2535);
         _loc8_.o16716(15);
         type = 18;
         grade = param2;
         o20384 = new o7600(param1);
         fixture = o4519.o8116.o20600.o15803(o6365,o8723.o10217 ^ o8723.o2823,o8723.o32 | o8723.o17798,false,1);
         fixture.o10289 = _loc8_.id;
         _loc5_.o14230(fixture);
         _loc5_.o7191 = 80;
         this.o16125 = "Turret";
         o17664(0);
         _loc7_.o16396 = o17541.o13617("assets.turrets.mechaSupernova.Turret");
         _loc7_.o16990 = o11381.o12215;
         o14622 = o4519.o8116.o11954.o10869();
         o14622.o16396 = o17541.o13617("assets.turrets.mechaSupernova.Base");
         o14622.position = new o2415();
         o14622.o16990 = o11381.o3483;
         o14622.rotation = 0;
         _loc5_.o8564(param3.x,param3.y);
         super.o10783(param1,_loc5_,_loc7_,o4519.o8116.o11676);
         o4519.o8116.o11954.o9226(_loc7_);
         o19505 = this as o18442;
         if(grade <= 4)
         {
            o2287(10000);
            o14116(10000);
            o11171 = 1;
         }
         else
         {
            o2287(50000);
            o14116(50000);
            o11171 = 1.5;
         }
         o2913 = o20384.random() * 10;
         var _loc6_:int = 122;
         if(grade > 4)
         {
            _loc6_ = 132;
         }
         o4519.o8116.o1184.o1557(_loc6_).defer(o9613);
         o20488 = 4;
         _loc5_.o20458(fixture.id,o8723.o3969);
         _loc5_.o11496(fixture.id,o8723.o10217 ^ o8723.o2823);
         if(o4519.o13206.o2685.o4326 == 2)
         {
            o13544();
         }
      }
      
      private function o9613(param1:o8925) : void
      {
         o2752 = new o4411(param1,this,o6691,o6691.o16990 + 0.001);
         o2752.o11119 = o8723.o42;
         o2752.o13696 = [o17517];
         o2752.o10464 = [o17517,o10384];
         o2752.o3046 = o8723.o32 | o8723.o3969 | o8723.o18180 | o8723.o19523;
         o2752.o20682 = 2147483647;
         o2752.o16280(this,o11468.o6670,o7424);
         o16166.o10589(o4519.o8116.o5830.o9009(param1.o10012));
         o16166.o11525(o6691);
         o16166.gotoAndStop(1);
         o14622.o16396 = o17541.o13617(o4519.o8116.o5830.o9009(param1.o19739));
      }
      
      private function o6585(param1:o8925) : void
      {
         o4226 = new o4411(param1,this,o6691,o6691.o16990 + 0.001);
         o4226.o10464 = [o17517];
         o4226.o3046 = o8723.o32 | o8723.o3969 | o8723.o18180 | o8723.o19523;
      }
      
      public function o7441() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         if(o2752)
         {
            o16166.o10589(o4519.o8116.o5830.o9009(o2752.o4670.o910));
            o16166.gotoAndStop(1);
         }
         o4519.o8116.o11954.o9226(o14622);
         o4519.o8116.o11954.o2429(o14622,o6691);
         o14622.rotation = o6691.rotation;
         o1051.o4767(this,0.1,o3608);
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            _loc1_ = o4519.o8116.o13427.o11961(o2130,["assets.maps.zombieEgg.eggBurst"]) as o2130;
            if(_loc1_ != null)
            {
               _loc1_.o6691.position.x = o6691.position.x;
               _loc1_.o6691.position.y = o6691.position.y;
               _loc1_.o6691.rotation = _loc2_ * (3.14159265358979 * 0.5);
            }
            _loc2_++;
         }
      }
      
      override public function o4526() : void
      {
         o20488 = 0;
         body.o20458(fixture.id,o8723.o18481);
      }
      
      private function o7424(param1:Event = null) : void
      {
         o16166.gotoAndPlay(1);
         o16166.o12265 = false;
      }
      
      private function o3608() : void
      {
         o14622.position.x = o6691.position.x;
         o14622.position.y = o6691.position.y;
         o7562 = o4519.o8116.o2996.o20698(o17517);
         o4574 = [];
         var _loc3_:int = 0;
         var _loc2_:* = o7562;
         for each(o1162 in o7562)
         {
            var o14337:Number = o1162.body.position.x - body.position.x;
            var o8354:Number = o1162.body.position.y - body.position.y;
            if(Math.sqrt(o14337 * o14337 + o8354 * o8354) < 600)
            {
               o4574.push(o1162);
            }
         }
         if(o4574.length > 1)
         {
            o4574 = o4574.sort(function(param1:*, param2:*):Number
            {
               var _loc4_:Number = param1.body.position.x - body.position.x;
               var _loc6_:Number = param1.body.position.y - body.position.y;
               var _loc3_:Number = param2.body.position.x - body.position.x;
               var _loc5_:Number = param2.body.position.y - body.position.y;
               if(_loc4_ * _loc4_ + _loc6_ * _loc6_ < _loc3_ * _loc3_ + _loc5_ * _loc5_)
               {
                  return -1;
               }
               return 1;
            });
         }
         if((o9477 == null || o4574.indexOf(o9477) == -1) && o20488 != 3 && o20488 != 0 && o20488 != 4)
         {
            if(o20488 == 1 || o20488 == 2)
            {
               o20488 = 3;
            }
            else
            {
               o20488 = 0;
            }
         }
         switch(int(o20488))
         {
            case 0:
               o9477 = null;
               o15714.o16380(o7699);
               o2752.o6976();
               if(o4226)
               {
                  o4226.o6976();
               }
               break;
            case 1:
               o18181 = Number(o18181) - 1;
               if(o18181 <= 0)
               {
                  o20488 = 2;
               }
               o2752.o6976();
               if(o4226)
               {
                  o4226.o6976();
               }
               break;
            case 2:
               o2179.x = o9477.body.position.x - body.position.x;
               o2179.y = o9477.body.position.y - body.position.y;
               var o6406:Number = 0.1;
               var o8053:o18509 = o15460.o16789;
               o8053.x = 1;
               o8053.y = 0;
               o8053.rotate(o6691.rotation);
               var o7755:Number = o8053.o19203(o2179);
               var o4143:Number = o11171 * o6406;
               if(o7755 >= 0)
               {
                  if(o4143 >= o7755)
                  {
                     o4143 = o7755;
                  }
               }
               else
               {
                  o4143 = o4143 * -1;
                  if(o4143 <= o7755)
                  {
                     o4143 = o7755;
                  }
               }
               o6691.rotation = o6691.rotation + o4143;
               o2752.trigger();
               if(o4226 && o13104 == 10 + o2913)
               {
                  o4226.trigger();
               }
               else if(o4226)
               {
                  o4226.o6976();
               }
               o13104 = Number(o13104) - 1;
               if(o13104 <= 0)
               {
                  o2752.o6976();
                  if(o4226)
                  {
                     o4226.o6976();
                  }
                  o20488 = 3;
               }
               break;
            case 3:
               o11099 = Number(o11099) - 1;
               if(o11099 <= 0)
               {
                  o20488 = 0;
                  o2752.o6976();
                  if(o4226)
                  {
                     o4226.o6976();
                     break;
                  }
                  break;
               }
         }
         o12479 = o4519.o13206.getTime();
      }
      
      override public function o13917() : Boolean
      {
         return o20488 != 4;
      }
      
      override public function set o2840(param1:int) : void
      {
      }
      
      private function o7699(param1:int, param2:*) : o16124
      {
         if(param2 != null && param2.x == 0 && param2.y == 0)
         {
            if(o20488 == 0)
            {
               o9477 = o4574[param1 - 1];
               o18181 = 10;
               o13104 = 30;
               o11099 = 10;
               o20488 = 1;
            }
            return null;
         }
         if(param1 >= o4574.length)
         {
            return null;
         }
         var _loc3_:o16124 = o4519.o8116.o2996.o4816(body.position.x,body.position.y,o4574[param1].body.position.x,o4574[param1].body.position.y,o8723.o42,o8723.o3969 | o8723.o18180);
         return _loc3_;
      }
      
      override public function o19115() : void
      {
         if(o14622 != null)
         {
            o4519.o9721.o2075.o471(o14622);
            o14622 = null;
         }
         o2752.o19115();
         super.o19115();
      }
      
      override public function o5725(param1:o4016) : void
      {
         var _loc5_:* = null;
         var _loc3_:* = null;
         var _loc2_:* = null;
         var _loc4_:int = 0;
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc6_:Number = NaN;
         if(o8289() || o11243 <= 0 || param1.amount == 0 || o20488 == 4)
         {
            return;
         }
         o11243 = o11243 - param1.amount;
         if(o11243 <= 0)
         {
            if(param1.o16334 is o17517)
            {
               (param1.o16334 as o17517).o5878(this,param1);
            }
            _loc5_ = o4519.o8116.o11954.o10869();
            _loc5_.o16396 = o17541.o13617("assets.common.BloodDecalTech");
            _loc5_.position = new o2415();
            o4519.o8116.o11954.o9226(_loc5_);
            _loc5_.o16990 = o11381.o6537;
            _loc5_.rotation = param1.o1487;
            _loc5_.position.x = body.position.x;
            _loc5_.position.y = body.position.y;
            o4519.o9721.o2075.o471(_loc5_);
            _loc3_ = "assets.common.BloodSplosionTech";
            _loc2_ = o4519.o8116.o13427.o11961(o2130,[_loc3_]) as o2130;
            if(_loc2_ != null)
            {
               _loc2_.o6691.position.x = body.position.x;
               _loc2_.o6691.position.y = body.position.y;
               _loc2_.o6691.rotation = param1.o1487;
            }
            _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion1"]) as o2130;
            if(_loc2_ != null)
            {
               _loc2_.o6691.position.x = body.position.x;
               _loc2_.o6691.position.y = body.position.y;
               _loc2_.o6691.rotation = param1.o1487;
            }
            o14055();
            _loc4_ = 0;
            while(_loc4_ < o9747)
            {
               _loc8_ = o4519.o8116.o2996.o2998(o9047,[1]) as o9047;
               _loc8_.body.o8564(body.position.x,body.position.y);
               _loc7_ = new o18509(1,0);
               _loc6_ = Math.random() * (3.14159265358979 * 0.4) - 3.14159265358979 * 0.2;
               _loc7_.rotate(param1.o1487 + _loc6_);
               _loc8_.o6141(_loc7_);
               _loc8_.o6691.rotation = Math.random() * 20 - 10;
               _loc8_.o12363 = o12363;
               _loc4_++;
            }
            o19115();
         }
         else
         {
            o10492(param1.o9968);
         }
         _loc3_ = "assets.common.BloodImpactTech";
         _loc2_ = o4519.o8116.o13427.o11961(o2130,[_loc3_]) as o2130;
         _loc2_.o6691.position.x = body.position.x;
         _loc2_.o6691.position.y = body.position.y;
         _loc2_.o6691.rotation = param1.o1487;
      }
      
      private function o14055() : void
      {
         var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o20325.o13157.play(0.75,0,0,false,_loc1_.o10088());
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
      
      private function o13544() : void
      {
         this.o16125 = "Nightmarish Turret";
         this.o10051 = 12058624;
         o17664(0);
         this.o2752.o2493 * 6;
         this.o14116(this.o13200() * 4);
         this.o2287(o13200());
         this.o11171 = o11171 * 2;
      }
   }
}
