package
{
   import flash.display.Sprite;
   
   public class o13741 extends Sprite
   {
       
      
      public function o13741()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o462;
      }
   }
}

import assets.ui.MiniMapArrowEdge;
import assets.ui.VIPMarker;
import flash.events.Event;
import flash.utils.ByteArray;

class o462 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"found captain trig"],[2,o17243.o2013,o13351.o10420,"hvm soldier retreat point"],[3,o17243.o2013,o13351.o10420,"captain trig 2"],[20,o17243.o2013,o13351.o10420,"speed up trigger"],[19,o17243.o2013,o13351.o10420,"avalanche trigger"],[4,o17243.o2013,o13351.o10420,"avalanche asset"],[5,o17243.o2013,o13351.o10420,"avalanche asset"],[6,o17243.o2013,o13351.o10420,"avalanche asset"],[7,o17243.o2013,o13351.o10420,"avalanche asset"],[8,o17243.o2013,o13351.o10420,"avalanche asset"],[9,o17243.o2013,o13351.o10420,"avalanche asset"],[10,o17243.o2013,o13351.o10420,"avalanche asset"],[11,o17243.o2013,o13351.o10420,"avalanche asset"],[12,o17243.o2013,o13351.o10420,"avalanche asset"],[13,o17243.o2013,o13351.o10420,"avalanche asset"],[14,o17243.o2013,o13351.o10420,"avalanche asset"],[15,o17243.o2013,o13351.o10420,"rock asset"],[16,o17243.o2013,o13351.o10420,"rock asset"],[17,o17243.o2013,o13351.o10420,"rock asset"],[18,o17243.o2013,o13351.o10420,"rock asset"],[22,o17243.o2013,o13351.o10420,"rock asset"],[23,o17243.o2013,o13351.o10420,"rock asset"],[24,o17243.o2013,o13351.o10420,"rock asset"],[21,o17243.o2013,o13351.o10420,"physics after avalanche"]];
    
   
   private const o14028:int = 1;
   
   private const o14874:int = 2;
   
   private const o12855:int = 3;
   
   private const o1238:int = 4;
   
   private const o482:int = 5;
   
   private const o13283:int = 6;
   
   private const o17976:int = 7;
   
   private const o15895:int = 8;
   
   private const o9353:int = 9;
   
   private const o7762:int = 11;
   
   private const o16501:int = 12;
   
   private const o6199:int = 13;
   
   private const o7987:int = 22;
   
   private var o13230;
   
   private var o2946:o10262;
   
   private var o10885:o10262;
   
   private var o16820:Boolean = false;
   
   private var o16068:Array;
   
   private var o2561:o18509;
   
   private const o15547:Number = 200;
   
   private var o6342:Number;
   
   private var o6558:Number;
   
   private var o18878:int;
   
   private var o17502:int;
   
   private var o19982:Vector.<o4332>;
   
   private var o617:Number = -9999;
   
   private var o7917:Number = -9999;
   
   private var o20384:o7600;
   
   private var o16936;
   
   private var o20968;
   
   private var o18194:Class;
   
   private var o14280:o10262;
   
   private var o11892:o10262;
   
   private var o10173:Vector.<o4332>;
   
   private var o2299:Vector.<o7331>;
   
   private var o2184;
   
   private var o7280;
   
   private var o153:int;
   
   private var o191:o17517;
   
   private var o14509:int = -1;
   
   private var o1847:int = -1;
   
   private var o19066:int = 0;
   
   private var o18449:int = -1;
   
   private var o8721:Boolean = false;
   
   private var o12994:Boolean = false;
   
   private var o1875;
   
   private var o1232:int = -1;
   
   private var o1740:o4399;
   
   private var o4477:int;
   
   private var o5438:int = 1;
   
   private var o12424:Boolean = false;
   
   private const o966:int = 20;
   
   private var o13868:int = 20;
   
   function o462()
   {
      o19982 = new Vector.<o4332>();
      o10173 = new Vector.<o4332>();
      o2299 = new Vector.<o7331>();
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.maps.snow.snowFall");
      return _loc1_;
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc5_:int = 0;
      var _loc11_:int = 0;
      var _loc6_:* = null;
      var _loc8_:* = null;
      o20384 = new o7600(param1);
      super.o16955(param1);
      var _loc14_:int = param2.readShort();
      var _loc12_:int = param2.readShort();
      var _loc9_:int = param2.readShort();
      var _loc15_:int = param2.readShort();
      var _loc13_:int = param2.readShort();
      _loc5_ = 0;
      while(_loc5_ < 18)
      {
         _loc11_ = param2.readShort();
         _loc6_ = o4519.o9721.o12831(_loc11_);
         _loc8_ = o4519.o9721.o7833(_loc11_);
         if(!(_loc11_ == 0 || _loc6_ == null))
         {
            o10173.push(_loc6_);
            o2299.push(_loc8_);
            _loc8_.gotoAndStop(int(Math.random() * 5));
         }
         _loc5_++;
      }
      o153 = param2.readShort();
      o2946 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc7_:o17761 = new o17761(o2946.o2535);
      var _loc4_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc14_].o6041[0].id);
      _loc7_.o14486(_loc4_);
      var _loc3_:o4039 = o4519.o8116.o20600.o15803(o8723.trigger,o8723.o32,o8723.o32,true);
      _loc3_.o10289 = _loc7_.id;
      o2946.o14230(_loc3_);
      o2946.o16280(this,o8273.o7087,o19441);
      o10885 = o4519.o8116.o9869.o1968(0,0,false);
      _loc7_ = new o17761(o10885.o2535);
      _loc4_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc9_].o6041[0].id);
      _loc7_.o14486(_loc4_);
      _loc3_ = o4519.o8116.o20600.o15803(o8723.trigger,o8723.o32,o8723.o32,true);
      _loc3_.o10289 = _loc7_.id;
      o10885.o14230(_loc3_);
      var _loc10_:o4332 = o4519.o9721.o12831(_loc12_);
      o2561 = new o18509(_loc10_.position.x,_loc10_.position.y);
      o4519.o8116.o11954.o11867(_loc10_);
      o14280 = o4519.o8116.o9869.o1968(0,0,false);
      _loc7_ = new o17761(o14280.o2535);
      _loc4_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc15_].o6041[0].id);
      _loc7_.o14486(_loc4_);
      _loc3_ = o4519.o8116.o20600.o15803(o8723.trigger,o8723.o32 | o8723.o14328,o8723.o32 | o8723.o14328,true);
      _loc3_.o10289 = _loc7_.id;
      o14280.o14230(_loc3_);
      o11892 = o4519.o8116.o9869.o1968(0,0,false);
      _loc7_ = new o17761(o11892.o2535);
      _loc4_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc13_].o6041[0].id);
      _loc7_.o14486(_loc4_);
      _loc3_ = o4519.o8116.o20600.o15803(o8723.trigger,o8723.o32 | o8723.o14328,o8723.o32 | o8723.o14328,true);
      _loc3_.o10289 = _loc7_.id;
      o11892.o14230(_loc3_);
      o4519.o13206.o16280(this,o16450.o9745,o2203);
   }
   
   private function o2203(param1:Event) : void
   {
      var _loc7_:int = 0;
      var _loc6_:* = null;
      var _loc14_:* = undefined;
      var _loc11_:Number = NaN;
      var _loc5_:* = NaN;
      var _loc17_:* = null;
      var _loc15_:int = o10176.o13327();
      var _loc8_:o14506 = o4519.o9721.o20360.o2566(0,o2561.x,o2561.y,o8723.o3732,o8723.o3969 | o8723.o18180,Vector.<int>([]));
      _loc8_.defer(o14535);
      var _loc3_:Vector.<o8925> = o4519.o8116.o1184.o3762(2);
      o16068 = [];
      _loc7_ = 0;
      while(_loc7_ < _loc3_.length)
      {
         if(_loc3_[_loc7_].id == 22)
         {
            _loc6_ = _loc3_[_loc7_];
         }
         _loc7_++;
      }
      o13230 = o4519.o9721.o12334("captain");
      o13230.o10555.o8231(_loc6_);
      o13230.o10555.o2752.o2493 = (1 + _loc15_ * 0.2) * 3;
      o13230.o10555.o5946(4500 + _loc15_ * 600);
      o16068.push(o13230.o10555);
      var _loc12_:Number = 34 + _loc15_ * 2;
      var _loc9_:* = Number(_loc12_ - 60);
      if(_loc9_ > 91)
      {
         _loc9_ = 91;
      }
      var _loc4_:Vector.<o8925> = new Vector.<o8925>();
      var _loc10_:* = 0;
      var _loc19_:int = 0;
      var _loc18_:* = _loc3_;
      for each(var _loc13_ in _loc3_)
      {
         if(!_loc13_.o5168 && _loc13_.o20133 >= _loc9_ && _loc13_.o20133 <= _loc12_)
         {
            _loc4_.push(_loc13_);
            _loc10_ = Number(_loc10_ + _loc13_.o7498);
         }
      }
      var _loc16_:int = 1;
      while(true)
      {
         _loc14_ = o4519.o9721.o12334("soldier" + _loc16_.toString());
         if(!(_loc14_ == null || _loc14_.o14999))
         {
            _loc11_ = o20384.random() * _loc10_;
            _loc5_ = 0;
            var _loc21_:int = 0;
            var _loc20_:* = _loc4_;
            for each(_loc13_ in _loc4_)
            {
               _loc5_ = Number(_loc5_ + _loc13_.o7498);
               if(_loc11_ < _loc5_)
               {
                  _loc17_ = _loc13_;
                  break;
               }
            }
            _loc14_.o10555.o8231(_loc17_);
            _loc14_.o10555.o2752.o2493 = 1 + _loc15_ * 0.02;
            _loc14_.o10555.o5946(3000 + _loc15_ * 450);
            o16068.push(_loc14_.o10555);
            _loc16_++;
            continue;
         }
         break;
      }
      var _loc23_:int = 0;
      var _loc22_:* = o16068;
      for each(var _loc2_ in o16068)
      {
         _loc2_.o2752.o18404 = 1000000;
         _loc2_.o2752.o11119 = o8723.o17798;
         _loc2_.o2752.o3046 = o8723.o18481 | o8723.o3969 | o8723.o18180 | o8723.o19523;
      }
      _loc7_ = 1;
      while(_loc7_ <= 8)
      {
         o12891.o19505.o3036("snowdoor" + _loc7_.toString(),true);
         o12891.o19505.o12781("snowdoor" + _loc7_.toString(),4);
         _loc7_++;
      }
      o2184 = o4519.o8116.o2996.o20716("FailSafeTeleportZone");
      o7280 = o4519.o8116.o2996.o20716("endZoneFailSafe");
      o1051.o9310(this,1,o18552);
   }
   
   private function o14535(param1:o2041) : void
   {
      var _loc4_:int = 0;
      var _loc3_:* = o16068;
      for each(var _loc2_ in o16068)
      {
         o7141(_loc2_.o7616).o13846(o2561,param1);
      }
   }
   
   private function o18552() : void
   {
      o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdge(),o13230.o10555);
   }
   
   private function o19441(param1:o663) : void
   {
      o191 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      o2946.o19115();
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(1);
      _loc2_.writeInt(o191.o5973);
      dispatchData(new o2149(this,_loc2_,false,false,1));
   }
   
   private function o15177(param1:int) : void
   {
      o191 = o4519.o8116.o2996.o16775(param1) as o17517;
      o2946.o19115();
      o12891.o19505.o16587.o18312(o13230.o10555);
      if(o191 == o4519.o32)
      {
         o4519.o13206.o2034 = false;
      }
      var _loc2_:int = o16140(o191);
      var _loc3_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgScrawny");
      if(o4519.o13206.o2685.o7629() == 1)
      {
         _loc3_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgScrawnySing");
      }
      o4519.o8116.o20488.o2251(13,_loc3_,o18335);
      _loc3_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgDotDot");
      o4519.o8116.o20488.o2251(_loc2_,_loc3_);
      _loc3_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgMoveOut");
      o4519.o8116.o20488.o2251(13,_loc3_,null,o12330);
   }
   
   private function o16140(param1:o17517) : int
   {
      if(param1.o1217 == 0)
      {
         return 8;
      }
      if(param1.o1217 == 1)
      {
         return 10;
      }
      if(param1.o1217 == 2)
      {
         return 9;
      }
      return 0;
   }
   
   private function o18335() : void
   {
      if(o13230 && o13230.o10555 && o13230.o10555.o7616 && o191)
      {
         o13230.o10555.o7616.o13831(o191);
      }
      else
      {
         trace("Error: HVM captain tried to rotate to a player but something went wrong Report [" + o13230 + " " + o13230.o10555 + " " + o13230.o10555.o7616 + " " + o191 + "]");
      }
   }
   
   private function o12330() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(2);
      dispatchData(new o2149(this,_loc1_,true,false,2));
   }
   
   private function o4578() : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = undefined;
      o4519.o8116.o20488.o20575(0);
      if(o191 == o4519.o32)
      {
         o4519.o13206.o2034 = true;
      }
      var _loc5_:int = 0;
      var _loc4_:* = o16068;
      for each(var _loc1_ in o16068)
      {
         o7141(_loc1_.o7616).o7760();
      }
      o16936 = o4519.o9721.o12334("stationSpawner");
      o16936.o4526();
      _loc2_ = 1;
      while(_loc2_ <= 8)
      {
         o12891.o19505.o12781("snowdoor" + _loc2_.toString(),1);
         _loc3_ = o4519.o8116.o2996.o20716("snowdoor" + _loc2_.toString());
         _loc3_.o15027 = o13239;
         _loc2_++;
      }
      o14509 = o1051.o4767(this,3,o20763);
   }
   
   private function o20763() : void
   {
      if(!o16936.o9337())
      {
         return;
      }
      var _loc2_:Array = o4519.o8116.o2996.o20698(o18442);
      if(_loc2_.length > 0)
      {
         return;
      }
      o1051.o19115(o14509);
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(3);
      dispatchData(new o2149(this,_loc1_,true,false,3));
   }
   
   private function o18175() : void
   {
      o1051.o19115(o14509);
      var _loc4_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgTheLastOfThem");
      o4519.o8116.o20488.o2251(o16140(o4519.o32),_loc4_);
      var _loc2_:int = 0;
      var _loc8_:int = 0;
      var _loc7_:* = o16068;
      for each(var _loc1_ in o16068)
      {
         o7141(_loc1_.o7616).o15510();
         _loc2_ = _loc2_ + _loc1_.o20915;
      }
      var _loc6_:int = 0;
      var _loc3_:Array = o4519.o8116.o2996.o20698(o17517);
      var _loc10_:int = 0;
      var _loc9_:* = _loc3_;
      for each(var _loc5_ in _loc3_)
      {
         if(_loc5_)
         {
            _loc6_ = _loc6_ + _loc5_.o20915;
         }
      }
      if(_loc6_ > _loc2_)
      {
         _loc4_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgMoreKills");
      }
      else
      {
         _loc4_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgLessKills");
      }
      o4519.o8116.o20488.o2251(14,_loc4_);
      o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdge(),o13230.o10555);
      o4519.o8116.o20488.o20575(1);
      o1847 = o1051.o4767(this,1,o19899);
   }
   
   private function o19899() : void
   {
      var _loc5_:int = 0;
      var _loc4_:* = o16068;
      for each(var _loc1_ in o16068)
      {
         if(o7141(_loc1_.o7616).o6394() == false)
         {
            return;
         }
      }
      var _loc3_:Vector.<o10262> = o4519.o8116.o9869.o8182(o10885);
      if(_loc3_.length == 0)
      {
         return;
      }
      o1051.o19115(o1847);
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(4);
      dispatchData(new o2149(this,_loc2_,true,false,4));
   }
   
   private function o7864() : void
   {
      o1051.o19115(o1847);
      o12891.o19505.o16587.o18312(o13230.o10555);
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgDoIt");
      o4519.o8116.o20488.o2251(13,_loc1_);
      o1051.o9310(this,2,o2192);
      if(!o7141.o14574)
      {
         o4519.o8116.o12094.setAchievement(545,1);
      }
   }
   
   private function o2192() : void
   {
      var _loc3_:int = 0;
      var _loc2_:* = o16068;
      for each(var _loc1_ in o16068)
      {
         o7141(_loc1_.o7616).o13454();
      }
      o1051.o9310(this,1.5,o20168);
      o1051.o9310(this,3.3,o20579);
   }
   
   private function o20168() : void
   {
      var _loc1_:* = o4519.o9721.o12334("ambulance");
      _loc1_.o20168();
   }
   
   private function o20579() : void
   {
      var _loc4_:int = 0;
      var _loc3_:* = o16068;
      for each(var _loc1_ in o16068)
      {
         o7141(_loc1_.o7616).o7939();
      }
      var _loc2_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgThosePeople");
      o4519.o8116.o20488.o2251(o16140(o4519.o32),_loc2_);
      _loc2_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgNoWitnesses");
      o4519.o8116.o20488.o2251(13,_loc2_,o18335,o8306);
   }
   
   private function o8306() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(5);
      dispatchData(new o2149(this,_loc1_,true,false,5));
   }
   
   private function o8372() : void
   {
      o4519.o8116.o20488.o20575(2);
      var _loc3_:int = 0;
      var _loc2_:* = o16068;
      for each(var _loc1_ in o16068)
      {
         _loc1_.o2752.o2493 = 0.38;
         o7141(_loc1_.o7616).o16769 = o7141(_loc1_.o7616).o16769 * 1.15;
         o7141(_loc1_.o7616).o3239();
      }
      o4519.o13206.dispatchData(new o11210(12));
      o1051.o9310(this,3,o11052);
   }
   
   private function o11052() : void
   {
      var _loc4_:int = 0;
      var _loc3_:* = o16068;
      for each(var _loc1_ in o16068)
      {
         if(_loc1_.o7694 == false)
         {
            o1051.o9310(this,3,o11052);
            return;
         }
      }
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(6);
      dispatchData(new o2149(this,_loc2_,true,false,6));
   }
   
   private function o14979() : void
   {
      var _loc1_:* = null;
      var _loc2_:* = undefined;
      o4519.o8116.o20488.o20575(3);
      if(o4519.o13206.o2685.o4326 == 2)
      {
         o19066 = 1;
         _loc1_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgNightBosses");
         o4519.o8116.o20488.o2251(o16140(o4519.o32),_loc1_);
         _loc2_ = o4519.o9721.o12334("IceStationNightBoss");
         _loc2_.o4526();
         o1051.o9310(this,15,o8137);
         o4519.o8116.o8756.o2282.o8445();
      }
      else
      {
         o10812();
      }
   }
   
   private function o8137() : void
   {
      var _loc2_:int = 0;
      var _loc3_:Array = o4519.o8116.o2996.o20698(o18442);
      _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         if(_loc3_[_loc2_].o12555 == 4)
         {
            o1051.o9310(this,3,o8137);
            return;
         }
         _loc2_++;
      }
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(13);
      dispatchData(new o2149(this,_loc1_,true,false,13));
   }
   
   private function o4549() : void
   {
      o4519.o8116.o8756.o2282.o17511();
      o4519.o8116.o20488.o20575(4);
      o10812();
   }
   
   private function o10812() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgLetsGo");
      o4519.o8116.o20488.o2251(12,_loc1_);
      o18194 = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.objects.IceStationTruck"];
      o20968 = o4519.o8116.o2996.o20716("theTruck");
      o20968.o16280(this,o18194.o14406,o14229);
      o20968.o10812();
      if(o4519.o13206.o2685.o7629() > 1)
      {
         o18449 = o1051.o9310(this,45,o3956);
      }
      o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdge(),o20968);
   }
   
   private function o3956() : void
   {
      var _loc1_:Boolean = false;
      if(o8721 == false)
      {
         _loc1_ = o2184.o14456();
         if(_loc1_)
         {
            o12994 = true;
            trace("Listening for players not on truck");
         }
      }
   }
   
   private function o14229(param1:Event) : void
   {
      o20968.o12657(o18194.o14406,o14229);
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(7);
      dispatchData(new o2149(this,_loc2_,true,false,7));
   }
   
   private function o3199() : void
   {
      var _loc1_:Boolean = false;
      o20968.o12657(o18194.o14406,o14229);
      o20968.o8977();
      var _loc2_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgGoGoGo");
      o4519.o8116.o20488.o2251(o16140(o4519.o32),_loc2_);
      o12891.o19505.o16587.o18312(o20968);
      var _loc3_:* = o4519.o8116.o2996.o20716("mainGate");
      _loc3_.o16489();
      o8721 = true;
      if(o18449 != -1)
      {
         o1051.o19115(o18449);
      }
      if(o12994)
      {
         _loc1_ = o2184.o7526();
         if(_loc1_)
         {
            trace("failsafeZone successfully disabled");
         }
         else
         {
            trace("failsafeZone was not disabled");
         }
      }
      o1051.o9310(this,2,o9526);
   }
   
   private function o9526() : void
   {
      var _loc2_:* = o4519.o8116.o2996.o20716("theTruck");
      o20968.o16280(this,o18194.o5749,o5614);
      o20968.o16280(this,o18194.o18941,o18776);
      o20968.o9526();
      o1875 = o4519.o9721.o12334("firstBlockadeTrig");
      o1875.o16280(this,o11376.o9522,o6429);
      o1875.o4526();
      o6743.o15986 = true;
      o14280.o16280(this,o8273.o7087,o4717);
      o11892.o16280(this,o8273.o7087,o7167);
      var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
      var _loc5_:int = 0;
      var _loc4_:* = _loc1_;
      for each(var _loc3_ in _loc1_)
      {
         if(_loc3_)
         {
            _loc3_.o16280(this,o2777.o7613,o6258);
         }
      }
      o4519.o8116.o20488.o20575(4 + o19066);
      o1232 = o1051.o4767(this,5,o20666);
   }
   
   private function o6429(param1:Event) : void
   {
      o1875.o19115();
      var _loc3_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgClearTheWay");
      o4519.o8116.o20488.o2251(12,_loc3_);
      var _loc2_:* = o4519.o8116.o2996.o20716("blockade1");
      o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdge(),_loc2_);
      o1051.o9310(this,5,o6149);
   }
   
   private function o6149() : void
   {
      var _loc1_:* = o4519.o8116.o2996.o20716("blockade1");
      o12891.o19505.o16587.o18312(_loc1_);
   }
   
   private function o5614(param1:Event) : void
   {
      o20968.o12657(o18194.o5749,o5614);
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(8);
      dispatchData(new o2149(this,_loc2_,true,false,8));
   }
   
   private function o11387() : void
   {
      o20968.o12657(o18194.o5749,o5614);
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgBlockedIn");
      o4519.o8116.o20488.o2251(12,_loc1_);
      var _loc2_:* = o4519.o9721.o12334("roadBlockWaves");
      _loc2_.o4526();
      o1051.o9310(this,40,o15334);
   }
   
   private function o15334() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(9);
      dispatchData(new o2149(this,_loc1_,true,false,9));
   }
   
   private function o828() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgOverThere");
      o4519.o8116.o20488.o2251(o16140(o4519.o32),_loc1_);
      o20968.o14714();
   }
   
   private function o4717(param1:o663) : void
   {
      o14280.o12657(o8273.o7087,o4717);
      o4519.o8116.o4812.o4404.o14686.play(1);
      var _loc2_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgThatNoise");
      o4519.o8116.o20488.o2251(12,_loc2_);
      o1740 = o4519.o13206.o16821(2);
      o4477 = o1051.o4767(this,0.5,o12223);
      o20968.o14064();
   }
   
   private function o12223() : void
   {
      o1740.o15771 = o1740.o15771 + 2;
   }
   
   private function o7167(param1:o663) : void
   {
      o11892.o12657(o8273.o7087,o7167);
      var _loc5_:int = 0;
      var _loc4_:* = o2299;
      for each(var _loc3_ in o2299)
      {
         _loc3_.play();
      }
      var _loc2_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgAvalanche");
      o4519.o8116.o20488.o2251(12,_loc2_);
      o4519.o8116.o4812.o4404.o14151.play(1);
      o4519.o13206.dispatchData(new o11210(14));
   }
   
   private function o18776(param1:Event) : void
   {
      o4519.o13206.o754(o1740);
      o1051.o19115(o4477);
      o1051.o19115(o1232);
      var _loc2_:Array = o4519.o8116.o2996.o20698(o17517);
      var _loc5_:int = 0;
      var _loc4_:* = _loc2_;
      for each(var _loc3_ in _loc2_)
      {
         if(_loc3_)
         {
            _loc3_.o12657(o2777.o7613,o6258);
         }
      }
      o1051.o9310(this,1.5,o17732);
   }
   
   private function o17732() : void
   {
      o4519.o9721.o3865(Vector.<int>([o153]),o8723.o18180,4294967295);
      o20968.o17251();
      o6743.o15986 = false;
      var _loc3_:* = o4519.o9721.o12334("bossSpawn");
      _loc3_.o20949 = true;
      _loc3_.o10053 = o17207;
      var _loc1_:Boolean = o7280.o14456();
      if(_loc1_)
      {
         trace("Endzone Teleport Script started");
      }
      var _loc2_:Array = o4519.o8116.o2996.o20698(o18442).concat();
      var _loc6_:int = 0;
      var _loc5_:* = _loc2_;
      for each(var _loc4_ in _loc2_)
      {
         o4519.o8116.o8361.o5725(_loc4_,o4016.o10062().initialise(999999999,8,null));
         _loc4_.o19115();
      }
   }
   
   private function o6258(param1:Event) : void
   {
      o20968.o7613();
   }
   
   private function o17207() : void
   {
      o4519.o8116.o8756.o2282.o8445();
      o1051.o9310(this,5,o1773);
      o1051.o9310(this,3,o19502);
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgBossFight");
      o4519.o8116.o20488.o2251(o16140(o4519.o32),_loc1_);
      o4519.o8116.o20488.o20575(5 + o19066);
   }
   
   private function o1773() : void
   {
      if(o12424)
      {
         return;
      }
      var _loc1_:* = o4519.o9721.o12334("bossWave" + o5438.toString());
      _loc1_.o4526();
      o5438 = Number(o5438) + 1;
      if(o5438 == 6)
      {
         return;
      }
      o1051.o9310(this,12,o1773);
   }
   
   private function o19502() : void
   {
      var _loc2_:int = 0;
      var _loc3_:Array = o4519.o8116.o2996.o20698(o18442);
      _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         if(_loc3_[_loc2_].o12555 == 3)
         {
            o1051.o9310(this,3,o19502);
            return;
         }
         _loc2_++;
      }
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(11);
      dispatchData(new o2149(this,_loc1_,true,false,11));
   }
   
   private function o6594() : void
   {
      o12424 = true;
      o16502();
      o1051.o9310(this,30,o17253);
   }
   
   private function o17253() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(12);
      dispatchData(new o2149(this,_loc1_,true,false,12));
   }
   
   private function o16502() : void
   {
      var _loc2_:int = 0;
      var _loc3_:Array = o4519.o8116.o2996.o20698(o18442);
      _loc2_ = 0;
      if(_loc2_ >= _loc3_.length)
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeByte(12);
         dispatchData(new o2149(this,_loc1_,true,false,12));
         return;
      }
      o1051.o9310(this,3,o16502);
   }
   
   private function o17481() : void
   {
      o4519.o8116.o20488.o20575(6 + o19066);
      o4519.o8116.o8756.o2282.o17511();
      o4519.o13206.o20582 = true;
      o1051.o4767(this,1,o3305,20 + 1,true);
      o1051.o9310(this,20,o6380);
   }
   
   private function o6380() : void
   {
      o4519.o13206.o14994();
   }
   
   private function o3305() : void
   {
      o4519.o8116.o20488.o19411 = o10403(o13868);
      o13868 = o13868 - 1;
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
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      switch(int(_loc3_) - 1)
      {
         case 0:
            o15177(param2.readInt());
            break;
         case 1:
            o4578();
            break;
         case 2:
            o18175();
            break;
         case 3:
            o7864();
            break;
         case 4:
            o8372();
            break;
         case 5:
            o14979();
            break;
         case 6:
            o3199();
            break;
         case 7:
            o11387();
            break;
         case 8:
            o828();
            break;
         default:
            o828();
            break;
         case 10:
            o6594();
            break;
         case 11:
            o17481();
            break;
         case 12:
            o4549();
      }
   }
   
   private function o20491(param1:Event) : void
   {
      o1051.o9310(this,4,o6478);
   }
   
   private function o6478() : void
   {
      o20968.o7492();
      o14280.o16280(this,o8273.o7087,o4717);
      o11892.o16280(this,o8273.o7087,o7167);
      var _loc3_:int = 0;
      var _loc2_:* = o2299;
      for each(var _loc1_ in o2299)
      {
         _loc1_.gotoAndStop(int(Math.random() * 5));
      }
   }
   
   private function o11744(param1:Event) : void
   {
      var _loc4_:int = 0;
      var _loc3_:* = o19982;
      for each(var _loc2_ in o19982)
      {
         _loc2_.o9824 = o4519.o8116.o9690;
      }
   }
   
   private function o3961() : void
   {
      if(o4519.o8116.o9690 == false)
      {
         return;
      }
      var _loc3_:Number = o4519.o8116.o18929.x - o617;
      var _loc2_:Number = o4519.o8116.o18929.y - o7917;
      _loc3_ = _loc3_ - 4;
      _loc2_ = _loc2_ - 7;
      o617 = o4519.o8116.o18929.x;
      o7917 = o4519.o8116.o18929.y;
      var _loc5_:int = 0;
      var _loc4_:* = o19982;
      for each(var _loc1_ in o19982)
      {
         _loc1_.position.x = _loc1_.position.x - _loc3_ / 5;
         _loc1_.position.y = _loc1_.position.y - _loc2_ / 5;
         while(_loc1_.position.x < o4519.o8116.o18929.x - 200)
         {
            _loc1_.position.x = _loc1_.position.x + 200 * o18878;
         }
         while(_loc1_.position.x > o4519.o8116.o18929.x + o6342 + 200)
         {
            _loc1_.position.x = _loc1_.position.x - 200 * o18878;
         }
         while(_loc1_.position.y < o4519.o8116.o18929.y + 20 - 200)
         {
            _loc1_.position.y = _loc1_.position.y + 200 * o17502;
         }
         while(_loc1_.position.y > o4519.o8116.o18929.y + 20 + o6558 + 200)
         {
            _loc1_.position.y = _loc1_.position.y - 200 * o17502;
         }
      }
   }
   
   private function o13239(param1:String, param2:Number, param3:Number) : void
   {
      var _loc4_:int = 1;
      if(param2 <= 0)
      {
         _loc4_ = 3;
      }
      else if(param2 / param3 < 0.5)
      {
         _loc4_ = 2;
      }
      if(o12891.o19505)
      {
         o12891.o19505.o12781(param1,_loc4_);
      }
   }
   
   private function o20666() : void
   {
      var _loc4_:Number = NaN;
      var _loc3_:Number = NaN;
      var _loc1_:Array = o4519.o8116.o2996.o20698(o18442).slice();
      var _loc6_:int = 0;
      var _loc5_:* = _loc1_;
      for each(var _loc2_ in _loc1_)
      {
         _loc4_ = _loc2_.body.position.x - o20968.body.position.x;
         _loc3_ = _loc2_.body.position.y - o20968.body.position.y;
         if(_loc4_ * _loc4_ + _loc3_ * _loc3_ > 4000000)
         {
            o4519.o8116.o8361.o5725(_loc2_,o4016.o10062().initialise(999999999,8,null));
            _loc2_.o19115();
         }
      }
   }
   
   override public function o19115() : void
   {
      o13230 = null;
      if(o2946)
      {
         o2946.o19115();
      }
      o2946 = null;
      if(o10885)
      {
         o10885.o19115();
      }
      o10885 = null;
      o16068 = null;
      o2561 = null;
      o19982 = null;
      o20384 = null;
      o16936 = null;
      o20968 = null;
      o18194 = null;
      if(o14280)
      {
         o14280.o19115();
      }
      o14280 = null;
      if(o11892)
      {
         o11892.o19115();
      }
      o11892 = null;
      o10173 = null;
      o2299 = null;
      o191 = null;
      o1875 = null;
      o1051.o19115(o18449);
      if(o1740)
      {
         o4519.o13206.o754(o1740);
      }
      o1740 = null;
      super.o19115();
   }
}
