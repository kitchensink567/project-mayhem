package
{
   import flash.display.Sprite;
   
   public class o4994 extends Sprite
   {
       
      
      public function o4994()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o16211;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o16211 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.float,o13351.o5585,"Enemy Count (SlowZombie)"],[2,o17243.float,o13351.o5585,"Enemy Count (FasterZombie)"],[3,o17243.float,o13351.o5585,"Enemy Count (Spitter)"],[4,o17243.float,o13351.o5585,"Enemy Count (RunnerZombie)"],[5,o17243.float,o13351.o5585,"Enemy Count (FatZombie)"],[6,o17243.float,o13351.o5585,"Enemy Count (ShieldedZombie)"],[7,o17243.float,o13351.o5585,"Enemy Count (ZombDroidServant)"],[8,o17243.float,o13351.o5585,"Enemy Count (ZombDroidSoldier)"],[9,o17243.float,o13351.o5585,"Enemy Count (Worm)"],[10,o17243.o8809,o13351.o5585,"Closest Clamp"],[11,o17243.o8809,o13351.o5585,"Max Count"],[12,o17243.float,o13351.o5585,"Time Between Spawns"],[13,o17243.o14773,o13351.o5585,"Turn off on Boss Death"],[14,o17243.o8809,o13351.o5585,"Boss ID"],[15,o17243.o8809,o13351.o5585,"special flag ID"],[18,o17243.o14773,o13351.o5585,"spawn first wave on trigger"]];
    
   
   private var o1336:int = 0;
   
   private var o4961:int = 0;
   
   private var delay:Number = 0;
   
   private var o17574:Number = 0;
   
   private var o10799:int = 0;
   
   private var o5959:Array;
   
   private var o12555:int = 0;
   
   private var o12091:Boolean = false;
   
   private var o100:int = 0;
   
   private var o4985:int = 0;
   
   function o16211()
   {
      o5959 = [];
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o8389 = param1;
      o10303 = param2;
      var o1903:int = 0;
      while(o1903 < 9)
      {
         o5959[o1903] = o10303.readFloat();
         o1903 = Number(o1903) + 1;
      }
      o1336 = o10303.readInt();
      o4961 = o10303.readInt();
      delay = o10303.readFloat();
      o17574 = delay * 5;
      var o19505:o3047 = this;
      o4519.o13206.o16280(this,o16450.o17386,function():void
      {
         if(o12091)
         {
            o19513();
         }
         o4985 = o1051.o4767(o19505,delay,o19513);
      });
      var o665:Boolean = o10303.readBoolean();
      if(o665)
      {
         o3047.o2154.o16280(this,o8694.o2412,o2412);
      }
      o100 = 0;
      o10799 = o10303.readInt();
      if(o10303.bytesAvailable > 0)
      {
         o12555 = o10303.readInt();
      }
      if(o10303.bytesAvailable > 0)
      {
         o12091 = o10303.readBoolean();
      }
      this.o949(o8389);
   }
   
   private function o2412(param1:o6961) : void
   {
      var _loc2_:o18442 = param1.o18481;
      if(_loc2_.o12555 == o10799)
      {
         o100 = Number(o100) + 1;
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
      if(o4985 != 0)
      {
         o1051.o19115(o4985);
         o4985 = 0;
      }
   }
   
   private function o19513() : void
   {
      var _loc5_:int = 0;
      var _loc4_:* = null;
      var _loc1_:* = undefined;
      var _loc3_:Vector.<o13304> = new Vector.<o13304>();
      _loc5_ = 0;
      while(_loc5_ < 9)
      {
         if(o5959[_loc5_] > 0)
         {
            _loc3_.push(new o13304(_loc5_,o5959[_loc5_]));
         }
         _loc5_++;
      }
      var _loc2_:Vector.<o20743> = o10176.o10383(_loc3_,o1336,0);
      _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         _loc4_ = new ByteArray();
         _loc4_.writeInt(o4519.o8116.o14443.o20753[_loc2_[_loc5_].o18948]);
         _loc4_.writeInt(_loc2_[_loc5_].grade);
         _loc4_.writeFloat(position.x);
         _loc4_.writeFloat(position.y);
         _loc1_ = this;
         dispatchData(new o2149(_loc1_,_loc4_));
         _loc5_++;
      }
      delay = delay * 1.3;
      if(delay > o17574)
      {
         delay = o17574;
      }
      if(o4985 != -1)
      {
         o1051.o19115(o4985);
         o4985 = o1051.o4767(this,delay,o19513);
      }
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      param2.position = 0;
      var _loc7_:int = param2.readInt();
      var _loc6_:int = param2.readInt();
      var _loc3_:Number = param2.readFloat();
      var _loc5_:Number = param2.readFloat();
      var _loc4_:o18442 = o3370(o4519.o8116.o14443.o8635[_loc7_],_loc6_,new o18509(_loc3_,_loc5_),0,0,false,true,false);
   }
}
