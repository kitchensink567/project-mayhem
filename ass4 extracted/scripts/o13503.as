package
{
   import flash.display.Sprite;
   
   public class o13503 extends Sprite
   {
       
      
      public function o13503()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o11683;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o11683 extends o3047
{
   
   public static var o20272:Array = [[2,o17243.o2013,o13351.o10420,"Route 1 Button 1"],[7,o17243.o2013,o13351.o10420,"Route 2 Button 1"],[12,o17243.o2013,o13351.o10420,"Route 3 Button 1"],[17,o17243.o2013,o13351.o10420,"Route 4 Button 1"],[21,o17243.o2013,o13351.o10420,"centre Area"],[26,o17243.o2013,o13351.o10420,"Turret Spawn Positions"],[27,o17243.o2013,o13351.o10420,"Loader Bot Spawn Positions"],[28,o17243.o2013,o13351.o10420,"button 1"],[29,o17243.o2013,o13351.o10420,"button 2"],[30,o17243.o2013,o13351.o10420,"button 3"],[31,o17243.o2013,o13351.o10420,"button 4"],[32,o17243.o2013,o13351.o10420,"teleport points"]];
   
   public static const o10925:int = 0;
   
   public static const o8754:int = 1;
   
   public static const o9794:int = 2;
   
   public static const o298:int = 3;
   
   public static const o3561:int = 4;
   
   public static const o19106:int = 5;
   
   public static const o2420:int = 6;
   
   public static const o18427:int = 7;
   
   public static const o20130:int = 8;
   
   public static const o19859:int = 9;
   
   public static const o19442:int = 1;
   
   public static const o5286:int = 2;
   
   public static const o19213:int = 3;
   
   public static const o9489:int = 4;
   
   public static const o12214:int = 5;
   
   public static const o9610:int = 6;
   
   public static const o3558:int = 7;
   
   public static const o11615:int = 8;
   
   public static const o12928:int = 9;
   
   public static const o1522:int = 10;
   
   private static const o16692:int = 0;
   
   private static const o15009:int = 1;
   
   private static const o1476:int = 2;
   
   private static const o4169:int = 3;
   
   private static const o4604:int = 10;
   
   private static const o3386:int = 100;
    
   
   private var o19407:Array;
   
   private var o11484:Array;
   
   private var o10245:Array;
   
   private var o19761:Array;
   
   private var o9796:Array;
   
   private var o14594:Array;
   
   private var o9240:Array;
   
   private var o13031:Array;
   
   private var o12054:Array;
   
   private var o7966:Vector.<o20743>;
   
   private var o8428:Vector.<o20743>;
   
   private var o14771:Array;
   
   private var o2421:o9347;
   
   private var o11725:int = 0;
   
   private var o9128:int = 0;
   
   private var o14772:int = 0;
   
   private var o20316:int = 0;
   
   private var o12398:int = 0;
   
   private var o13226:int = 0;
   
   private var o20488:int = 0;
   
   private var o96:int = -1;
   
   private var o1068:int = -1;
   
   private var o7647:Boolean = true;
   
   private var o4395:o10262 = null;
   
   private var o14741:o4039 = null;
   
   private var o17862:o3047 = null;
   
   private var o5422:Boolean = false;
   
   private var o13736:int = 0;
   
   private var o2714:int = 0;
   
   private var o10202:int = 0;
   
   private var o5558:Number = 0;
   
   private var o11151:Number = 0;
   
   private var o2518:Number = 0;
   
   private var delay:Number = 0;
   
   private var o6768:Number = 10;
   
   private var o14857:Boolean = false;
   
   private var o4451:Boolean = false;
   
   private var o19979:int = 0;
   
   private var o15445:Array;
   
   private var o19068:Array;
   
   private var o18308:Array;
   
   private var o517:Array;
   
   private var o2914:Array;
   
   private var o10553:Array;
   
   private var o15964:Array;
   
   private var o19732:int = 0;
   
   private var o17843:Boolean = false;
   
   private var o13683:Array;
   
   private var o7043:Array;
   
   private var o12865:Array;
   
   private var o6264:Array;
   
   private var o19206:int = 0;
   
   private var o13872:Boolean = false;
   
   private var o1679:int = 0;
   
   private var o15703:int = 0;
   
   private var o13827:Number = 20;
   
   function o11683()
   {
      o19407 = [];
      o11484 = [];
      o10245 = [];
      o19761 = [];
      o9796 = [];
      o14594 = [];
      o9240 = [];
      o13031 = [];
      o12054 = [];
      o7966 = new Vector.<o20743>();
      o8428 = new Vector.<o20743>();
      o14771 = [];
      o15445 = [];
      o19068 = [69,70,71,72,73,74,75];
      o18308 = [0,0,0,0,0,0,0];
      o517 = [o4429,o15486,o10260,o18990,o8207,o11331,o1628];
      o2914 = [];
      o10553 = [];
      o15964 = [];
      o13683 = [];
      super();
   }
   
   override public function getCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.maps.zombieEgg.eggBurst");
      _loc1_.push("assets.projectiles.mechaSupernova.MuzzleFlash");
      _loc1_.push("assets.turrets.zombieSupernova.Disabled");
      _loc1_.push("assets.turrets.zombieSupernova.Turret");
      _loc1_.push("assets.turrets.zombieSupernova.Turret");
      _loc1_.push("assets.turrets.zombieSupernova.Base");
      return _loc1_;
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o8389 = param1;
      o10303 = param2;
      var o1903:int = 0;
      while(o1903 < 4)
      {
         o19407[o1903] = o10303.readShort();
         o1903 = Number(o1903) + 1;
      }
      o14772 = o10303.readShort();
      o12398 = o10303.readShort();
      o13226 = o10303.readShort();
      o1903 = 0;
      while(o1903 < 4)
      {
         var o12958:o7331 = o4519.o9721.o7833(o10303.readShort());
         o12958.o11("closed");
         o12958.o3030("closed");
         o9796[o1903] = o12958;
         o1903 = Number(o1903) + 1;
      }
      o20316 = o10303.readShort();
      o17975();
      o20002();
      o3460();
      o18983();
      o13683[0] = 0;
      o13683[1] = 0;
      o13683[2] = 0;
      o13683[3] = 0;
      o19732 = 0;
      o20488 = 0;
      o18308 = [0,0,0,0,0,0];
      o14857 = false;
      o19761 = [0,1,2,3];
      o7966 = new Vector.<o20743>();
      o8428 = new Vector.<o20743>();
      o14771 = new Array(new Vector.<o20743>(),new Vector.<o20743>(),new Vector.<o20743>(),new Vector.<o20743>());
      o6447();
      o4395 = o4519.o8116.o9869.o1968(0,0,false);
      var o10289:o17761 = new o17761(o4395.o2535);
      var o8599:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o14772].o6041[0].id);
      o10289.o14486(o8599);
      o14741 = o4519.o8116.o20600.o15803(o8723.o5479,o17517.o6365,o17517.o6365,true);
      o14741.o10289 = o10289.id;
      o4395.o14230(o14741);
      o4395.o16280(this,o8273.o7087,o7120);
      o4395.o16280(this,o8273.o20083,o10713);
      var o19505:* = this;
      o4519.o13206.o16280(this,o16450.o9745,function():void
      {
         o4519.o8116.o20488.o13122("PowerGridArrow1");
         o4519.o8116.o20488.o13122("PowerGridArrow2");
         o4519.o8116.o20488.o13122("PowerGridArrow3");
         o4519.o8116.o20488.o13122("PowerGridArrow4");
         o4519.o8116.o20488.o13122("PowerGridArrow1Door");
         o4519.o8116.o20488.o13122("PowerGridArrow2Door");
         o4519.o8116.o20488.o13122("PowerGridArrow3Door");
         o4519.o8116.o20488.o13122("PowerGridArrow4Door");
         o4519.o8116.o20488.o12056("PowerGridArrow1");
         o4519.o8116.o20488.o12056("PowerGridArrow2");
         o4519.o8116.o20488.o12056("PowerGridArrow3");
         o4519.o8116.o20488.o12056("PowerGridArrow4");
         o4519.o8116.o20488.o12056("PowerGridArrow1Door");
         o4519.o8116.o20488.o12056("PowerGridArrow2Door");
         o4519.o8116.o20488.o12056("PowerGridArrow3Door");
         o4519.o8116.o20488.o12056("PowerGridArrow4Door");
         o1051.o4767(o19505,0.5,o7658);
         o1051.o4767(o19505,0.0333333333333333,o17617);
         o1051.o9310(o19505,1,o2316);
         o1051.o4767(o19505,3,o19159,0,false,o1051.o4804);
      });
      o7647 = true;
      o19206 = 0;
      super.o949(o8389);
      o3047.o2154.o16280(this,o8694.o2412,o2412);
      o4519.o13206.o16280(this,o8694.o1956,o14957);
      if(o4519.o13206.o2685.o4326 == 2)
      {
         o17862 = o4519.o13206.o19304(3047,1514);
      }
   }
   
   public function o2316(param1:Event = null) : void
   {
      o8204();
      o831();
      o7486();
      o5422 = true;
   }
   
   private function o17617(param1:Event = null) : void
   {
      if(o5422 == false)
      {
         return;
      }
      o17015();
      o10049();
      o14291();
   }
   
   private function o17015() : void
   {
      var _loc2_:* = null;
      var _loc3_:* = undefined;
      var _loc1_:int = 0;
      var _loc4_:* = null;
      if(o7966 == null)
      {
         return;
      }
      o5558 = o5558 - 0.0333333333333333;
      if(o7966.length > 0 && o5558 < 0)
      {
         _loc2_ = o15460.o4078;
         _loc3_ = o18323();
         if(_loc3_.o13065 == false)
         {
            _loc3_.o3801();
         }
         _loc1_ = 0;
         if("" != "paul")
         {
         }
         _loc4_ = o7966[_loc1_];
         o7966.splice(_loc1_,1);
         o5558 = 0.3;
         _loc2_.x = _loc3_.o6027();
         _loc2_.y = _loc3_.o17152();
         o3370(_loc4_.o18948,_loc4_.grade,_loc2_,0,o19068[5]);
      }
   }
   
   private function o10049() : void
   {
      var _loc2_:* = null;
      var _loc3_:* = undefined;
      var _loc1_:int = 0;
      var _loc4_:* = null;
      if(o8428 == null)
      {
         return;
      }
      o11151 = o11151 - 0.0333333333333333;
      if(o8428.length > 0 && o11151 < 0)
      {
         _loc2_ = o15460.o4078;
         _loc3_ = o12317();
         if(_loc3_.o13065 == false)
         {
            _loc3_.o3801();
         }
         _loc1_ = 0;
         _loc4_ = o8428[_loc1_];
         o8428.splice(_loc1_,1);
         o11151 = 0.3;
         o2714 = Number(o2714) + 1;
         _loc2_.x = _loc3_.o6027();
         _loc2_.y = _loc3_.o17152();
         o3370(_loc4_.o18948,_loc4_.grade,_loc2_,0,o19068[o1068 + 1]);
      }
   }
   
   private function o14291() : void
   {
      var _loc5_:int = 0;
      var _loc2_:* = null;
      var _loc3_:* = undefined;
      var _loc1_:int = 0;
      var _loc4_:* = null;
      _loc5_ = 0;
      while(_loc5_ < o14771.length)
      {
         if(o14771[_loc5_] == null)
         {
            return;
         }
         o2518 = o2518 - 0.0333333333333333;
         if(o14771[_loc5_].length > 0 && o2518 < 0)
         {
            _loc2_ = o15460.o4078;
            _loc3_ = o5971(_loc5_);
            if(_loc3_.o13065 == false)
            {
               _loc3_.o3801();
            }
            _loc1_ = 0;
            _loc4_ = o14771[_loc5_][_loc1_];
            o14771[_loc5_].splice(_loc1_,1);
            o2518 = 0.6;
            o10202 = Number(o10202) + 1;
            _loc2_.x = _loc3_.o6027();
            _loc2_.y = _loc3_.o17152();
            o3370(_loc4_.o18948,_loc4_.grade,_loc2_,0,o19068[o1068 + 1]);
         }
         _loc5_++;
      }
   }
   
   private function o18323() : *
   {
      var _loc1_:int = 0;
      _loc1_ = o4519.o8116.random.o10418(o20712 + 1) * o14594.length;
      return o14594[_loc1_];
   }
   
   private function o12317() : *
   {
      var _loc1_:int = 0;
      _loc1_ = o4519.o8116.random.o10418(o20712 + 1) * o9240.length;
      return o9240[_loc1_];
   }
   
   private function o5971(param1:int) : *
   {
      var _loc2_:int = 0;
      _loc2_ = o4519.o8116.random.o10418(o20712 + 1) * o13031[param1].length;
      return o13031[param1][_loc2_];
   }
   
   private function o7658(param1:Event = null) : void
   {
      o7367 = param1;
      if(o5422 == false)
      {
         return;
      }
      switch(int(o20488))
      {
         case 0:
            o4519.o8116.o20488.o12056("PowerGridArrow1");
            o4519.o8116.o20488.o12056("PowerGridArrow2");
            o4519.o8116.o20488.o12056("PowerGridArrow3");
            o4519.o8116.o20488.o12056("PowerGridArrow4");
            o4519.o8116.o20488.o12056("PowerGridArrow1Door");
            o4519.o8116.o20488.o12056("PowerGridArrow2Door");
            o4519.o8116.o20488.o12056("PowerGridArrow3Door");
            o4519.o8116.o20488.o12056("PowerGridArrow4Door");
            o4519.o8116.o20488.o13122("PowerGridArrow5");
            o20488 = 1;
            delay = o6768 + 10;
            o1051.o9310(this,5,o15001);
            o12746(100);
            break;
         case 1:
            delay = Number(delay) - 1;
            if(o18308[5] <= 0 && delay <= 0 && o7966 != null && o7966.length == 0)
            {
               o20488 = 2;
               var o6253:ByteArray = new ByteArray();
               o6253.writeByte(5);
               dispatchData(new o2149(this,o6253,true,false,0));
            }
            break;
         case 2:
            if(o19732 >= 1)
            {
               o18308[5] = 0;
               o12746(10);
               delay = o6768;
               o20488 = 3;
            }
            break;
         case 3:
            delay = Number(delay) - 1;
            if(o18308[o1068 + 1] <= 0 && delay <= 0 && o8428.length == 0)
            {
               o20488 = 4;
            }
            break;
         case 4:
            o18308[o1068] = 0;
            o1068 = Number(o1068) + 1;
            var o7023:int = o4519.o8116.random.o10418(o1068) * o19761.length;
            o96 = o19761[o7023];
            o19761.splice(o7023,1);
            o1051.o9310(this,5,function():void
            {
               o15776(o96,o1068);
            });
            o4519.o8116.o20488.o13122("PowerGridArrow" + (o96 + 1).toString() + "Door");
            o1051.o9310(this,4,function():void
            {
               o4519.o8116.o20488.o12056("PowerGridArrow" + (o96 + 1).toString() + "Door");
               o4519.o8116.o20488.o13122("PowerGridArrow" + (o96 + 1).toString());
            });
            o4519.o8116.o20488.o12056("PowerGridArrow5");
            if(o1068 == 3)
            {
               o4519.o13206.dispatchData(new o11210(o96 + 90));
            }
            o6253 = new ByteArray();
            o6253.writeByte(6);
            o6253.writeInt(o96);
            dispatchData(new o2149(this,o6253,true,false,10 + o96));
            o20488 = 5;
            break;
         case 5:
            if(o13683[o96] >= 1)
            {
               o20488 = 6;
               var o3700:int = 7;
               if(o1068 == 0 || o1068 == 2)
               {
                  if(o4519.o32.o1217 == 0)
                  {
                     o3700 = 8;
                  }
                  else if(o4519.o32.o1217 == 1)
                  {
                     o3700 = 10;
                  }
                  else if(o4519.o32.o1217 == 2)
                  {
                     o3700 = 9;
                  }
               }
               var o1216:String = o4519.o8116.profileData.o10206("dialogMessage.powerOutMessages.msgRepair" + (o1068 + 1).toString());
               o4519.o8116.o20488.o2251(o3700,o1216);
               if(o1068 == 0 && o4519.o13206.o2685.o4326 == 2 && !o4451)
               {
                  o4881();
               }
               o4519.o8116.o20488.o20575(o1068);
               o9796[o96].o11("open");
               o9796[o96].o3030("open");
               o491();
            }
            break;
         case 6:
            o15776(o96,o1068,true);
            o4519.o8116.o20488.o12056("PowerGridArrow1");
            o4519.o8116.o20488.o12056("PowerGridArrow2");
            o4519.o8116.o20488.o12056("PowerGridArrow3");
            o4519.o8116.o20488.o12056("PowerGridArrow4");
            o4519.o8116.o20488.o13122("PowerGridArrow5");
            o20488 = 7;
            break;
         case 7:
            if(o19732 >= 1)
            {
               o12746(o1068);
               o20488 = 8;
            }
            break;
         case 8:
            delay = o6768;
            o20488 = 9;
            break;
         case 9:
            delay = Number(delay) - 1;
            if(o18308[o1068 + 1] <= 0 && o1732() <= 0 && delay <= 0)
            {
               o6253 = new ByteArray();
               o6253.writeByte(10);
               dispatchData(new o2149(this,o6253,true,false,1000 + o1068));
               if(o1068 == 3)
               {
                  var o1903:int = 0;
                  while(o1903 < o18308.length)
                  {
                     if(o18308[o1903] > 0)
                     {
                        return;
                     }
                     o1903 = Number(o1903) + 1;
                  }
                  var o4758:Array = o4519.o8116.o2996.o20698(o5600);
                  if(o4758 && o4758.length > 0)
                  {
                     return;
                  }
                  o6253 = new ByteArray();
                  o6253.writeByte(7);
                  dispatchData(new o2149(this,o6253,true,false,10000000));
                  break;
               }
               break;
            }
      }
   }
   
   private function o4881() : void
   {
      var _loc3_:Boolean = false;
      var _loc2_:* = undefined;
      var _loc5_:* = null;
      var _loc4_:* = null;
      if(o17862)
      {
         o4451 = true;
         _loc3_ = false;
         _loc2_ = o10176.o8930(100);
         o19979 = 0;
         _loc5_ = new o18509(3047,1514);
         var _loc7_:int = 0;
         var _loc6_:* = _loc2_;
         for each(var _loc1_ in _loc2_)
         {
            _loc4_ = o17862.o3370(_loc1_.o18948,_loc1_.grade,_loc5_,0,_loc1_.o12555,true,_loc1_.o1673);
         }
      }
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      time = param1;
      data = param2;
      data.position = 0;
      var o17659:int = data.readByte();
      var id:int = 0;
      switch(int(o17659) - 1)
      {
         case 0:
            o15619();
            break;
         case 1:
            o7450();
            break;
         case 2:
            id = data.readInt();
            o13548(id);
            break;
         case 3:
            break;
         case 4:
            o2421.o7433();
            break;
         case 5:
            id = data.readInt();
            o10245[id].o7433();
            break;
         case 6:
            if(o7647)
            {
               var o1216:String = o4519.o8116.profileData.o10206("dialogMessage.powerOutMessages.msgDestroyedBoss");
               o4519.o8116.o20488.o2251(7,o1216);
               o4519.o8116.o8756.o2282.o17511();
               o7647 = false;
            }
            o4519.o13206.o20582 = true;
            o1051.o4767(this,1,o3305,21,true);
            o1051.o9310(this,20,function():void
            {
               o4519.o13206.o14994();
               if(o4519.o13206.multiplayer)
               {
                  if(o4519.o13206.o2685.o7629() >= 4)
                  {
                     if(o17517.o12955 == false)
                     {
                        o4519.o8116.o12094.setAchievement(391,1);
                     }
                  }
               }
            });
            break;
         case 7:
            o19732 = data.readInt();
            if("" != "paul")
            {
            }
            break;
         case 8:
            id = data.readInt();
            var o768:int = data.readInt();
            if(o13683[id] < o768)
            {
               o13683[id] = o768;
            }
            if("" != "paul")
            {
            }
            break;
         case 9:
            o5030();
      }
   }
   
   private function o5030() : void
   {
      var _loc1_:* = null;
      if(o1068 != 3)
      {
         o20488 = 4;
      }
      else if(o13872)
      {
         o11402();
      }
   }
   
   public function o6447() : void
   {
      o15445 = [];
      var _loc1_:Vector.<o13304> = new Vector.<o13304>();
      _loc1_.push(new o13304(0,12));
      _loc1_.push(new o13304(1,5));
      o15445.push(_loc1_);
      _loc1_ = new Vector.<o13304>();
      _loc1_.push(new o13304(3,14));
      o15445.push(_loc1_);
      _loc1_ = new Vector.<o13304>();
      _loc1_.push(new o13304(0,20));
      _loc1_.push(new o13304(2,3));
      o15445.push(_loc1_);
      _loc1_ = new Vector.<o13304>();
      _loc1_.push(new o13304(0,20));
      _loc1_.push(new o13304(3,14));
      o15445.push(_loc1_);
      _loc1_ = new Vector.<o13304>();
      _loc1_.push(new o13304(0,10));
      _loc1_.push(new o13304(4,3));
      o15445.push(_loc1_);
      _loc1_ = new Vector.<o13304>();
      _loc1_.push(new o13304(6,3.1));
      _loc1_.push(new o13304(7,0.2));
      o15445.push(_loc1_);
      _loc1_ = new Vector.<o13304>();
      _loc1_.push(new o13304(0,10));
      _loc1_.push(new o13304(2,2));
      _loc1_.push(new o13304(1,4));
      _loc1_.push(new o13304(4,1));
      _loc1_.push(new o13304(6,1.5));
      o15445.push(_loc1_);
      _loc1_ = new Vector.<o13304>();
      _loc1_.push(new o13304(0,20));
      _loc1_.push(new o13304(3,4));
      _loc1_.push(new o13304(1,8));
      _loc1_.push(new o13304(5,4));
      _loc1_.push(new o13304(7,0.2));
      o15445.push(_loc1_);
   }
   
   private function o2412(param1:o6961) : void
   {
      var _loc2_:int = 0;
      var _loc3_:o18442 = param1.o18481;
      _loc2_ = 0;
      while(_loc2_ < o19068.length)
      {
         if(_loc3_.o12555 == o19068[_loc2_])
         {
            var _loc4_:* = o18308;
            var _loc5_:* = _loc2_;
            var _loc6_:* = Number(_loc4_[_loc5_]) + 1;
            _loc4_[_loc5_] = _loc6_;
            _loc3_.o16280(this,o14571.o19115,o517[_loc2_]);
         }
         _loc2_++;
      }
   }
   
   private function o16497(param1:int) : void
   {
      var _loc2_:* = o18308;
      var _loc3_:* = param1;
      var _loc4_:* = Number(_loc2_[_loc3_]) - 1;
      _loc2_[_loc3_] = _loc4_;
      if(o18308[param1] < 0)
      {
         o18308[param1] = 0;
      }
   }
   
   private function o1732() : int
   {
      var _loc2_:int = 0;
      var _loc1_:int = 0;
      if(o8428)
      {
         _loc1_ = _loc1_ + o8428.length;
      }
      if(o7966)
      {
         _loc1_ = _loc1_ + o7966.length;
      }
      _loc2_ = 0;
      while(_loc2_ < o14771.length)
      {
         if(o14771 && o14771[_loc2_])
         {
            _loc1_ = _loc1_ + o14771[_loc2_].length;
         }
         _loc2_++;
      }
      return _loc1_;
   }
   
   private function o4429(param1:Event = null) : void
   {
      o16497(0);
   }
   
   private function o15486(param1:Event = null) : void
   {
      o16497(1);
   }
   
   private function o10260(param1:Event = null) : void
   {
      o16497(2);
   }
   
   private function o18990(param1:Event = null) : void
   {
      o16497(3);
   }
   
   private function o8207(param1:Event = null) : void
   {
      o16497(4);
   }
   
   private function o11331(param1:Event = null) : void
   {
      o16497(5);
   }
   
   private function o1628(param1:Event = null) : void
   {
      o16497(6);
   }
   
   private function o12746(param1:int) : void
   {
      var _loc9_:* = null;
      var _loc12_:* = undefined;
      var _loc11_:* = null;
      var _loc2_:int = 0;
      var _loc13_:int = 0;
      var _loc10_:* = 0;
      var _loc3_:* = null;
      var _loc6_:* = null;
      var _loc8_:int = 0;
      var _loc4_:* = 0;
      var _loc7_:* = null;
      o2914 = [];
      o2714 = 0;
      var _loc5_:int = 0;
      var _loc14_:* = param1;
      switch(_loc14_)
      {
         case 10:
            _loc12_ = new Vector.<o13304>();
            _loc12_.push(new o13304(0,10));
            _loc12_.push(new o13304(1,4));
            _loc12_.push(new o13304(2,1));
            _loc12_.push(new o13304(4,0.3));
            _loc12_.push(new o13304(3,0.9));
            o8428 = o8428.concat(o10176.o10383(_loc12_,20));
            break;
         case 100:
            _loc11_ = new o18509();
            _loc5_ = 0;
            while(_loc5_ < o6264.length)
            {
               _loc11_.x = _loc11_.x + o6264[_loc5_].x;
               _loc11_.y = _loc11_.y + o6264[_loc5_].y;
               _loc5_++;
            }
            _loc11_.x = _loc11_.x / o6264.length;
            _loc11_.y = _loc11_.y / o6264.length;
            _loc2_ = o10176.o13327() * o10176.o1660();
            _loc13_ = (_loc2_ - 8) / 10;
            _loc13_ = _loc13_ + 1;
            if(_loc13_ <= 8)
            {
               _loc10_ = _loc13_;
               _loc13_ = 0;
            }
            else
            {
               _loc10_ = 8;
               _loc13_ = _loc13_ - 8;
            }
            _loc3_ = [0,0,0,0,0,0,0,0];
            while(_loc13_ > 1)
            {
               _loc5_ = 0;
               while(_loc5_ < 8)
               {
                  if(_loc3_[_loc5_] < 1)
                  {
                     _loc14_ = _loc3_;
                     var _loc15_:* = _loc5_;
                     var _loc16_:* = Number(_loc14_[_loc15_]) + 1;
                     _loc14_[_loc15_] = _loc16_;
                     _loc13_ = _loc13_ - 2;
                  }
                  if(_loc5_ == 7 || _loc13_ <= 0 || _loc3_[_loc5_] < 1 && _loc3_[_loc5_] - 1 == _loc3_[_loc5_ + 1])
                  {
                     if(_loc5_ == 7 && _loc3_[_loc5_] == 1)
                     {
                        _loc13_ = 0;
                     }
                     break;
                  }
                  _loc5_++;
               }
            }
            _loc5_ = 0;
            while(_loc5_ < _loc10_)
            {
               _loc9_ = new o18509(o6264[_loc5_].x,o6264[_loc5_].y);
               _loc6_ = o15460.o4078;
               _loc6_.x = _loc11_.x - _loc9_.x;
               _loc6_.y = _loc11_.y - _loc9_.y;
               o15964.push(o12725(new o18509(_loc9_.x,_loc9_.y),o19068[4],_loc3_[_loc5_],_loc6_.rotation,_loc5_ == 0));
               _loc5_++;
            }
            o18308[4] = 0;
            _loc8_ = (_loc2_ - 8) / 6;
            _loc8_ = _loc8_ + 1;
            if(_loc8_ <= 4)
            {
               _loc4_ = _loc8_;
               _loc8_ = 0;
            }
            else
            {
               _loc4_ = 4;
               _loc8_ = _loc8_ - 4;
            }
            _loc7_ = [0,0,0,0];
            while(_loc8_ > 0)
            {
               _loc5_ = 0;
               while(_loc5_ < 4)
               {
                  if(_loc7_[_loc5_] < 9)
                  {
                     _loc14_ = _loc7_;
                     _loc15_ = _loc5_;
                     _loc16_ = Number(_loc14_[_loc15_]) + 1;
                     _loc14_[_loc15_] = _loc16_;
                     _loc8_--;
                  }
                  if(_loc5_ == 3 || _loc8_ <= 0 || _loc7_[_loc5_] < 9 && _loc7_[_loc5_] - 1 == _loc7_[_loc5_ + 1])
                  {
                     if(_loc5_ == 3 && _loc7_[_loc5_] == 9)
                     {
                        _loc8_ = 0;
                     }
                     break;
                  }
                  _loc5_++;
               }
            }
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               _loc9_ = new o18509(o7043[_loc5_].x,o7043[_loc5_].y);
               o10553.push(o16493(new o18509(_loc9_.x,_loc9_.y),o19068[2],_loc7_[_loc5_]));
               _loc5_++;
            }
            o18308[2] = 0;
            break;
         case 0:
            _loc12_ = new Vector.<o13304>();
            _loc12_.push(new o13304(0,12));
            _loc12_.push(new o13304(3,2));
            _loc12_.push(new o13304(2,1));
            _loc12_.push(new o13304(1,5));
            _loc12_.push(new o13304(4,0.5));
            o8428 = o8428.concat(o10176.o10383(_loc12_,20));
            break;
         case 1:
            _loc5_ = 0;
            while(_loc5_ < o10553.length)
            {
               o10553[_loc5_].o7441();
               o10553[_loc5_].o4526();
               _loc14_ = o18308;
               _loc15_ = 2;
               _loc16_ = Number(_loc14_[_loc15_]) + 1;
               _loc14_[_loc15_] = _loc16_;
               _loc5_++;
            }
            break;
         case 2:
            _loc12_ = new Vector.<o13304>();
            _loc12_.push(new o13304(0,7));
            _loc12_.push(new o13304(1,5));
            _loc12_.push(new o13304(6,1.1));
            _loc12_.push(new o13304(7,0.03));
            o8428 = o8428.concat(o10176.o10383(_loc12_,20));
            break;
         case 3:
            if(o4519.o13206.o4326 == 2)
            {
               _loc5_ = o15964.length - 1;
               while(_loc5_ >= 0)
               {
                  if(o15964[_loc5_] != null)
                  {
                     o3370(o4519.o8116.o20291[o17439.o12681[12]],13,new o18509(o15964[0].body.position.x,o15964[0].body.position.y),0,o19068[4],true,true,true,2);
                     _loc14_ = o18308;
                     _loc15_ = 4;
                     _loc16_ = Number(_loc14_[_loc15_]) + 1;
                     _loc14_[_loc15_] = _loc16_;
                     o15964[_loc5_].o19115();
                     o15964.splice(_loc5_,1);
                     break;
                  }
                  _loc5_--;
               }
            }
            _loc5_ = 0;
            while(_loc5_ < o15964.length)
            {
               _loc14_ = o18308;
               _loc15_ = 4;
               _loc16_ = Number(_loc14_[_loc15_]) + 1;
               _loc14_[_loc15_] = _loc16_;
               o15964[_loc5_].o4526();
               _loc5_++;
            }
            o16129();
            o10059();
      }
   }
   
   private function o15001(param1:Event = null) : void
   {
      var _loc2_:Vector.<o13304> = new Vector.<o13304>();
      _loc2_.push(new o13304(0,20));
      _loc2_.push(new o13304(1,8));
      o7966 = o7966.concat(o10176.o10383(_loc2_,20));
      o13736 = 0;
   }
   
   private function o16493(param1:o18509, param2:int, param3:Number) : o18442
   {
      var _loc4_:o18442 = o3370(o2872,param3,param1,0,param2,true,true,true,1);
      return _loc4_;
   }
   
   private function o12725(param1:o18509, param2:int, param3:Number, param4:Number, param5:Boolean) : o18442
   {
      var _loc6_:o18442 = o3370(o4519.o8116.o20291[o17439.o12681[16]],param3,param1,0,param2,true,param5,true,1);
      _loc6_.o6691.rotation = param4;
      return _loc6_;
   }
   
   private function o15776(param1:int, param2:int, param3:Boolean = false) : void
   {
      var _loc4_:int = param2 * 2;
      if(param3)
      {
         _loc4_++;
      }
      o10202 = 0;
      o14771[param1] = o14771[param1].concat(o10176.o10383(o15445[_loc4_],20));
   }
   
   public function o7120(param1:o663) : void
   {
      var _loc2_:* = null;
      var _loc3_:o17517 = o4519.o8116.o2996.o14389(param1.body) as o17517;
      if(_loc3_ != null)
      {
         _loc2_ = new ByteArray();
         _loc2_.writeByte(1);
         dispatchData(new o2149(this,_loc2_,true,false));
      }
   }
   
   private function o15619() : void
   {
      o19732 = Number(o19732) + 1;
   }
   
   public function o10713(param1:o18091) : void
   {
      var _loc2_:* = null;
      var _loc3_:o17517 = o4519.o8116.o2996.o14389(param1.body) as o17517;
      if(_loc3_ != null)
      {
         _loc2_ = new ByteArray();
         _loc2_.writeByte(2);
         dispatchData(new o2149(this,_loc2_,true,false));
      }
   }
   
   private function o7450() : void
   {
      o19732 = Number(o19732) - 1;
      if(o19732 < 0)
      {
         o19732 = 0;
      }
   }
   
   private function o19159(param1:Event = null) : void
   {
      var _loc5_:int = 0;
      var _loc6_:* = null;
      var _loc4_:int = 0;
      var _loc3_:Vector.<o10262> = o4519.o8116.o9869.o8182(o4395);
      _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         _loc6_ = o4519.o8116.o2996.o14389(_loc3_[_loc5_]) as o17517;
         if(_loc6_ != null)
         {
            _loc4_++;
         }
         _loc5_++;
      }
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(8);
      _loc2_.writeInt(_loc4_);
      dispatchData(new o2149(this,_loc2_,true,false));
      _loc5_ = 0;
      while(_loc5_ < 4)
      {
         _loc2_ = new ByteArray();
         _loc2_.writeByte(9);
         _loc2_.writeInt(_loc5_);
         _loc2_.writeInt(o13683[_loc5_]);
         dispatchData(new o2149(this,_loc2_,true,true));
         _loc5_++;
      }
   }
   
   public function o18983(param1:Event = null) : void
   {
      var _loc3_:int = 0;
      var _loc4_:int = 0;
      var _loc2_:Array = o4519.o8116.o2996.o20698(o9347);
      _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         if(_loc2_[_loc3_].name != null)
         {
            if(_loc2_[_loc3_].name.substr(0,4) == "Door")
            {
               _loc4_ = _loc2_[_loc3_].name.substr(4,1);
               o10245[_loc4_ - 1] = _loc2_[_loc3_];
               o10245[_loc4_ - 1].o13052(false);
            }
            else if(_loc2_[_loc3_].name == "EntranceDoor")
            {
               o2421 = _loc2_[_loc3_];
               o2421.o13052(false);
            }
         }
         _loc3_++;
      }
      if(o2421 != null)
      {
         o17843 = true;
      }
      else
      {
         o1051.o9310(this,1,o18983);
      }
   }
   
   private function o3460() : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = null;
      var _loc1_:* = null;
      _loc2_ = 0;
      while(_loc2_ < 4)
      {
         if(_loc2_ == 0)
         {
            _loc3_ = o12194;
            _loc1_ = o14597;
         }
         else if(_loc2_ == 1)
         {
            _loc3_ = o8681;
            _loc1_ = o9114;
         }
         else if(_loc2_ == 2)
         {
            _loc3_ = o15569;
            _loc1_ = o17757;
         }
         else if(_loc2_ == 3)
         {
            _loc3_ = o17307;
            _loc1_ = o14642;
         }
         o20053(_loc2_,o19407[_loc2_],_loc3_,_loc1_);
         _loc2_++;
      }
   }
   
   private function o20053(param1:int, param2:int, param3:Function, param4:Function) : void
   {
      o11484[param1] = o4519.o8116.o9869.o1968(0,0,false);
      var _loc7_:o17761 = new o17761(o11484[param1].o2535);
      var _loc6_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[param2].o6041[0].id);
      _loc7_.o14486(_loc6_);
      var _loc5_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o17517.o6365,o17517.o6365,true);
      _loc5_.o10289 = _loc7_.id;
      o11484[param1].o14230(_loc5_);
      o11484[param1].o16280(this,o8273.o7087,param3);
      o11484[param1].o16280(this,o8273.o20083,param4);
   }
   
   private function o5131(param1:int) : void
   {
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(3);
      _loc2_.writeInt(param1);
      dispatchData(new o2149(this,_loc2_,true,false,100 + param1));
   }
   
   private function o13548(param1:int) : void
   {
      var _loc2_:* = o13683;
      var _loc3_:* = param1;
      var _loc4_:* = Number(_loc2_[_loc3_]) + 1;
      _loc2_[_loc3_] = _loc4_;
   }
   
   private function o11073(param1:int) : void
   {
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(4);
      _loc2_.writeInt(param1);
      dispatchData(new o2149(this,_loc2_,true,false,200 + param1));
   }
   
   private function o15655(param1:int) : void
   {
      var _loc2_:* = o13683;
      var _loc3_:* = param1;
      var _loc4_:* = Number(_loc2_[_loc3_]) - 1;
      _loc2_[_loc3_] = _loc4_;
   }
   
   private function o12194(param1:o663) : void
   {
      o5131(0);
   }
   
   private function o14597(param1:o18091) : void
   {
      o11073(0);
   }
   
   private function o8681(param1:o663) : void
   {
      o5131(1);
   }
   
   private function o9114(param1:o18091) : void
   {
      o11073(1);
   }
   
   private function o15569(param1:o663) : void
   {
      o5131(2);
   }
   
   private function o17757(param1:o18091) : void
   {
      o11073(2);
   }
   
   private function o17307(param1:o663) : void
   {
      o5131(3);
   }
   
   private function o14642(param1:o18091) : void
   {
      o11073(3);
   }
   
   private function o17975() : void
   {
      o7043 = [];
      var _loc1_:o13848 = o4519.o9721.o7352[o12398];
      var _loc2_:Vector.<o18509> = o4519.o9721.o7963(_loc1_.o6041[0].id);
      var _loc5_:int = 0;
      var _loc4_:* = _loc2_;
      for each(var _loc3_ in _loc2_)
      {
         o7043.push(new o18509(_loc3_.x,_loc3_.y));
      }
   }
   
   private function o17829() : void
   {
      o12865 = [];
      var _loc1_:o13848 = o4519.o9721.o7352[o20316];
      var _loc2_:Vector.<o18509> = o4519.o9721.o7963(_loc1_.o6041[0].id);
      var _loc5_:int = 0;
      var _loc4_:* = _loc2_;
      for each(var _loc3_ in _loc2_)
      {
         o12865.push(new o18509(_loc3_.x,_loc3_.y));
      }
   }
   
   private function o20002() : void
   {
      o6264 = [];
      var _loc1_:o13848 = o4519.o9721.o7352[o13226];
      var _loc2_:Vector.<o18509> = o4519.o9721.o7963(_loc1_.o6041[0].id);
      var _loc5_:int = 0;
      var _loc4_:* = _loc2_;
      for each(var _loc3_ in _loc2_)
      {
         o6264.push(new o18509(_loc3_.x,_loc3_.y));
      }
   }
   
   private function o8204() : void
   {
      var _loc2_:* = undefined;
      var _loc3_:Boolean = true;
      var _loc1_:int = 1;
      while(_loc3_)
      {
         _loc2_ = o4519.o9721.o12334("intro_" + _loc1_.toString());
         if(_loc2_)
         {
            _loc1_++;
            o14594.push(_loc2_);
         }
         else
         {
            _loc3_ = false;
         }
      }
   }
   
   private function o831() : void
   {
      var _loc2_:* = undefined;
      var _loc3_:Boolean = true;
      var _loc1_:int = 1;
      while(_loc3_)
      {
         _loc2_ = o4519.o9721.o12334("centre_" + _loc1_.toString());
         if(_loc2_)
         {
            _loc1_++;
            o9240.push(_loc2_);
         }
         else
         {
            _loc3_ = false;
         }
      }
   }
   
   private function o14957(param1:o11210) : void
   {
      if(param1.o13743 == 10 || param1.o13743 == 20)
      {
         o19206 = Number(o19206) + 1;
         if(o19206 >= 2)
         {
            o4519.o8116.profileData.o202.o10318();
         }
      }
   }
   
   private function o7486() : void
   {
      var _loc3_:* = undefined;
      var _loc4_:Boolean = true;
      var _loc2_:int = 1;
      var _loc1_:int = 1;
      while(_loc4_)
      {
         _loc3_ = o4519.o9721.o12334("path_" + _loc2_.toString() + "_" + _loc1_.toString());
         if(_loc3_)
         {
            _loc1_++;
            if(o13031[_loc2_ - 1] == null || o13031[_loc2_ - 1] == undefined)
            {
               o13031[_loc2_ - 1] = [];
            }
            o13031[_loc2_ - 1].push(_loc3_);
         }
         else if(_loc1_ == 1)
         {
            _loc4_ = false;
         }
         else
         {
            _loc1_ = 1;
            _loc2_++;
         }
      }
   }
   
   private function o16129() : void
   {
      o13872 = true;
      o1679 = o1051.o4767(this,5.5,o17312);
      o15703 = o1051.o4767(this,3.5,o12527);
   }
   
   private function o11402() : void
   {
      o13872 = false;
      o1051.o19115(o1679);
      o1051.o19115(o15703);
   }
   
   private function o17312(param1:* = null) : void
   {
      var _loc6_:* = null;
      var _loc5_:int = 0;
      var _loc3_:o18509 = o15460.o4078;
      var _loc4_:* = o12317();
      if(_loc4_.o13065 == false)
      {
         _loc4_.o3801();
      }
      var _loc7_:Vector.<o13304> = new Vector.<o13304>();
      _loc7_.push(new o13304(2,0.6));
      var _loc2_:Vector.<o20743> = o10176.o10383(_loc7_,1);
      _loc3_.x = _loc4_.o6027();
      _loc3_.y = _loc4_.o17152();
      _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         _loc6_ = _loc2_[_loc5_];
         o3370(_loc6_.o18948,_loc6_.grade,_loc3_,0,o19068[6],false,true,false);
         _loc5_++;
      }
   }
   
   private function o12527(param1:* = null) : void
   {
      var _loc6_:* = null;
      var _loc5_:int = 0;
      var _loc3_:o18509 = o15460.o4078;
      var _loc4_:* = o12317();
      if(_loc4_.o13065 == false)
      {
         _loc4_.o3801();
      }
      var _loc7_:Vector.<o13304> = new Vector.<o13304>();
      _loc7_.push(new o13304(3,0.6));
      var _loc2_:Vector.<o20743> = o10176.o10383(_loc7_,1);
      _loc3_.x = _loc4_.o6027();
      _loc3_.y = _loc4_.o17152();
      _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         _loc6_ = _loc2_[_loc5_];
         o3370(_loc6_.o18948,_loc6_.grade,_loc3_,0,o19068[6],false,true,false);
         _loc5_++;
      }
   }
   
   private function o491() : void
   {
      o4519.o8116.o4812.o10460.o5732.play(1);
   }
   
   private function o10059() : void
   {
      o4519.o8116.o8756.o2282.o8445();
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
   
   override public function o19115() : void
   {
      if(o17862)
      {
         o4519.o8116.o14443.o7609(o17862);
         o17862.o19115();
      }
      o17862 = null;
      super.o19115();
   }
}
