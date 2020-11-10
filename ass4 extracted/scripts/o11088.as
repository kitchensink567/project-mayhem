package
{
   import flash.display.Sprite;
   
   public class o11088 extends Sprite
   {
       
      
      public function o11088()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o16625;
      }
   }
}

import assets.ui.MiniMapArrowEdgeVIP;
import assets.ui.VIPMarker;
import flash.events.Event;
import flash.utils.ByteArray;
import flash.utils.Dictionary;
import flash.utils.getTimer;

class o16625 extends o3047
{
   
   public static var o20272:Array = [[121,o17243.o2013,o13351.o10420,"Victory Area 1"],[122,o17243.o2013,o13351.o10420,"Victory Area 2"],[123,o17243.o2013,o13351.o10420,"Gazebo Base 1"],[124,o17243.o2013,o13351.o10420,"Gazebo Roof 1"],[125,o17243.o2013,o13351.o10420,"Gazebo Base 2"],[126,o17243.o2013,o13351.o10420,"Gazebo Roof 2"],[127,o17243.o2013,o13351.o10420,"Gazebo Trigger 1"],[128,o17243.o2013,o13351.o10420,"Gazebo Trigger 2"],[129,o17243.o2013,o13351.o10420,"Gate 1"],[130,o17243.o2013,o13351.o10420,"Gate 2"],[131,o17243.o2013,o13351.o10420,"Gate 1 physics"],[132,o17243.o2013,o13351.o10420,"Gate 2 physics"],[133,o17243.o2013,o13351.o10420,"Boss Trigger 1"],[134,o17243.o2013,o13351.o10420,"Boss Trigger 2"],[135,o17243.o2013,o13351.o10420,"Area 1 Spawn Points"],[136,o17243.o2013,o13351.o10420,"Area 2 Spawn Points"],[137,o17243.o2013,o13351.o10420,"Secret Room 1 Door"],[138,o17243.o2013,o13351.o10420,"Secret Room 1 Roof"],[139,o17243.o2013,o13351.o10420,"Secret Room 2 Door"],[140,o17243.o2013,o13351.o10420,"Secret Room 2 Roof"],[141,o17243.o2013,o13351.o10420,"Secret Room 3 Door"],[142,o17243.o2013,o13351.o10420,"Secret Room 3 Roof"],[143,o17243.o2013,o13351.o10420,"Secret Room 4 Door"],[144,o17243.o2013,o13351.o10420,"Secret Room 4 Roof"],[145,o17243.o2013,o13351.o10420,"Secret Room 5 Door"],[146,o17243.o2013,o13351.o10420,"Secret Room 5 Roof"],[147,o17243.o2013,o13351.o10420,"Heli Locations Top"],[148,o17243.o2013,o13351.o10420,"Heli Locations Bottom"]];
    
   
   private var o3037:int = 1;
   
   private var o17290:int = 2;
   
   private var o4869:int = 3;
   
   private var o15138:int = 4;
   
   private var o10829:int = 5;
   
   private var o3579:Array;
   
   private var o8151:Array;
   
   private var o18074:Array;
   
   private var o5085:Array;
   
   private var o19849:Array;
   
   private var o5930:Array;
   
   private var o17233:Array;
   
   private var o1513:Array;
   
   private var o13339:int = 0;
   
   private var o4163:int = 0;
   
   private var o14995:int = 0;
   
   private var o2227:int = 0;
   
   private var o13678:int = 0;
   
   private var o17096:int = 0;
   
   private var o20887:int = 0;
   
   private var o6313:int = 0;
   
   private var o1932:int = 0;
   
   private var o7989:int = 0;
   
   private var o2897:int = 0;
   
   private var o2543:int = 0;
   
   private var o1942:int = 0;
   
   private var o8932:int = 0;
   
   private var o2975:int = 0;
   
   private var o5838:int = 0;
   
   private var o3249:int = 0;
   
   private var o877:int = 0;
   
   private var o11544:int = 0;
   
   private var o8751:int = 0;
   
   private var o14756:int = 0;
   
   private var o14735:int = 0;
   
   private var o429:int = 0;
   
   private var o20241:int = 0;
   
   private var o2979:Number = 0;
   
   private var o17423:Number = 0;
   
   private var o16956:Number = 0;
   
   private var o13025:Number = 0;
   
   private var o17194:Number = 0;
   
   private var o513:Number = 5;
   
   private var o19505 = null;
   
   private var o156:o13732 = null;
   
   private var o12880:o10262;
   
   private var o5035:o10262;
   
   private var o7228:o7331;
   
   private var o19056:o7331;
   
   private var o5619:o10262;
   
   private var o19226:o10262;
   
   private var o15882:o20567;
   
   private var o15762;
   
   private var o16329;
   
   private var o16597:Boolean = false;
   
   private var o8251:Boolean = false;
   
   private var o11264:Boolean = true;
   
   private var o6191:Boolean = false;
   
   private var o13470:Boolean = false;
   
   private var o367:Boolean = false;
   
   private var o18410:Boolean = false;
   
   private var o14928:Boolean = false;
   
   private var o16212:Boolean = false;
   
   private var o19069:int = 6;
   
   private var o18399:Boolean = false;
   
   private var o9933:Number = 0;
   
   private var o17862:o3047 = null;
   
   private var o14711:Dictionary;
   
   private var o3908:Boolean = false;
   
   private var o17572:int = -1;
   
   private var o1108;
   
   private var o12724:Boolean = false;
   
   private var o4451:Boolean = false;
   
   private var o18008:Boolean = false;
   
   private var o13827:Number = 15;
   
   function o16625()
   {
      o3579 = [];
      o8151 = [];
      o18074 = [];
      o5085 = [];
      o19849 = [];
      o5930 = [];
      o17233 = [];
      o1513 = [];
      o14711 = new Dictionary();
      super();
   }
   
   public static function o16900(param1:Vector.<String>, param2:String) : Vector.<String>
   {
      var _loc4_:* = null;
      var _loc6_:* = null;
      var _loc3_:int = 0;
      var _loc8_:int = 0;
      var _loc7_:* = param1;
      for each(var _loc5_ in param1)
      {
         if(_loc5_)
         {
            _loc4_ = /Walk|o2601|o13383|Death/;
            _loc6_ = _loc5_.match(_loc4_);
            if(_loc6_ && _loc6_.length > 0)
            {
               param1[_loc3_] = _loc5_.replace(".vip",".vip" + param2);
            }
         }
         _loc3_++;
      }
      return param1;
   }
   
