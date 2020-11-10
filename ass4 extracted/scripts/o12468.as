package
{
   import flash.display.Sprite;
   
   public class o12468 extends Sprite
   {
       
      
      public function o12468()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o18857;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o18857 extends o15755
{
    
   
   private const o6704:int = 1;
   
   private const o14310:int = 2;
   
   private const o17847:int = 3;
   
   private const o13570:int = 4;
   
   private const o8357:int = 1937405;
   
   private var o20898:int = -1;
   
   private var o19205:int = -1;
   
   private var o4209:int = -1;
   
   private var o18305:int = -1;
   
   private var o1215:int = -1;
   
   private var o12691:int = -1;
   
   private var o2921:int = -1;
   
   private var o9518:int = -1;
   
   private var o17314:Number = 0;
   
   private var o9083:int = 0;
   
   private var o4786:int = 0;
   
   private var o5438:int = 0;
   
   private var o19247:int = 0;
   
   private var o11551:int = 1;
   
   private var o20160;
   
   private const o1888:int = 1;
   
   private const o18546:int = 0;
   
   private var o13160:Boolean = false;
   
   private var o15914:Boolean = false;
   
   private var o17872:Boolean = false;
   
   private var o5776:Boolean = false;
   
   private var o15957:Boolean = false;
   
   private var o7997:Boolean = false;
   
   private var o5369:ByteArray = null;
   
   private var o15693:o15787;
   
   private var o6794:o15787;
   
   private var o12270:Boolean = false;
   
   private const o7456:int = 2000;
   
   function o18857()
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
      o4519.o13206.o248 = false;
      o4519.o13206.o16542 = true;
      o4519.o13206.o3625 = false;
      o4519.o13206.o2200 = false;
      o4519.o13206.o13771 = false;
      o4519.o13206.o17551 = false;
      o4519.o13206.o15890 = true;
      o4519.o8116.profileData.o202.o10740 = true;
      o4519.o13206.o15251 = true;
      o4519.o13206.o14417 = "Wave";
      super.o16955(o5973);
      var _loc4_:* = o4519.o9721.o12334("alphaVirusData");
      o5369 = _loc4_.o5369;
      o9083 = o4519.o13206.o1802(1 + 10000000);
      o20160 = new o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.gameModes.ApocalypseSpawner"]();
      o20160.o5973 = o9083;
      o20160.o16955(o9083 + 1,o5369);
      o4519.o9721.o5649(o20160);
      o20160.o1777();
      o5438 = 9;
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
      o17517.o10763.o16280(this,o2777.o18730,o3903);
      o17517.o10763.o16280(this,o2777.o5836,o4700);
      o4786 = o8291.o17003;
      o12691 = o1051.o4767(this,1,o11821,o4786 + 1);
   }
   
   private function start() : void
   {
      if(o12891.o19505)
      {
         o12891.o19505.o8283();
      }
      o4519.o8116.o20488.o18680 = false;
      o20898 = o1051.o9310(this,o8291.o13034,o17629);
      o4209 = o1051.o4767(this,1,o2170);
      o1215 = o1051.o4767(this,1,o14827,0,true);
      o6408();
   }
   
   private function o2170() : void
   {
      o14492();
   }
   
   private function o14492() : void
   {
      if(o12268())
      {
         o15914 = true;
      }
      if(o13517() <= 0 || o4519.o13206.o2685.o7629() <= 1 || o15914 && !o7997)
      {
         o7997 = true;
         o4519.o13206.o16542 = false;
         o16225();
         o20481();
      }
   }
   
   private function o13517() : int
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
   
   private function o17629() : void
   {
      switch(int(o4519.o13206.o2685.o7629()))
      {
         case 0:
         case 1:
            o7997 = true;
            o17872 = false;
            o20481(0);
      }
      o13160 = true;
   }
   
   private function o20481(param1:int = 5) : void
   {
      o16388 = param1;
      if(false || o12270)
      {
         return;
      }
      if(o15914)
      {
         if(o12891.o19505)
         {
            o12891.o19505.o16481("Event over!","Not enough players to continue");
         }
      }
      o4519.o13206.o16542 = false;
      o1051.o9310(this,o16388,function():void
      {
         o1051.o19115(o9518);
         o1051.o19115(o2921);
         o1051.o19115(o19205);
         o1051.o19115(o20898);
         o12270 = true;
         if(!o17872)
         {
            o4519.o8116.profileData.o202.o10740 = false;
            var _loc3_:int = 0;
            var _loc2_:* = o4519.o13206.o2685.o10591;
            for each(var _loc1_ in o4519.o13206.o2685.o10591)
            {
               _loc1_.o19189 = 0;
               _loc1_.o2236();
            }
         }
         o4519.o13206.o14994();
      });
   }
   
   private function o10990(param1:Number = 1.0) : void
   {
      var _loc2_:Number = NaN;
      var _loc4_:* = null;
      var _loc5_:Boolean = false;
      if(o15957)
      {
         return;
      }
      if(o20160.o1055())
      {
         o17314 = o17314 + param1;
         _loc2_ = o8291.o1309 + o5438 * o8291.o14583;
         if(o17314 >= _loc2_)
         {
            if(o15957 != true)
            {
               o15957 = true;
               _loc4_ = o4519.o8116.o2996.o20698(o18442).concat();
               var _loc7_:int = 0;
               var _loc6_:* = _loc4_;
               for each(var _loc3_ in _loc4_)
               {
                  if(!_loc3_.o17050)
                  {
                     o4519.o8116.o8361.o5725(_loc3_,o4016.o10062().initialise(999999999,1,_loc3_));
                  }
               }
               o10255();
               return;
            }
         }
         _loc4_ = o4519.o8116.o2996.o20698(o18442).concat();
         _loc5_ = true;
         var _loc9_:int = 0;
         var _loc8_:* = _loc4_;
         for each(_loc3_ in _loc4_)
         {
            if(!_loc3_.o1896)
            {
               _loc5_ = false;
            }
         }
         if(_loc4_.length == 0 && o3047.o10061.length == 0 || _loc5_ && o3047.o10061.length == 0 && _loc4_.length != 0)
         {
            o10255();
            o15957 = false;
         }
      }
   }
   
   private function o6408() : void
   {
      o20160.o6408(o5438,o19247);
      o19205 = o1051.o4767(this,1,o10990);
   }
   
   private function o6660(param1:int, param2:int) : void
   {
      var _loc3_:* = null;
      o1051.o19115(o19205);
      o17314 = 0;
      if(o12270 == false)
      {
         _loc3_ = o4519.o13206.o2685.o10591[o4519.o32.o5973];
         if(_loc3_.o19189 < 2000)
         {
            _loc3_.o19189 = _loc3_.o19189 + o1898(o11551);
            _loc3_.o18448 = o11551;
            if(_loc3_.o19189 > 2000)
            {
               _loc3_.o19189 = 2000;
            }
            trace("event points total so far: " + _loc3_.o19189);
            _loc3_.o2236();
            _loc3_.o11256();
         }
      }
      if(param1 < o5438)
      {
         trace("Apoc - Network message sync for current wave is less than local current wave value");
      }
      else
      {
         o5438 = param1;
      }
      o11551 = Number(o11551) + 1;
      o5438 = Number(o5438) + 1;
      o19247 = param2;
      o2110();
      o7089();
      o2921 = o1051.o9310(this,5,o6408);
      o15957 = false;
   }
   
   private function o1898(param1:int) : int
   {
      var _loc3_:int = 0;
      var _loc2_:int = 0;
      var _loc5_:Boolean = false;
      var _loc4_:* = 0;
      if(o5776 == false)
      {
         param1++;
      }
      _loc3_ = 0;
      while(_loc3_ < o8291.o19142.length)
      {
         if(param1 < o8291.o19142[_loc3_] && !_loc5_)
         {
            _loc2_ = o8291.o19530[_loc3_];
            _loc4_ = _loc3_;
            _loc5_ = true;
         }
         else if(_loc3_ == o8291.o19142.length - 1 && param1 >= o8291.o19142[o8291.o19142.length - 1])
         {
            _loc2_ = o8291.o19530[o8291.o19530.length - 1];
            _loc4_ = _loc3_;
         }
         _loc3_++;
      }
      if(_loc2_ == 0)
      {
         _loc2_ = 1;
      }
      return _loc2_;
   }
   
   private function o11821() : void
   {
      var _loc1_:* = null;
      var _loc2_:* = o4786;
      switch(_loc2_)
      {
         case o8291.o17003:
            _loc1_ = o4519.o8116.profileData.o5292.o3907(5);
            if(o12891.o19505)
            {
               o12891.o19505.o16481(_loc1_.o17977,_loc1_.o12043,o4786);
            }
            break;
         case 0:
            o12891.o19505.o4043(0);
            o1051.o9310(this,1,o7089);
            start();
            break;
         default:
            if(o12891.o19505)
            {
               o12891.o19505.o4043(o4786);
            }
      }
      o4786 = Number(o4786) - 1;
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
   
   private function o14827() : void
   {
      o13508 = o13508 + delta;
      o4519.o8116.o20488.o19411 = o10403(o13508);
   }
   
   private function o7089() : void
   {
      if(o12891.o19505)
      {
         o12891.o19505.o8471(o11551);
         o1051.o9310(this,4,o8283);
         o6999();
      }
   }
   
   private function o8283() : void
   {
      if(o12891.o19505)
      {
         o12891.o19505.o8283();
      }
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
            o7997 = true;
            o4519.o13206.o16542 = false;
            o20481(1);
            break;
         case 2:
            o2334(param2.readInt());
            break;
         case 3:
            o17872 = true;
      }
   }
   
   private function o4700(param1:Event) : void
   {
      if(o8289)
      {
         return;
      }
      if(o4519.o13206.o2685.o7629() <= 1 || o12268())
      {
         o7997 = true;
         o20481();
      }
   }
   
   private function o10255() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(1);
      _loc1_.writeInt(o5438);
      _loc1_.writeInt(int(Math.random() * 1937405));
      dispatchData(new o2149(this,_loc1_,true,false,1 + 20000 + o5438));
      o1051.o19115(o19205);
   }
   
   private function o16225() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(2);
      dispatchData(new o2149(this,_loc1_,true,false,2 + 30000));
   }
   
   private function o2028() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(4);
      dispatchData(new o2149(this,_loc1_,true,false,4 + 40000));
   }
   
   private function o3903(param1:o14864) : void
   {
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(3);
      _loc2_.writeInt(param1.o32.o5973);
      dispatchData(new o2149(this,_loc2_,true,false,3 + 10000 + param1.o32.o5973));
      if(o4519.o32.o5973 == param1.o32.o5973)
      {
         o14200.o19505.o202.o2685.o7723();
         trace("Force disconnect: Player quit the game - Close socket to lobby so others see me and \'disconnected\'");
      }
   }
   
   private function o2334(param1:int) : void
   {
      if(o4519.o32.o5973 == o5973)
      {
         return;
      }
      var _loc2_:o8443 = o4519.o13206.o2685.o10591[param1];
      if(_loc2_)
      {
         _loc2_.o7322 = true;
      }
   }
   
   private function o12268() : Boolean
   {
      var _loc2_:Boolean = true;
      var _loc4_:int = 0;
      var _loc3_:* = o4519.o13206.o2685.o10591;
      for each(var _loc1_ in o4519.o13206.o2685.o10591)
      {
         if(_loc1_.id != o4519.o32.o5973)
         {
            if(_loc1_.o7322 == false)
            {
               _loc2_ = false;
            }
         }
      }
      return _loc2_;
   }
   
   private function o6999() : void
   {
      o4519.o8116.o4812.o10460.o20693.play(0.45,1,0,true);
   }
   
   private function o2110() : void
   {
      o4519.o8116.o4812.o10460.o8748.play(0.6,1,0,true);
   }
   
   override public function o19115() : void
   {
      if(o20160)
      {
         o20160.o19115();
      }
      o20160 = null;
      o5369 = null;
      super.o19115();
   }
}
