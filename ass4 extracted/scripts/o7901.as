package
{
   import flash.display.Sprite;
   
   public class o7901 extends Sprite
   {
       
      
      public function o7901()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8833;
      }
   }
}

class o8833 extends o18442
{
   
   public static var o20133:Array = [5,35];
    
   
   function o8833()
   {
      super();
   }
   
   public function o16955(param1:int, param2:int, param3:o18509, param4:int) : void
   {
      grade = param2;
      if(grade == 0)
      {
         o11243 = 100000000;
         o3478 = 0;
         o16109 = 700;
         o1877 = 1.8;
         o1690 = o4519.o8116.o4550(1);
         o6274 = "assets.enemies.fatZombie.Walk";
         o15091 = "assets.enemies.fatZombie.Attack";
         o885 = "assets.enemies.fatZombie.Hit";
      }
      else if(grade == 1)
      {
         o11243 = 7125;
         o3478 = o4519.o8116.o4550(0.88);
         o16109 = 3200;
         o1877 = 1.44;
         o1690 = o4519.o8116.o4550(1);
         o6274 = "assets.enemies.fatZombieV2.Walk";
         o15091 = "assets.enemies.fatZombieV2.Attack";
         o885 = "assets.enemies.fatZombieV2.Hit";
      }
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(1,0);
      var _loc6_:o4332 = o4519.o8116.o11954.o10869();
      super.o19011(param1,_loc5_,_loc6_,param3,param4);
      _loc5_.o7191 = 40;
   }
   
   override public function o5725(param1:o4016) : void
   {
      super.o5725(param1.amount,param1.o3,param1.o16334,param1.o1487,param1.o20248,param1.o9273,param1.o4128,param1.o9968);
      o4519.o8116.o20488.o19411 = param1.amount.toFixed(2);
   }
}
