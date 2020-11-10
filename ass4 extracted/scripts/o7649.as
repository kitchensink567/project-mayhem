package
{
   import flash.display.Sprite;
   
   public class o7649 extends Sprite
   {
       
      
      public function o7649()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o13208;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o13208 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"path 1"],[2,o17243.o2013,o13351.o10420,"path 2"],[3,o17243.o2013,o13351.o10420,"path 3"],[4,o17243.o2013,o13351.o10420,"path 4"],[5,o17243.o2013,o13351.o10420,"loot location 1"],[6,o17243.o2013,o13351.o10420,"loot location 2"],[7,o17243.o2013,o13351.o10420,"loot location 3"],[8,o17243.o2013,o13351.o10420,"loot location 4"],[9,o17243.o2013,o13351.o10420,"loot location 5"],[10,o17243.o2013,o13351.o10420,"loot location 6"],[11,o17243.o2013,o13351.o10420,"first barrier zone"]];
    
   
   private const o4391:int = 3;
   
   private const o6704:int = 40;
   
   private const o14867:int = 80;
   
   private const o19893:Number = 100;
   
   private const o632:int = 8;
   
   private const o16872:int = 28;
   
   private const o8162:int = 25;
   
   private const o9532:Array = [1,1,2,1,5,5,10,10,1,0,25,25,25,25,25,25,25,0,0,0];
   
   private var o12458:Vector.<o972>;
   
   private var o3040:Vector.<Vector.<o16541>>;
   
   private var o5438:Vector.<o16541>;
   
   private var o1841:int = 1;
   
   private var o15051:int = 0;
   
   private var o12534:int = 0;
   
   private var o233:Boolean = false;
   
   private var o19794:Vector.<o18509>;
   
   private var o16023:o10262;
   
   private var o5467:Boolean = false;
   
   private var o20223:int = 0;
   
   private var o10510:int = 0;
   
   private var o13827:Number = 20;
   
   private var o15580:int = 0;
   
   private var o11705:int = 0;
   
   private var o17859:Boolean = false;
   
   private var o20342:Boolean = false;
   
   private var o1740:o4399;
   
   private var o13100:o972;
   
   function o13208()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o8389 = param1;
      o10303 = param2;
      o1841 = -1;
      o15051 = 0;
      o12458 = new Vector.<o972>();
      var o1903:int = 0;
      while(o1903 < 4)
      {
         var id:int = o10303.readShort();
         var o2013:o13848 = o4519.o9721.o7352[id];
         o12458.push(o12498(o2013));
         o1903 = Number(o1903) + 1;
      }
      o19794 = new Vector.<o18509>();
      o1903 = 0;
      while(o1903 < 6)
      {
         id = o10303.readShort();
         var o9011:o4332 = o4519.o9721.o12831(id);
         o19794.push(new o18509(o9011.position.x,o9011.position.y));
         o4519.o8116.o11954.o11867(o9011);
         o1903 = Number(o1903) + 1;
      }
      super.o949(o8389);
      var o9013:int = o10303.readShort();
      o16023 = o4519.o8116.o9869.o1968(0,0,false);
      var o8599:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o9013].o6041[0].id);
      var o4925:Vector.<Vector.<o18509>> = o12075.o7521(o8599);
      var _loc5_:int = 0;
      var _loc4_:* = o4925;
      for each(o16528 in o4925)
      {
         var o10289:o17761 = new o17761(o16023.o2535);
         o10289.o14486(o16528);
         var fixture:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o2823,o8723.o2823,true);
         fixture.o10289 = o10289.id;
         o16023.o14230(fixture);
      }
      o16023.o16280(this,o8273.o7087,o13542);
      o4519.o13206.o16280(this,o8694.o1956,function(param1:o11210):void
      {
         if(param1.o13743 == 99)
         {
            o4519.o8116.profileData.o202.o10318();
         }
      });
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      var _loc7_:int = 0;
      var _loc5_:int = 0;
      var _loc8_:* = undefined;
      var _loc4_:* = 0;
      var _loc6_:* = 3.5;
      var _loc9_:Vector.<int> = new Vector.<int>();
      while(_loc9_.length < 8)
      {
         _loc4_ = Number(_loc4_ + _loc6_ * o20384.random());
         _loc7_ = _loc4_;
         if(_loc7_ < 28)
         {
            if(_loc9_.indexOf(_loc7_) == -1)
            {
               _loc9_.push(_loc7_);
            }
         }
         else
         {
            _loc4_ = 0;
         }
      }
      var _loc3_:ByteArray = new ByteArray();
      _loc3_.writeByte(3);
      _loc5_ = 0;
      while(_loc5_ < _loc9_.length)
      {
         _loc3_.writeByte(_loc9_[_loc5_]);
         _loc5_++;
      }
      dispatchData(new o2149(this,_loc3_,true,false,3));
      if(o4519.o13206.o2685.o4326 == 2)
      {
         _loc8_ = o4519.o9721.o12334("LastStandPurgeNest");
         _loc8_.o2840 = 4;
         o13100 = o12458[1].o18084();
         o13100.o16255.splice(0,10);
         _loc8_.o16280(this,o8694.o2412,o3418);
         _loc8_.o17884 = -5;
         _loc8_.o17386();
      }
      var _loc2_:* = o4519.o8116.o2996.o20716("FailSafeTeleportZone");
      if(_loc2_)
      {
         _loc2_.o14456();
      }
   }
   
   private function o9340(param1:Vector.<int>) : void
   {
      var _loc7_:int = 0;
      var _loc3_:int = 0;
      var _loc4_:int = 0;
      o3040 = new Vector.<Vector.<o16541>>();
      var _loc5_:Vector.<Vector.<o16541>> = o1139();
      _loc7_ = 0;
      while(_loc7_ < param1.length)
      {
         o3040.push(_loc5_[param1[_loc7_]]);
         _loc7_++;
      }
      var _loc8_:o16541 = o14854(100);
      var _loc6_:Vector.<o16541> = o3040[o3040.length - 1];
      var _loc10_:o16541 = _loc6_[_loc6_.length - 1];
      _loc8_.o7976(20);
      _loc8_.o5803(_loc10_.o15501() - 20);
      _loc6_.push(_loc8_);
      if(o4519.o13206.o2685.o4326 == 2)
      {
         _loc8_ = o14854(100 * 0.7);
         _loc6_ = o3040[3];
         _loc10_ = _loc6_[_loc6_.length - 1];
         _loc8_.o7976(20);
         _loc8_.o5803(_loc10_.o15501() - 20);
         _loc6_.push(_loc8_);
      }
      o20223 = 0;
      _loc3_ = 0;
      while(_loc3_ < o3040.length)
      {
         _loc4_ = 0;
         while(_loc4_ < o3040[_loc3_].length)
         {
            o20223 = Number(o20223) + 1;
            _loc4_++;
         }
         _loc3_++;
      }
      var _loc9_:int = 10000000 / o20223;
      var _loc2_:int = 0;
      _loc3_ = 0;
      while(_loc3_ < o3040.length)
      {
         _loc4_ = 0;
         while(_loc4_ < o3040[_loc3_].length)
         {
            o3040[_loc3_][_loc4_].o7255(o20712 + _loc2_ * _loc9_);
            _loc2_++;
            _loc4_++;
         }
         _loc3_++;
      }
      o1051.o9310(this,4,o6408);
      o1051.o9310(this,5,o15739);
   }
   
   private function o15739() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.laststandMessages.msg0Start");
      o4519.o8116.o20488.o2251(o2858(),_loc1_);
   }
   
   private function o2858() : int
   {
      var _loc1_:int = 0;
      var _loc2_:o17517 = o4519.o13206.o32;
      if(o4519.o32.o1217 == 0)
      {
         _loc1_ = 8;
      }
      else if(o4519.o32.o1217 == 1)
      {
         _loc1_ = 10;
      }
      else if(o4519.o32.o1217 == 2)
      {
         _loc1_ = 9;
      }
      return _loc1_;
   }
   
   private function o13542(param1:o663) : void
   {
      o16023.o12657(o8273.o7087,o13542);
      o16023.o19115();
      o16023 = null;
      o5467 = true;
      var _loc2_:String = o4519.o8116.profileData.o10206("dialogMessage.laststandMessages.msg5PastFirstBarrier");
      o4519.o8116.o20488.o2251(o2858(),_loc2_);
   }
   
   public function o12498(param1:o13848) : o972
   {
      var _loc4_:* = null;
      var _loc5_:int = 0;
      var _loc3_:o972 = new o972();
      var _loc6_:* = null;
      var _loc2_:o2041 = param1.o6041[0];
      while(_loc3_.o16255.length < param1.o6041.length)
      {
         _loc4_ = new o18509(_loc2_.x,_loc2_.y);
         _loc3_.o16255.push(_loc4_);
         _loc5_ = 0;
         while(_loc5_ < _loc2_.o16079.length)
         {
            if(_loc2_.o16079[_loc5_] != _loc6_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.o16079[_loc5_];
               break;
            }
            _loc5_++;
         }
      }
      return _loc3_;
   }
   
   private function o6408() : void
   {
      var _loc2_:int = 0;
      var _loc1_:* = null;
      o1841 = Number(o1841) + 1;
      o3572();
      o5438 = o3040[o1841];
      _loc2_ = 0;
      while(_loc2_ < o5438.length)
      {
         o5438[_loc2_].o4526();
         _loc2_++;
      }
      o6999();
      o18442.o10763.o16280(o2154,o1106.o14307,o17875);
      if(o1841 + 1 == o3040.length)
      {
         _loc1_ = o4519.o8116.profileData.o10206("dialogMessage.laststandMessages.msg3AlmostEnd");
         o4519.o8116.o20488.o2251(5,_loc1_);
         o4519.o8116.o8756.o2282.o8445();
      }
      if(o4519.o13206.o2685.o4326 == 2 && o1841 == 3)
      {
         o4519.o8116.o8756.o2282.o8445();
      }
   }
   
   private function o17875(param1:o15974) : void
   {
      if(param1.entity is o18442)
      {
         o10990();
      }
   }
   
   private function o10990() : void
   {
      var _loc2_:int = 0;
      _loc2_ = 0;
      while(_loc2_ < o5438.length)
      {
         if(o5438[_loc2_].o8289() == false)
         {
            return;
         }
         _loc2_++;
      }
      if(o4519.o8116.o2996.o20698(o18442).length > 0 || o3047.o10061.length > 0)
      {
         return;
      }
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(40);
      _loc1_.writeByte(o15051);
      _loc1_.writeByte(o1841);
      _loc1_.writeByte(int(o20384.random() * o19794.length));
      dispatchData(new o2149(this,_loc1_,true,false,40 + o1841));
      if(o4519.o13206.o2685.o6370 == false)
      {
         o10510 = o1051.o9310(this,3,o10990);
      }
   }
   
   private function o6660(param1:int, param2:int, param3:int) : void
   {
      var _loc6_:* = null;
      var _loc4_:* = null;
      var _loc5_:* = null;
      o1051.o19115(o10510);
      this.o1841 = param2;
      o18442.o10763.o12657(o1106.o14307,o17875);
      if(param2 + 1 >= o3040.length)
      {
         if(param1 >= 25)
         {
            return;
         }
         o4519.o8116.o20488.o20575(0);
         _loc6_ = o4519.o8116.profileData.o10206("dialogMessage.laststandMessages.msg4Success");
         o4519.o8116.o20488.o2251(o2858(),_loc6_);
         if(param1 == 0)
         {
            o4519.o8116.o12094.setAchievement(393,1);
         }
         if(o5467 == false)
         {
            o4519.o8116.o12094.setAchievement(394,1);
         }
         o4519.o8116.o8756.o2282.o17511();
         o4519.o13206.o20582 = true;
         o1051.o4767(this,1,o3305,21,true);
         o1051.o9310(this,20,o19630);
      }
      else
      {
         o2110();
         o1051.o9310(this,6,o6408);
         if(param2 % 2 == 1)
         {
            _loc4_ = new ByteArray();
            _loc4_.writeFloat(0);
            _loc4_.position = 0;
            _loc5_ = o4519.o8116.o2996.o2998(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.AreaLoot"],[_loc4_]);
            _loc5_.body.o13392(o19794[param3]);
         }
      }
      if(o4519.o13206.o2685.o4326 == 2 && param2 == 3)
      {
         o4519.o8116.o8756.o2282.o17511();
      }
   }
   
   private function o19630() : void
   {
      o4519.o13206.o14994();
   }
   
   private function o3305() : void
   {
      o4519.o8116.o20488.o19411 = o10403(o13827);
      o13827 = o13827 - 1;
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
   
   override public function o3370(param1:Class = null, param2:Number = 0, param3:o18509 = null, param4:int = 0, param5:int = 0, param6:Boolean = false, param7:Boolean = true, param8:Boolean = true, param9:int = 0, param10:int = -1) : o18442
   {
      var _loc11_:o18509 = o12458[o15580].o16255[0];
      param5 = o15580;
      o15580 = Number(o15580) + 1;
      if(o15580 >= o12458.length)
      {
         o15580 = 0;
      }
      return super.o3370(param1,param2,_loc11_,param4,param5,param6,param7,param8,param9,param10);
   }
   
   override protected function o6249(param1:o18442) : void
   {
      if(param1.o2840 == 3 || param1.o2840 == 4)
      {
         param1.o1337 = o12458[param1.o12555].o18084();
         param1.o16280(this,o3519.o4280,o18828);
      }
   }
   
   override protected function o14620(param1:o18442) : Boolean
   {
      var _loc2_:int = param1.o5973 / (int(10000000 / o20223));
      if(o4519.o8116.random.o10418(_loc2_ * 69 + param1.grade * 87) < 0.33)
      {
         switch(int(param1.type))
         {
            case 0:
               if(param1.o5973 % 10 < 4)
               {
                  return true;
               }
               break;
            case 1:
               if(param1.o5973 % 10 < 6)
               {
                  return true;
               }
               break;
         }
      }
      return false;
   }
   
   private function o18828(param1:o4389) : void
   {
      o15051 = o15051 + o9532[param1.o18481.type];
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(80);
      _loc2_.writeByte(o15051);
      dispatchData(new o2149(this,_loc2_,true,false,80 + param1.o18481.o5973));
      o4519.o8116.o8361.o5725(param1.o18481,o4016.o10062().initialise(999999999999,1,null));
      param1.o18481.o19115();
   }
   
   private function o1107(param1:int) : void
   {
      var _loc2_:* = null;
      if(o17859)
      {
         return;
      }
      if(!o4519.o13206.o2685.o6370)
      {
         this.o15051 = param1;
      }
      o3572();
      o14060();
      if(param1 == 1)
      {
         _loc2_ = o4519.o8116.profileData.o10206("dialogMessage.laststandMessages.msg1FirstLeak");
         o4519.o8116.o20488.o2251(5,_loc2_);
      }
      else if(param1 >= 25 - 7 && !o20342)
      {
         o20342 = true;
         _loc2_ = o4519.o8116.profileData.o10206("dialogMessage.laststandMessages.msg6FewLifesLeft");
         o4519.o8116.o20488.o2251(5,_loc2_);
      }
      if(param1 >= 25)
      {
         o17859 = true;
         o18442.o10763.o12657(o1106.o14307,o17875);
         o3087();
         o15122();
         o1051.o9310(this,5,o18470);
         _loc2_ = o4519.o8116.profileData.o10206("dialogMessage.laststandMessages.msg2Fail");
         o4519.o8116.o20488.o2251(5,_loc2_);
      }
   }
   
   private function o18470() : void
   {
      o4519.o13206.o8765();
   }
   
   private function o3087() : void
   {
      var _loc6_:Number = -o4519.o8116.o18929.width - 50;
      var _loc5_:Number = -o4519.o8116.o18929.height - 50;
      var _loc4_:Number = o4519.o8116.o18929.width + 50;
      var _loc2_:Number = o4519.o8116.o18929.height + 50;
      var _loc3_:Vector.<o18509> = new Vector.<o18509>();
      _loc3_.push(new o18509(_loc6_,_loc5_),new o18509(_loc4_,_loc5_),new o18509(_loc4_,_loc2_),new o18509(_loc6_,_loc2_));
      var _loc1_:o4332 = o4519.o8116.o11954.o10869();
      _loc1_.o16396 = o17541.o13617(_loc3_);
      _loc1_.position = new o2415();
      _loc1_.o16990 = 150;
      _loc1_.o6034 = Vector.<Number>([1,1,1,0]);
      new o6880(_loc1_).o2008(5,true);
      o4519.o8116.o11954.o2429(_loc1_,o4519.o32.o6691);
      o1740 = o4519.o13206.o16821(5,5);
   }
   
   private function o3572() : void
   {
      o4519.o8116.o20488.o16636(o1841 + 1,o3040.length,25 - o15051 >= 0?25 - o15051:0);
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc5_:* = undefined;
      var _loc4_:int = 0;
      var _loc3_:int = param2.readByte();
      var _loc6_:* = _loc3_;
      switch(_loc6_)
      {
         case 3:
            _loc5_ = new Vector.<int>();
            _loc4_ = 0;
            while(_loc4_ < 8)
            {
               _loc5_.push(int(param2.readByte()));
               _loc4_++;
            }
            o9340(_loc5_);
            break;
         case 40:
            o6660(param2.readByte(),param2.readByte(),param2.readByte());
            break;
         case 80:
            o1107(param2.readByte());
      }
   }
   
   override public function o19115() : void
   {
      var _loc2_:int = 0;
      var _loc1_:int = 0;
      if(o8289())
      {
         return;
      }
      o18442.o10763.o12657(o1106.o14307,o17875);
      o12458 = null;
      o19794 = null;
      if(o16023)
      {
         o16023.o12657(o8273.o7087,o13542);
         o16023.o19115();
         o16023 = null;
      }
      o1740 = null;
      if(o3040)
      {
         _loc2_ = 0;
         while(_loc2_ < o3040.length)
         {
            _loc1_ = 0;
            while(_loc1_ < o3040[_loc2_].length)
            {
               o3040[_loc2_][_loc1_].o19115();
               _loc1_++;
            }
            _loc2_++;
         }
      }
      o3040 = null;
      o5438 = null;
      super.o19115();
   }
   
   private function o6999() : void
   {
      o4519.o8116.o4812.o10460.o20693.play(0.45,1,0,true);
   }
   
   private function o2110() : void
   {
      o4519.o8116.o4812.o10460.o8748.play(0.6,1,0,true);
   }
   
   private function o14060() : void
   {
      if(o15051 >= o12534)
      {
         if(o15051 >= 1 && o15051 < 6)
         {
            o12534 = 6;
         }
         else if(o15051 >= 6 && o15051 < 12)
         {
            o12534 = 12;
         }
         else if(o15051 >= 12 && o15051 < 18)
         {
            o12534 = 18;
         }
         else if(o15051 >= 18 && o15051 < 25)
         {
            o12534 = 25;
         }
         else if(o15051 >= 25)
         {
            o12534 = 2147483647;
         }
         o233 = false;
      }
      if(!o233)
      {
         var _loc1_:* = o12534;
         switch(_loc1_)
         {
            case 6:
               o4519.o8116.o4812.o10460.o13272.play(1);
               o8339("99% health");
               o233 = true;
               break;
            case 12:
               o4519.o8116.o4812.o10460.o13145.play(1);
               o8339("75% health");
               o233 = true;
               break;
            case 18:
               o4519.o8116.o4812.o10460.o16064.play(1);
               o8339("50% health");
               o233 = true;
               break;
            case 25:
               o4519.o8116.o4812.o10460.o8661.play(1);
               o8339("25% health");
               o233 = true;
               break;
            case 2147483647:
               o4519.o8116.o4812.o10460.o12814.play(1);
               o8339("0% health");
               o233 = true;
         }
      }
      else
      {
         o4519.o8116.o4812.o10460.o13298.play(0.75);
      }
   }
   
   private function o15122() : void
   {
      o4519.o8116.o4812.o10460.o1147.play();
   }
   
   private function o1139() : Vector.<Vector.<o16541>>
   {
      var _loc1_:Vector.<Vector.<o16541>> = new Vector.<Vector.<o16541>>();
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,5,3,2,true,1,3),new o16541(this,0,0,0,5,1,2,true,1,4),new o16541(this,0,0,13,5,3,2,true,1,3),new o16541(this,0,0,13,5,1,2,true,1,4),new o16541(this,0,0,26,5,3,2,true,1,3),new o16541(this,0,0,26,5,1,2,true,1,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,15,9,2,true,1,3),new o16541(this,0,0,0,15,2,2,true,1,4),new o16541(this,0,1,15,5,2,2,true,1,3),new o16541(this,0,1,15,5,1,2,true,1,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,15,8,2,true,1,3),new o16541(this,0,0,0,15,2,2,true,1,4),new o16541(this,0,1,5,15,3,2,true,1,3),new o16541(this,0,1,5,15,1,2,true,1,4),new o16541(this,0,4,16,3,2,2,true,1,3),new o16541(this,0,3,22,3,2,2,true,1,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,8,2,2,true,1,3),new o16541(this,0,0,0,8,6,2,true,1,4),new o16541(this,0,3,12,4,3,2,true,1,0),new o16541(this,0,1,19,8,2,2,true,1,3),new o16541(this,0,1,19,8,6,2,true,1,4),new o16541(this,0,3,32,4,3,2,true,1,0)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,36,33,3,true,5,3),new o16541(this,0,0,0,36,6,3,true,5,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,4,0,25,8,2,true,3,3),new o16541(this,0,2,7,3,1,2,true,1,4),new o16541(this,0,3,14,4,2,2,true,1,4),new o16541(this,0,0,21,3,4,2,true,1,4),new o16541(this,0,2,28,3,2,2,true,1,4),new o16541(this,0,3,35,4,1,2,true,1,4),new o16541(this,0,0,42,3,4,2,true,1,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,5,0,5,3,2,true,1,3),new o16541(this,0,0,7,3,5,2,true,1,3),new o16541(this,0,0,7,3,1,2,true,1,4),new o16541(this,0,5,16,5,3,2,true,1,3),new o16541(this,0,1,23,3,4,2,true,1,3),new o16541(this,0,1,23,3,1,2,true,1,4),new o16541(this,0,5,33,5,3,2,true,1,3),new o16541(this,0,0,39,3,4,2,true,1,3),new o16541(this,0,0,39,3,1,2,true,1,4),new o16541(this,0,1,41,3,3,2,true,1,3),new o16541(this,0,1,41,3,1,2,true,1,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,1,0,8,1,2,true,1,3),new o16541(this,0,1,0,8,5,2,true,1,4),new o16541(this,0,2,6,20,2,2,true,1.3,3),new o16541(this,0,2,6,20,9,2,true,1.3,0),new o16541(this,0,1,17,8,1,2,true,1,3),new o16541(this,0,1,17,8,5,2,true,1,4),new o16541(this,0,2,32,20,2,2,true,1.3,3),new o16541(this,0,2,32,20,10,2,true,1.3,0),new o16541(this,0,1,38,8,1,2,true,1,3),new o16541(this,0,1,38,8,5,2,true,1,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,36,20,3,true,5,3),new o16541(this,0,0,0,36,6,3,true,5,4),new o16541(this,0,1,0,36,16,3,true,5,3),new o16541(this,0,1,0,36,4,3,true,5,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,45,20,2,true,1,3),new o16541(this,0,0,0,45,12,2,true,1,4),new o16541(this,0,3,7,2,2,1.5,true,1,3),new o16541(this,0,3,16,2,3,1.5,true,1,3),new o16541(this,0,3,25,2,3,1.5,true,1,3),new o16541(this,0,3,34,2,4,1.5,true,1,3),new o16541(this,0,3,43,2,4,1.5,true,1,3)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,60,30,2,true,1,3),new o16541(this,0,0,0,60,8,2,true,1,4),new o16541(this,0,1,10,40,15,2,true,1,3),new o16541(this,0,1,10,40,4,2,true,1,4),new o16541(this,0,3,20,20,3,2,true,1,3),new o16541(this,0,3,20,20,1,2,true,1,4),new o16541(this,0,2,30,20,4,2,true,1,3),new o16541(this,0,2,30,20,1,2,true,1,4),new o16541(this,0,4,40,20,2,2,true,1,3),new o16541(this,0,4,40,20,1,2,true,1,4),new o16541(this,0,5,50,10,2,2,true,1,3),new o16541(this,0,5,50,10,1,2,true,1,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,3,0,3,3,2,true,1,3),new o16541(this,0,3,0,3,1,2,true,1,4),new o16541(this,0,4,0,3,1,2,true,1,3),new o16541(this,0,3,16,3,3,2,true,1,3),new o16541(this,0,3,16,3,1,2,true,1,4),new o16541(this,0,4,16,3,1,2,true,1,3),new o16541(this,0,3,32,3,3,2,true,1,3),new o16541(this,0,3,32,3,1,2,true,1,4),new o16541(this,0,4,32,3,1,2,true,1,3),new o16541(this,0,3,48,3,4,2,true,1,3),new o16541(this,0,3,48,3,1,2,true,1,4),new o16541(this,0,4,48,3,1,2,true,1,3),new o16541(this,0,3,60,3,5,2,true,1,3),new o16541(this,0,3,60,3,2,2,true,1,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,65,12,2,true,0.8,3),new o16541(this,0,0,0,65,5,2,true,0.8,4),new o16541(this,0,1,15,50,6,2,true,1.2,3),new o16541(this,0,1,15,50,2,2,true,1.2,4),new o16541(this,0,4,0,3,3,0.6,true,1,3),new o16541(this,0,4,15,3,3,0.6,true,1,3),new o16541(this,0,4,30,3,3,0.6,true,1,3),new o16541(this,0,4,45,3,3,0.6,true,1,3)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,3,11,2,true,1,3),new o16541(this,0,0,0,3,3,2,true,1,4),new o16541(this,0,0,15,3,5,2,true,1,3),new o16541(this,0,0,15,3,2,2,true,1,4),new o16541(this,0,1,15,3,2,2,true,1,3),new o16541(this,0,1,15,3,1,2,true,1,4),new o16541(this,0,0,30,3,3,2,true,1,3),new o16541(this,0,0,30,3,1,2,true,1,4),new o16541(this,0,1,30,3,4,2,true,1,3),new o16541(this,0,1,30,3,2,2,true,1,4),new o16541(this,0,0,45,3,2,2,true,1,3),new o16541(this,0,0,45,3,1,2,true,1,4),new o16541(this,0,1,45,3,2,2,true,1,3),new o16541(this,0,1,45,3,1,2,true,1,4),new o16541(this,0,3,45,3,2,2,true,1,3),new o16541(this,0,3,45,3,1,2,true,1,4),new o16541(this,0,0,60,3,3,2,true,1,3),new o16541(this,0,0,60,3,1,2,true,1,4),new o16541(this,0,1,60,3,3,2,true,1,3),new o16541(this,0,1,60,3,2,2,true,1,4),new o16541(this,0,3,60,3,3,2,true,1,3),new o16541(this,0,3,60,3,2,2,true,1,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,3,11,2,true,1,4),new o16541(this,0,0,0,3,3,2,true,1,3),new o16541(this,0,0,15,3,5,2,true,1,4),new o16541(this,0,0,15,3,2,2,true,1,3),new o16541(this,0,2,15,3,2,2,true,1,0),new o16541(this,0,1,15,3,1,2,true,1,3),new o16541(this,0,0,30,3,3,2,true,1,4),new o16541(this,0,0,30,3,1,2,true,1,3),new o16541(this,0,2,30,3,4,2,true,1,0),new o16541(this,0,1,30,3,2,2,true,1,3),new o16541(this,0,0,45,3,2,2,true,1,4),new o16541(this,0,0,45,3,1,2,true,1,3),new o16541(this,0,2,45,3,2,2,true,1,0),new o16541(this,0,1,45,3,1,2,true,1,3),new o16541(this,0,3,45,3,2,2,true,1,0),new o16541(this,0,3,45,3,1,2,true,1,3),new o16541(this,0,0,60,3,3,2,true,1,4),new o16541(this,0,0,60,3,1,2,true,1,3),new o16541(this,0,1,60,3,3,2,true,1,4),new o16541(this,0,2,60,3,2,2,true,1,0),new o16541(this,0,3,60,3,3,2,true,1,0),new o16541(this,0,3,60,3,2,2,true,1,3)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,5,0,3,6,2,true,1,3),new o16541(this,0,5,0,3,2,2,true,1,4),new o16541(this,0,5,22,3,6,2,true,1,3),new o16541(this,0,5,22,3,2,2,true,1,4),new o16541(this,0,5,44,3,6,2,true,1,3),new o16541(this,0,5,44,3,2,2,true,1,4),new o16541(this,0,4,44,3,1,1,true,1,3)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,60,75,3,true,8,3),new o16541(this,0,0,0,60,15,3,true,8,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,8,0,8,12,2,true,1,0),new o16541(this,0,3,0,8,2,2,true,1,3),new o16541(this,0,3,0,8,1,2,true,1,4),new o16541(this,0,8,12,8,12,2,true,1,0),new o16541(this,0,3,16,8,2,2,true,1,3),new o16541(this,0,3,16,8,1,2,true,1,4),new o16541(this,0,8,24,8,12,2,true,1,0),new o16541(this,0,3,32,8,2,2,true,1,3),new o16541(this,0,3,32,8,1,2,true,1,4),new o16541(this,0,8,36,8,12,2,true,1,0),new o16541(this,0,3,48,8,2,2,true,1,3),new o16541(this,0,3,48,8,1,2,true,1,4),new o16541(this,0,8,48,8,12,2,true,1,0)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,6,15,2,true,1,0),new o16541(this,0,1,0,6,8,2,true,1,0),new o16541(this,0,3,0,6,4,2,true,1,0),new o16541(this,0,2,0,6,3,2,true,1,0),new o16541(this,0,5,0,6,4,2,true,1,0),new o16541(this,0,8,0,6,6,2,true,1,0),new o16541(this,0,4,0,3,1,1.5,true,1,3)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,10,5,2,true,1,3),new o16541(this,0,0,0,10,1,2,true,1,4),new o16541(this,0,1,4,5,3,2,true,1,3),new o16541(this,0,1,4,5,1,2,true,1,4),new o16541(this,0,3,13,5,3,2,true,1,4),new o16541(this,0,0,20,15,6,2,true,1,3),new o16541(this,0,0,20,15,1,2,true,1,4),new o16541(this,0,1,25,10,4,2,true,1,3),new o16541(this,0,1,25,10,2,2,true,1,4),new o16541(this,0,5,31,15,3,2,true,1,3),new o16541(this,0,8,36,15,5,2,true,1,0),new o16541(this,0,0,36,15,4,2,true,1,3),new o16541(this,0,0,36,15,2,2,true,1,4),new o16541(this,0,1,40,10,4,2,true,1,3),new o16541(this,0,1,40,10,2,2,true,1,4),new o16541(this,0,2,46,15,3,2,true,1,3),new o16541(this,0,2,46,15,1,2,true,1,4),new o16541(this,0,0,50,15,4,2,true,1,3),new o16541(this,0,0,50,15,2,2,true,1,4),new o16541(this,0,8,50,15,3,2,true,1,0),new o16541(this,0,4,50,5,2,2,true,1,3)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,1,0,60,22,0.6,true,1,3),new o16541(this,0,1,0,60,6,0.6,true,1,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,2,2,1,1,true,1,3),new o16541(this,0,1,3,2,1,1,true,1,3),new o16541(this,0,2,4,2,1,1,true,1,4),new o16541(this,0,3,5,2,1,1,true,1,3),new o16541(this,0,4,0,2,1,1,true,1,3),new o16541(this,0,5,1,2,1,1,true,1,4),new o16541(this,0,0,22,2,1,1,true,1,3),new o16541(this,0,1,23,2,1,1,true,1,4),new o16541(this,0,2,24,2,1,1,true,1,3),new o16541(this,0,3,25,2,1,1,true,1,4),new o16541(this,0,4,20,2,1,1,true,1,3),new o16541(this,0,5,21,2,1,1,true,1,3),new o16541(this,0,0,38,2,1,1,true,1,4),new o16541(this,0,1,39,2,1,1,true,1,3),new o16541(this,0,2,40,2,1,1,true,1,3),new o16541(this,0,3,41,2,1,1,true,1,3),new o16541(this,0,4,36,2,1,1,true,1,4),new o16541(this,0,5,37,2,1,1,true,1,3),new o16541(this,0,0,50,2,1,1,true,1,3),new o16541(this,0,1,51,2,1,1,true,1,3),new o16541(this,0,2,52,2,1,1,true,1,4),new o16541(this,0,3,53,2,1,1,true,1,4),new o16541(this,0,4,48,2,1,1,true,1,3),new o16541(this,0,5,49,2,1,1,true,1,3),new o16541(this,0,0,58,2,1,1,true,1,4),new o16541(this,0,1,59,2,1,1,true,1,3),new o16541(this,0,2,60,2,1,1,true,1,3),new o16541(this,0,3,61,2,1,1,true,1,3),new o16541(this,0,4,56,2,1,1,true,1,3),new o16541(this,0,5,57,2,1,1,true,1,4),new o16541(this,0,0,62,2,1,1,true,1,3),new o16541(this,0,1,63,2,1,1,true,1,4),new o16541(this,0,2,64,2,1,1,true,1,3),new o16541(this,0,3,65,2,1,1,true,1,3),new o16541(this,0,4,60,2,1,1,true,1,4),new o16541(this,0,5,61,2,1,1,true,1,3)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,5,0,6,1,2,true,1,4),new o16541(this,0,4,2,6,1,2,true,1,4),new o16541(this,0,2,9,3,3,2,true,1,0),new o16541(this,0,3,11,3,3,2,true,1,0),new o16541(this,0,5,12,6,2,2,true,1,4),new o16541(this,0,4,14,6,2,2,true,1,4),new o16541(this,0,2,23,3,3,2,true,1,0),new o16541(this,0,3,25,3,3,2,true,1,0),new o16541(this,0,5,28,6,2,2,true,1,4),new o16541(this,0,4,30,6,2,2,true,1,4),new o16541(this,0,2,41,3,4,2,true,1,0),new o16541(this,0,3,43,3,4,2,true,1,0),new o16541(this,0,5,43,6,3,2,true,1,4),new o16541(this,0,4,45,6,3,2,true,1,4),new o16541(this,0,2,58,3,5,2,true,1,0),new o16541(this,0,3,60,3,5,2,true,1,0)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,5,0,60,13,2,true,4,3),new o16541(this,0,5,0,60,4,2,true,4,4),new o16541(this,0,2,5,60,9,2,true,4,3),new o16541(this,0,2,5,60,25,2,true,4,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,70,50,2,true,6,3),new o16541(this,0,0,0,70,10,2,true,6,4),new o16541(this,0,3,5,3,4,2,true,1,4),new o16541(this,0,2,20,3,4,2,true,1,4),new o16541(this,0,5,40,3,2,2,true,1,3),new o16541(this,0,1,55,3,3,2,true,1,3),new o16541(this,0,1,55,3,3,2,true,1,4),new o16541(this,0,4,55,3,2,2,true,1,3)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,50,20,2,true,0.25,3),new o16541(this,0,0,0,50,5,2,true,0.25,4),new o16541(this,0,1,15,45,18,2,true,1,3),new o16541(this,0,1,15,45,3,2,true,1,4),new o16541(this,0,3,30,30,7,2,true,0.25,3),new o16541(this,0,3,30,30,3,2,true,0.25,4),new o16541(this,0,2,40,20,8,2,true,4,3),new o16541(this,0,2,40,20,3,2,true,4,4)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,0,0,60,10,3,true,4,4),new o16541(this,0,1,0,60,10,3,true,4,4),new o16541(this,0,2,0,60,10,3,true,4,0),new o16541(this,0,3,0,60,10,3,true,4,0),new o16541(this,0,4,0,60,10,3,true,4,4),new o16541(this,0,5,0,60,10,3,true,4,4),new o16541(this,0,8,0,60,10,3,true,4,0)]));
      _loc1_.push(Vector.<o16541>([new o16541(this,0,2,0,60,5,3,true,4,3),new o16541(this,0,2,0,60,3,3,true,4,4),new o16541(this,0,3,0,60,5,3,true,4,3),new o16541(this,0,3,0,60,2,3,true,4,4),new o16541(this,0,4,0,60,3,3,true,4,3),new o16541(this,0,4,0,60,1,3,true,4,4),new o16541(this,0,5,0,60,3,3,true,4,3),new o16541(this,0,5,0,60,2,3,true,4,4),new o16541(this,0,0,15,3,15,3,true,1,4),new o16541(this,0,1,15,3,4,3,true,1,4),new o16541(this,0,0,30,3,15,3,true,1,4),new o16541(this,0,1,30,3,4,3,true,1,4),new o16541(this,0,0,40,3,15,3,true,1,4),new o16541(this,0,1,40,3,4,3,true,1,4),new o16541(this,0,0,50,3,15,3,true,1,4),new o16541(this,0,1,50,3,4,3,true,1,4),new o16541(this,0,0,60,3,15,3,true,1,4),new o16541(this,0,1,60,3,4,3,true,1,4)]));
      return _loc1_;
   }
   
   private function o14854(param1:Number) : o16541
   {
      var _loc2_:int = 0;
      var _loc3_:Vector.<o20743> = o10176.o8930(param1);
      _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         _loc3_[_loc2_].o2840 = 0;
         _loc2_++;
      }
      _loc3_ = _loc3_.reverse();
      return new o8734(this,0,_loc3_);
   }
   
   private function o3418(param1:o6961) : void
   {
      param1.o18481.o1337 = o13100.o18084();
      param1.o18481.o16280(this,o3519.o4280,o18828);
   }
}
