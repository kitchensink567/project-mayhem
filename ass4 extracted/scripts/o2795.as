package
{
   import flash.display.Sprite;
   
   public class o2795 extends Sprite
   {
       
      
      public function o2795()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8831;
      }
   }
}

import assets.ui.MiniMapArrowEdge;
import assets.ui.VIPMarker;
import flash.events.Event;
import flash.utils.ByteArray;

class o8831 extends o2936
{
    
   
   public const o9254:int = 100;
   
   public const o17039:int = 101;
   
   public var o6022:Vector.<o161> = null;
   
   public var o4002:Vector.<o18509> = null;
   
   public var o19861:Vector.<o19370> = null;
   
   public var o9831:Vector.<o18509> = null;
   
   public var o17318:o18509 = null;
   
   private var o10463:o7848 = null;
   
   private var o11539:Boolean = false;
   
   private var o20771:int = 0;
   
   private var o13939:int = 0;
   
   private var o5801:String;
   
   private var o11439:int = -1;
   
   private var o17057:int = -1;
   
   function o8831()
   {
      o5801 = "dialogMessage.contractMessages.supportWeaponsShipmentMessages.";
      super();
   }
   
   override public function o16955(param1:* = null) : void
   {
      o4002 = new Vector.<o18509>();
      o9831 = new Vector.<o18509>();
      o19861 = new Vector.<o19370>();
      super.o16955(param1);
   }
   
   override public function o1648(param1:Event) : void
   {
      var _loc2_:int = 0;
      o4519.o13206.o17723 = true;
      o6022 = new Vector.<o161>();
      _loc2_ = 0;
      while(_loc2_ < o4002.length)
      {
         o6022.push(new o161(_loc2_,new o18509(o4002[_loc2_].x,o4002[_loc2_].y)));
         _loc2_++;
      }
      o10463 = o4519.o8116.o2996.o2998(o14728,[o8723.o20122],this.o5973 + 10000000 - 1);
      o10463.o6691.position.x = o17318.x;
      o10463.o6691.position.y = o17318.y;
      o1585 = 3;
      super.o13087(21);
      super.o1648(param1);
   }
   
   override public function o6266() : void
   {
      var _loc1_:* = null;
      o6468 = "Contract: Support Weapons Shipment";
      o2861 = "[" + o18230 + "] Defend the crates from the zombies!";
      var _loc4_:int = 0;
      var _loc3_:* = o6022;
      for each(var _loc2_ in o6022)
      {
         o20771 = Number(o20771) + 1;
         _loc1_ = new ByteArray();
         _loc1_.writeByte(100);
         _loc1_.writeInt(o20771);
         dispatchData(new o2149(this,_loc1_,true,false,20000 + o20771));
      }
      o16836 = o10841.o15071;
      super.o6266();
   }
   
   override public function o240() : void
   {
      var _loc3_:int = 0;
      var _loc2_:* = o19861;
      for each(var _loc1_ in o19861)
      {
         _loc1_.o14070();
      }
      o16226(11);
      o12891.o19505.o20794(true);
      o18440(o19861.length,o19861.length,"Crates Remaining: ");
      o10929(2,o5801 + "firstWaveSpawned");
      super.o240();
   }
   
   override public function o7664() : void
   {
      if(o11539 && o574() <= 0)
      {
         o10467(8);
      }
      super.o7664();
   }
   
