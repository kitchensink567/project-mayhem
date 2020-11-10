package
{
   import flash.display.Sprite;
   
   public class o15362 extends Sprite
   {
       
      
      public function o15362()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o9232;
      }
   }
}

import flash.display.Sprite;
import flash.events.Event;
import flash.geom.Rectangle;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

class o9232 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"exit position"],[2,o17243.o2013,o13351.o10420,"exit area"],[3,o17243.o2013,o13351.o10420,"cave in base"],[4,o17243.o2013,o13351.o10420,"cave in top"],[5,o17243.o2013,o13351.o10420,"cave in trigger"],[6,o17243.o2013,o13351.o10420,"cave in effects area"],[7,o17243.o2013,o13351.o10420,"cave in physics"],[8,o17243.o2013,o13351.o10420,"fence physics"],[9,o17243.o2013,o13351.o10420,"fence art 1"],[10,o17243.o2013,o13351.o10420,"fence art 2"],[11,o17243.o2013,o13351.o10420,"fence art 3"],[12,o17243.o2013,o13351.o10420,"fence art 4"],[13,o17243.o2013,o13351.o10420,"fence art 5"],[14,o17243.o2013,o13351.o10420,"fence art 6"],[15,o17243.o2013,o13351.o10420,"fence art 7"]];
    
   
   private const o10356:int = 3;
   
   private const o11134:int = 4;
   
   private const o4852:int = 5;
   
   private const o8739:int = 6;
   
   private const o7762:int = 7;
   
   private const o16501:int = 8;
   
   private const o1880:int = 50;
   
   private const o8064:int = 16;
   
   private const o15036:int = 10;
   
   private const o14935:int = 60;
   
   private const o17944:Number = 42;
   
   private const o13567:Number = 80;
   
   private const o4971:Number = 18;
   
   private const o14367:Number = 7;
   
   private var o6735:o18509;
   
   private var o6790:o2041;
   
   private var o505:o10262;
   
   private var o13529:int = 0;
   
   private var o18330:int = 0;
   
   private var o14330:Vector.<int>;
   
   private var o7930:Vector.<int>;
   
   private var o12451:Dictionary;
   
   private var o20384:o7600;
   
   private var o11268:o4332;
   
   private var o13618:o4332;
   
   private var o11888:o10262;
   
   private var o8620:int;
   
   private var o13505:Vector.<o18509>;
   
   private var o10436:o4332;
   
   private var o5848:o4332;
   
   private var o14838:int;
   
   private var o504:Vector.<o2219>;
   
   private var o8496:Vector.<int>;
   
   private var o4286:Boolean = true;
   
   private var o706:int = -1;
   
   private var o14495:int = 0;
   
   private var o6018:Boolean = false;
   
   private var o8479:int = 0;
   
   private var o13827:Number = 20;
   
   function o9232()
   {
      o6735 = new o18509();
      o13505 = new Vector.<o18509>();
      o504 = new Vector.<o2219>();
      o8496 = new Vector.<int>();
      super();
   }
   
   public static function getCacheAssets() : Vector.<String>
   {
      return o12779.o8038();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o5973 = param1;
      o10303 = param2;
      super.o16955(o5973);
      o20384 = new o7600(o5973);
      o13529 = 0;
      o18330 = 0;
      var id:int = o10303.readShort();
      var o9011:o4332 = o4519.o9721.o12831(id);
      o6735.x = o9011.position.x;
      o6735.y = o9011.position.y;
      o4519.o8116.o11954.o11867(o9011);
      id = o10303.readShort();
      o505 = o4519.o8116.o9869.o1968(0,0,false);
      var o8599:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[id].o6041[0].id);
      var o4925:Vector.<Vector.<o18509>> = o12075.o7521(o8599);
      var _loc5_:* = 0;
      var _loc4_:* = o4925;
      for each(o16528 in o4925)
      {
         var o10289:o17761 = new o17761(o505.o2535);
         o10289.o14486(o16528);
         var fixture:o4039 = o4519.o8116.o20600.o15803(o8723.o9077,o8723.o12624,o8723.o12624,true);
         fixture.o10289 = o10289.id;
         o505.o14230(fixture);
      }
      o505.o16280(this,o8273.o7087,o7070);
      o14330 = new Vector.<int>();
      var o1903:int = 1;
      while(o1903 <= 16)
      {
         o14330.push(o1903);
         o1903 = Number(o1903) + 1;
      }
      o7930 = new Vector.<int>();
      o7930.push(o14330.shift());
      o1903 = 0;
      while(o1903 < 10 - 1)
      {
         var o14466:int = o14330.splice(int(o20384.random() * o14330.length),1)[0];
         o7930.push(o14466);
         o1903 = Number(o1903) + 1;
      }
      o12451 = new Dictionary();
      var o16191:int = 0;
      var o7288:Boolean = true;
      o1903 = 0;
      while(o16191 < 60)
      {
         if(o7288)
         {
            o12451[o7930[o1903]] = 1;
            o16191 = Number(o16191) + 1;
         }
         else if(o20384.random() < 0.5)
         {
            _loc5_ = o7930[o1903];
            _loc4_ = o12451[_loc5_] + 1;
            o12451[_loc5_] = _loc4_;
            o16191 = Number(o16191) + 1;
         }
         o1903 = Number(o1903) + 1;
         if(o1903 == o7930.length)
         {
            o1903 = 0;
            o7288 = false;
         }
      }
      o12779.o2154.o16280(this,o13852.o13572,o17299);
      o12779.o2154.o16280(this,o13852.o7257,o18290);
      o4519.o8116.o20488.o18534();
      var o11202:int = o10303.readShort();
      var o3247:int = o10303.readShort();
      var o16308:int = o10303.readShort();
      var o5266:int = o10303.readShort();
      o8620 = o10303.readShort();
      o13618 = o4519.o9721.o12831(o11202);
      o11268 = o4519.o9721.o12831(o3247);
      o4519.o8116.o11954.o17454(o13618);
      o4519.o8116.o11954.o17454(o11268);
      o11888 = o4519.o8116.o9869.o1968(0,0,false);
      o8599 = o4519.o9721.o7963(o4519.o9721.o7352[o16308].o6041[0].id);
      o4925 = o12075.o7521(o8599);
      var _loc7_:int = 0;
      var _loc6_:* = o4925;
      for each(o16528 in o4925)
      {
         o10289 = new o17761(o11888.o2535);
         o10289.o14486(o16528);
         fixture = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32 | o8723.o2823,o8723.o32 | o8723.o2823,true);
         fixture.o10289 = o10289.id;
         o11888.o14230(fixture);
      }
      o14495 = 0;
      var o2013:o13848 = o4519.o9721.o7352[o5266];
      var o16528:Vector.<o18509> = o4519.o9721.o7963(o2013.o6041[0].id);
      var o20277:Sprite = new Sprite();
      o20277.graphics.beginFill(16777215,1);
      var o17575:Boolean = true;
      var _loc9_:int = 0;
      var _loc8_:* = o16528;
      for each(o17108 in o16528)
      {
         if(o17575)
         {
            o20277.graphics.moveTo(o17108.x,o17108.y);
            o17575 = false;
         }
         else
         {
            o20277.graphics.lineTo(o17108.x,o17108.y);
         }
      }
      o20277.graphics.endFill();
      o4519.o8116.stage.addChild(o20277);
      o13505.splice(0,4294967295);
      var rect:Rectangle = o20277.getBounds(o20277);
      var w:int = rect.left;
      while(w <= rect.right)
      {
         var o7068:int = rect.top;
         while(o7068 <= rect.bottom)
         {
            if(o20277.hitTestPoint(w,o7068,true))
            {
               o13505.push(new o18509(w,o7068));
            }
            o7068 = o7068 + 20;
         }
         w = w + 20;
      }
      o4519.o8116.stage.removeChild(o20277);
      var o11950:int = o10303.readShort();
      o14838 = o4519.o9721.o3865(Vector.<int>([o11950]),o8723.o18180,o8723.o10217 ^ (o8723.o2823 | o8723.o17798));
      o1903 = 0;
      while(o1903 < 7)
      {
         var o1914:int = o10303.readShort();
         var o1298:o4332 = o4519.o9721.o12831(o1914);
         o504.push(new o2219(o1298,this));
         o1903 = Number(o1903) + 1;
      }
      o4519.o13206.o16280(this,o8694.o1956,function(param1:o11210):void
      {
         if(param1.o13743 == 99)
         {
            o4519.o8116.profileData.o202.o10318();
         }
      });
      o4519.o13206.o16280(this,o16450.o9745,o16628);
   }
   
   private function o16628(param1:Event) : void
   {
      o7367 = param1;
      var o1903:int = 0;
      while(o1903 < o14330.length)
      {
         var o14765:* = o4519.o9721.o12334("hunter" + o14330[o1903]);
         o14765.o1461 = false;
         o1903 = Number(o1903) + 1;
      }
      o1903 = 1;
      while(o1903 <= 16)
      {
         o14765 = o4519.o8116.o2996.o20716("barrier" + o1903);
         o14765.o16280(this,o11702.o19440,o16787);
         o14765.o12321 = o1903;
         o20806("SurvivorsRoomArrow" + o1903);
         o1903 = Number(o1903) + 1;
      }
      o14765 = o4519.o8116.o2996.o20716("barrier1");
      o10436 = o14765.o348();
      o14765 = o4519.o8116.o2996.o20716("barrier2");
      o5848 = o14765.o348();
      o4519.o8116.o20488.o9874("SurvivorsTunnelArrow",false);
      var o81:o16124 = o4519.o9721.o20360.o2566(0,o6735.x,o6735.y,o8723.o12624,o8723.o3969 | o8723.o18180,Vector.<int>([]));
      o81.defer(function(param1:o2041):void
      {
         o6790 = param1;
      });
      o17978();
      if(o4519.o13206.o2685.o4326 == 2)
      {
         o14765 = o4519.o9721.o12334("SurvBossSpawn2");
         o14765.o20949 = true;
         o14765 = o4519.o9721.o12334("SurvPurgeNest");
         o14765.o12555 = 4;
      }
      o1051.o9310(this,3,o11477);
   }
   
   private function o11477() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.survivorsMessages.msg0SearchBuildings");
      o4519.o8116.o20488.o2251(3,_loc1_);
   }
   
   private function o16787(param1:o11702) : void
   {
      var _loc3_:Boolean = false;
      var _loc5_:* = param1.o7449;
      var _loc4_:int = _loc5_.o12321;
      if(o8496.indexOf(_loc4_) != -1)
      {
         _loc3_ = true;
      }
      else
      {
         _loc3_ = false;
      }
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(50);
      _loc2_.writeByte(_loc4_);
      _loc2_.writeBoolean(o20384.random() < 42 / 100);
      _loc2_.writeBoolean(_loc3_);
      _loc2_.writeByte(_loc5_.o1436);
      dispatchData(new o2149(this,_loc2_,true,false,50 + _loc4_));
   }
   
   private function o2646(param1:int, param2:Boolean, param3:Boolean, param4:int) : void
   {
      var _loc5_:int = 0;
      var _loc6_:* = null;
      var _loc8_:* = o4519.o8116.o2996.o20716("barrier" + param1);
      if(_loc8_ == null)
      {
         o8339("WARNING: Somehow Barrier was null in SurvivorsVictoryCondition::barrierFell()");
         return;
      }
      _loc8_.o16118();
      var _loc7_:* = o4519.o9721.o12334("room" + param1);
      o8496.push(param1);
      if(o7930.indexOf(param1) != -1)
      {
         _loc5_ = o12451[param1];
         _loc7_.o3692(_loc5_,o6735,o6790,param1);
         o15552();
         if(param4 == 0)
         {
            _loc6_ = o4519.o8116.profileData.o10206("dialogMessage.survivorsMessages.msgCivSaveUs");
            o4519.o8116.o20488.o2251(5,_loc6_);
         }
      }
      else if(param2)
      {
         _loc7_.o12675();
      }
      else
      {
         _loc7_.o10075(7);
      }
      o7698("SurvivorsRoomArrow" + param1);
   }
   
   private function o7070(param1:o663) : void
   {
      var _loc2_:o12779 = o4519.o8116.o2996.o14389(param1.o11541) as o12779;
      _loc2_.o19115();
   }
   
   private function o18290(param1:o13852) : void
   {
      var _loc2_:* = null;
      o13529 = Number(o13529) + 1;
      o17978();
      if(o4286)
      {
         _loc2_ = o4519.o8116.profileData.o10206("dialogMessage.survivorsMessages.msgCivThankYou");
         o4519.o8116.o20488.o2251(5,_loc2_);
         o4286 = false;
      }
      if(o13529 == 60)
      {
         o4519.o8116.o12094.setAchievement(383,1);
      }
      o17026();
   }
   
   private function o17299(param1:o13852) : void
   {
      o18330 = Number(o18330) + 1;
      o17978();
      if(o18330 % 6 == 0)
      {
         o16855();
      }
      if(o18330 == 60)
      {
         o4519.o8116.o12094.setAchievement(384,1);
      }
      o17026();
   }
   
   private function o17978() : void
   {
      var _loc1_:int = 60 - o13529 - o18330;
      if(_loc1_ < 0)
      {
         _loc1_ = 0;
      }
      o4519.o8116.o20488.o11263(o13529,_loc1_,o18330);
   }
   
   private function o17026() : void
   {
      var _loc1_:* = null;
      if(60 - o18330 - o13529 <= 0)
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(4);
         _loc1_.writeByte(o18330);
         _loc1_.writeByte(o13529);
         dispatchData(new o2149(this,_loc1_,true,false,4));
      }
   }
   
   private function o4839(param1:int, param2:int) : void
   {
      var _loc4_:int = 0;
      this.o18330 = param1;
      this.o13529 = param2;
      o17978();
      o4519.o8116.o20488.o20575(0);
      _loc4_ = 1;
      while(_loc4_ <= 16)
      {
         o7698("SurvivorsRoomArrow" + _loc4_);
         _loc4_++;
      }
      var _loc3_:String = o4519.o8116.profileData.o10206("dialogMessage.survivorsMessages.msgClearZombs");
      o4519.o8116.o20488.o2251(3,_loc3_);
      o706 = o1051.o4767(this,1,o872);
   }
   
   private function o872() : void
   {
      var _loc1_:* = null;
      var _loc2_:Array = o4519.o8116.o2996.o20698(o18442);
      if(_loc2_.length <= 10)
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(5);
         dispatchData(new o2149(this,_loc1_,true,false,5));
      }
   }
   
   private function o20564() : void
   {
      var _loc2_:int = 0;
      o1051.o19115(o706);
      o4519.o8116.o20488.o20575(1);
      var _loc3_:String = o4519.o8116.profileData.o10206("dialogMessage.survivorsMessages.msg1Evac");
      o4519.o8116.o20488.o2251(3,_loc3_);
      o20806("SurvivorsTunnelArrow");
      o14495 = 0;
      var _loc1_:Vector.<o10262> = o4519.o8116.o9869.o8182(o11888);
      _loc2_ = 0;
      while(_loc2_ < _loc1_.length)
      {
         if(o4519.o8116.o2996.o14389(_loc1_[_loc2_]) is o17517)
         {
            o14495 = Number(o14495) + 1;
         }
         _loc2_++;
      }
      o11888.o16280(this,o8273.o7087,o18748);
      o11888.o16280(this,o8273.o20083,o3434);
      o17355();
   }
   
   private function o20806(param1:String) : void
   {
      o4519.o8116.o20488.o13122(param1);
   }
   
   private function o7698(param1:String) : void
   {
      o4519.o8116.o20488.o12056(param1);
   }
   
   private function o18748(param1:o663) : void
   {
      if(o4519.o8116.o2996.o14389(param1.o11541) is o17517)
      {
         o14495 = Number(o14495) + 1;
         o17355();
      }
   }
   
   private function o3434(param1:o18091) : void
   {
      if(o4519.o8116.o2996.o14389(param1.o11541) is o17517)
      {
         o14495 = Number(o14495) - 1;
      }
   }
   
   private function o17355() : void
   {
      var _loc1_:* = null;
      if(o14495 >= o4519.o8116.o2996.o20698(o17517).length)
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(6);
         dispatchData(new o2149(this,_loc1_,true,false,6));
      }
   }
   
   private function o18070() : void
   {
      var _loc2_:int = 0;
      if(o6018)
      {
         return;
      }
      o6018 = true;
      o11888.o12657(o8273.o7087,o18748);
      o11888.o12657(o8273.o20083,o3434);
      o2004();
      new o6880(o13618).o2008(1,true);
      new o6880(o11268).o2008(1,true);
      o4519.o9721.o3865(Vector.<int>([o8620]),o8723.o18180,o8723.o10217 ^ o8723.o2823);
      var _loc3_:* = o4519.o9721.o12334("NGZBossFight");
      _loc3_.o967();
      o1051.o4767(this,0.0333333333333333,o987,45,true);
      o4519.o13206.o16821(15,1.5);
      o1051.o9310(this,1,o20108);
      _loc2_ = 1;
      while(_loc2_ <= 16)
      {
         _loc3_ = o4519.o8116.o2996.o20716("barrier" + _loc2_);
         if(_loc3_)
         {
            _loc3_.o12657(o11702.o19440,o16787);
         }
         _loc2_++;
      }
      o4519.o8116.o11954.o9226(o10436);
      o4519.o8116.o11954.o9226(o5848);
      new o6880(o10436).o2008(1,true);
      new o6880(o5848).o2008(1,true);
      o4519.o9721.o5294(o14838);
      _loc2_ = 0;
      while(_loc2_ < o504.length)
      {
         o504[_loc2_].o14833(Math.random() * 2);
         _loc2_++;
      }
      o1051.o9310(this,2,o17207);
      o1051.o9310(this,5,o1504);
      o1051.o9310(this,8,o6114);
      o7698("SurvivorsTunnelArrow");
      var _loc1_:* = o4519.o8116.o2996.o20716("FailSafeTeleportZone");
      if(_loc1_)
      {
         _loc1_.o14456();
      }
   }
   
   private function o1504() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.survivorsMessages.msg2EvacBails");
      o4519.o8116.o20488.o2251(2,_loc1_);
      o4519.o8116.o20488.o20575(2);
   }
   
   private function o6114() : void
   {
      var _loc1_:* = o4519.o8116.o2996.o20716("swattruck");
      _loc1_.o9424();
   }
   
   private function o987() : void
   {
      var _loc1_:o18509 = o13505[int(o13505.length * Math.random())];
      var _loc3_:Number = 1.17809724509617 + Math.random() * 3.14159265358979 / 4;
      var _loc2_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.maps.survivors2.dust",99.5]) as o2130;
      if(_loc2_ != null)
      {
         _loc2_.o6691.position.x = _loc1_.x;
         _loc2_.o6691.position.y = _loc1_.y;
         _loc2_.o6691.rotation = _loc3_;
      }
   }
   
   private function o20108() : void
   {
      var _loc1_:int = 0;
      var _loc2_:Array = o4519.o8116.o2996.o20698(o18442).concat();
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length)
      {
         if(_loc2_[_loc1_].o12555 != 3 && o4519.o8116.o9869.o17488(o11888,_loc2_[_loc1_].body) == false)
         {
            _loc2_[_loc1_].o19115();
         }
         _loc1_++;
      }
      var _loc3_:Vector.<o3047> = o3047.o15006;
      _loc1_ = 0;
      while(_loc1_ < _loc3_.length)
      {
         if(_loc3_[_loc1_].o4951 == 1)
         {
            _loc3_[_loc1_].o19115();
         }
         _loc1_++;
      }
      o3047.o10061.splice(0,4294967295);
   }
   
   private function o17207() : void
   {
      var _loc1_:* = o4519.o9721.o12334("bossSpawn");
      _loc1_.o4526();
      _loc1_ = o4519.o9721.o12334("bossSpawnBuddies");
      _loc1_.o4526();
      if(o4519.o13206.o2685.o4326 == 2)
      {
         _loc1_ = o4519.o9721.o12334("SurvPurgeNest");
         _loc1_.o17386();
      }
      o8479 = 0;
      o1051.o9310(this,10,o18587);
   }
   
   private function o18587() : void
   {
      var _loc2_:int = 0;
      var _loc3_:Array = o4519.o8116.o2996.o20698(o18442);
      _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         if(_loc3_[_loc2_].o12555 == 3)
         {
            o1051.o9310(this,3,o18587);
            return;
         }
         _loc2_++;
      }
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(7);
      dispatchData(new o2149(this,_loc1_,true,false,7));
   }
   
   private function o6594() : void
   {
      var _loc1_:* = o4519.o9721.o12334("bossSpawnBuddies");
      _loc1_.o19115();
      o16502();
   }
   
   private function o16502() : void
   {
      var _loc2_:int = 0;
      var _loc4_:* = undefined;
      var _loc3_:Array = o4519.o8116.o2996.o20698(o18442);
      _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         if(_loc3_[_loc2_].o12555 == 4)
         {
            o1051.o9310(this,3,o16502);
            return;
         }
         _loc2_++;
      }
      if(o4519.o13206.o2685.o4326 == 2)
      {
         _loc4_ = o4519.o9721.o12334("SurvPurgeNest");
         if(_loc4_.o14101() == false)
         {
            o1051.o9310(this,3,o16502);
            return;
         }
      }
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(8);
      dispatchData(new o2149(this,_loc1_,true,false,8));
   }
   
   private function o17481() : void
   {
      o4519.o8116.o20488.o20575(3);
      o4519.o8116.o8756.o2282.o17511();
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.survivorsMessages.msg3EvacIn10");
      o4519.o8116.o20488.o2251(3,_loc1_);
      o4519.o13206.o20582 = true;
      o1051.o4767(this,1,o3305,21,true);
      o1051.o9310(this,20,o6380);
   }
   
   private function o6380() : void
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
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      var _loc4_:* = _loc3_;
      switch(_loc4_)
      {
         case 50:
            o2646(param2.readByte(),param2.readBoolean(),param2.readBoolean(),param2.readByte());
            break;
         case 3:
            o17299(null);
            break;
         case 4:
            o4839(param2.readByte(),param2.readByte());
            break;
         case 5:
            o20564();
            break;
         case 6:
            o18070();
            break;
         case 7:
            o6594();
            break;
         case 8:
            o17481();
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o6735 = null;
      o6790 = null;
      o505.o19115();
      o505 = null;
      o14330 = null;
      o7930 = null;
      o12451 = null;
      o20384 = null;
      o11268.o19115();
      o11268 = null;
      o13618.o19115();
      o13618 = null;
      o11888.o19115();
      o11888 = null;
      o13505 = null;
      o10436 = null;
      o5848 = null;
      o8496 = null;
      super.o19115();
   }
   
   private function o15552() : void
   {
      o4519.o8116.o4812.o10460.o5477.play(1);
   }
   
   private function o16855() : void
   {
      o4519.o8116.o4812.o10460.o16806.play(0.8);
   }
   
   private function o2004() : void
   {
      o4519.o8116.o4812.o4404.o14151.play(1);
      o1051.o9310(this,3,o10059);
   }
   
   private function o10059() : void
   {
      o4519.o8116.o8756.o2282.o8445();
   }
}

import flash.events.Event;

class o2219
{
    
   
   public var o6691:o4332;
   
   public var o12958:o7331;
   
   public var o2154:o12600;
   
   function o2219(param1:o4332, param2:o12600)
   {
      super();
      this.o6691 = param1;
      o12958 = o4519.o8116.o11676.o6798(param1.o16396.assetID);
      o12958.o11525(param1);
      this.o2154 = param2;
   }
   
   public function o14833(param1:Number) : void
   {
      o1051.o9310(o2154,param1,o18237);
   }
   
   private function o18237() : void
   {
      o12958.o3030("fall");
      o12958.o12265 = false;
      o12958.o16280(o2154,o1490.o16612,o14397);
      o12958.play();
   }
   
   private function o14397(param1:Event) : void
   {
      o4519.o9721.o2075.o471(o6691);
      o6691.o19115();
      o12958.o19115();
   }
}
