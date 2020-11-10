package
{
   import flash.display.Sprite;
   
   public class o3474 extends Sprite
   {
       
      
      public function o3474()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o4282;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o4282 extends o15755
{
    
   
   private const o16100:int = 10;
   
   private const o18957:int = 2;
   
   private const o6704:int = 1;
   
   private var o5369:ByteArray = null;
   
   public var o19411:String = null;
   
   private var o20160;
   
   private var o19247:int = 0;
   
   private var o5438:int = 0;
   
   private var o1841:int = 0;
   
   private var o7997:Boolean = false;
   
   private var o4786:int = 1;
   
   private var o9083:int = 0;
   
   private var o17872:Boolean = false;
   
   private var o17314:Number = 0;
   
   private var o7922:Number = 1;
   
   private var o15693:o15787;
   
   private var o6794:o15787;
   
   private var o20898:int = -1;
   
   private var o19205:int = -1;
   
   private var o4209:int = -1;
   
   private var o10327:int = -1;
   
   private var o1215:int = -1;
   
   private var o2921:int = -1;
   
   private var o9518:int = -1;
   
   private var o19185:int = -1;
   
   private const o19966:int = 5;
   
   function o4282()
   {
      o15693 = new o15787(1);
      o6794 = new o15787(0);
      super();
   }
   
   private function get delta() : Number
   {
      return o15693.value;
   }
   
   private function get o13508() : Number
   {
      return o6794.value;
   }
   
   private function set o13508(param1:Number) : void
   {
      o6794.value = param1;
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o4519.o13206.o16542 = false;
      o4519.o13206.o248 = false;
      o4519.o13206.o3625 = true;
      o4519.o13206.o2200 = true;
      o4519.o13206.o4732 = true;
      o4519.o13206.o7 = true;
      o4519.o13206.o7975 = true;
      o4519.o8116.profileData.o202.o10740 = false;
      o17872 = true;
      o7997 = false;
      super.o16955(o5973);
      var _loc4_:* = o4519.o9721.o12334("alphaVirusData");
      o5369 = _loc4_.o5369;
      o9083 = o4519.o13206.o1802(1 + 10000000);
      o20160 = new o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.gameModes.LastManSpawner"]();
      o20160.o5973 = o9083;
      o20160.o16955(o9083 + 1,o5369);
      o4519.o9721.o5649(o20160);
      o20160.o1777();
      o5438 = o5141.o734;
      if(o4519.o13206.o8891() >= o5141.o20330)
      {
         o5438 = o20160.o9834();
      }
      var _loc3_:* = o4519.o8116.o2996.o20716("FailSafeTeleportZone");
      if(_loc3_)
      {
         _loc3_.o14456();
      }
      o4519.o13206.o16280(this,o16450.o9745,o743);
   }
   
   private function o743(param1:Event) : void
   {
      var _loc4_:int = 0;
      var _loc3_:* = o4519.o13206.o2685.o10591;
      for each(var _loc2_ in o4519.o13206.o2685.o10591)
      {
         _loc2_.o19189 = 0;
      }
      o4209 = o1051.o4767(this,1,o2170,0,true);
      o4519.o13206.o2685.o16280(this,o18621.o17654,o17654);
      o4786 = o5141.o17003;
      o1051.o4767(this,1,o11821,o4786 + 1);
   }
   
   private function o11821() : void
   {
      var _loc1_:* = null;
      if(o4786 == o5141.o17003)
      {
         _loc1_ = o4519.o8116.profileData.o5292.o3907(4);
         if(o12891.o19505)
         {
            o12891.o19505.o16481(_loc1_.o17977,_loc1_.o12043,o4786);
         }
      }
      if(o4786 == 0)
      {
         if(o12891.o19505)
         {
            o12891.o19505.o4043(0);
            o12891.o19505.o8283();
         }
         start();
      }
      else if(o12891.o19505)
      {
         o12891.o19505.o4043(o4786);
      }
      o4786 = Number(o4786) - 1;
   }
   
   private function o20623() : void
   {
      var _loc1_:* = null;
      var _loc2_:o17517 = o4519.o13206.o32;
      if(!_loc2_.o7694)
      {
         _loc1_ = o4519.o13206.o2685.o10591[_loc2_.o5973];
         _loc1_.o19189 = o13508;
         _loc1_.o2236();
      }
   }
   
   private function start() : void
   {
      if(o7997)
      {
         return;
      }
      o17517.o10763.o16280(this,o2777.o3964,o8907);
      o17517.o10763.o16280(this,o2777.o18730,o12583);
      if(o12891.o19505)
      {
         o12891.o19505.o8283();
      }
      o4519.o8116.o20488.o18680 = false;
      o20898 = o1051.o9310(this,o5141.o13034,o17629);
      o2921 = o1051.o9310(this,2,o6408);
      o1215 = o1051.o4767(this,1,o14827,0,true);
      o9518 = o1051.o4767(this,1,o20623,0,true);
   }
   
   private function o17654(param1:Event) : void
   {
      o7367 = param1;
      o7997 = true;
      o4519.o13206.o4231 = true;
      o1051.o19115(o20898);
      o1051.o19115(o4209);
      o1051.o19115(o1215);
      o1051.o19115(o9518);
      o4786 = 5;
      o1051.o4767(this,1,o11821,5 + 1);
      o4519.o13206.o7975 = false;
      o4519.o13206.o4732 = false;
      o4519.o13206.o2200 = false;
      o1051.o9310(this,5 + 2,function():void
      {
         o1051.o19115(o2921);
         o1051.o19115(o19185);
         o1051.o19115(o19205);
         o4519.o13206.o17799();
      });
   }
   
   private function o17629() : void
   {
      switch(int(o4519.o13206.o2685.o7629()))
      {
         case 0:
         case 1:
            o17872 = false;
            o20481(0);
      }
   }
   
   private function o14827() : void
   {
      o13508 = o13508 + delta;
      o4519.o8116.o20488.o19411 = o10403(o13508);
   }
   
   private function o10403(param1:Number) : String
   {
      var _loc4_:String = "";
      if(int(param1 / 3600) > 0)
      {
         _loc4_ = _loc4_ + (int(param1 / 3600) + ":");
      }
      var _loc2_:String = String(int(param1 / 60 % 60));
      if(_loc2_.length != 2)
      {
         _loc2_ = "0" + _loc2_;
      }
      _loc4_ = _loc4_ + (_loc2_ + ":");
      var _loc3_:String = String(int(param1 % 60));
      if(_loc3_.length != 2)
      {
         _loc3_ = "0" + _loc3_;
      }
      _loc4_ = _loc4_ + _loc3_;
      return _loc4_;
   }
   
   private function o10990() : void
   {
      var _loc2_:* = null;
      if(o7997)
      {
         return;
      }
      if(!o20160.o1055())
      {
         return;
      }
      o17314 = o17314 + 1;
      if(o17314 >= o5141.o1309 + o1841 * o5141.o14583)
      {
         _loc2_ = o4519.o8116.o2996.o20698(o18442).concat();
         var _loc4_:int = 0;
         var _loc3_:* = _loc2_;
         for each(var _loc1_ in _loc2_)
         {
            if(!_loc1_.o17050)
            {
               o4519.o8116.o8361.o5725(_loc1_,o4016.o10062().initialise(999999999,1,_loc1_));
            }
         }
         o10255();
         return;
      }
      _loc2_ = o4519.o8116.o2996.o20698(o18442).concat();
      if(_loc2_.length > 0)
      {
         return;
      }
      if(o3047.o10061.length > 0)
      {
         return;
      }
      o10255();
   }
   
   private function o10255() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(1);
      _loc1_.writeInt(o5438);
      _loc1_.writeInt(int(Math.random() * 3948712));
      dispatchData(new o2149(this,_loc1_,true,false,1 + 10000 + o5438));
      o1051.o19115(o19205);
   }
   
   private function o6660(param1:int, param2:int) : void
   {
      if(o7997)
      {
         return;
      }
      o1051.o19115(o19205);
      o17314 = 0;
      o5438 = param1;
      o5438 = Number(o5438) + 1;
      o19247 = param2;
      o1841 = Number(o1841) + 1;
      o2921 = o1051.o9310(this,1,o6408);
   }
   
   private function o6408() : void
   {
      if(o7997)
      {
         return;
      }
      if(o12891.o19505 != null)
      {
         o12891.o19505.o8283();
      }
      o20160.o6408(o5438,o19247);
      o19205 = o1051.o4767(this,1,o10990);
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      param2.position = 0;
      var _loc3_:int = param2.readByte();
      switch(int(_loc3_) - 1)
      {
         case 0:
            o6660(param2.readInt(),param2.readInt());
            break;
         case 1:
            o3285(param2.readInt());
      }
   }
   
   private function o12583(param1:o14864) : void
   {
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(2);
      _loc2_.writeInt(param1.o32.o5973);
      dispatchData(new o2149(this,_loc2_,true,false,2 + 1000000 + param1.o32.o5973));
      if(o4519.o32.o5973 == param1.o32.o5973)
      {
         o14200.o19505.o202.o2685.o7723();
         trace("Force disconnect: Player quit the game - Close socket to lobby so others see me and \'disconnected\'");
      }
   }
   
   private function o3285(param1:int) : void
   {
      var _loc4_:o17517 = o4519.o8116.o2996.o16775(param1) as o17517;
      if(_loc4_)
      {
         _loc4_.o15584(false);
         _loc4_.o9183();
      }
      var _loc3_:Vector.<o2084> = o4519.o8116.profileData.o202.o9954;
      var _loc6_:int = 0;
      var _loc5_:* = _loc3_;
      for each(var _loc2_ in _loc3_)
      {
         if(_loc2_.o7874 == param1)
         {
            _loc2_.o2306 = false;
         }
      }
   }
   
   private function o8907(param1:o17151) : void
   {
      param1.o32.o2306 = true;
      if(o4519.o32.o7694 == true)
      {
         o4519.o13206.o14606 = true;
      }
   }
   
   private function o6407() : int
   {
      var _loc1_:int = 0;
      var _loc3_:Vector.<o17517> = Vector.<o17517>(o4519.o8116.o2996.o20698(o17517).slice());
      var _loc2_:int = _loc3_.length;
      _loc1_ = 0;
      while(_loc1_ < _loc3_.length)
      {
         if(_loc3_[_loc1_].o7694)
         {
            _loc2_--;
         }
         _loc1_++;
      }
      return _loc2_;
   }
   
   private function o2170() : void
   {
      if(o6407() <= 1 && !o7997)
      {
         o17806();
         o20481();
      }
   }
   
   private function o17806() : void
   {
      var _loc1_:int = 0;
      var _loc2_:Vector.<o17517> = Vector.<o17517>(o4519.o8116.o2996.o20698(o17517).slice());
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length)
      {
         if(!_loc2_[_loc1_].o8289 || !_loc2_[_loc1_].o7694)
         {
            _loc2_[_loc1_].o12487 = true;
         }
         _loc2_[_loc1_].o2306 = true;
         _loc1_++;
      }
   }
   
   private function o20481(param1:int = 5) : void
   {
      o16388 = param1;
      o7997 = true;
      o1051.o9310(this,o16388,function():void
      {
         o1051.o19115(o2921);
         o1051.o19115(o19185);
         o1051.o19115(o1215);
         o1051.o19115(o9518);
         o1051.o19115(o19205);
         o1051.o19115(o20898);
         o4519.o13206.o14994();
      });
   }
   
   override public function o19115() : void
   {
      if(o20160)
      {
         o20160.o19115();
      }
      o5369 = null;
      o20160 = null;
      super.o19115();
   }
}
