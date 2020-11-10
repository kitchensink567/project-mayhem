package
{
   import flash.display.Sprite;
   
   public class o678 extends Sprite
   {
       
      
      public function o678()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o6085;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o6085 extends o15755
{
    
   
   private var o4423:Boolean = false;
   
   private var o11235:Boolean = false;
   
   private var o16643:Boolean = false;
   
   private var o2194:Boolean = false;
   
   private var o2995:Boolean = true;
   
   private var o15914:Boolean = false;
   
   private var o2121:Boolean = true;
   
   private var o6468:String;
   
   private var o2861:String;
   
   private var o761:int = 0;
   
   private var o8676:int = 0;
   
   private var o11959:int = 0;
   
   private var o15965:int = 0;
   
   private var o6247:int = 0;
   
   private var o402:int = 0;
   
   private var o15882:o20567 = null;
   
   private var o5510:int = -1;
   
   private var o1215:int = -1;
   
   private var o18093:int = -1;
   
   private var o17057:int = -1;
   
   private var o1311:int = -1;
   
   private var o6334:int = -1;
   
   private var o19020:int = -1;
   
   private var o2176:int = -1;
   
   private var o15453:int = -1;
   
   private var o20160 = null;
   
   private var o20467:int = -1;
   
   private var o19193:int = 0;
   
   private const o3322:int = 1;
   
   private const o17237:int = 5;
   
   private const o11760:int = 5;
   
   private const o18838:int = 10000;
   
   private const o9630:int = 10;
   
   private const o10582:Number = 0.03333333333333333;
   
   private const o2243:int = 1;
   
   private const o6956:int = 2;
   
   private const o2967:int = 3;
   
   private const o6497:int = 4;
   
   private const o15263:int = 5;
   
   private const o4966:int = 6;
   
   private const o13910:int = 7;
   
   private const o4097:int = 8;
   
   private const o6970:int = 10;
   
   private const o836:int = 11;
   
   private const o6618:int = 12;
   
   private const o17847:int = 20;
   
   private var o15693:o15787;
   
   private var o17366:o15787;
   
   function o6085()
   {
      o6468 = "null";
      o2861 = "null";
      o15693 = new o15787(1);
      o17366 = new o15787(0);
      super();
   }
   
   private function get delta() : Number
   {
      return o15693.value;
   }
   
   private function get o16836() : Number
   {
      return o17366.value;
   }
   
   private function set o16836(param1:Number) : void
   {
      o17366.value = param1;
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o4519.o13206.o248 = false;
      o4519.o13206.o16542 = true;
      o4519.o13206.o3625 = false;
      o4519.o13206.o7306 = false;
      o4519.o13206.o6859 = true;
      o4519.o13206.o4732 = true;
      o4519.o13206.o2200 = true;
      o4519.o13206.o13771 = true;
      o4519.o13206.o17551 = true;
      o4519.o13206.o15890 = true;
      o4519.o8116.profileData.o202.o10740 = true;
      o16643 = o4519.o8116.o476.o9392.o16643();
      o4519.o13206.o19357 = 0;
      o4519.o13206.o15251 = true;
      o4519.o13206.o14417 = "Samples";
      o4519.o13206.o2034 = true;
      o4519.o8116.o20488.o18680 = true;
      if(o16643)
      {
         o15882 = o4519.o8116.o476.o9392.o7908();
         o4519.o13206.o14417 = o15882.o1613;
      }
      super.o16955(o5973);
      var _loc6_:* = o4519.o9721.o12334("alphaVirusData");
      var _loc5_:int = o4519.o13206.o1802(1 + 10000000);
      o20160 = new o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.gameModes.SampleCollectionSpawner"]();
      o20160.o5973 = _loc5_;
      o20160.o16955(_loc5_ + 1 + 10000,_loc6_.o5369);
      o20160.o507(_loc5_ + 1);
      o4519.o9721.o5649(o20160);
      var _loc8_:int = 0;
      var _loc7_:* = o4519.o13206.o2685.o10591;
      for each(var _loc4_ in o4519.o13206.o2685.o10591)
      {
         _loc4_.o19189 = 0;
      }
      var _loc3_:* = o4519.o8116.o2996.o20716("FailSafeTeleportZone");
      if(_loc3_)
      {
         _loc3_.o14456();
      }
      o4519.o13206.o16280(this,o16450.o9745,o1648);
   }
   
   private function o1648(param1:Event) : void
   {
      if(o8676 >= 1)
      {
         return;
      }
      o20160.o2496(this);
      o12891.o19505.o20794(false);
      var _loc2_:Array = o4519.o8116.o2996.o20698(o17517);
      var _loc5_:int = 0;
      var _loc4_:* = _loc2_;
      for each(var _loc3_ in _loc2_)
      {
         _loc3_.o15809(true);
      }
      o13647(1);
      o17517.o10763.o16280(this,o2777.o18730,o3903);
      o1311 = o1051.o9310(this,1,o6266);
   }
   
   private function o6266() : void
   {
      if(o8676 >= 2)
      {
         return;
      }
      o6468 = "Event: Virus Samples";
      o2861 = "Collect as many samples as possible to beat the other players!";
      if(o15882)
      {
         o6468 = "Event: " + o15882.o17977;
         o2861 = o15882.o20073;
      }
      o13647(2);
      if(o11959 > o8676)
      {
         o402 = 1;
         o761 = 1;
      }
      else
      {
         o402 = 5;
         o761 = 5;
      }
      o12891.o19505.o16481(o6468,o2861,5);
      o17057 = o1051.o4767(this,1,o19321,o402);
      o18093 = o1051.o9310(this,o761,o240);
   }
   
   private function o240() : void
   {
      if(o8676 >= 3)
      {
         return;
      }
      o4519.o13206.o2034 = true;
      o16836 = 180;
      o1215 = o1051.o4767(this,1,o14827);
      o5510 = o1051.o4767(this,0.0333333333333333,o7664);
      o13647(3);
      o17218(10);
   }
   
   private function o7664() : void
   {
      if(o16836 < 0 || o12268())
      {
         o1051.o19115(o5510);
         o6334 = o1051.o9310(this,0,o7614);
      }
   }
   
   private function o10158() : void
   {
      if(o20160.o7664())
      {
         if(o4519.o8116.o2996.o20698(o18442).length <= 10)
         {
            o17218(11,o19193 + 1);
            o1051.o19115(o20467);
         }
      }
   }
   
   private function o7614() : void
   {
      if(o8676 >= 5)
      {
         return;
      }
      o20160.o5033();
      o4423 = true;
      o4519.o13206.o20582 = true;
      o17218(12);
      o1051.o19115(o1215);
      o2995 = true;
      o16836 = 5 + 5;
      o1215 = o1051.o4767(this,1,o14827,o16836);
      o13647(5);
      if(o15914)
      {
         o12891.o19505.o16481("Event over!","Not enough players to continue");
      }
      o19020 = o1051.o9310(this,!!o11235?5:5,o441);
   }
   
   private function o441() : void
   {
      if(o8676 >= 6)
      {
         return;
      }
      var _loc1_:o8443 = o4519.o13206.o2685.o10591[o4519.o32.o5973];
      var _loc2_:int = 0;
      if(_loc1_)
      {
         _loc2_ = _loc1_.o19189;
      }
      o12891.o19505.o19931();
      if(o15882)
      {
         o12891.o19505.o16481("Event Complete!",o15882.o17977 + " Collected: " + _loc2_);
      }
      else
      {
         o12891.o19505.o16481("Event Complete!","Virus Samples Collected: " + _loc2_);
      }
      o13647(6);
      o2176 = o1051.o9310(this,5,o13420);
   }
   
   private function o14444() : void
   {
      if(o11235)
      {
         return;
      }
      o2194 = true;
      o11235 = true;
      o4423 = true;
      o17218(12);
      o12891.o19505.o16481("Event Failed!","Try again next time");
      o1051.o19115(o5510);
      o13647(5);
      o6334 = o1051.o9310(this,5,o7614);
   }
   
   private function o13420() : void
   {
      if(o8676 >= 7)
      {
         return;
      }
      o12891.o19505.o19931();
      o12891.o19505.o8283();
      o13647(7);
      o4519.o13206.o14994();
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      param2.position = 0;
      var _loc3_:int = param2.readByte();
      var _loc4_:* = _loc3_;
      switch(_loc4_)
      {
         case 1:
            o11959 = 1;
            break;
         case 2:
            o11959 = 2;
            break;
         case 3:
            o11959 = 3;
            break;
         case 4:
            o11959 = 4;
            break;
         case 5:
            o11959 = 5;
            break;
         case 6:
            o11959 = 6;
            break;
         case 7:
            o11959 = 7;
            break;
         case 8:
            o14444();
            break;
         case 10:
            o17807();
            break;
         case 11:
            o1755(param2.readInt());
            break;
         case 12:
            o17065();
            break;
         case 20:
            o2334(param2.readInt());
         default:
            trace("Sample Collection Mode: Failed sync, invalid command: " + _loc3_);
      }
   }
   
   private function o13647(param1:int) : void
   {
      o6981(param1);
      o8676 = param1;
   }
   
   public function o6981(param1:int) : void
   {
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(param1);
      dispatchData(new o2149(this,_loc2_,false,true));
   }
   
   public function o9431(param1:int) : void
   {
      o18440(param1);
   }
   
   private function o17218(param1:int, param2:int = 0) : void
   {
      var _loc3_:ByteArray = new ByteArray();
      _loc3_.writeByte(param1);
      _loc3_.writeInt(param2);
      dispatchData(new o2149(this,_loc3_));
   }
   
   private function o3903(param1:o14864) : void
   {
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(20);
      _loc2_.writeInt(param1.o32.o5973);
      dispatchData(new o2149(this,_loc2_,true,false,20 + 10000 + param1.o32.o5973));
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
   
   private function o18440(param1:int) : void
   {
      var _loc2_:o8443 = o4519.o13206.o2685.o10591[o4519.o32.o5973];
      _loc2_.o19189 = _loc2_.o19189 + param1;
      _loc2_.o2236();
   }
   
   private function o17807() : void
   {
      if(o6247 >= 10)
      {
         return;
      }
      var _loc1_:Boolean = o20160.o9994(o19193);
      if(_loc1_ == false)
      {
         trace("syncSpawnerStart: Wave failed to spawn, wave might have already spawned!");
      }
      else
      {
         o20467 = o1051.o4767(this,1,o10158);
         o6247 = 10;
      }
   }
   
   private function o1755(param1:int) : void
   {
      if(o6247 > 11 && !o4423)
      {
         return;
      }
      var _loc2_:Boolean = o20160.o9994(param1);
      if(_loc2_ == false)
      {
         trace("syncSpawnerGenerateWave: Wave failed to spawn, wave might have already spawned!");
      }
      else
      {
         trace("Wave " + param1 + " started!");
         o19193 = param1;
         o20467 = o1051.o4767(this,1,o10158);
         o6247 = 10;
         if(o20467)
         {
            o1051.o19115(o20467);
         }
         o20467 = o1051.o4767(this,1,o10158);
         o6247 = 11;
      }
   }
   
   private function o17065() : void
   {
      if(o6247 >= 12)
      {
         return;
      }
      o1051.o19115(o20467);
      o20160.o6751(true);
      o20160.o11138(false);
      o4423 = true;
      o6247 = 12;
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
      if(_loc2_)
      {
         o15914 = true;
      }
      return _loc2_;
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
      o16836 = o16836 - delta;
      if(o16836 >= 0)
      {
         o4519.o8116.o20488.o19411 = o10403(o16836);
      }
      else
      {
         o1051.o19115(o1215);
      }
   }
   
   private function o10929(param1:int, param2:String, param3:Boolean = false) : void
   {
      var _loc4_:* = null;
      var _loc5_:Number = NaN;
      if(param3 || o2121)
      {
         _loc4_ = o4519.o8116.profileData.o10206(param2);
         _loc5_ = o4519.o8116.profileData.o5099.o17521(param2 + ".duration");
         o4519.o8116.o20488.o2251(param1,_loc4_,o10960,o18191,_loc5_);
      }
   }
   
   protected function o19321() : void
   {
      o402 = Number(o402) - 1;
      if(o402 > 0)
      {
         o12891.o19505.o4043(o402);
         if(o402 <= 10)
         {
            o4519.o8116.o4812.ui.o995.play(1);
         }
      }
      else
      {
         o12891.o19505.o8283();
         o1051.o19115(o17057);
      }
   }
   
   private function o10960() : void
   {
      o12891.o19505.o20794(false);
      o2121 = false;
   }
   
   private function o18191() : void
   {
      o12891.o19505.o20794(true);
      o2121 = true;
   }
   
   private function o17173() : void
   {
      o12891.o19505.o8283();
   }
   
   override public function o19115() : void
   {
      if(this.o5836)
      {
         return;
      }
      o1051.o19115(o19020);
      o1051.o19115(o6334);
      o1051.o19115(o20467);
      o1051.o19115(o17057);
      o1051.o19115(o18093);
      o1051.o19115(o1215);
      o1051.o19115(o5510);
      super.o19115();
   }
}
