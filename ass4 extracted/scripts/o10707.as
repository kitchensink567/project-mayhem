package
{
   import flash.display.Sprite;
   
   public class o10707 extends Sprite
   {
       
      
      public function o10707()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o13486;
      }
   }
}

import flash.events.Event;

class o13486 extends o10416
{
   
   private static const o6897:int = 0;
   
   private static const o5046:int = 1;
   
   private static const o8629:int = 2;
    
   
   private var o17828:Array;
   
   private var o15088:Array;
   
   private var o18491:Array;
   
   private var o2920:Array;
   
   private var o4483:Array;
   
   private var o13808:Array;
   
   private var o9879:String;
   
   private var o5725:Number;
   
   private var o20554:Number;
   
   private var o3:int;
   
   private var o4543:Number;
   
   private var type:int;
   
   private var o1432:o18442;
   
   function o13486()
   {
      o17828 = [1,0.7,0.5];
      o15088 = [0,0.3,0.5];
      o18491 = [0,3,7];
      o2920 = [1,2,4];
      o4483 = ["assets.enemies.boss5Zombie.attack.physical.Projectile","assets.enemies.boss5Zombie.attack.fire.Projectile","assets.enemies.boss5Zombie.attack.chemical.Projectile"];
      o13808 = ["assets.enemies.boss5Zombie.attack.physical.Collision","assets.enemies.boss5Zombie.attack.fire.Collision","assets.enemies.boss5Zombie.attack.chemical.Collision"];
      super();
   }
   
   public function o16955(param1:int, param2:int, param3:Number, param4:o18442, param5:Number = -1) : void
   {
      this.o1432 = param4;
      this.type = param2;
      this.o5725 = param3 * o17828[param2];
      this.o20554 = param3 * o15088[param2];
      this.o4543 = o18491[param2];
      this.o3 = o2920[param2];
      var _loc6_:o10262 = o4519.o8116.o9869.o1968(1,0,false);
      var _loc7_:o4332 = o4519.o8116.o11954.o10869();
      o6365 = o8723.o42;
      o3046 = o8723.o19175 | o8723.o3969 | o8723.o19523 | o8723.o18180;
      o7742 = 0;
      if(param2 == 0)
      {
         o7742 = 1;
         o4982 = false;
      }
      o9531 = o4483[param2];
      o9879 = o13808[param2];
      super.o5179(param1,_loc6_,_loc7_,param4);
      o16166.o12265 = true;
      o16166.gotoAndPlay(0);
      _loc6_.o16280(this,o8273.o7087,o7087);
      if(param5 == -1)
      {
         if(param2 == 2)
         {
            param5 = 0.6;
         }
         else
         {
            param5 = 2;
         }
      }
      o1051.o9310(this,param5,o9426);
   }
   
   private function o7087(param1:o663) : void
   {
      var _loc3_:* = null;
      var _loc2_:o5640 = o4519.o8116.o2996.o14389(param1.o11541) as o5640;
      if(_loc2_ != null && _loc2_ is o5640)
      {
         if(!_loc2_.o7694 && !_loc2_.o12487)
         {
            o4519.o8116.o8361.o5725(_loc2_,o4016.o10062().initialise(o5725,o3,o1432));
            _loc2_.o13423(o20554,o4543,o3,o1432);
            o9426();
         }
         else
         {
            o11547();
         }
         return;
      }
      _loc3_ = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      _loc3_ = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc3_ != null && !_loc3_.o7694 && !_loc3_.o12487)
      {
         o4519.o8116.o8361.o5725(_loc3_,o4016.o10062().initialise(o5725,o3,o1432));
         _loc3_.o13423(o20554,o4543,o3,o1432);
         o9426();
      }
      else
      {
         o11547();
      }
   }
   
   private function o11547() : void
   {
      if(type == 0)
      {
         o15126();
         o1051.o9310(this,0.034,o12224);
      }
      else
      {
         o9426();
      }
   }
   
   private function o12224() : void
   {
      body.o2503().defer(o7428);
   }
   
   private function o7428(param1:o18509) : void
   {
      o6691.rotation = param1.rotation;
   }
   
   private function o9426() : void
   {
      body.o12657(o8273.o7087,o7087);
      o16166.o10589(o9879,true);
      o16166.o12265 = false;
      o16166.gotoAndPlay(0);
      o16166.o19926(this,o1490.o16612,o8456);
      body.o6141(0,0);
      if(type == 2)
      {
         o8578();
         o11560();
      }
      else if(type == 1)
      {
         o1384();
      }
   }
   
   private function o8456(param1:Event) : void
   {
      o19115();
   }
   
   private function o11560() : void
   {
      var _loc2_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.SpitPool"];
      var _loc1_:* = o4519.o8116.o2996.o2998(_loc2_,[o1432,o20554,o4543,o3]);
      _loc1_.body.o8564(body.position.x,body.position.y);
      _loc1_.o6691.rotation = o6691.rotation;
   }
   
   private function o8578() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o11205.play(1,0,0,false,_loc1_.o10088());
   }
   
   private function o1384() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o11677.play(1,0,0,false,_loc1_.o10088());
   }
   
   private function o15126() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o11304.play(0.5,0,0,false,_loc1_.o10088());
   }
}
