package
{
   import flash.display.Sprite;
   
   public class o6614 extends Sprite
   {
       
      
      public function o6614()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o3827;
      }
   }
}

import flash.utils.ByteArray;

class o3827 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"Trigger Zone"],[2,o17243.float,o13351.o5585,"Enemy Count (SlowZombie)"],[3,o17243.float,o13351.o5585,"Enemy Count (FasterZombie)"],[4,o17243.float,o13351.o5585,"Enemy Count (Spitter)"],[5,o17243.float,o13351.o5585,"Enemy Count (RunnerZombie)"],[6,o17243.float,o13351.o5585,"Enemy Count (FatZombie)"],[7,o17243.float,o13351.o5585,"Enemy Count (ShieldedZombie)"],[8,o17243.float,o13351.o5585,"Enemy Count (ZombDroidServant)"],[9,o17243.float,o13351.o5585,"Enemy Count (ZombDroidSoldier)"],[10,o17243.float,o13351.o5585,"Enemy Count (Worm)"],[11,o17243.o8809,o13351.o5585,"Closest Clamp"],[12,o17243.o8809,o13351.o5585,"Max Count"],[13,o17243.float,o13351.o5585,"Delay"],[14,o17243.o14773,o13351.o5585,"passive"]];
    
   
   private var o1336:int = 0;
   
   private var o4961:int = 0;
   
   private var delay:Number = 0;
   
   private var o1267:Boolean = false;
   
   private var o406:o10262;
   
   private var o5959:Array;
   
   function o3827()
   {
      o5959 = [];
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc7_:int = 0;
      var _loc8_:* = null;
      var _loc3_:* = null;
      var _loc5_:int = param2.readShort();
      _loc7_ = 0;
      while(_loc7_ < 9)
      {
         o5959[_loc7_] = param2.readFloat();
         _loc7_++;
      }
      o1336 = param2.readInt();
      o4961 = param2.readInt();
      delay = param2.readFloat();
      o1267 = param2.readBoolean();
      o406 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc4_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc5_].o6041[0].id);
      var _loc9_:Vector.<Vector.<o18509>> = o12075.o7521(_loc4_);
      var _loc11_:int = 0;
      var _loc10_:* = _loc9_;
      for each(var _loc6_ in _loc9_)
      {
         _loc8_ = new o17761(o406.o2535);
         _loc8_.o14486(_loc6_);
         _loc3_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365,o17517.o6365,true);
         _loc3_.o10289 = _loc8_.id;
         o406.o14230(_loc3_);
      }
      o406.o16280(this,o8273.o7087,o46);
      this.o949(param1);
   }
   
   private function o46(param1:o663) : void
   {
      o406.o12657(o8273.o7087,o46);
      o1051.o9310(this,delay,o15661);
   }
   
   private function o15661() : void
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
         o3370(_loc1_[_loc3_].o18948,_loc1_[_loc3_].grade,new o18509(position.x + (o20384.random() * 100 - 50),position.y + (o20384.random() * 100 - 50)),!!o1267?1:0);
         _loc3_++;
      }
   }
}
