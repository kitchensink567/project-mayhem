package
{
   import flash.display.Sprite;
   
   public class o4416 extends Sprite
   {
       
      
      public function o4416()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19374;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o19374 extends o2936
{
    
   
   private const o17609:int = 100;
   
   private const o9787:int = 101;
   
   private const o5697:int = 102;
   
   private var o6504:int = 0;
   
   private var o2197:int = 0;
   
   private var o11234:int = 1;
   
   private var o2908:int = 0;
   
   private var o5801:String;
   
   private var o17057:int = -1;
   
   private var o7134:int = -1;
   
   public var o11257:Vector.<o18509> = null;
   
   private var o4394:o16123;
   
   private var o8121:o16123;
   
   private var o19862:o16123;
   
   function o19374()
   {
      o5801 = "dialogMessage.contractMessages.zombieHotspotMessages.";
      o4394 = new o16123(0);
      o8121 = new o16123(0);
      o19862 = new o16123(1);
      super();
   }
   
   private function get o1312() : int
   {
      return o4394.value;
   }
   
   private function set o1312(param1:int) : void
   {
      o4394.value = param1;
   }
   
   private function get o3920() : int
   {
      return o8121.value;
   }
   
   private function set o3920(param1:int) : void
   {
      o8121.value = param1;
   }
   
   private function get o3878() : int
   {
      return o19862.value;
   }
   
   private function set o3878(param1:int) : void
   {
      o19862.value = param1;
   }
   
   override public function o16955(param1:* = null) : void
   {
      o11257 = new Vector.<o18509>();
      super.o16955(param1);
   }
   
   override public function o1648(param1:Event) : void
   {
      o19021 = o11257;
      o1585 = 3;
      super.o13087(21);
      super.o1648(param1);
   }
   
   override public function o6266() : void
   {
      o6468 = "Contract: Zombie Hotspot";
      o2861 = "Kill as many zombies as fast as you can and earn bonus XP!";
      o16836 = o10841.o18292;
      super.o6266();
   }
   
   override public function o240() : void
   {
      o12891.o19505.o20794(true);
      o18440(0,-1,"Zombies Killed: " + o3920);
      o10929(2,o5801 + "newWaveSpawned0");
      o16226(11);
      o3047.o2154.o16280(this,o8694.o2412,o15490);
      super.o240();
   }
   
   override public function o7664() : void
   {
      super.o7664();
   }
   
   override public function o7614() : void
   {
      var _loc1_:* = Number(o3878 / o10841.o9616);
      this.o12982 = true;
      var _loc2_:int = o4519.o32.o7211 / o10841.o4915 * (o10841.o4915 - 1);
      o17164 = "You earned " + o16724.o10417(_loc2_) + " bonus XP!";
      if(_loc1_ > 1)
      {
         _loc1_ = 1;
      }
      this.o3850 = _loc1_;
      if(o3920 > o1312)
      {
         o3920 = o1312;
      }
      o12891.o19505.o16481("Contract: Zombie Hotspot","Wave: " + o3878 + "! Zombies Killed: " + o3920 + "/" + o1312);
      o2194 = true;
      super.o7614();
   }
   
   override public function o441() : void
   {
      o12891.o19505.o19931();
      super.o441();
   }
   
   override public function o13420() : void
   {
      super.o13420();
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      param2.position = 0;
      var _loc3_:int = param2.readByte();
      switch(int(_loc3_) - 100)
      {
         case 0:
            if(param2.readInt() > o1312)
            {
               o1312 = Number(o1312) + 1;
            }
            break;
         case 1:
            if(param2.readInt() > o3920)
            {
               o3920 = Number(o3920) + 1;
               o18440(o3920,-1,"Zombies Killed: ");
            }
            break;
         case 2:
            if(param2.readInt() > o3878)
            {
               o3878 = Number(o3878) + 1;
            }
      }
   }
   
   public function o17531(param1:int, param2:int) : void
   {
      var _loc3_:ByteArray = new ByteArray();
      _loc3_.writeByte(param1);
      _loc3_.writeInt(param2);
      dispatchData(new o2149(this,_loc3_));
   }
   
   protected function o12349(param1:Event) : void
   {
      if(o5525)
      {
         return;
      }
      if(o7134 == -1)
      {
         o14200.o19505.o202.o1526("+XP",o4519.o32);
         o7134 = o1051.o9310(this,0.5,o4920);
      }
      o2197 = Number(o2197) + 1;
      o17531(101,o2197);
   }
   
   private function o4920() : void
   {
      o1051.o19115(o7134);
      o7134 = -1;
   }
   
   private function o15490(param1:o6961) : void
   {
      var _loc2_:o18442 = param1.o18481;
      if(_loc2_ && _loc2_.type == 8)
      {
         o6504 = Number(o6504) + 1;
         o17531(100,o6504);
         _loc2_.o16280(this,o14571.o19115,o12349);
      }
   }
   
   override protected function o6249(param1:o18442) : void
   {
      if(o5525)
      {
         o4519.o8116.o8361.o5725(param1,o4016.o10062().initialise(999999999,1,param1));
         return;
      }
      o6504 = Number(o6504) + 1;
      param1.o16280(this,o14571.o19115,o12349);
      param1.o20133 = param1.o20133 * o10841.o4915;
      param1.o6691.scaleX = param1.o6691.scaleX * 1.2;
      param1.o6691.scaleY = param1.o6691.scaleY * 1.2;
      param1.o2171(1.2);
      param1.o15681(1.2);
      param1.o1918 = 0;
      o17531(100,o6504);
      param1.body.o13392(o12431(o19021,param1.o5973));
      if(o14200.o19505.o202.o15222 == 1119 && param1.o18200)
      {
         param1.o6691.o16990 = o11381.o5032;
      }
   }
   
   override public function o1221() : void
   {
      if(o5525)
      {
         return;
      }
      o11234 = Number(o11234) + 1;
      o17531(102,o6504);
      o10929(2,o5801 + "newWaveSpawned" + o2908);
      if(o2908 < 3)
      {
         o2908 = Number(o2908) + 1;
      }
      else
      {
         o2908 = 0;
      }
      super.o1221();
   }
   
   override protected function o10158() : void
   {
      var _loc1_:int = 0;
      var _loc3_:* = null;
      if(o5438)
      {
         _loc1_ = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o5438;
         for each(var _loc2_ in o5438)
         {
            _loc1_ = _loc1_ + _loc2_.o17334();
         }
         _loc3_ = o4519.o8116.o2996.o20698(o18442).concat();
         if(_loc3_)
         {
            _loc1_ = _loc1_ + _loc3_.length;
         }
         if(_loc1_ <= o10841.o2954)
         {
            o1051.o19115(o20467);
            o13096 = o1051.o9310(this,5,o1221);
            return;
         }
      }
   }
   
   override protected function o18191() : void
   {
      o18440(o3920,-1,"Zombies Killed: ");
      super.o18191();
   }
   
   override public function o19115() : void
   {
      if(this.o5836)
      {
         return;
      }
      o1051.o19115(o17057);
      o1051.o19115(o7134);
      super.o19115();
   }
}
