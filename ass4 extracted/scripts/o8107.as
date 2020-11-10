package
{
   import flash.display.Sprite;
   
   public class o8107 extends Sprite
   {
       
      
      public function o8107()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o10251;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o10251 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"Trigger Zone"],[2,o17243.float,o13351.o5585,"Enemy Count (SlowZombie)"],[3,o17243.float,o13351.o5585,"Enemy Count (FasterZombie)"],[4,o17243.float,o13351.o5585,"Enemy Count (Spitter)"],[5,o17243.float,o13351.o5585,"Enemy Count (RunnerZombie)"],[6,o17243.float,o13351.o5585,"Enemy Count (FatZombie)"],[7,o17243.float,o13351.o5585,"Enemy Count (ShieldedZombie)"],[8,o17243.float,o13351.o5585,"Enemy Count (ZombDroidServant)"],[9,o17243.float,o13351.o5585,"Enemy Count (ZombDroidSoldier)"],[10,o17243.float,o13351.o5585,"Enemy Count (Worm)"],[11,o17243.o8809,o13351.o5585,"Closest Clamp"],[12,o17243.o8809,o13351.o5585,"Max Count"],[13,o17243.float,o13351.o5585,"Time Between Spawns"],[14,o17243.o14773,o13351.o5585,"Turn off on Boss Death"],[15,o17243.o8809,o13351.o5585,"Boss ID"]];
    
   
   private var o1336:int = 0;
   
   private var o4961:int = 0;
   
   private var delay:Number = 0;
   
   private var o17574:Number = 0;
   
   private var o406:o10262;
   
   private var o10799:int = 0;
   
   private var o5959:Array;
   
   private var o100:int = 0;
   
   private var o4985:int = 0;
   
   function o10251()
   {
      o5959 = [];
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc8_:int = 0;
      var _loc9_:* = null;
      var _loc4_:* = null;
      var _loc6_:int = param2.readShort();
      _loc8_ = 0;
      while(_loc8_ < 9)
      {
         o5959[_loc8_] = param2.readFloat();
         _loc8_++;
      }
      o1336 = param2.readInt();
      o4961 = param2.readInt();
      delay = param2.readFloat();
      o406 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc6_].o6041[0].id);
      var _loc10_:Vector.<Vector.<o18509>> = o12075.o7521(_loc5_);
      var _loc12_:int = 0;
      var _loc11_:* = _loc10_;
      for each(var _loc7_ in _loc10_)
      {
         _loc9_ = new o17761(o406.o2535);
         _loc9_.o14486(_loc7_);
         _loc4_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365,o17517.o6365,true);
         _loc4_.o10289 = _loc9_.id;
         o406.o14230(_loc4_);
      }
      o406.o16280(this,o8273.o7087,o46);
      var _loc3_:Boolean = param2.readBoolean();
      if(_loc3_)
      {
         o3047.o2154.o16280(this,o8694.o2412,o2412);
      }
      o10799 = param2.readInt();
   }
   
   private function o2412(param1:o6961) : void
   {
      o100 = Number(o100) + 1;
      var _loc2_:o18442 = param1.o18481;
      if(_loc2_.o12555 & o10799)
      {
         _loc2_.o16280(this,o14571.o19115,o10014);
      }
   }
   
   private function o10014(param1:Event) : void
   {
      o100 = Number(o100) - 1;
      if(o100 <= 0)
      {
         o1422();
      }
   }
   
   private function o1422() : void
   {
      o1051.o19115(o4985);
      o4985 = -1;
   }
   
   private function o46(param1:o663) : void
   {
      o406.o12657(o8273.o7087,o46);
      o4985 = o1051.o4767(this,delay,o19513);
   }
   
   private function o19513() : void
   {
      var _loc3_:int = 0;
      var _loc2_:Vector.<o13304> = new Vector.<o13304>();
      _loc3_ = 0;
      while(_loc3_ < 9)
      {
         if(o5959[_loc3_] > 0)
         {
            _loc2_.push(new o13304(_loc3_,o5959[_loc3_]));
         }
         _loc3_++;
      }
      var _loc1_:Vector.<o20743> = o10176.o10383(_loc2_,o1336,0);
      _loc3_ = 0;
      while(_loc3_ < _loc1_.length)
      {
         o3370(_loc1_[_loc3_].o18948,_loc1_[_loc3_].grade,new o18509(position.x + (o20384.random() * 100 - 50),position.y + (o20384.random() * 100 - 50)),0);
         _loc3_++;
      }
   }
}
