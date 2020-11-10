package
{
   import flash.display.Sprite;
   
   public class o190 extends Sprite
   {
       
      
      public function o190()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o1230;
      }
   }
}

import assets.ui.MiniMapArrowEdge;
import assets.ui.VIPMarker;
import flash.events.Event;
import flash.utils.ByteArray;

class o1230 extends o2936
{
    
   
   private const o14551:int = 10000;
   
   private const o8644:int = 4;
   
   public var o18020:int = -1;
   
   public const o10953:int = 100;
   
   public const o138:int = 101;
   
   public const o6901:int = 102;
   
   public const o16183:int = 103;
   
   public const o17997:int = 104;
   
   public const o20295:int = 105;
   
   private var o4199:o7848 = null;
   
   private var o426:o10262 = null;
   
   private var o11955:int = 0;
   
   private var o2048:int = 0;
   
   private var o13939:int = 0;
   
   private var o11745:int = 0;
   
   private var o3472:int = -1;
   
   private var o16267:int = -1;
   
   private var o6509:int = -1;
   
   private var o5801:String;
   
   private var o2455:Boolean = false;
   
   public var o17684:Vector.<o161>;
   
   public var o18852:o18509;
   
   public var o6587:Vector.<o18509>;
   
   public var o16311:Vector.<o18509>;
   
   public var o20535:Vector.<o18509>;
   
   public var o11378:Vector.<o5967>;
   
   public var o20028:Vector.<o5967>;
   
   private var o1006:o16123;
   
   function o1230()
   {
      o5801 = "dialogMessage.contractMessages.supportWeaponsShipmentMessages.";
      o1006 = new o16123(0);
      super();
   }
   
   public function get o10809() : int
   {
      return o1006.value;
   }
   
   public function set o10809(param1:int) : void
   {
      o1006.value = param1;
   }
   
   override public function o16955(param1:* = null) : void
   {
      o18852 = new o18509();
      o6587 = new Vector.<o18509>();
      o16311 = new Vector.<o18509>();
      o20535 = new Vector.<o18509>();
      o20028 = new Vector.<o5967>();
      o11378 = new Vector.<o5967>();
      super.o16955(param1);
   }
   
   override public function o1648(param1:Event) : void
   {
      var _loc2_:int = 0;
      super.o1648(param1);
      super.o13087(23);
      o17684 = new Vector.<o161>();
      _loc2_ = 0;
      while(_loc2_ < o6587.length)
      {
         o17684.push(new o161(_loc2_,new o18509(o6587[_loc2_].x,o6587[_loc2_].y)));
         _loc2_++;
      }
      o426 = o11481(o18020,o8723.trigger,o8723.o9135,o8723.o9135,true);
      o4199 = o4519.o8116.o2996.o2998(o14728,[o8723.o20122],this.o5973 + 10000 - 1);
      o4199.o6691.position.x = o18852.x;
      o4199.o6691.position.y = o18852.y;
   }
   
   override public function o6266() : void
   {
      o6468 = "Contract: Ammo Recovery";
      o2861 = "Carry Ammo Caches to collection zone!";
      o16836 = o10841.o10166;
      super.o6266();
   }
   
   override public function o240() : void
   {
      var _loc1_:* = null;
      var _loc4_:int = 0;
      var _loc3_:* = o17684;
      for each(var _loc2_ in o17684)
      {
         o2048 = Number(o2048) + 1;
         _loc1_ = new ByteArray();
         _loc1_.writeByte(100);
         _loc1_.writeInt(o2048);
         dispatchData(new o2149(this,_loc1_,true,false,50000 + o2048));
      }
      o12891.o19505.o20794(true);
      o18440(0,-1,"Ammo Caches collected: ");
      o3472 = o1051.o9310(this,10,o11498);
      super.o240();
   }
   
   override public function o7664() : void
   {
      super.o7664();
   }
   
