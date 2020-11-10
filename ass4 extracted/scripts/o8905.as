package
{
   import flash.display.Sprite;
   
   public class o8905 extends Sprite
   {
       
      
      public function o8905()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o10733;
      }
   }
}

import flash.utils.ByteArray;

class o10733 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"Trigger on Zone"],[2,o17243.o2013,o13351.o10420,"Trigger off Zone"],[3,o17243.float,o13351.o5585,"Enemy Count (SlowZombie)"],[4,o17243.float,o13351.o5585,"Enemy Count (FasterZombie)"],[5,o17243.float,o13351.o5585,"Enemy Count (Spitter)"],[6,o17243.float,o13351.o5585,"Enemy Count (RunnerZombie)"],[7,o17243.float,o13351.o5585,"Enemy Count (FatZombie)"],[8,o17243.float,o13351.o5585,"Enemy Count (ShieldedZombie)"],[9,o17243.float,o13351.o5585,"Enemy Count (ZombDroidServant)"],[10,o17243.float,o13351.o5585,"Enemy Count (ZombDroidSoldier)"],[11,o17243.float,o13351.o5585,"Enemy Count (Worm)"],[12,o17243.o8809,o13351.o5585,"Closest Clamp"],[13,o17243.o8809,o13351.o5585,"Max Count"],[14,o17243.float,o13351.o5585,"Time Between Spawns"]];
    
   
   private var o1336:int = 0;
   
   private var o4961:int = 0;
   
   private var delay:Number = 0;
   
   private var o16085:o10262;
   
   private var o2593:o10262;
   
   public var o9079:int = 0;
   
   private var o5959:Array;
   
   function o10733()
   {
      o5959 = [];
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc7_:int = 0;
      var _loc8_:* = null;
      var _loc4_:* = null;
      var _loc10_:int = param2.readShort();
      var _loc3_:int = param2.readShort();
      _loc7_ = 0;
      while(_loc7_ < 9)
      {
         o5959[_loc7_] = param2.readFloat();
         _loc7_++;
      }
      o1336 = param2.readInt();
      o4961 = param2.readInt();
      delay = param2.readFloat();
      o16085 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc10_].o6041[0].id);
      var _loc9_:Vector.<Vector.<o18509>> = o12075.o7521(_loc5_);
      var _loc12_:int = 0;
      var _loc11_:* = _loc9_;
      for each(var _loc6_ in _loc9_)
      {
         _loc8_ = new o17761(o16085.o2535);
         _loc8_.o14486(_loc6_);
         _loc4_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365,o17517.o6365,true);
         _loc4_.o10289 = _loc8_.id;
         o16085.o14230(_loc4_);
      }
      o16085.o16280(this,o8273.o7087,o46);
      o2593 = o4519.o8116.o9869.o1968(0,0,false);
      _loc5_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc3_].o6041[0].id);
      _loc9_ = o12075.o7521(_loc5_);
      var _loc14_:int = 0;
      var _loc13_:* = _loc9_;
      for each(_loc6_ in _loc9_)
      {
         _loc8_ = new o17761(o2593.o2535);
         _loc8_.o14486(_loc6_);
         _loc4_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365,o17517.o6365,true);
         _loc4_.o10289 = _loc8_.id;
         o2593.o14230(_loc4_);
      }
      o2593.o16280(this,o8273.o7087,o10880);
   }
   
   private function o46(param1:o663) : void
   {
      o16085.o12657(o8273.o7087,o46);
      o9079 = o1051.o4767(this,delay,o19513);
   }
   
   private function o10880(param1:o663) : void
   {
      o2593.o12657(o8273.o7087,o10880);
      o1051.o19115(o9079);
   }
   
   private function o19513() : void
   {
      var _loc4_:int = 0;
      var _loc3_:* = null;
      var _loc2_:Vector.<o13304> = new Vector.<o13304>();
      _loc4_ = 0;
      while(_loc4_ < 9)
      {
         if(o5959[_loc4_] > 0)
         {
            _loc2_.push(new o13304(_loc4_,o5959[_loc4_]));
         }
         _loc4_++;
      }
      var _loc1_:Vector.<o20743> = o10176.o10383(_loc2_,o1336,0);
      _loc4_ = 0;
      while(_loc4_ < _loc1_.length)
      {
         _loc3_ = o3370(_loc1_[_loc4_].o18948,_loc1_[_loc4_].grade,new o18509(position.x + (Math.random() * 100 - 50),position.y + (Math.random() * 100 - 50)));
         if(_loc3_ != null)
         {
            _loc3_.o2840 = 0;
         }
         _loc4_++;
      }
   }
}
