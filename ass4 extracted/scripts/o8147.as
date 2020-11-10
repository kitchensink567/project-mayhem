package
{
   import flash.display.Sprite;
   
   public class o8147 extends Sprite
   {
       
      
      public function o8147()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o235;
      }
   }
}

import assets.ui.MiniMapArrowEdge;
import assets.ui.VIPMarker;
import flash.events.Event;
import flash.utils.ByteArray;

class o235 extends o2936
{
    
   
   public const o17702:int = 100;
   
   public const o417:int = 101;
   
   public const o10556:int = 102;
   
   public const o4301:int = 103;
   
   public const o7952:int = 104;
   
   public var o13289:Vector.<o4332> = null;
   
   public var o8796:Vector.<o10546> = null;
   
   public var o9831:Vector.<o18509> = null;
   
   public var o17318:o18509 = null;
   
   private var o10463:o7848 = null;
   
   private var o12185:int = 0;
   
   private var o13939:int = 0;
   
   private var o13500:int = 0;
   
   private var o11439:int = -1;
   
   private var o7324:o16123;
   
   function o235()
   {
      o7324 = new o16123(0);
      super();
   }
   
   private function get o18021() : int
   {
      return o7324.value;
   }
   
   private function set o18021(param1:int) : void
   {
      o7324.value = param1;
   }
   
   override public function o16955(param1:* = null) : void
   {
      o13289 = new Vector.<o4332>();
      o9831 = new Vector.<o18509>();
      o8796 = new Vector.<o10546>();
      super.o16955(param1);
   }
   
   override public function o1648(param1:Event) : void
   {
      o10463 = o4519.o8116.o2996.o2998(o14728,[o8723.o20122],this.o5973 + 10000000 - 1);
      o10463.o6691.position.x = o17318.x;
      o10463.o6691.position.y = o17318.y;
      super.o13087(23);
      super.o1648(param1);
   }
   
   override public function o6266() : void
   {
      var _loc6_:int = 0;
      var _loc2_:* = null;
      var _loc5_:Number = NaN;
      var _loc7_:Number = NaN;
      var _loc1_:* = null;
      o6468 = "Contract: Data Retrieval";
      o2861 = "Collect data from the terminals to earn cash rewards!";
      o16836 = o10841.o8579;
      var _loc8_:int = 0;
      _loc8_ = o4519.o13206.o2685.o7629() - 1;
      if(_loc8_ < 0)
      {
         _loc8_ = 0;
      }
      var _loc3_:int = 0;
      var _loc4_:Boolean = false;
      _loc6_ = 0;
      while(_loc6_ < o13289.length)
      {
         _loc2_ = new o18509(o13289[_loc6_].position.x,o13289[_loc6_].position.y);
         _loc5_ = o13289[_loc6_].rotation;
         _loc4_ = false;
         if(_loc8_ > 0 && _loc3_ < _loc8_)
         {
            _loc7_ = o4519.o8116.random.o10418(this.o5973 + (_loc6_ + 1));
            if(_loc7_ >= 0.75)
            {
               _loc4_ = true;
               _loc3_++;
            }
            else if(o13289.length - _loc6_ <= _loc8_ - _loc3_)
            {
               _loc4_ = true;
               _loc3_++;
            }
         }
         _loc1_ = o10546(o4519.o8116.o2996.o2998(o10546,[this,_loc2_,_loc5_,o10841.o17601,_loc4_],this.o5973 + (_loc6_ + 1)));
         o8796.push(_loc1_);
         _loc6_++;
      }
      super.o6266();
   }
   
   override public function o240() : void
   {
      var _loc3_:int = 0;
      var _loc2_:* = o8796;
      for each(var _loc1_ in o8796)
      {
         _loc1_.o4526();
      }
      o12891.o19505.o20794(true);
      o18440(0,-1,"Data Downloaded: ");
      o1051.o9310(this,10,o11498);
      super.o240();
   }
   
   override public function o7664() : void
   {
      o329();
      super.o7664();
   }
   