   override public function getCacheAssets() : Vector.<String>
   {
      var _loc2_:Vector.<String> = new Vector.<String>();
      _loc2_.push("assets.civilians.vip.Walk");
      _loc2_.push("assets.civilians.vip.Idle");
      _loc2_.push("assets.civilians.vip.Cower");
      _loc2_.push("assets.civilians.vip.Death");
      _loc2_.push("assets.common.BloodPartical");
      _loc2_.push("assets.maps.governor.helicopter");
      _loc2_.push("assets.maps.governor.heiicopterBlade");
      _loc2_.push("assets.enemies.boss1Zombie.Worm");
      _loc2_.push("assets.enemies.boss1Zombie.WormAttack");
      if(o4519.o8116.o476.o9392.o16643())
      {
         o15882 = o4519.o8116.o476.o9392.o7908();
         var _loc4_:int = 0;
         var _loc3_:* = o15882.o7929;
         for each(var _loc1_ in o15882.o7929)
         {
            if(_loc1_ == "VIP")
            {
               _loc2_ = o16900(_loc2_,o15882.name);
            }
         }
      }
      return _loc2_;
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc3_:int = 0;
      o19505 = this;
      o3579[0] = new o10066([2,6]);
      o3579[1] = new o10066([1],true,0);
      o3579[2] = new o10066([5,9]);
      o3579[3] = new o10066([5],true,1);
      o3579[4] = new o10066([3,4]);
      o3579[5] = new o10066([1,8]);
      o3579[6] = new o10066([8]);
      o3579[7] = new o10066([6,7,9,11]);
      o3579[8] = new o10066([3,8]);
      o3579[9] = new o10066([11,13]);
      o3579[10] = new o10066([8,10,12]);
      o3579[11] = new o10066([11],true,2);
      o3579[12] = new o10066([10,14,15,16]);
      o3579[13] = new o10066([13,15]);
      o3579[14] = new o10066([13,14,17]);
      o3579[15] = new o10066([19,20]);
      o3579[16] = new o10066([15],true,3);
      o3579[17] = new o10066([20],true,4);
      o3579[18] = new o10066([16]);
      o3579[19] = new o10066([16,18]);
      o5930 = [];
      o1513 = [];
      o5085 = [];
      o19849 = [];
      _loc3_ = 0;
      while(_loc3_ < 20)
      {
         o5930[_loc3_] = 0;
         _loc3_++;
      }
      o13339 = param2.readShort();
      o4163 = param2.readShort();
      o13678 = param2.readShort();
      o17096 = param2.readShort();
      o20887 = param2.readShort();
      o6313 = param2.readShort();
      o1932 = param2.readShort();
      o7989 = param2.readShort();
      o2897 = param2.readShort();
      o2543 = param2.readShort();
      o1942 = param2.readShort();
      o8932 = param2.readShort();
      o2975 = param2.readShort();
      o5838 = param2.readShort();
      o3249 = param2.readShort();
      o877 = param2.readShort();
      _loc3_ = 0;
      while(_loc3_ < 5)
      {
         o8151[_loc3_] = param2.readShort();
         o18074[_loc3_] = param2.readShort();
         _loc3_++;
      }
      if(param2.bytesAvailable > 0)
      {
         o14995 = param2.readShort();
         o2227 = param2.readShort();
      }
      o11544 = o6313;
      if(o11264)
      {
         o11544 = o17096;
      }
      o2174();
      o850();
      o12526();
      o1958();
      o19119();
      o15270();
      o429 = 0;
      o8751 = 0;
      o14711 = new Dictionary();
      o18410 = false;
      o8251 = false;
      o6191 = false;
      o13470 = false;
      o14928 = false;
      o2979 = 240;
      o17423 = 240;
      o16956 = 960;
      o949(param1);
      if(o4519.o13206.o2685.o4326 == 2)
      {
         o17862 = o4519.o13206.o19304(0,0);
      }
      o4519.o13206.o16280(this,o16450.o9745,o9060);
   }
   
   private function o9060(param1:Event) : void
   {
      var _loc4_:* = null;
      var _loc3_:int = 0;
      o1051.o4767(this,0.5,o8007);
      o1051.o4767(this,0.0333333333333333,o19679);
      o1051.o9310(this,0.5,o3822);
      if(o4519.o8116.o476.o9392.o16643())
      {
         _loc4_ = o4519.o8116.o476.o9392.o7908();
         if(_loc4_ && _loc4_.id == 2)
         {
            if(o12891.o19505)
            {
               o12891.o19505.o2944(_loc4_.name);
            }
            o19069 = 15;
            o18399 = true;
         }
      }
      o4519.o8116.o20488.o17336();
      o4519.o8116.o20488.o19764(1);
      o4519.o13206.o16280(this,o8694.o1956,o14957);
      o4519.o13206.o16280(this,o576.o2321,o15750);
      o4519.o13206.o16280(this,o576.o20247,o20224);
      o4519.o13206.o16280(this,o18437.o7178,o17085);
      o3047.o2154.o16280(this,o8694.o2412,o2412);
      o4519.o8116.o6895.o16280(this,o19254.o13083,o13083);
      _loc3_ = 0;
      while(_loc3_ < 20)
      {
         o19849[_loc3_] = o4519.o9721.o12334("Room_" + (_loc3_ + 1).toString());
         _loc3_++;
      }
      o15762 = o4519.o9721.o12334("Top_Spawn");
      o3047.o2154.o16280(o15762,o8694.o2412,o2412);
      o16329 = o4519.o9721.o12334("Bottom_Spawn");
      o3047.o2154.o16280(o16329,o8694.o2412,o2412);
      o20241 = int(o4519.o8116.random.o10418(o5973) * 2) + 3;
      o211();
      o16212 = true;
      this.o5019 = "VipMasterController";
      this.name = "VipMasterController";
      var _loc2_:* = o4519.o8116.o2996.o20716("FailSafeTeleportZone");
      if(_loc2_)
      {
         _loc2_.o14456();
      }
   }
   
   private function o211(param1:Event = null) : void
   {
      o4519.o8116.o20488.o12056("VIPArrowTop");
      o4519.o8116.o20488.o12056("VIPArrowBottom");
      o4519.o8116.o20488.o13122("VIPArrow2");
      o4519.o8116.o20488.o13122("VIPArrow4");
      o4519.o8116.o20488.o13122("VIPArrow12");
      o4519.o8116.o20488.o13122("VIPArrow17");
      o4519.o8116.o20488.o13122("VIPArrow18");
   }
   