   override public function o7614() : void
   {
      var _loc3_:int = 0;
      var _loc2_:int = 0;
      var _loc8_:int = 0;
      var _loc7_:* = o19861;
      for each(var _loc1_ in o19861)
      {
         _loc1_.o18883();
         _loc1_.o2605(true);
      }
      o8922();
      var _loc4_:Array = o4519.o8116.o2996.o20698(o18442).concat();
      _loc3_ = 0;
      while(_loc3_ < _loc4_.length)
      {
         if(_loc4_[_loc3_])
         {
            _loc4_[_loc3_].o13696.splice(0,_loc4_.length - 1);
            _loc4_[_loc3_].o13696.push(o17517);
         }
         _loc3_++;
      }
      var _loc5_:int = o574();
      var _loc6_:* = 1;
      if(_loc5_ > 0)
      {
         _loc6_ = Number(_loc5_ / o19861.length);
         if(_loc6_ > 1)
         {
            _loc6_ = 1;
         }
      }
      if(!o18879)
      {
         _loc2_ = _loc6_ * o9831.length;
         o11439 = o1051.o4767(this,0.5,o16963,_loc2_);
      }
      o3850 = _loc6_;
      if(!o18879)
      {
         o12891.o19505.o16481("Contract: Support Weapons Shipment",o18230 + " crates successfully defended: " + _loc5_);
      }
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
   
   override public function o1221() : void
   {
      o10929(2,o5801 + "newWaveSpawned");
      super.o1221();
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      param2.position = 0;
      var _loc3_:int = param2.readByte();
      switch(int(_loc3_) - 100)
      {
         case 0:
            o17962(param2.readInt());
            break;
         case 1:
            o19743(param2.readInt());
      }
   }
   
   override protected function o18191() : void
   {
      o18440(o574(),o19861.length,"Crates Remaining: ");
      super.o18191();
   }
   
   private function o17962(param1:int) : void
   {
      var _loc2_:* = null;
      if(o4519.o8116.o2996.o16775(this.o5973 + 10000 + param1) == null)
      {
         _loc2_ = o19370(o4519.o8116.o2996.o2998(o19370,[this,new o18509(o4002[param1 - 1].x,o4002[param1 - 1].y)],this.o5973 + 10000 + param1));
         o19861.push(_loc2_);
         o6022[param1 - 1].o18205 = true;
         o11539 = true;
      }
   }
   
   private function o19743(param1:int) : void
   {
      var _loc4_:int = 0;
      var _loc3_:Boolean = false;
      var _loc2_:o19370 = o15859(param1);
      if(_loc2_)
      {
         _loc2_.o5878();
         _loc3_ = true;
      }
      else
      {
         trace("Error: Could not find pallet with stateId (" + param1 + ") - Apparently it was killed");
      }
      if(_loc3_)
      {
         _loc4_ = o574();
         if(_loc4_ >= 1)
         {
            o10929(2,o5801 + "crateDestroyed");
         }
         else
         {
            o10929(2,o5801 + "allCratesDestroyed");
         }
         o18440(_loc4_,o19861.length,"Crates Remaining: ");
      }
   }
   
   private function o15859(param1:int) : o19370
   {
      var _loc2_:int = 0;
      _loc2_ = 0;
      while(_loc2_ < o19861.length)
      {
         if(o19861[_loc2_].o5973 == param1)
         {
            return o19861[_loc2_];
         }
         _loc2_++;
      }
      return null;
   }
   
   private function o574() : int
   {
      var _loc2_:int = 0;
      var _loc4_:int = 0;
      var _loc3_:* = o19861;
      for each(var _loc1_ in o19861)
      {
         if(_loc1_.o10210())
         {
            _loc2_++;
         }
      }
      return _loc2_;
   }
   
   private function o16963() : void
   {
      var _loc1_:* = null;
      var _loc2_:* = null;
      if(o13939 >= o9831.length)
      {
         o1051.o19115(o11439);
         return;
      }
      var _loc3_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DropSpecificLoot"];
      if(o4519.o8116.random.o10418(this.o5973 + o13939) >= 0.7)
      {
         _loc1_ = o4519.o8116.o2996.o2998(_loc3_,[o9831[o13939],o19053.o15635,1,o2487]) as o6743;
      }
      else if(o4519.o8116.random.o10418(this.o5973 + o13939) >= 0.5)
      {
         _loc2_ = o4519.o8116.o2996.o2998(_loc3_,[o9831[o13939],o19053.o15724,5 + Math.random() * 100 % 5]) as o6743;
      }
      else
      {
         _loc2_ = o4519.o8116.o2996.o2998(_loc3_,[o9831[o13939],o19053.o15724,5 + Math.random() * 100 % 5]) as o6743;
      }
      o13939 = Number(o13939) + 1;
   }
   
   override protected function o6249(param1:o18442) : void
   {
      if(!o5525 && o4519.o8116.random.o10418(param1.o5973) >= 0.5)
      {
         param1.o13696.push(o19370);
      }
      super.o6249(param1);
   }
   
   public function o17518(param1:int, param2:o19370) : void
   {
      var _loc3_:ByteArray = new ByteArray();
      _loc3_.writeByte(param1);
      _loc3_.writeInt(param2.o5973);
      dispatchData(new o2149(this,_loc3_));
   }
   
   private function o8922() : void
   {
      if(!o10463)
      {
         return;
      }
      o10463.o6691.position.x = o17318.x;
      o10463.o6691.position.y = o17318.y;
      o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdge(),o10463);
      o10463.o6691.o9824 = false;
   }
   
   private function o16045() : void
   {
      o12891.o19505.o16587.o18312(o10463);
   }
   
   override public function o19115() : void
   {
      if(this.o5836)
      {
         return;
      }
      var _loc4_:int = 0;
      var _loc3_:* = o19861;
      for each(var _loc2_ in o19861)
      {
         if(_loc2_)
         {
            _loc2_.o19115();
            _loc2_ = null;
         }
      }
      var _loc6_:int = 0;
      var _loc5_:* = o6022;
      for each(var _loc1_ in o6022)
      {
         if(_loc1_)
         {
            _loc1_.o19115();
            _loc1_ = null;
         }
      }
      if(o10463)
      {
         o10463.o19115();
      }
      o19861 = null;
      o9831 = null;
      o10463 = null;
      o17318 = null;
      o4002 = null;
      o6022 = null;
      o1051.o19115(o11439);
      o1051.o19115(o17057);
      super.o19115();
   }
}