   override public function o7614() : void
   {
      var _loc4_:int = 0;
      var _loc8_:int = 0;
      var _loc7_:* = o8796;
      for each(var _loc1_ in o8796)
      {
         _loc1_.o10876();
      }
      o8922();
      var _loc2_:int = o18021;
      var _loc5_:int = 0;
      var _loc10_:int = 0;
      var _loc9_:* = o8796;
      for each(var _loc3_ in o8796)
      {
         _loc5_ = _loc5_ + _loc3_.o18866();
      }
      var _loc6_:* = 0;
      if(_loc2_ > 0)
      {
         _loc6_ = Number(_loc2_ / _loc5_);
      }
      if(_loc6_ > 1)
      {
         _loc6_ = 1;
      }
      if(_loc6_ > 0.1)
      {
         _loc4_ = _loc6_ * o9831.length;
         o11439 = o1051.o4767(this,0.5,o16963,_loc4_);
      }
      this.o3850 = _loc6_;
      o12891.o19505.o16481("Contract: Data Retrieval","Data successfully collected: " + _loc2_ + "/" + _loc5_);
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
      var _loc3_:* = null;
      param2.position = 0;
      var _loc4_:int = param2.readByte();
      switch(int(_loc4_) - 100)
      {
         case 0:
            _loc3_ = o6036(param2.readInt());
            if(_loc3_)
            {
               _loc3_.o14191(o4178(param2.readInt()));
            }
            break;
         case 1:
            _loc3_ = o6036(param2.readInt());
            if(_loc3_)
            {
               _loc3_.o1814(o4178(param2.readInt()));
            }
            break;
         case 2:
            _loc3_ = o6036(param2.readInt());
            if(_loc3_)
            {
               _loc3_.o8480();
            }
            break;
         case 3:
            _loc3_ = o6036(param2.readInt());
            if(_loc3_)
            {
               _loc3_.o7671(param2.readInt());
            }
            break;
         case 4:
            o1860(param2.readInt());
      }
   }
   
   public function o234(param1:int, param2:o10546) : void
   {
      var _loc3_:ByteArray = new ByteArray();
      _loc3_.writeByte(param1);
      _loc3_.writeInt(param2.o5973);
      dispatchData(new o2149(this,_loc3_));
   }
   
   public function o1023(param1:int, param2:o10546, param3:int) : void
   {
      var _loc4_:ByteArray = new ByteArray();
      _loc4_.writeByte(param1);
      _loc4_.writeInt(param2.o5973);
      _loc4_.writeInt(param3);
      dispatchData(new o2149(this,_loc4_));
   }
   
   public function o329() : void
   {
      var _loc2_:int = 0;
      var _loc3_:int = 0;
      _loc2_ = 0;
      while(_loc2_ < o8796.length)
      {
         _loc3_ = _loc3_ + o8796[_loc2_].o8093();
         _loc2_++;
      }
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(104);
      _loc1_.writeInt(_loc3_);
      dispatchData(new o2149(this,_loc1_));
   }
   
   private function o6036(param1:int) : o10546
   {
      var _loc4_:int = 0;
      var _loc3_:* = o8796;
      for each(var _loc2_ in o8796)
      {
         if(_loc2_.o5973 == param1)
         {
            return _loc2_;
         }
      }
      return null;
   }
   
   private function o8922() : void
   {
      if(!o10463)
      {
         false;
      }
      o10463.o6691.position.x = o17318.x;
      o10463.o6691.position.y = o17318.y;
      o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdge(),o10463);
      o10463.o6691.o9824 = false;
   }
   
   private function o16963() : void
   {
      if(o13939 >= o9831.length)
      {
         o1051.o19115(o11439);
         return;
      }
      var _loc2_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DropSpecificLoot"];
      var _loc3_:int = 10000 * (o10176.o13327() / 100) - 10000 * (o10176.o13327() / 100) * 0.25 * o4519.o8116.random.o10418(this.o5973 + o13939);
      var _loc1_:o6743 = o4519.o8116.o2996.o2998(_loc2_,[o9831[o13939],o19053.o17861,_loc3_]) as o6743;
      o13939 = Number(o13939) + 1;
   }
   
   private function o1860(param1:int) : void
   {
      var _loc3_:int = 0;
      if(param1 > o12185)
      {
         o18021 = param1;
         _loc3_ = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o8796;
         for each(var _loc2_ in o8796)
         {
            _loc3_ = _loc3_ + _loc2_.o18866();
         }
         o18440(o18021,_loc3_,"Data Downloaded: ");
      }
   }
   
   private function o11498() : void
   {
      o16226(11);
   }
   
   override public function o19115() : void
   {
      if(this.o5836)
      {
         return;
      }
      var _loc4_:int = 0;
      var _loc3_:* = o8796;
      for each(var _loc2_ in o8796)
      {
         if(_loc2_)
         {
            _loc2_.o19115();
            _loc2_ = null;
         }
      }
      var _loc6_:int = 0;
      var _loc5_:* = o13289;
      for each(var _loc1_ in o13289)
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
      o8796 = null;
      o9831 = null;
      o13289 = null;
      o17318 = null;
      o1051.o19115(o11439);
      super.o19115();
   }
}