   override public function o7614() : void
   {
      o5525 = true;
      var _loc7_:int = 0;
      var _loc6_:* = o11378;
      for each(var _loc1_ in o11378)
      {
         _loc1_.o14322();
         _loc1_.o18883();
         _loc1_.o19115();
      }
      var _loc9_:int = 0;
      var _loc8_:* = o20028;
      for each(_loc1_ in o20028)
      {
         _loc1_.o14322();
         _loc1_.o18883();
         _loc1_.o19115();
      }
      var _loc11_:int = 0;
      var _loc10_:* = o4519.o8116.o2996.o20698(o17517);
      for each(var _loc4_ in o4519.o8116.o2996.o20698(o17517))
      {
      }
      _loc4_.o11568();
      o4519.o32.o11568();
      var _loc3_:int = o17684.length * o10176.o6407() + o17684.length * o10176.o6407();
      var _loc5_:* = 1;
      if(o10809 < _loc3_)
      {
         _loc5_ = Number(o10809 / _loc3_);
      }
      this.o3850 = _loc5_;
      var _loc2_:int = o20535.length * _loc5_;
      o3886(_loc2_);
      o12891.o19505.o16481("Contract: Ammo Recovery","Ammo caches collected: " + o10809 + " Rating: " + Math.ceil(_loc5_ * 100) + "%");
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
            o10185(param2.readInt());
            break;
         case 1:
            o12550(param2.readInt(),param2.readInt());
            break;
         case 2:
            o8342(param2.readInt(),param2.readInt());
            break;
         case 3:
            o3356(param2.readInt(),param2.readInt());
            break;
         case 4:
            o2400();
            break;
         case 5:
            o13562();
      }
   }
   
   override protected function o18191() : void
   {
      o18440(o10809,-1,"Ammo Caches collected: ");
      super.o18191();
   }
   
   private function o5443() : void
   {
      var _loc1_:* = null;
      if(o4415() && !o5525)
      {
         var _loc4_:int = 0;
         var _loc3_:* = o17684;
         for each(var _loc2_ in o17684)
         {
            o2048 = Number(o2048) + 1;
            _loc1_ = new ByteArray();
            _loc1_.writeByte(100);
            _loc1_.writeInt(o2048);
            dispatchData(new o2149(this,_loc1_,true,false,20000 + o2048));
         }
      }
   }
   
   private function o10185(param1:int) : void
   {
      var _loc6_:* = undefined;
      var _loc3_:int = 0;
      var _loc5_:* = null;
      var _loc4_:int = 0;
      var _loc2_:* = null;
      if(o5525)
      {
         return;
      }
      if(o4519.o8116.o2996.o16775(this.o5973 + 10000 + param1) == null)
      {
         _loc6_ = o4611();
         if(_loc6_ == null || _loc6_.length == 0)
         {
            _loc3_ = o4519.o8116.random.o10418(param1) * o20535.length;
            _loc5_ = o6587[_loc3_ % o6587.length];
         }
         else
         {
            _loc3_ = o4519.o8116.random.o10418(param1) * _loc6_.length;
            _loc4_ = _loc6_[_loc3_ % _loc6_.length];
            _loc5_ = o6587[_loc4_];
         }
         _loc2_ = o5967(o4519.o8116.o2996.o2998(o5967,[this,o426,_loc4_,!o4519.o32.o18398()],this.o5973 + 10000 + param1));
         _loc2_.o8564(_loc5_.x,_loc5_.y);
         o17684[_loc4_].o18205 = true;
         o11378.push(_loc2_);
      }
   }
   
   private function o13562() : void
   {
      var _loc1_:* = null;
      var _loc4_:int = 0;
      var _loc3_:* = o17684;
      for each(var _loc2_ in o17684)
      {
         o2048 = Number(o2048) + 1;
         _loc1_ = new ByteArray();
         _loc1_.writeByte(100);
         _loc1_.writeInt(o2048);
         dispatchData(new o2149(this,_loc1_,true,false,30000 + o2048));
      }
   }
   
   private function o5713(param1:int) : void
   {
      switch(int(param1) - 101)
      {
         case 0:
         case 1:
            if(!o4519.o32.o18398() && !o5525)
            {
               var _loc8_:int = 0;
               var _loc7_:* = o11378;
               for each(var _loc2_ in o11378)
               {
                  if(_loc2_.o773() == -1)
                  {
                     _loc2_.o14070();
                  }
               }
               o19207();
            }
            break;
         case 2:
            if(o4519.o32.o18398())
            {
               var _loc4_:int = 0;
               var _loc3_:* = o11378;
               for each(_loc2_ in o11378)
               {
                  _loc2_.o18883();
               }
               o5478();
            }
            else
            {
               var _loc6_:int = 0;
               var _loc5_:* = o11378;
               for each(_loc2_ in o11378)
               {
                  if(_loc2_.o773() != -1)
                  {
                     _loc2_.o18883();
                  }
               }
            }
      }
   }
   
   private function o5478() : void
   {
      if(!o4199)
      {
         return;
      }
      o4199.o6691.position.x = o18852.x;
      o4199.o6691.position.y = o18852.y;
      o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdge(),o4199);
      o4199.o6691.o9824 = false;
   }
   
   private function o19207() : void
   {
      if(o4199)
      {
         o12891.o19505.o16587.o18312(o4199);
      }
   }
   
   private function o3886(param1:int) : void
   {
      if(param1 > 0)
      {
         o16267 = o1051.o4767(this,0.5,o12675,param1);
      }
   }
   
   private function o12675() : void
   {
      if(o13939 >= o20535.length)
      {
         o1051.o19115(o16267);
         return;
      }
      var _loc2_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DropSpecificLoot"];
      var _loc1_:o6743 = o4519.o8116.o2996.o2998(_loc2_,[o20535[o13939],o19053.o14419]) as o6743;
      o13939 = Number(o13939) + 1;
   }
   
   private function o4415() : Boolean
   {
      if(o4611().length == o17684.length && o11378.length < o10841.o6069)
      {
         return true;
      }
      return false;
   }
   
   private function o4611() : Vector.<int>
   {
      var _loc1_:int = 0;
      var _loc2_:Vector.<int> = new Vector.<int>();
      _loc1_ = 0;
      while(_loc1_ < o17684.length)
      {
         if(!o17684[_loc1_].o18205)
         {
            _loc2_.push(o17684[_loc1_].o15943);
         }
         _loc1_++;
      }
      return _loc2_;
   }
   
   private function o3356(param1:int, param2:int) : void
   {
      var _loc3_:o5967 = o10006(param1);
      if(_loc3_ && !o5525)
      {
         _loc3_.o19218(o4178(param2));
         o5713(103);
         o17684[_loc3_.o15943()].reset();
         o5443();
         if(!o2455 && param2 == o4519.o32.o5973)
         {
            o12891.o19505.o16481("Carry the ammo cache back to the drop off point.","",-1);
            o6509 = o1051.o9310(this,5,o17173);
            o11745 = Number(o11745) + 1;
            if(o11745 >= 2)
            {
               o2455 = true;
            }
         }
      }
   }
   
   private function o12550(param1:int, param2:int) : void
   {
      var _loc3_:o5967 = o10006(param1);
      if(_loc3_ && !o5525)
      {
         _loc3_.o19059(o4178(param2));
         o5713(101);
      }
   }
   
   private function o11498() : void
   {
      o16226(11);
   }
   
   private function o8342(param1:int, param2:int) : void
   {
      var _loc4_:* = null;
      var _loc3_:o5967 = o10006(param1);
      if(_loc3_ && !o5525)
      {
         _loc3_.o19340(o4178(param2));
         _loc4_ = new ByteArray();
         _loc4_.writeByte(104);
         dispatchData(new o2149(this,_loc4_));
         o11872(_loc3_);
         o5443();
         o5713(102);
      }
   }
   
   private function o10006(param1:int) : o5967
   {
      var _loc4_:int = 0;
      var _loc3_:* = o11378;
      for each(var _loc2_ in o11378)
      {
         if(_loc2_.o5973 == param1)
         {
            return _loc2_;
         }
      }
      return null;
   }
   
   private function o11872(param1:o5967) : void
   {
      var _loc2_:int = 0;
      if(!param1)
      {
         return;
      }
      _loc2_ = 0;
      while(_loc2_ < o11378.length)
      {
         if(o11378[_loc2_].o5973 == param1.o5973)
         {
            o20028.push(param1);
            o11378.splice(_loc2_,1);
         }
         _loc2_++;
      }
   }
   
   private function o2400() : void
   {
      o10809 = Number(o10809) + 1;
      o12891.o19505.o20794(true);
      o18440(o10809,-1,"Ammo Caches collected: ");
   }
   
   public function o14566(param1:int, param2:o5967, param3:int) : void
   {
      var _loc4_:ByteArray = new ByteArray();
      _loc4_.writeByte(param1);
      _loc4_.writeInt(param2.o5973);
      _loc4_.writeInt(param3);
      dispatchData(new o2149(this,_loc4_));
   }
   
   override public function o19115() : void
   {
      if(this.o5836)
      {
         return;
      }
      var _loc4_:int = 0;
      var _loc3_:* = o11378;
      for each(var _loc2_ in o11378)
      {
         if(_loc2_)
         {
            _loc2_.o19115();
         }
      }
      var _loc6_:int = 0;
      var _loc5_:* = o20028;
      for each(_loc2_ in o20028)
      {
         if(_loc2_)
         {
            _loc2_.o19115();
         }
      }
      if(o4199)
      {
         o4199.o19115();
      }
      if(o426)
      {
         o426.o19115();
      }
      var _loc8_:int = 0;
      var _loc7_:* = o17684;
      for each(var _loc1_ in o17684)
      {
         if(_loc1_)
         {
            _loc1_.o19115();
         }
      }
      o1051.o19115(o3472);
      o1051.o19115(o16267);
      o1051.o19115(o6509);
      o18852 = null;
      o4199 = null;
      o17684 = null;
      o20028 = null;
      o6587 = null;
      o16311 = null;
      o20535 = null;
      o426 = null;
      o11378 = null;
      super.o19115();
   }
}
