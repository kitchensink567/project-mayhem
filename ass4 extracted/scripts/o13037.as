package
{
   import flash.display.Sprite;
   
   public class o13037 extends Sprite
   {
       
      
      public function o13037()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8217;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o8217 extends o2936
{
    
   
   private const o11863:int = 10000;
   
   private const o10042:int = 100;
   
   private const o14588:int = 101;
   
   public var o6645:Vector.<o18509>;
   
   public var o6019:o18509;
   
   private var o16461:Vector.<o4268>;
   
   private var o12632 = null;
   
   private var o11955:int = 0;
   
   private var o16267:int = -1;
   
   private const o8644:int = 4;
   
   private const o12720:Number = 0.75;
   
   private var o2328:o16123;
   
   private var o5737:o16123;
   
   private var o3708:o16123;
   
   private var o16790:o16123;
   
   private var o5399:int = 0;
   
   function o8217()
   {
      o2328 = new o16123(0);
      o5737 = new o16123(0);
      o3708 = new o16123(0);
      o16790 = new o16123(0);
      super();
   }
   
   public function get o1367() : int
   {
      return o2328.value;
   }
   
   public function set o1367(param1:int) : void
   {
      o2328.value = param1;
   }
   
   public function get o18185() : int
   {
      return o5737.value;
   }
   
   public function set o18185(param1:int) : void
   {
      o5737.value = param1;
   }
   
   public function get o20106() : int
   {
      return o3708.value;
   }
   
   public function set o20106(param1:int) : void
   {
      o3708.value = param1;
   }
   
   public function get o14309() : int
   {
      return o16790.value;
   }
   
   public function set o14309(param1:int) : void
   {
      o16790.value = param1;
   }
   
   override public function o16955(param1:* = null) : void
   {
      o6645 = new Vector.<o18509>();
      o16461 = new Vector.<o4268>();
      o6019 = new o18509();
      super.o16955(param1);
   }
   
   override public function o1648(param1:Event) : void
   {
      super.o13087(23);
      super.o1648(param1);
   }
   
   override public function o6266() : void
   {
      o6468 = "Contract: Equipment Salvage";
      o2861 = "Collect as much salvage from the zombies as possible!";
      o16836 = o10841.o4664;
      super.o6266();
   }
   
   override public function o240() : void
   {
      o12891.o19505.o20794(true);
      o18440(0,-1,"Salvage collected: ");
      o16226(11);
      super.o240();
   }
   
   override public function o7664() : void
   {
      super.o7664();
   }
   
   override public function o7614() : void
   {
      var _loc5_:int = 0;
      var _loc4_:* = o16461;
      for each(var _loc1_ in o16461)
      {
         _loc1_.o14322(false);
      }
      var _loc3_:o15787 = new o15787(o1367 / (o20106 * 0.45));
      var _loc2_:o16123 = new o16123(Math.ceil(o6645.length * _loc3_.value));
      this.o3850 = _loc3_.value;
      o16267 = o1051.o4767(this,0.5,o20499,_loc2_.value);
      o12891.o19505.o20794(true);
      o18440(o1367,-1,"Salvage collected: ");
      o12891.o19505.o16481("Contract Complete!","Salvage collected: " + o1367 + " Rating: " + (Math.ceil(_loc3_.value * 100) > 100?100:Math.ceil(_loc3_.value * 100)) + "%");
      o14200.o19505.o7923.o10005 = o14309;
      super.o7614();
   }
   
   override public function o441() : void
   {
      o12891.o19505.o19931();
      var _loc5_:o16123 = new o16123(100);
      var _loc3_:Vector.<o20743> = o10176.o8930(_loc5_.value);
      var _loc2_:int = 1;
      var _loc7_:int = 0;
      var _loc6_:* = _loc3_;
      for each(var _loc1_ in _loc3_)
      {
         o14309 = o14309 + o13800.o13588(this.o5973,_loc1_.o9899,_loc1_.o5751 == 2,_loc1_.grade >= 10);
         _loc2_++;
      }
      o14309 = o14309 * o3850;
      var _loc4_:o16123 = new o16123(15);
      if(o14309 < _loc4_.value)
      {
         o14309 = _loc4_.value;
      }
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
            o18161(param2.readInt());
            break;
         case 1:
            o12619(param2.readInt(),param2.readInt());
      }
   }
   
   override protected function o6249(param1:o18442) : void
   {
      super.o6249(param1);
      if(o5525)
      {
         return;
      }
      o20106 = Number(o20106) + 1;
      if(param1)
      {
         param1.o5988(o10014);
      }
   }
   
   public function o10014(param1:o18442) : void
   {
      if(o5525)
      {
         return;
      }
      if(o4519.o8116.random.o10418(param1.o5973 + param1.grade * 137654) >= 0.75)
      {
         o4057(param1);
      }
   }
   
   private function o4057(param1:o18442) : void
   {
      if(o5525)
      {
         return;
      }
      var _loc2_:o4268 = o4268(o4519.o8116.o2996.o2998(o4268,[this,param1.body.position],this.o5973 + 10000 + o16461.length));
      if(_loc2_)
      {
         o16461.push(_loc2_);
      }
      o6238();
   }
   
   private function o20499() : void
   {
      if(o5399 >= o6645.length)
      {
         o1051.o19115(o16267);
         return;
      }
      var _loc2_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DropSpecificLoot"];
      var _loc1_:o6743 = o4519.o8116.o2996.o2998(_loc2_,[o12431(o6645,o5399),o19053.o10094,1,1]) as o6743;
      o5399 = Number(o5399) + 1;
   }
   
   private function o17722(param1:int) : o4268
   {
      var _loc4_:int = 0;
      var _loc3_:* = o16461;
      for each(var _loc2_ in o16461)
      {
         if(_loc2_.o5973 == param1)
         {
            return _loc2_;
         }
      }
      return null;
   }
   
   override protected function o18191() : void
   {
      o18440(o1367,-1,"Salvage collected: ");
      super.o18191();
   }
   
   private function o6238() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(100);
      _loc1_.writeInt(o18185);
      dispatchData(new o2149(this,_loc1_,true,false));
   }
   
   private function o18161(param1:int) : void
   {
      o18185 = Number(o18185) + 1;
      if(param1 > o18185)
      {
         o18185 = param1;
      }
   }
   
   public function o11361(param1:int) : void
   {
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(101);
      _loc2_.writeInt(param1);
      _loc2_.writeInt(o1367);
      dispatchData(new o2149(this,_loc2_));
   }
   
   private function o12619(param1:int, param2:int) : void
   {
      if(o5525)
      {
         return;
      }
      var _loc3_:o4268 = o17722(param1);
      if(_loc3_)
      {
         _loc3_.o14322();
      }
      o1367 = Number(o1367) + 1;
      if(param2 > o1367)
      {
         o1367 = param2;
      }
      o12891.o19505.o20794(true);
      o18440(o1367,-1,"Salvage collected: ");
   }
   
   override public function o19115() : void
   {
      if(this.o5836)
      {
         return;
      }
      var _loc3_:int = 0;
      var _loc2_:* = o16461;
      for each(var _loc1_ in o16461)
      {
         if(_loc1_)
         {
            _loc1_.o19115();
         }
      }
      o5525 = true;
      o16461 = null;
      o2328 = null;
      o6645 = null;
      o6019 = null;
      o1051.o19115(o16267);
      super.o19115();
   }
}
