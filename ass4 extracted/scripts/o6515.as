package
{
   import flash.display.Sprite;
   
   public class o6515 extends Sprite
   {
       
      
      public function o6515()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19379;
      }
   }
}

import flash.utils.ByteArray;

class o19379 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o8809,o13351.o10420,"Enemy Type (as per this script)"],[2,o17243.o8809,o13351.o10420,"Enemy Count"],[3,o17243.float,o13351.o10420,"Spawn Interval"],[4,o17243.o14773,o13351.o5585,"Refill"],[5,o17243.o14773,o13351.o5585,"Cant Walk"]];
    
   
   private var o19505:o3047;
   
   private var o18948:Class;
   
   private var o5959:int = 0;
   
   private var o2658:int = 0;
   
   private var o7480:Boolean = false;
   
   private var o10624:Boolean = false;
   
   function o19379()
   {
      o19505 = this;
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o949(param1);
      var _loc5_:int = param2.readInt();
      o5959 = param2.readInt();
      var _loc4_:Number = param2.readFloat();
      o7480 = param2.readBoolean();
      o10624 = param2.readBoolean();
      var _loc3_:Vector.<String> = Vector.<String>(["com.ninjakiwi.sas4.scripts.enemies.SlowZombie","com.ninjakiwi.sas4.scripts.enemies.FasterZombie","com.ninjakiwi.sas4.scripts.enemies.Spitter","com.ninjakiwi.sas4.scripts.enemies.RunnerZombie","com.ninjakiwi.sas4.scripts.enemies.FatZombie","com.ninjakiwi.sas4.scripts.enemies.ShieldedZombie","com.ninjakiwi.sas4.scripts.enemies.ZombDroidServant","com.ninjakiwi.sas4.scripts.enemies.ZombDroidSoldier","com.ninjakiwi.sas4.scripts.enemies.Worm","com.ninjakiwi.sas4.scripts.enemies.SpewWorm","com.ninjakiwi.sas4.scripts.enemies.Regurgitator","com.ninjakiwi.sas4.scripts.enemies.Repatitis","com.ninjakiwi.sas4.scripts.enemies.ZombieMech","com.ninjakiwi.sas4.scripts.enemies.Wicker","com.ninjakiwi.sas4.scripts.enemies.Devastator","com.ninjakiwi.sas4.scripts.enemies.RepatitisJunior","com.ninjakiwi.sas4.scripts.enemies.Loaderbot"]);
      o18948 = o4519.o8116.o20291[_loc3_[_loc5_]];
      o1051.o4767(o19505,_loc4_,o4252,10000000,true);
   }
   
   private function o4252() : void
   {
      var _loc1_:* = null;
      if(o2658 < o5959 || o7480 && o4519.o8116.o2996.o20698(o18948).length < o5959)
      {
         _loc1_ = o3370(o18948);
         if(_loc1_ && o10624)
         {
            _loc1_.o3843 = 0;
            _loc1_.o3478 = 0;
         }
         o2658 = Number(o2658) + 1;
      }
   }
}
