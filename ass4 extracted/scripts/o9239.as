package
{
   import flash.display.Sprite;
   
   public class o9239 extends Sprite
   {
       
      
      public function o9239()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o5057;
      }
   }
}

import flash.utils.ByteArray;

class o5057 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.float,o13351.o5585,"Enemy Count (SlowZombie)"],[3,o17243.float,o13351.o5585,"Enemy Count (FasterZombie)"],[5,o17243.float,o13351.o5585,"Enemy Count (Spitter)"],[7,o17243.float,o13351.o5585,"Enemy Count (RunnerZombie)"],[9,o17243.float,o13351.o5585,"Enemy Count (FatZombie)"],[11,o17243.float,o13351.o5585,"Enemy Count (ShieldedZombie)"],[13,o17243.float,o13351.o5585,"Enemy Count (ZombDroidServant)"],[15,o17243.float,o13351.o5585,"Enemy Count (ZombDroidSoldier)"],[17,o17243.float,o13351.o5585,"Enemy Count (Worm)"],[19,o17243.o8809,o13351.o5585,"Closest Clamp"],[20,o17243.o8809,o13351.o5585,"Max Count"],[21,o17243.float,o13351.o5585,"Delay"],[22,o17243.o14773,o13351.o5585,"Passive"],[23,o17243.o8809,o13351.o5585,"event id"]];
    
   
   private var o1336:int;
   
   private var o4961:int;
   
   private var delay:Number;
   
   private var o1267:Boolean = false;
   
   private var o10551:int = 0;
   
   private var o5959:Array;
   
   function o5057()
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
      o1267 = o10303.readBoolean();
      if(o10303.bytesAvailable > 0)
      {
         o10551 = o10303.readInt();
      }
      super.o949(o8389);
      var o19505:* = this;
      o4519.o13206.o16280(this,o16450.o9745,function():void
      {
         if(o10551 == 0)
         {
            o1051.o9310(o19505,delay,o15661);
         }
         else
         {
            o4519.o13206.o16280(o19505,o8694.o1956,function(param1:o11210):void
            {
               if(param1.o13743 == o10551)
               {
                  o15661();
               }
            });
         }
      });
   }
   
   private function o15661() : void
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
         _loc3_ = o3370(_loc1_[_loc4_].o18948,_loc1_[_loc4_].grade,new o18509(position.x + (o20384.random() * 100 - 50),position.y + (o20384.random() * 100 - 50)),!!o1267?1:0);
         _loc4_++;
      }
   }
}