   private function o2412(param1:o6961) : void
   {
      var _loc2_:o18442 = param1.o18481;
      if(_loc2_.o12555 == 999)
      {
         o429 = Number(o429) + 1;
         _loc2_.o16280(this,o14571.o19115,o17935);
      }
   }
   
   private function o17935(param1:Event = null) : void
   {
      o429 = Number(o429) - 1;
      if(o429 <= 0 && o8751 > 0 && o16597 && o18410 == false)
      {
         o906();
         o4937();
      }
   }
   
   private function o3822() : void
   {
      var _loc1_:int = 0;
      var _loc2_:* = undefined;
      _loc1_ = 0;
      while(_loc1_ < 5)
      {
         _loc2_ = o4519.o9721.o7963(o4519.o9721.o7352[o18074[_loc1_]].o6041[0].id);
         o17233[_loc1_] = o4519.o8116.o11954.o10869();
         o17233[_loc1_].o16396 = o17541.o13617(_loc2_);
         o17233[_loc1_].position = new o2415();
         o17233[_loc1_].o16990 = 110;
         o4519.o8116.o11954.o9226(o17233[_loc1_]);
         _loc1_++;
      }
   }
   
   private function o15270() : void
   {
      var _loc2_:o10262 = o18001(o2975,!o11264);
      var _loc1_:o10262 = o18001(o5838,o11264);
      if(o11264)
      {
         o12880 = _loc1_;
         o5035 = _loc2_;
      }
      else
      {
         o12880 = _loc2_;
         o5035 = _loc1_;
      }
   }
   
