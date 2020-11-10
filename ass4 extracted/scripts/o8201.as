package
{
   import flash.display.Sprite;
   
   public class o8201 extends Sprite
   {
       
      
      public function o8201()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o11490;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o11490 extends o15755
{
   
   public static var o20272:Array = [[23,o17243.o8809,o13351.o10420,"mission time"],[1,o17243.o2013,o13351.o10420,"vaccine pos 1"],[2,o17243.o2013,o13351.o10420,"vaccine pos 2"],[3,o17243.o2013,o13351.o10420,"vaccine pos 3"],[4,o17243.o2013,o13351.o10420,"vaccine pos 4"],[5,o17243.o2013,o13351.o10420,"vaccine pos 5"],[6,o17243.o2013,o13351.o10420,"vaccine pos 6"],[7,o17243.o2013,o13351.o10420,"dropship start 1"],[8,o17243.o2013,o13351.o10420,"dropship pos 1"],[9,o17243.o2013,o13351.o10420,"dropship end 1"],[10,o17243.o2013,o13351.o10420,"dropship start 2"],[13,o17243.o2013,o13351.o10420,"dropship pos 2"],[14,o17243.o2013,o13351.o10420,"dropship end 2"],[15,o17243.o2013,o13351.o10420,"dropship start 3"],[16,o17243.o2013,o13351.o10420,"dropship pos 3"],[17,o17243.o2013,o13351.o10420,"dropship end 3"],[18,o17243.o2013,o13351.o10420,"dropship start 4"],[19,o17243.o2013,o13351.o10420,"dropship pos 4"],[20,o17243.o2013,o13351.o10420,"dropship end 4"],[11,o17243.o2013,o13351.o10420,"switch image"],[12,o17243.o2013,o13351.o10420,"switch trigger"],[21,o17243.o2013,o13351.o10420,"dead guy trigger"],[22,o17243.o2013,o13351.o10420,"lab entrance trigger"],[24,o17243.o2013,o13351.o10420,"terminal entrance trigger"]];
   
   private static var o19693:Vector.<String>;
    
   
   private const o2475:int = 1;
   
   private const o4870:int = 2;
   
   private const o12353:int = 3;
   
   private const o1796:int = 4;
   
   private const o18443:int = 5;
   
   private const o10854:int = 6;
   
   private const o1191:int = 7;
   
   private const o3169:int = 8;
   
   private const o6129:int = 9;
   
   private const o5362:int = 50;
   
   private var o6263:Vector.<o18509>;
   
   private var o13991:Vector.<o18509>;
   
   private var o9035:Number;
   
   private var o13508:int;
   
   private var o20447:o7331;
   
   private var o11199:o10262;
   
   private var o10806:o10262;
   
   private var o4525:o10262;
   
   private var o14846:o10262;
   
   private var o5928:o4332;
   
   private var o2378:o7331;
   
   private var o17804:o10262;
   
   private var o13579:int;
   
   private var o13006:Boolean;
   
   private var o20384:o7600;
   
   private var o18024:int;
   
   private var o16752:Boolean = false;
   
   private var o17964:Boolean = false;
   
   private var o5380:Boolean = false;
   
   private var o6636:o3642;
   
   private var o16869:int = 0;
   
   private var o11805:Boolean = false;
   
   private var o4303:Boolean = false;
   
   private var o16857:int = 0;
   
   private var o7347:Boolean = false;
   
   private var o12985:Boolean = false;
   
   private var o1740:o4399;
   
   private var o5772:int = 0;
   
   private const o10804:Array = [new o18509(3314,3353),new o18509(3091,3353),new o18509(3091,2855),new o18509(3314,2855)];
   
   function o11490()
   {
      o6263 = new Vector.<o18509>();
      o13991 = new Vector.<o18509>();
      super();
   }
   
   public static function getCacheAssets() : Vector.<String>
   {
      o19693 = new Vector.<String>();
      o19693.push("assets.maps.labs.theVaccine");
      o19693.push("assets.maps.labs.spaceship");
      o19693.push("assets.maps.labs.Booster");
      o19693.push("assets.avatar.pose.rifle.Vaccine");
      o19693.push("assets.avatar.pose.attack.Vaccine");
      o19693.push("assets.avatar.pose.pistol.Vaccine");
      return o19693;
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:int = 0;
      var _loc8_:int = 0;
      var _loc9_:* = null;
      super.o16955(param1);
      o20384 = new o7600(param1);
      o13006 = false;
      o6636 = null;
      o9035 = param2.readInt();
      o18024 = o4519.o13206.o1802(1);
      _loc6_ = 0;
      while(_loc6_ < 6)
      {
         _loc8_ = param2.readShort();
         _loc9_ = o4519.o9721.o12831(_loc8_);
         o6263.push(new o18509(_loc9_.position.x,_loc9_.position.y));
         o4519.o8116.o11954.o11867(_loc9_);
         _loc6_++;
      }
      _loc6_ = 0;
      while(_loc6_ < 12)
      {
         _loc8_ = param2.readShort();
         _loc9_ = o4519.o9721.o12831(_loc8_);
         o13991.push(new o18509(_loc9_.position.x,_loc9_.position.y));
         o4519.o8116.o11954.o11867(_loc9_);
         _loc6_++;
      }
      var _loc12_:int = param2.readShort();
      var _loc11_:int = param2.readShort();
      var _loc5_:int = param2.readShort();
      var _loc10_:int = param2.readShort();
      var _loc13_:int = param2.readShort();
      o20447 = o4519.o9721.o7833(_loc12_);
      o20447.o12265 = true;
      o20447.o3030("closed");
      o20447.play();
      o11199 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc7_:o17761 = new o17761(o11199.o2535);
      var _loc4_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc11_].o6041[0].id);
      _loc7_.o14486(_loc4_);
      var _loc3_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32,o8723.o32,true);
      _loc3_.o10289 = _loc7_.id;
      o11199.o14230(_loc3_);
      o11199.o16280(this,o8273.o7087,o10361);
      o10806 = o4519.o8116.o9869.o1968(0,0,false);
      _loc7_ = new o17761(o10806.o2535);
      _loc4_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc5_].o6041[0].id);
      _loc7_.o14486(_loc4_);
      _loc3_ = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32,o8723.o32,true);
      _loc3_.o10289 = _loc7_.id;
      o10806.o14230(_loc3_);
      o10806.o16280(this,o8273.o7087,o2663);
      o14846 = o4519.o8116.o9869.o1968(0,0,false);
      _loc7_ = new o17761(o14846.o2535);
      _loc4_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc10_].o6041[0].id);
      _loc7_.o14486(_loc4_);
      _loc3_ = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32,o8723.o32,true);
      _loc3_.o10289 = _loc7_.id;
      o14846.o14230(_loc3_);
      o14846.o16280(this,o8273.o7087,o20569);
      o4525 = o4519.o8116.o9869.o1968(0,0,false);
      _loc7_ = new o17761(o4525.o2535);
      _loc4_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc13_].o6041[0].id);
      _loc7_.o14486(_loc4_);
      _loc3_ = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32,o8723.o32,true);
      _loc3_.o10289 = _loc7_.id;
      o4525.o14230(_loc3_);
      o4525.o16280(this,o8273.o7087,o9521);
      o4519.o13206.o16280(this,o8694.o1956,o1956);
      o4519.o13206.o16280(this,o16450.o9745,o16581);
   }
   
   private function o16581(param1:Event) : void
   {
      var _loc2_:int = 0;
      var _loc6_:* = undefined;
      var _loc3_:* = undefined;
      var _loc4_:* = undefined;
      var _loc5_:Number = o10176.o13327();
      o9035 = 9 + Math.pow(100 - _loc5_,5) / 1900000000;
      o9035 = (int(o9035 * 2 + 0.5)) / 2;
      o9035 = o9035 * 60;
      if(o4519.o13206.o2685.o4326 == 2)
      {
         _loc4_ = o4519.o9721.o12334("SubwayBoss");
         _loc4_.o20949 = true;
         _loc4_.o10053 = o13792;
         o9035 = o9035 + 210;
      }
      o13508 = 0;
      o1051.o4767(this,1,o7664,o9035,true);
      o1051.o9310(this,o9035,o20364);
      o4519.o8116.o20488.o9874("VaccineMap",false);
      o4519.o8116.o20488.o9874("VaccineMapSubwayEnd",true);
      o4519.o8116.o20488.o9874("vaccineMapArrow0",false);
      o4519.o8116.o20488.o9874("vaccineMapArrow1",false);
      o4519.o8116.o20488.o9874("vaccineMapArrow2",false);
      o4519.o8116.o20488.o9874("vaccineMapArrow3",false);
      o4519.o8116.o20488.o9874("vaccineMapArrow4",false);
      o4519.o8116.o20488.o9874("vaccineMapArrow5",false);
      o4519.o8116.o20488.o9874("vaccineMapArrow6",false);
      o4519.o8116.o20488.o9874("vaccineMapArrow7",false);
      o4519.o8116.o20488.o9874("vaccineMapArrowSwitch",false);
      o4519.o8116.o20488.o9874("vaccineMapArrowVaccine",false);
      o4519.o8116.o20488.o9874("vaccineMapArrowDropShip",false);
      o4519.o8116.o20488.o9874("vaccineIcon",false);
      o4182();
      o13579 = int(o20384.random() * o6263.length);
      _loc2_ = 0;
      while(_loc2_ < 6)
      {
         _loc6_ = o4519.o8116.o2996.o20716("lab" + (_loc2_ + 1).toString() + "Door");
         if(_loc2_ == o13579)
         {
            _loc6_.o19926(this,o11702.o19581,o2016);
         }
         else
         {
            _loc3_ = o4519.o9721.o12334("lab" + (_loc2_ + 1).toString() + "Spawn");
            _loc6_.o16813 = _loc3_;
         }
         _loc2_++;
      }
      _loc6_ = o4519.o8116.o2996.o20716("switchRoomDoor");
      _loc3_ = o4519.o9721.o12334("switchRoomSpawn");
      _loc6_.o16813 = _loc3_;
      o16752 = false;
      _loc4_ = o4519.o9721.o12334("TeleTerm1");
      _loc4_.o16280(this,1001,o3212);
      _loc4_ = o4519.o9721.o12334("TeleTerm2");
      _loc4_.o16280(this,1001,o3212);
      _loc4_ = o4519.o9721.o12334("TeleSub1");
      _loc4_.o16280(this,1001,o2437);
      _loc4_ = o4519.o9721.o12334("TeleSub2");
      _loc4_.o16280(this,1001,o2437);
      _loc4_ = o4519.o9721.o12334("t5");
      _loc4_.o16280(this,1001,o8301);
      _loc4_.o17985(true);
      _loc4_ = o4519.o9721.o12334("t6");
      _loc4_.o16280(this,1001,o2537);
      _loc4_.o17985(true);
      _loc6_ = o4519.o8116.o2996.o20716("doorC0TopLeft");
      _loc6_.o3161();
      _loc6_ = o4519.o8116.o2996.o20716("doorC0TopRight");
      _loc6_.o3161();
      _loc6_ = o4519.o8116.o2996.o20716("doorC0Left");
      _loc6_.o3161();
      _loc6_ = o4519.o8116.o2996.o20716("doorC0Right");
      _loc6_.o3161();
      _loc4_ = o4519.o9721.o12334("terminalSpawns");
      _loc6_ = o4519.o8116.o2996.o20716("terminalDoor");
      _loc6_.o16813 = _loc4_;
      o1051.o9310(this,240,o14523);
      o1051.o9310(this,o9035 - 300,o20909);
      o1051.o9310(this,o9035 - 60,o12871);
      o1051.o9310(this,o9035 - 6,o16766);
      o1051.o9310(this,o9035 - 5,o16766);
      o1051.o9310(this,o9035 - 4,o16766);
      o1051.o9310(this,o9035 - 3,o16766);
      o1051.o9310(this,o9035 - 2,o16766);
      o1051.o9310(this,o9035 - 1,o8189);
   }
   
   private function o13792() : void
   {
      o4519.o8116.o8756.o2282.o8445();
   }
   
   private function o7664() : void
   {
      var _loc1_:* = 1;
      o13508 = o13508 + _loc1_;
      o4519.o8116.o20488.o19411 = o10403(o9035 - o13508);
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
   
   private function o4182() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msg1MoveIt");
      o4519.o8116.o20488.o2251(2,_loc1_);
      o4519.o8116.o20488.o13122("vaccineMapArrow0");
   }
   
   private function o9308() : void
   {
      o4519.o8116.o20488.o12056("vaccineMapArrow0");
      o4519.o8116.o20488.o20575(0);
   }
   
   private function o9521(param1:o663) : void
   {
      o9308();
      o4519.o8116.o20488.o13122("vaccineMapArrow1");
      o4525.o19115();
   }
   
   private function o14523() : void
   {
      var _loc1_:* = null;
      if(!o16752)
      {
         _loc1_ = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msg2RunningOutOfTime");
         o4519.o8116.o20488.o2251(2,_loc1_);
      }
   }
   
   private function o3212(param1:Event) : void
   {
      if(!o16752)
      {
         o4519.o8116.o20488.o20575(1);
         o16752 = true;
      }
      o4519.o8116.o20488.o12056("vaccineMapArrow1");
      o4519.o8116.o20488.o13122("vaccineMapArrow2");
   }
   
   private function o2437(param1:Event) : void
   {
      o4519.o8116.o20488.o12056("vaccineMapArrow2");
      o4519.o8116.o20488.o13122("vaccineMapArrow1");
   }
   
   private function o8301(param1:Event) : void
   {
      o4519.o8116.o20488.o12056("vaccineMapArrow6");
      if(!o4303)
      {
         o4519.o8116.o20488.o13122("vaccineMapArrow7");
      }
   }
   
   private function o2537(param1:Event) : void
   {
      o4519.o8116.o20488.o12056("vaccineMapArrow7");
      o4519.o8116.o20488.o13122("vaccineMapArrow6");
   }
   
   private function o20569(param1:o663) : void
   {
      o4519.o8116.o20488.o12056("vaccineMapArrow7");
      if(!o4303 && !o17964)
      {
         o4519.o8116.o20488.o13122("vaccineMapArrowSwitch");
      }
      else
      {
         o14846.o19115();
      }
   }
   
   private function o20909() : void
   {
      var _loc1_:* = null;
      if(!o4303)
      {
         _loc1_ = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msg3GetFocused");
         o4519.o8116.o20488.o2251(2,_loc1_);
      }
   }
   
   private function o12871() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msg6SecsToGo1");
      o4519.o8116.o20488.o2251(3,_loc1_);
   }
   
   private function o16766() : void
   {
      o4519.o8116.o4812.o10460.o16388.play(1);
   }
   
   private function o8189() : void
   {
      o4519.o8116.o4812.o10460.o14757.play(1);
   }
   
   private function o11972() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msg8SecsToGo3");
      o4519.o8116.o20488.o2251(2,_loc1_);
   }
   
   private function o6414() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msg9SecsToGo4");
      o4519.o8116.o20488.o2251(3,_loc1_);
   }
   
   private function o10361(param1:o663) : void
   {
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(2);
      dispatchData(new o2149(this,_loc2_,false,true));
      o11199.o12657(o8273.o7087,o10361);
   }
   
   private function o947() : void
   {
      if(o17964)
      {
         return;
      }
      o17964 = true;
      o11199.o12657(o8273.o7087,o10361);
      o4519.o8116.o20488.o12056("vaccineMapArrowSwitch");
      o4519.o8116.o4812.o10460.o1244.play(1);
      o20447.o5388("open");
      var _loc1_:* = o4519.o8116.o2996.o20716("securityDoor1");
      _loc1_.o15446();
      _loc1_ = o4519.o8116.o2996.o20716("securityDoor2");
      _loc1_.o15446();
   }
   
   private function o2663(param1:o663) : void
   {
      var _loc2_:int = 0;
      var _loc4_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc4_.o1217 == 0)
      {
         _loc2_ = 8;
      }
      else if(_loc4_.o1217 == 1)
      {
         _loc2_ = 10;
      }
      else if(_loc4_.o1217 == 2)
      {
         _loc2_ = 9;
      }
      var _loc3_:ByteArray = new ByteArray();
      _loc3_.writeByte(3);
      _loc3_.writeByte(_loc2_);
      dispatchData(new o2149(this,_loc3_,false,true));
      o10806.o12657(o8273.o7087,o2663);
   }
   
   private function o14593(param1:int) : void
   {
      if(o5380)
      {
         return;
      }
      o5380 = true;
      o10806.o12657(o8273.o7087,o2663);
      var _loc2_:String = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msg10ScientistFound");
      _loc2_ = _loc2_.replace("#NUM",(o13579 + 1).toString());
      o4519.o8116.o20488.o2251(param1,_loc2_);
   }
   
   private function o2016(param1:Event) : void
   {
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(7);
      dispatchData(new o2149(this,_loc2_,false,true));
   }
   
   private function o20940() : void
   {
      o4519.o8116.o20488.o12056("vaccineMapArrowVaccine");
      o1051.o9310(this,3,o13171);
      o4519.o8116.o4812.o10460.o5928.play(0.75);
      o16869 = int(1 + o20384.random() * 3);
      o6636 = new o3642();
      o6636.o16955(o18024);
      o4519.o8116.o14443.o5373(o6636);
      var _loc1_:o18509 = o13991[o16869 * 3 + 1];
      o6636.init(o13991[o16869 * 3],_loc1_,o13991[o16869 * 3 + 2]);
      o6636.o14891();
      o6636.o16280(this,o3642.o11027,o742);
      o6636.o16280(this,o3642.o286,o7839);
      var _loc2_:* = o4519.o9721.o12334("bossSpawner");
      _loc2_.o20949 = true;
      o4519.o8116.o20488.o13122("vaccineMapArrowDropShip");
      o4519.o8116.o20488.o675("vaccineMapArrowDropShip",_loc1_.x,_loc1_.y);
      o4519.o8116.o20488.o20575(3);
   }
   
   private function o704() : void
   {
      if(o11805)
      {
         return;
      }
      o11805 = true;
      o5928 = o4519.o8116.o11954.o10869();
      o5928.position = new o2415();
      o5928.position.x = o6263[o13579].x;
      o5928.position.y = o6263[o13579].y;
      o5928.o16990 = o11381.o9071 + 1;
      o2378 = o4519.o8116.o11676.o6798("assets.maps.labs.theVaccine");
      o2378.o3030("vaccinehere");
      o2378.o11525(o5928);
      o2378.play();
      o4519.o8116.o11954.o9226(o5928);
      o4519.o8116.o20488.o13122("vaccineMapArrowVaccine");
      o4519.o8116.o20488.o675("vaccineMapArrowVaccine",o5928.position.x,o5928.position.y);
      o17804 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc2_:o17761 = new o17761(o17804.o2535);
      _loc2_.o16716(45);
      var _loc1_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32,o8723.o32,true);
      _loc1_.o10289 = _loc2_.id;
      o17804.o14230(_loc1_);
      o17804.o8564(o5928.position.x,o5928.position.y);
      o17804.o16280(this,o8273.o7087,o6577);
      o4519.o8116.o20488.o13122("vaccineIcon");
      o4519.o8116.o20488.o675("vaccineIcon",o5928.position.x,o5928.position.y);
   }
   
   private function o6577(param1:o663) : void
   {
      var _loc2_:* = null;
      var _loc3_:o17517 = o17517(o4519.o8116.o2996.o14389(param1.o11541));
      if(_loc3_ && _loc3_ == o4519.o32 && !_loc3_.o7694)
      {
         _loc2_ = new ByteArray();
         _loc2_.writeByte(4);
         _loc2_.writeByte(_loc3_.o5973);
         dispatchData(new o2149(this,_loc2_,true,true));
         o4519.o8116.o20488.o12056("vaccineIcon");
      }
   }
   
   private function o10431(param1:int) : void
   {
      var _loc2_:int = 0;
      if(o4303 == false)
      {
         o20940();
      }
      o4303 = true;
      var _loc4_:o17517 = o17517(o4519.o8116.o14443.o2929(param1));
      if(_loc4_ && _loc4_.o11122 != null)
      {
         return;
      }
      _loc4_.o1358("assets.avatar.pose.rifle.Vaccine");
      if(_loc4_.o1217 == 0)
      {
         _loc2_ = 8;
      }
      else if(_loc4_.o1217 == 1)
      {
         _loc2_ = 10;
      }
      else if(_loc4_.o1217 == 2)
      {
         _loc2_ = 9;
      }
      var _loc3_:String = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msg4VaccineFound");
      o4519.o8116.o20488.o2251(_loc2_,_loc3_);
      o16857 = Number(o16857) + 1;
      if(o16857 >= o4519.o13206.o2685.o7629())
      {
         o2378.o3030("vaccinegone");
      }
   }
   
   private function o13171() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msg5WayAheadOfYou");
      o4519.o8116.o20488.o2251(2,_loc1_);
   }
   
   private function o7839(param1:Event) : void
   {
      var _loc3_:int = 0;
      var _loc2_:* = null;
      _loc3_ = 0;
      while(_loc3_ < o6636.o18131.length)
      {
         if(o6636.o18131[_loc3_].o11122 != null)
         {
            o6636.o12657(o3642.o286,o7839);
            _loc2_ = new ByteArray();
            _loc2_.writeByte(8);
            dispatchData(new o2149(this,_loc2_,true,false,8));
            o14832();
         }
         _loc3_++;
      }
   }
   
   private function o14832() : void
   {
      var _loc1_:* = null;
      if(!o7347)
      {
         o7347 = true;
         _loc1_ = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msg11VaccineDeliveredToDropShip");
         o4519.o8116.o20488.o2251(2,_loc1_);
      }
   }
   
   private function o9208() : void
   {
      o6636.o12657(o3642.o286,o7839);
      o12985 = true;
      o4519.o13206.o20582 = true;
      o4519.o8116.o20488.o20575(4);
      if(o4519.o13206.o2685.o7629() == 4 && o13508 < 302)
      {
         o4519.o8116.o12094.setAchievement(381,1);
      }
   }
   
   private function o742(param1:Event = null) : void
   {
      var _loc2_:* = null;
      o6636.o12657(o3642.o11027,o742);
      if(o12985)
      {
         _loc2_ = new ByteArray();
         _loc2_.writeByte(5);
         dispatchData(new o2149(this,_loc2_,true,false,5));
      }
   }
   
   private function o18906() : void
   {
      o4519.o13206.o14994();
   }
   
   private function o18967() : void
   {
      o4519.o13206.o8765();
   }
   
   private function o20364() : void
   {
      if(o6636)
      {
         if(o6636.o20604 == false)
         {
            o6636.o2079();
         }
         if(o6636.o13141(o4519.o32) == false)
         {
            o11972();
         }
      }
      o1051.o9310(this,1,o16356);
      if(!o12985)
      {
         o1051.o9310(this,6,o20077);
      }
   }
   
   private function o20077() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(9);
      dispatchData(new o2149(this,_loc1_,true,false,9));
   }
   
   private function o16356() : void
   {
      o6414();
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
      o1740 = o4519.o13206.o16821(0,5);
      o1051.o4767(this,0.0333333333333333,o1146,150);
      o15620();
   }
   
   private function o1146() : void
   {
      o1740.o15771 = o1740.o15771 + 0.0333333333333333;
   }
   
   private function o15620() : void
   {
      o4519.o8116.o4812.o10460.o1147.play(0.75);
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      switch(int(_loc3_) - 2)
      {
         case 0:
            o947();
            break;
         case 1:
            o14593(param2.readByte());
            break;
         case 2:
            o10431(param2.readByte());
            break;
         case 3:
            o18906();
            break;
         default:
            o18906();
            break;
         case 5:
            o704();
            break;
         case 6:
            o9208();
            break;
         case 7:
            o18967();
      }
   }
   
   override public function o19115() : void
   {
      if(o1740)
      {
         o4519.o13206.o754(o1740);
      }
      super.o19115();
      if(o6636)
      {
         o6636.o19115();
      }
      o6636 = null;
      if(o2378)
      {
         o2378.o19115();
      }
   }
   
   private function o1956(param1:o11210) : void
   {
      var _loc7_:* = undefined;
      var _loc4_:* = null;
      var _loc6_:* = null;
      var _loc5_:int = 0;
      var _loc3_:* = null;
      if(param1.o13743 == 99 || param1.o13743 == 94 || param1.o13743 == 98)
      {
         o5772 = Number(o5772) + 1;
         if(o5772 == 3)
         {
            o4519.o8116.profileData.o202.o10318();
         }
      }
      else if(param1.o13743 == 96)
      {
         _loc7_ = o4519.o9721.o12334("toiletSpawns1");
         _loc7_.o4526();
      }
      else if(param1.o13743 == 93)
      {
         _loc7_ = o4519.o9721.o12334("toiletSpawns2");
         _loc7_.o4526();
      }
      var _loc2_:* = o4519.o8116.random.o10418(o5973) >= 0.5;
      if(param1.o13743 == 96 && _loc2_ || param1.o13743 == 93 && !_loc2_)
      {
         _loc4_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.AreaLoot"];
         _loc6_ = o4519.o8116.o2996.o2998(_loc4_,null);
         _loc5_ = o4519.o8116.random.o10418(o5973 + 1) * 2;
         _loc3_ = o10804[!!_loc2_?_loc5_:2 + _loc5_];
         _loc6_.body.o8564(_loc3_.x,_loc3_.y);
      }
   }
}

class o12933
{
    
   
   public var id:int = 0;
   
   private var o6691:o4332;
   
   public var trigger:o10262;
   
   function o12933(param1:int, param2:Number, param3:Number)
   {
      super();
      this.id = param1;
      o6691 = o4519.o8116.o11954.o10869();
      o6691.o16396 = o17541.o13617("assets.maps.labs.theVaccine");
      o6691.position = new o2415();
      o6691.position.x = param2;
      o6691.position.y = param3;
      o6691.o16990 = o11381.o9071 + 1;
      o4519.o8116.o11954.o9226(o6691);
      trigger = o4519.o8116.o9869.o1968(0,0,false);
      var _loc5_:o17761 = new o17761(trigger.o2535);
      _loc5_.o16716(45);
      var _loc4_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32,o8723.o32,true);
      _loc4_.o10289 = _loc5_.id;
      trigger.o14230(_loc4_);
      trigger.o8564(param2,param3);
   }
   
   public function o19115() : void
   {
      if(o6691)
      {
         o6691.o19115();
      }
      if(trigger)
      {
         trigger.o19115();
      }
   }
}
