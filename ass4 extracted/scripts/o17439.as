package
{
   public class o17439
   {
      
      public static const o13607:int = 0;
      
      public static const o13931:int = 1;
      
      public static const o13889:int = 2;
      
      public static const o8697:int = 3;
      
      public static const o8624:int = 4;
      
      public static const o6218:int = 5;
      
      public static const o6326:int = 6;
      
      public static const o13253:int = 7;
      
      public static const o20966:int = 8;
      
      public static const o19647:int = 9;
      
      public static const o13448:int = 10;
      
      public static const o20610:int = 11;
      
      public static const o13177:int = 12;
      
      public static const o8758:int = 13;
      
      public static const o10097:int = 14;
      
      public static const o9204:int = 15;
      
      public static const o707:int = 16;
      
      public static const o18235:int = 17;
      
      public static const o20596:int = 18;
      
      public static const o14:int = 19;
      
      public static const o20161:int = 20;
      
      public static const o17834:Array = ["Shambler","Stalker","Spitter","Runner","Bloater","Shielder","Zombdroid Servant","Zombdroid Soldier","Worm","Spew Worm","Regurgitator","Necrosis","Zombie Mech","Wicker","Devastator","Necrosis Spawn","Loaderbot","Place Holder","EnemySentry","Place holder","SKU Zombie Override"];
      
      public static const o12681:Array = ["com.ninjakiwi.sas4.scripts.enemies.SlowZombie","com.ninjakiwi.sas4.scripts.enemies.FasterZombie","com.ninjakiwi.sas4.scripts.enemies.Spitter","com.ninjakiwi.sas4.scripts.enemies.RunnerZombie","com.ninjakiwi.sas4.scripts.enemies.FatZombie","com.ninjakiwi.sas4.scripts.enemies.ShieldedZombie","com.ninjakiwi.sas4.scripts.enemies.ZombDroidServant","com.ninjakiwi.sas4.scripts.enemies.ZombDroidSoldier","com.ninjakiwi.sas4.scripts.enemies.Worm","com.ninjakiwi.sas4.scripts.enemies.SpewWorm","com.ninjakiwi.sas4.scripts.enemies.Regurgitator","com.ninjakiwi.sas4.scripts.enemies.Repatitis","com.ninjakiwi.sas4.scripts.enemies.ZombieMech","com.ninjakiwi.sas4.scripts.enemies.Wicker","com.ninjakiwi.sas4.scripts.enemies.Devastator","com.ninjakiwi.sas4.scripts.enemies.RepatitisJunior","com.ninjakiwi.sas4.scripts.enemies.Loaderbot","","com.ninjakiwi.sas4.entities.EnemySentry"];
      
      public static const o6648:Array = [[1,2,4,16],[1,2,4,16],[1,2,4,16],[1,2,4,16],[1,2,4,16],[1,2,4,16],[1,20],[1,20],[1,2,4,16],[1,2,4,16],[-1],[-1],[-1],[-1],[-1],[-1],[-1],[-1],[-1]];
      
      public static const o6280:Array = [0,1,2,3,4,5];
      
      public static const o6319:Array = [8,9];
      
      public static const o6903:Array = [6,7,16];
      
      public static const o18061:Array = [10,13,12,14,11];
      
      public static const o1494:Array = [0,1,2,3,4,5];
      
      public static const o14628:Vector.<o8254> = Vector.<o8254>([new o8254(90,10,false,false),new o8254(205,13,false,false),new o8254(275,10,false,true),new o8254(350,12,false,false),new o8254(410,13,false,true),new o8254(550,14,false,false),new o8254(700,12,false,true),new o8254(800,11,false,false),new o8254(1100,14,false,true),new o8254(1600,11,false,true),new o8254(1800,10,true,false),new o8254(2500,13,true,false),new o8254(3600,10,true,true),new o8254(4000,12,true,false),new o8254(5000,13,true,true),new o8254(6000,14,true,false),new o8254(8000,12,true,true),new o8254(9500,11,true,false),new o8254(12000,14,true,true),new o8254(19000,11,true,true)]);
      
      public static const o19481:Vector.<o8254> = Vector.<o8254>([new o8254(90,10,false,false),new o8254(205,13,false,false),new o8254(275,10,false,true),new o8254(410,13,false,true),new o8254(550,14,false,false),new o8254(800,11,false,false),new o8254(1100,14,false,true),new o8254(1600,11,false,true),new o8254(1800,10,true,false),new o8254(2500,13,true,false),new o8254(3600,10,true,true),new o8254(5000,13,true,true),new o8254(6000,14,true,false),new o8254(9500,11,true,false),new o8254(12000,14,true,true),new o8254(19000,11,true,true)]);
       
      
      public function o17439()
      {
         super();
      }
      
      public static function o2586(param1:int) : Class
      {
         return o4519.o8116.o20291[o12681[param1]];
      }
      
      public static function o17050(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < o18061.length)
         {
            if(param1 == o18061[_loc2_])
            {
               return true;
            }
            _loc2_++;
         }
         if(param1 == 16)
         {
            return true;
         }
         return false;
      }
      
      public static function o18691(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < o6903.length)
         {
            if(param1 == o6903[_loc2_])
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
   }
}