   private function o18001(param1:int, param2:Boolean) : o10262
   {
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc6_:o17761 = new o17761(_loc5_.o2535);
      var _loc4_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[param1].o6041[0].id);
      _loc6_.o14486(_loc4_);
      var _loc3_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o17517.o6365,o17517.o6365,true);
      _loc3_.o10289 = _loc6_.id;
      _loc5_.o14230(_loc3_);
      if(param2)
      {
         _loc5_.o16280(this,o8273.o7087,o458);
      }
      else
      {
         _loc5_.o16280(this,o8273.o7087,o10256);
      }
      return _loc5_;
   }
   
   private function o458(param1:o663) : void
   {
      o12880.o12657(o8273.o7087,o458);
      o1051.o9310(this,2,o16222);
      o4519.o8116.o20488.o20575(1);
      if(o11264)
      {
         o4519.o8116.o20488.o13122("VIPArrowTop");
      }
      else
      {
         o4519.o8116.o20488.o13122("VIPArrowBottom");
      }
   }
   
   private function o16222() : void
   {
      var o10727:Boolean = false;
      if(o11264)
      {
         o10727 = true;
      }
      o19505 = this;
      var o10396:Vector.<o13304> = new Vector.<o13304>();
      o10396.push(new o13304(6,1));
      var o12990:Vector.<o20743> = o10176.o10383(o10396,5);
      if(o4519.o13206.o2685.o4326 == 2)
      {
         var o19153:ByteArray = new ByteArray();
         o19153.writeByte(o10829);
         o19153.writeBoolean(o10727);
         dispatchData(new o2149(o19505,o19153));
      }
      var o1903:int = 0;
      while(o1903 < o12990.length)
      {
         if(o12990[o1903].o9899 != -1)
         {
            var data:ByteArray = new ByteArray();
            data.writeByte(o15138);
            data.writeBoolean(o10727);
            data.writeInt(o12990[o1903].o9899);
            data.writeInt(o12990[o1903].grade);
            data.writeBoolean(false);
            dispatchData(new o2149(o19505,data));
         }
         o1903 = Number(o1903) + 1;
      }
      o1051.o9310(this,6,function():void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc2_:Vector.<o13304> = new Vector.<o13304>();
         _loc2_.push(new o13304(6,0.7));
         var _loc1_:Vector.<o20743> = o10176.o10383(_loc2_,5);
         _loc4_ = 0;
         while(_loc4_ < _loc1_.length)
         {
            if(_loc1_[_loc4_].o9899 != -1)
            {
               _loc3_ = new ByteArray();
               _loc3_.writeByte(o15138);
               _loc3_.writeBoolean(o10727);
               _loc3_.writeInt(_loc1_[_loc4_].o9899);
               _loc3_.writeInt(_loc1_[_loc4_].grade);
               _loc3_.writeBoolean(false);
               dispatchData(new o2149(o19505,_loc3_));
            }
            _loc4_++;
         }
      });
      o1051.o9310(this,12,function():void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc2_:Vector.<o13304> = new Vector.<o13304>();
         _loc2_.push(new o13304(6,0.7));
         _loc2_.push(new o13304(7,0.1));
         var _loc1_:Vector.<o20743> = o10176.o10383(_loc2_,6);
         _loc4_ = 0;
         while(_loc4_ < _loc1_.length)
         {
            if(_loc1_[_loc4_].o9899 != -1)
            {
               _loc3_ = new ByteArray();
               _loc3_.writeByte(o15138);
               _loc3_.writeBoolean(o10727);
               _loc3_.writeInt(_loc1_[_loc4_].o9899);
               _loc3_.writeInt(_loc1_[_loc4_].grade);
               _loc3_.writeBoolean(false);
               dispatchData(new o2149(o19505,_loc3_));
            }
            _loc4_++;
         }
      });
      o1051.o9310(this,18,function():void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc2_:Vector.<o13304> = new Vector.<o13304>();
         _loc2_.push(new o13304(6,1));
         _loc2_.push(new o13304(7,0.1));
         var _loc1_:Vector.<o20743> = o10176.o10383(_loc2_,6);
         _loc4_ = 0;
         while(_loc4_ < _loc1_.length)
         {
            if(_loc1_[_loc4_].o9899 != -1)
            {
               _loc3_ = new ByteArray();
               _loc3_.writeByte(o15138);
               _loc3_.writeBoolean(o10727);
               _loc3_.writeInt(_loc1_[_loc4_].o9899);
               _loc3_.writeInt(_loc1_[_loc4_].grade);
               _loc3_.writeBoolean(false);
               dispatchData(new o2149(o19505,_loc3_));
            }
            _loc4_++;
         }
      });
      o1051.o9310(this,24,function():void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc2_:Vector.<o13304> = new Vector.<o13304>();
         _loc2_.push(new o13304(6,1.4));
         _loc2_.push(new o13304(7,0.7));
         var _loc1_:Vector.<o20743> = o10176.o10383(_loc2_,6);
         _loc4_ = 0;
         while(_loc4_ < _loc1_.length)
         {
            if(_loc1_[_loc4_].o9899 != -1)
            {
               _loc3_ = new ByteArray();
               _loc3_.writeByte(o15138);
               _loc3_.writeBoolean(o10727);
               _loc3_.writeInt(_loc1_[_loc4_].o9899);
               _loc3_.writeInt(_loc1_[_loc4_].grade);
               _loc3_.writeBoolean(false);
               dispatchData(new o2149(o19505,_loc3_));
            }
            _loc4_++;
         }
         o16597 = true;
      });
      if(o13470 == false)
      {
         o13470 = true;
         o1051.o9310(this,5,function():void
         {
            var _loc1_:String = o4519.o8116.profileData.o10206(!!o18399?"dialogMessage.vipMessages.msgZombdroidsXmas":"dialogMessage.vipMessages.msgZombdroids");
            o4519.o8116.o20488.o2251(o19069,_loc1_);
         });
      }
   }
   
   private function o10256(param1:o663) : void
   {
      o5035.o12657(o8273.o7087,o10256);
      o1051.o9310(this,2,o8483);
      if(o11264)
      {
         o4519.o8116.o20488.o13122("VIPArrowBottom");
      }
      else
      {
         o4519.o8116.o20488.o13122("VIPArrowTop");
      }
   }
   
   private function o8483() : void
   {
      var o10727:Boolean = true;
      if(o11264)
      {
         o10727 = false;
      }
      o19505 = this;
      var o3182:int = o10176.o13327() * o10176.o6407();
      var o5959:int = 1 + o3182 / 400 * 4;
      var o4036:Array = o17199(o5959);
      var o10396:Vector.<o13304> = new Vector.<o13304>();
      o10396.push(new o13304(6,1));
      var o12990:Vector.<o20743> = o10176.o10383(o10396,6);
      var o1903:int = 0;
      while(o1903 < o12990.length)
      {
         if(o12990[o1903].o9899 != -1)
         {
            var data:ByteArray = new ByteArray();
            data.writeByte(o15138);
            data.writeBoolean(o10727);
            data.writeInt(o12990[o1903].o9899);
            data.writeInt(o12990[o1903].grade);
            data.writeBoolean(false);
            dispatchData(new o2149(o19505,data));
         }
         o1903 = Number(o1903) + 1;
      }
      o1051.o9310(this,6,function():void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc2_:Vector.<o13304> = new Vector.<o13304>();
         _loc2_.push(new o13304(6,1));
         var _loc1_:Vector.<o20743> = o10176.o10383(_loc2_,6);
         _loc4_ = 0;
         while(_loc4_ < _loc1_.length)
         {
            if(_loc1_[_loc4_].o9899 != -1)
            {
               _loc3_ = new ByteArray();
               _loc3_.writeByte(o15138);
               _loc3_.writeBoolean(o10727);
               _loc3_.writeInt(_loc1_[_loc4_].o9899);
               _loc3_.writeInt(_loc1_[_loc4_].grade);
               _loc3_.writeBoolean(false);
               dispatchData(new o2149(o19505,_loc3_));
            }
            _loc4_++;
         }
      });
      o1051.o9310(this,12,function():void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc2_:Vector.<o13304> = new Vector.<o13304>();
         _loc2_.push(new o13304(6,2));
         var _loc1_:Vector.<o20743> = o10176.o10383(_loc2_,6);
         _loc4_ = 0;
         while(_loc4_ < _loc1_.length)
         {
            if(_loc1_[_loc4_].o9899 != -1)
            {
               _loc3_ = new ByteArray();
               _loc3_.writeByte(o15138);
               _loc3_.writeBoolean(o10727);
               _loc3_.writeInt(_loc1_[_loc4_].o9899);
               _loc3_.writeInt(_loc1_[_loc4_].grade);
               _loc3_.writeBoolean(false);
               dispatchData(new o2149(o19505,_loc3_));
            }
            _loc4_++;
         }
      });
      if(o13470 == false)
      {
         o13470 = true;
         o1051.o9310(this,5,function():void
         {
            var _loc1_:String = o4519.o8116.profileData.o10206(!!o18399?"dialogMessage.vipMessages.msgZombdroidsXmas":"dialogMessage.vipMessages.msgZombdroids");
            o4519.o8116.o20488.o2251(o19069,_loc1_);
         });
      }
   }
   
   private function o17199(param1:int, param2:Number = 30) : Array
   {
      var _loc6_:int = 0;
      if(param1 == 0)
      {
         return null;
      }
      var _loc4_:int = o10176.o13327() * o10176.o6407();
      var _loc5_:int = _loc4_ / param2;
      var _loc3_:Array = [];
      _loc6_ = 0;
      while(_loc6_ < param1)
      {
         _loc3_[_loc6_] = 0;
         _loc6_++;
      }
      while(_loc5_ > 0)
      {
         _loc6_ = 0;
         while(_loc6_ < param1)
         {
            if(_loc3_[_loc6_] < 1)
            {
               var _loc7_:* = _loc3_;
               var _loc8_:* = _loc6_;
               var _loc9_:* = Number(_loc7_[_loc8_]) + 1;
               _loc7_[_loc8_] = _loc9_;
               _loc5_--;
            }
            if(_loc6_ == param1 - 1 || _loc5_ <= 0 || _loc3_[_loc6_] < 1 && _loc3_[_loc6_] - 1 == _loc3_[_loc6_ + 1])
            {
               if(_loc6_ == param1 - 1 && _loc3_[_loc6_] == 1)
               {
                  _loc5_ = 0;
               }
               break;
            }
            _loc6_++;
         }
      }
      return _loc3_;
   }
   
   private function o19119() : void
   {
      o7228 = o4519.o9721.o7833(o2897);
      o7228.gotoAndStop(0);
      o5619 = o5352(o1942);
      o19056 = o4519.o9721.o7833(o2543);
      o19056.gotoAndStop(0);
      o19226 = o5352(o8932);
   }
   
   public function o5352(param1:int) : o10262
   {
      var _loc9_:* = null;
      var _loc6_:* = null;
      var _loc3_:o10262 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc5_:o13848 = o4519.o9721.o7352[param1];
      var _loc8_:Vector.<o18509> = o4519.o9721.o7963(_loc5_.o6041[0].id);
      var _loc10_:Vector.<Vector.<o18509>> = o12075.o7521(_loc8_);
      var _loc12_:o18509 = new o18509();
      var _loc4_:int = 0;
      var _loc16_:int = 0;
      var _loc15_:* = _loc10_;
      for each(var _loc2_ in _loc10_)
      {
         var _loc14_:int = 0;
         var _loc13_:* = _loc2_;
         for each(var _loc11_ in _loc2_)
         {
            _loc12_.x = _loc12_.x + _loc11_.x;
            _loc12_.y = _loc12_.y + _loc11_.y;
            _loc4_++;
         }
      }
      _loc12_.x = _loc12_.x / _loc4_;
      _loc12_.y = _loc12_.y / _loc4_;
      var _loc20_:int = 0;
      var _loc19_:* = _loc10_;
      for each(_loc2_ in _loc10_)
      {
         var _loc18_:int = 0;
         var _loc17_:* = _loc2_;
         for each(_loc11_ in _loc2_)
         {
            _loc11_.x = _loc11_.x - _loc12_.x;
            _loc11_.y = _loc11_.y - _loc12_.y;
         }
      }
      var _loc22_:int = 0;
      var _loc21_:* = _loc10_;
      for each(var _loc7_ in _loc10_)
      {
         _loc9_ = new o17761(_loc3_.o2535);
         _loc9_.o14486(_loc7_);
         _loc6_ = o4519.o8116.o20600.o15803(o8723.o19523);
         _loc6_.o10289 = _loc9_.id;
         _loc3_.o14230(_loc6_);
      }
      _loc3_.o13392(_loc12_);
      return _loc3_;
   }
   
   private function o850() : void
   {
      var _loc2_:* = undefined;
      var _loc4_:* = null;
      var _loc1_:* = null;
      var _loc6_:o10262 = o4519.o8116.o9869.o1968(0,0,false);
      if(o11264)
      {
         _loc2_ = o4519.o9721.o7963(o4519.o9721.o7352[o4163].o6041[0].id);
      }
      else
      {
         _loc2_ = o4519.o9721.o7963(o4519.o9721.o7352[o13339].o6041[0].id);
      }
      var _loc5_:Vector.<Vector.<o18509>> = o12075.o7521(_loc2_);
      var _loc8_:int = 0;
      var _loc7_:* = _loc5_;
      for each(var _loc3_ in _loc5_)
      {
         _loc4_ = new o17761(_loc6_.o2535);
         _loc4_.o14486(_loc3_);
         _loc1_ = o4519.o8116.o20600.o15803(o8723.o9077,o8723.o12624,o8723.o12624,true);
         _loc1_.o10289 = _loc4_.id;
         _loc6_.o14230(_loc1_);
      }
      _loc6_.o16280(this,o8273.o7087,o4368);
      _loc6_.o16280(this,o8273.o20083,o15041);
   }
   
   private function o1958() : void
   {
      var _loc1_:int = o7989;
      if(o11264)
      {
         _loc1_ = o1932;
      }
      var _loc4_:o10262 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc5_:o17761 = new o17761(_loc4_.o2535);
      var _loc3_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc1_].o6041[0].id);
      _loc5_.o14486(_loc3_);
      var _loc2_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o17517.o6365,o17517.o6365,true);
      _loc2_.o10289 = _loc5_.id;
      _loc4_.o14230(_loc2_);
      _loc4_.o19926(this,o8273.o7087,o17324);
   }
   
   private function o17324(param1:o663) : void
   {
      var _loc5_:o4332 = o4519.o9721.o12831(o11544);
      var _loc3_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
      var _loc2_:Number = o20384.random() * 150 + 100;
      var _loc6_:Number = o20384.random() * 150 + 100;
      var _loc4_:o6743 = o4519.o8116.o2996.o2998(_loc3_,[new o18509(_loc5_.position.x + _loc2_,_loc5_.position.y + _loc6_),o1197.o19789,0]) as o6743;
      o4519.o8116.o11954.o17454(_loc5_);
   }
   
   public function o12526() : void
   {
      var _loc1_:* = null;
      if(o11264)
      {
         _loc1_ = o4519.o9721.o12831(o20887);
         if(_loc1_ != null)
         {
            o4519.o8116.o11954.o17454(_loc1_);
         }
         _loc1_ = o4519.o9721.o12831(o6313);
         if(_loc1_ != null)
         {
            o4519.o8116.o11954.o17454(_loc1_);
         }
      }
      else
      {
         _loc1_ = o4519.o9721.o12831(o13678);
         if(_loc1_ != null)
         {
            o4519.o8116.o11954.o17454(_loc1_);
         }
         _loc1_ = o4519.o9721.o12831(o17096);
         if(_loc1_ != null)
         {
            o4519.o8116.o11954.o17454(_loc1_);
         }
      }
   }
   
   public function o4368(param1:o663) : void
   {
      o8751 = Number(o8751) + 1;
      if(o429 <= 0 && o16597 && o18410 == false)
      {
         o906();
         o4937();
      }
   }
   
   private function o17085(param1:Event = null) : void
   {
      o4519.o8116.o6169.o595();
      o4519.o13206.o14994();
      o20419();
   }
   
   private function o906() : void
   {
      var _loc1_:* = null;
      if(o367 == false)
      {
         o367 = true;
         if(o156.o10691() < 0.5)
         {
            _loc1_ = o4519.o8116.profileData.o10206(!!o18399?"dialogMessage.vipMessages.msgSuccess2Xmas":"dialogMessage.vipMessages.msgSuccess2");
         }
         else
         {
            _loc1_ = o4519.o8116.profileData.o10206(!!o18399?"dialogMessage.vipMessages.msgSuccess1Xmas":"dialogMessage.vipMessages.msgSuccess1");
         }
         o4519.o8116.o20488.o2251(o19069,_loc1_);
      }
   }
   
   public function o15041(param1:o18091) : void
   {
      o8751 = Number(o8751) - 1;
   }
   
   public function o20419() : void
   {
      if(o156)
      {
         if(o156.o10691() >= 0.95)
         {
            o4519.o8116.o12094.setAchievement(388,1);
         }
      }
   }
   
   private function o19679() : void
   {
      var _loc3_:int = 0;
      var _loc2_:* = null;
      var _loc1_:Number = (getTimer() - o13025) / 1000;
      o13025 = getTimer();
      o17194 = o17194 + _loc1_;
      o513 = 0.25;
      if(o17194 > o513)
      {
         o17194 = 0;
         if(o5085.length == 0)
         {
            return;
         }
         _loc3_ = 0;
         _loc2_ = new ByteArray();
         _loc2_.writeByte(o4869);
         _loc2_.writeInt(o5085[_loc3_].id);
         _loc2_.writeInt(o4519.o8116.o14443.o20753[o5085[_loc3_].o18948]);
         _loc2_.writeInt(o5085[_loc3_].grade);
         _loc2_.writeBoolean(false);
         dispatchData(new o2149(this,_loc2_));
         o5085.splice(_loc3_,1);
      }
   }
   
   private function o2174() : void
   {
      var _loc3_:int = 0;
      var _loc2_:Boolean = o4519.o13206.o2685.o4326 == 2?true:false;
      var _loc4_:Vector.<o13304> = new Vector.<o13304>();
      _loc4_.push(new o13304(0,4));
      _loc4_.push(new o13304(1,2));
      if(_loc2_)
      {
         _loc4_.push(new o13304(6,0.2));
         _loc4_.push(new o13304(7,0.1));
      }
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(0,2));
      _loc4_.push(new o13304(1,1));
      _loc4_.push(new o13304(3,0.5));
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(0,2));
      _loc4_.push(new o13304(1,2));
      _loc4_.push(new o13304(2,0.5));
      if(_loc2_)
      {
         _loc4_.push(new o13304(6,0.1));
         _loc4_.push(new o13304(7,0.1));
      }
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(0,2));
      _loc4_.push(new o13304(1,1));
      _loc4_.push(new o13304(3,0.5));
      o1513.push(_loc4_);
      _loc4_.push(new o13304(1,3));
      _loc4_.push(new o13304(0,3));
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(0,1.5));
      _loc4_.push(new o13304(4,0.5));
      _loc4_.push(new o13304(3,0.5));
      if(_loc2_)
      {
         _loc4_.push(new o13304(6,0.2));
         _loc4_.push(new o13304(7,0.1));
      }
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(0,1.5));
      _loc4_.push(new o13304(5,0.5));
      _loc4_.push(new o13304(2,0.5));
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(0,2.5));
      _loc4_.push(new o13304(1,2.5));
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(1,2.5));
      _loc4_.push(new o13304(3,1.5));
      if(_loc2_)
      {
         _loc4_.push(new o13304(6,0.2));
         _loc4_.push(new o13304(7,0.1));
      }
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(2,1));
      _loc4_.push(new o13304(3,1));
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(1,2.5));
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(5,0.5));
      _loc4_.push(new o13304(4,0.5));
      _loc4_.push(new o13304(0,2.5));
      if(_loc2_)
      {
         _loc4_.push(new o13304(6,0.2));
         _loc4_.push(new o13304(7,0.1));
      }
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(0,5));
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(1,2));
      _loc4_.push(new o13304(2,1));
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(2,1));
      _loc4_.push(new o13304(5,0.5));
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(0,3));
      _loc4_.push(new o13304(3,0.5));
      _loc4_.push(new o13304(4,0.5));
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(3,1));
      _loc4_.push(new o13304(1,2.5));
      if(_loc2_)
      {
         _loc4_.push(new o13304(6,0.2));
         _loc4_.push(new o13304(7,0.2));
      }
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(0,2.5));
      _loc4_.push(new o13304(1,1));
      _loc4_.push(new o13304(2,1));
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(3,0.5));
      _loc4_.push(new o13304(2,0.5));
      _loc4_.push(new o13304(1,1.5));
      if(_loc2_)
      {
         _loc4_.push(new o13304(6,0.2));
         _loc4_.push(new o13304(7,0.1));
      }
      o1513.push(_loc4_);
      _loc4_ = new Vector.<o13304>();
      _loc4_.push(new o13304(0,2.5));
      _loc4_.push(new o13304(1,2.5));
      o1513.push(_loc4_);
      var _loc5_:Array = new Array(o1513.length);
      var _loc1_:int = 0;
      _loc3_ = 0;
      while(_loc3_ < _loc5_.length)
      {
         _loc1_ = o4519.o8116.random.o10418(0) * o1513.length;
         _loc5_[_loc3_] = o1513.splice(_loc1_,1)[0];
         _loc3_++;
      }
      o1513 = _loc5_.concat();
   }
   
   private function o8007() : void
   {
      var _loc1_:* = null;
      var _loc2_:Number = NaN;
      if(o6191 == false)
      {
         if(o16956 < 0)
         {
            o2979 = o2979 - 1;
            if(o2979 <= 0)
            {
               o2979 = 0;
               o4519.o13206.o8765();
            }
         }
         else
         {
            o16956 = o16956 - 1;
            if(o16956 < 0)
            {
               _loc1_ = o4519.o8116.profileData.o10206(!!o18399?"dialogMessage.vipMessages.msgTimesUpXmas":"dialogMessage.vipMessages.msgTimesUp");
               o4519.o8116.o20488.o2251(o19069,_loc1_);
            }
         }
         _loc2_ = o2979 / o17423;
         o4519.o8116.o20488.o19764(_loc2_);
      }
   }
   
   private function o11500() : void
   {
      var _loc1_:int = 0;
      var _loc6_:* = null;
      var _loc2_:int = 0;
      var _loc10_:* = undefined;
      var _loc12_:Number = NaN;
      var _loc13_:int = 0;
      var _loc3_:* = null;
      var _loc9_:* = undefined;
      var _loc5_:* = undefined;
      var _loc4_:* = null;
      var _loc11_:Number = NaN;
      var _loc8_:* = null;
      var _loc7_:* = null;
      if(false == o8251)
      {
         return;
      }
      o8251 = false;
      _loc2_ = 0;
      while(_loc2_ < o3579.length)
      {
         if(o5930[_loc2_] > 0)
         {
            o3579[_loc2_].o6535 = o3579[_loc2_].o5820;
            o3579[_loc2_].o5820 = false;
            _loc10_ = o19849[_loc2_];
            if(o3579[_loc2_].o12005 && o3579[_loc2_].o6535 != o3579[_loc2_].o5820)
            {
               _loc10_.o16385();
               if(!o3908 && o4519.o13206.o2685.o4326 == 2)
               {
                  o16999(_loc10_.o3302());
                  o3908 = true;
               }
               o4519.o8116.o4812.o4404.o17009.play(0.75,0,1);
               if(o14735 >= o20241 && o6191 == false)
               {
                  _loc12_ = o2979 / o17423;
                  o156 = _loc10_.o2885(_loc12_);
                  if(o156)
                  {
                     o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdgeVIP(),o156);
                     o6191 = true;
                  }
                  else if(!o12724)
                  {
                     o1108 = _loc10_;
                     o17572 = o1051.o9310(this,1,o8991);
                     o12724 = true;
                  }
                  o4519.o8116.o20488.o20575(0);
                  _loc13_ = 0;
                  while(_loc13_ < o3579.length)
                  {
                     if(o3579[_loc13_].o12005 == false)
                     {
                        o3579[_loc13_].o6535 = true;
                        o3579[_loc13_].o5820 = true;
                     }
                     _loc13_++;
                  }
                  _loc3_ = o4519.o8116.profileData.o10206(!!o18399?"dialogMessage.vipMessages.msgVIPReleasedXmas":"dialogMessage.vipMessages.msgVIPReleased");
                  o4519.o8116.o20488.o2251(o19069,_loc3_);
                  if(o16956 < 0)
                  {
                     _loc9_ = new Vector.<o13304>();
                     _loc9_.push(new o13304(0,2));
                     _loc5_ = o10176.o10383(_loc9_,3);
                     _loc1_ = 0;
                     while(_loc1_ < _loc5_.length)
                     {
                        _loc4_ = new ByteArray();
                        _loc4_.writeByte(o4869);
                        _loc4_.writeInt(_loc2_);
                        _loc4_.writeInt(o4519.o8116.o14443.o20753[_loc5_[_loc1_].o18948]);
                        _loc4_.writeInt(_loc5_[_loc1_].grade);
                        _loc4_.writeBoolean(true);
                        dispatchData(new o2149(this,_loc4_));
                        _loc1_++;
                     }
                  }
                  o7228.gotoAndPlay(0);
                  o7228.o12265 = false;
                  o19056.gotoAndPlay(0);
                  o19056.o12265 = false;
                  o5619.o19115();
                  o19226.o19115();
                  o4519.o8116.o20488.o13122("VIPArrowTop");
                  o4519.o8116.o20488.o13122("VIPArrowBottom");
                  o4519.o8116.o20488.o12056("VIPArrow2");
                  o4519.o8116.o20488.o12056("VIPArrow4");
                  o4519.o8116.o20488.o12056("VIPArrow12");
                  o4519.o8116.o20488.o12056("VIPArrow17");
                  o4519.o8116.o20488.o12056("VIPArrow18");
               }
               else
               {
                  _loc10_ = o19849[_loc2_];
                  _loc11_ = o4519.o8116.random.o10418(_loc2_);
                  if(_loc11_ >= 0.5)
                  {
                     _loc10_.o5796();
                  }
                  else
                  {
                     _loc9_ = new Vector.<o13304>();
                     _loc9_.push(new o13304(0,1));
                     _loc9_.push(new o13304(1,0.5));
                     _loc5_ = o10176.o10383(_loc9_,4);
                     _loc1_ = 0;
                     while(_loc1_ < _loc5_.length)
                     {
                        _loc4_ = new ByteArray();
                        _loc4_.writeByte(o4869);
                        _loc4_.writeInt(_loc2_);
                        _loc4_.writeInt(o4519.o8116.o14443.o20753[_loc5_[_loc1_].o18948]);
                        _loc4_.writeInt(_loc5_[_loc1_].grade);
                        _loc4_.writeBoolean(false);
                        dispatchData(new o2149(this,_loc4_));
                        _loc1_++;
                     }
                  }
               }
               o4519.o8116.o20488.o12056("VIPArrow" + (_loc2_ + 1).toString());
               _loc8_ = new o6880(o17233[o3579[_loc2_].o9901]);
               _loc8_.o20013(0.5,true);
               o4519.o13206.dispatchData(new o11210(61 + _loc2_));
               _loc7_ = o4519.o9721.o12831(o8151[o3579[_loc2_].o9901]);
               if(_loc7_ != null)
               {
                  o4519.o8116.o11954.o17454(_loc7_);
               }
               o14735 = Number(o14735) + 1;
            }
            else if(o3579[_loc2_].o6535 != o3579[_loc2_].o5820)
            {
               _loc1_ = 0;
               while(_loc1_ < o3579[_loc2_].o17350.length)
               {
                  o15059(o3579[_loc2_].o17350[_loc1_] - 1,o3579[o3579[_loc2_].o17350[_loc1_] - 1].o12005);
                  _loc1_++;
               }
            }
         }
         _loc2_++;
      }
   }
   
   private function o8991() : void
   {
      var _loc1_:Number = o2979 / o17423;
      this.o156 = o1108.o2885(_loc1_);
      if(o156)
      {
         o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdgeVIP(),o156);
         o6191 = true;
      }
      else
      {
         o1051.o19115(o17572);
         o17572 = -1;
         o17572 = o1051.o9310(this,1,o8991);
      }
   }
   
   private function o16999(param1:o18509) : void
   {
      var _loc4_:Boolean = false;
      var _loc3_:* = undefined;
      var _loc5_:* = null;
      if(o17862)
      {
         o17862.position.x = param1.x;
         o17862.position.y = param1.y;
         _loc4_ = false;
         _loc3_ = o10176.o8930(70);
         var _loc7_:int = 0;
         var _loc6_:* = _loc3_;
         for each(var _loc2_ in _loc3_)
         {
            _loc5_ = o17862.o3370(_loc2_.o18948,_loc2_.grade,param1,0,_loc2_.o12555,true,_loc2_.o1673);
         }
      }
   }
   
   private function o15059(param1:int, param2:Boolean) : void
   {
      var _loc3_:* = undefined;
      var _loc5_:int = 0;
      var _loc4_:* = null;
      if(param2)
      {
         return;
      }
      _loc3_ = o10176.o10383(o1513[o14756 % 20],5,40);
      _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         _loc4_ = {};
         _loc4_.id = param1;
         _loc4_.o18948 = _loc3_[_loc5_].o18948;
         _loc4_.grade = _loc3_[_loc5_].grade;
         o5085.push(_loc4_);
         _loc5_++;
      }
      o14756 = Number(o14756) + 1;
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc12_:int = 0;
      var _loc3_:* = null;
      var _loc4_:int = 0;
      var _loc9_:int = 0;
      var _loc7_:Boolean = false;
      var _loc11_:* = undefined;
      var _loc5_:Boolean = false;
      var _loc6_:Boolean = false;
      var _loc10_:Boolean = false;
      if(o16212 == false)
      {
         return;
      }
      param2.position = 0;
      var _loc8_:int = param2.readByte();
      var _loc13_:* = _loc8_;
      switch(_loc13_)
      {
         case o3037:
            _loc12_ = param2.readInt();
            _loc3_ = o3579[_loc12_ - 1];
            _loc13_ = o5930;
            var _loc14_:* = _loc12_ - 1;
            var _loc15_:* = Number(_loc13_[_loc14_]) + 1;
            _loc13_[_loc14_] = _loc15_;
            if(o5930[_loc12_ - 1] >= 1)
            {
               o8251 = true;
               o11500();
            }
            break;
         case o17290:
            _loc12_ = param2.readInt();
            _loc13_ = o5930;
            _loc14_ = _loc12_ - 1;
            _loc15_ = Number(_loc13_[_loc14_]) - 1;
            _loc13_[_loc14_] = _loc15_;
            if(o5930[_loc12_ - 1] <= 0)
            {
               o8251 = true;
               o11500();
            }
            break;
         case o4869:
            _loc12_ = param2.readInt();
            _loc4_ = param2.readInt();
            _loc9_ = param2.readInt();
            _loc7_ = param2.readBoolean();
            _loc11_ = o19849[_loc12_];
            _loc11_.o13284(o4519.o8116.o14443.o8635[_loc4_],_loc9_,_loc7_);
            break;
         case o15138:
            _loc5_ = param2.readBoolean();
            _loc4_ = param2.readInt();
            _loc9_ = param2.readInt();
            _loc6_ = param2.readBoolean();
            _loc11_ = o16329;
            if(_loc5_)
            {
               _loc11_ = o15762;
            }
            _loc11_.o13284(o4519.o8116.o20291[o17439.o12681[_loc4_]],_loc9_,_loc6_);
            break;
         case o10829:
            if(o4519.o13206.o2685.o4326 == 2 && o18008 == false)
            {
               _loc10_ = param2.readBoolean();
               _loc11_ = o16329;
               if(_loc5_)
               {
                  _loc11_ = o15762;
               }
               _loc11_.o3480();
               o18008 = true;
            }
      }
   }
   
   private function o15750(param1:o12108 = null) : void
   {
      var _loc2_:int = param1.id * 4;
      if(o6191)
      {
         _loc2_ = _loc2_ + 2;
      }
      else
      {
         _loc2_ = _loc2_ + 0;
      }
      var _loc3_:ByteArray = new ByteArray();
      _loc3_.writeByte(o3037);
      _loc3_.writeInt(param1.id);
      dispatchData(new o2149(this,_loc3_,false,false,_loc2_));
   }
   
   private function o20224(param1:o2059 = null) : void
   {
      var _loc2_:int = param1.id * 4;
      if(o6191)
      {
         _loc2_ = _loc2_ + 3;
      }
      else
      {
         _loc2_ = _loc2_ + 1;
      }
      var _loc3_:ByteArray = new ByteArray();
      _loc3_.writeByte(o17290);
      _loc3_.writeInt(param1.id);
      dispatchData(new o2149(this,_loc3_,false,false,_loc2_));
   }
   
   public function o13083(param1:o16898 = null) : void
   {
      var _loc3_:* = null;
      var _loc2_:int = 0;
      if(o6191 && o14928 == false)
      {
         o14928 = true;
         _loc3_ = o4519.o8116.profileData.o10206(!!o18399?"dialogMessage.vipMessages.msgTreasure1Xmas":"dialogMessage.vipMessages.msgTreasure1");
         o4519.o8116.o20488.o2251(o19069,_loc3_);
         if(o4519.o32.o1217 == 0)
         {
            _loc2_ = 8;
         }
         else if(o4519.o32.o1217 == 1)
         {
            _loc2_ = 10;
         }
         else if(o4519.o32.o1217 == 2)
         {
            _loc2_ = 9;
         }
         _loc3_ = o4519.o8116.profileData.o10206(!!o18399?"dialogMessage.vipMessages.msgTreasure2Xmas":"dialogMessage.vipMessages.msgTreasure2");
         o4519.o8116.o20488.o2251(_loc2_,_loc3_);
      }
   }
   
   private function o14957(param1:o11210) : void
   {
      if(param1.o13743 == 200)
      {
         o4519.o8116.profileData.o202.o10318();
      }
   }
   
   private function o4937() : void
   {
      var _loc1_:* = null;
      var _loc6_:* = undefined;
      var _loc3_:* = null;
      var _loc5_:int = 0;
      var _loc12_:* = null;
      var _loc11_:int = 0;
      var _loc10_:int = 0;
      var _loc8_:* = undefined;
      if(o18410)
      {
         return;
      }
      var _loc9_:int = o2227;
      if(o11264)
      {
         _loc9_ = o14995;
      }
      var _loc4_:o13848 = o4519.o9721.o7352[_loc9_];
      var _loc7_:o18437 = new o18437();
      _loc7_.initialise(new o18509(0,0),new o18509(_loc4_.o6041[0].x,_loc4_.o6041[0].y));
      _loc7_.o14891();
      o9304();
      o4519.o13206.o20582 = true;
      o14320();
      if(o4519.o13206.o2685.o4326 == 1 && o13800.o18381)
      {
         _loc1_ = new o16123(50);
         _loc6_ = o10176.o8930(_loc1_.value);
         _loc3_ = new o16123(0);
         _loc5_ = 1;
         var _loc14_:int = 0;
         var _loc13_:* = _loc6_;
         for each(var _loc2_ in _loc6_)
         {
            _loc3_.value = _loc3_.value + o13800.o13588(this.o5973,_loc2_.o9899,_loc2_.o5751 == 2,_loc2_.grade >= 10);
            _loc5_++;
         }
         o14200.o19505.o7923.o10005 = _loc3_.value;
         _loc12_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DropSpecificLoot"];
         if(_loc3_.value > 0)
         {
            _loc11_ = Math.ceil(_loc3_.value / 10 < 1?1:_loc3_.value / 10 > 10?10:_loc3_.value / 10);
            _loc10_ = 0;
            while(_loc10_ < _loc11_)
            {
               _loc8_ = o4519.o8116.o2996.o2998(_loc12_,[new o18509(o156.body.position.x,o156.body.position.y),o19053.o10094,0,0,null,true]) as o6743;
               if(_loc8_)
               {
                  _loc8_.body.o6141(Math.random() >= 0.5?Math.random() * 100 * -1:Math.random() * 100,Math.random() >= 0.5?Math.random() * 100 * -1:Math.random() * 100);
               }
               _loc10_++;
            }
         }
      }
      o18410 = true;
   }
   
   private function o14320() : void
   {
      o4519.o8116.o8756.o2282.o17511();
      o1051.o4767(this,1,o6835,16,true);
   }
   
   private function o6835() : void
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
   
   private function o9304() : void
   {
      var _loc1_:Date = new Date();
      o9933 = _loc1_.valueOf();
      o4519.o8116.o4812.o4404.o7343.play(0.5,2147483647,0,false,null,0,0,o9933);
   }
   
   override public function o19115() : void
   {
      o4519.o8116.o20488.o16740();
      if(o17862)
      {
         o4519.o8116.o14443.o7609(o17862);
         o17862.o19115();
      }
      o17862 = null;
      super.o19115();
   }
}
