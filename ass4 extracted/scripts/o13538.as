package
{
   import flash.display.Sprite;
   
   public class o13538 extends Sprite
   {
       
      
      public function o13538()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o1407;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

class o1407 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.o2013,o13351.o10420,"position"],[4,o17243.o8809,o13351.o10420,"spawns for player count"],[3,o17243.o14773,o13351.o10420,"is captain"],[5,o17243.o2013,o13351.o10420,"path to defensive position"],[6,o17243.o2013,o13351.o10420,"ambo destroy position"]];
    
   
   public var o4175:Boolean = false;
   
   public var o10555:o5640 = null;
   
   public var o14999:Boolean = false;
   
   public var o7616:o7141;
   
   function o1407()
   {
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.hvmsoldier.pose.pistol.helmet.CaptainHVM");
      _loc1_.push("assets.hvmsoldier.pose.rifle.helmet.CaptainHVM");
      _loc1_.push("assets.hvmsoldier.pose.pistol.vest.CaptainHVM");
      _loc1_.push("assets.hvmsoldier.pose.rifle.vest.CaptainHVM");
      _loc1_.push("assets.hmvsoldier.pose.DeathCaptain");
      _loc1_.push("assets.hvmsoldier.pose.pistol.helmet.HVM");
      _loc1_.push("assets.hvmsoldier.pose.rifle.helmet.HVM");
      _loc1_.push("assets.hvmsoldier.pose.pistol.vest.HVM");
      _loc1_.push("assets.hvmsoldier.pose.rifle.vest.HVM");
      _loc1_.push("assets.hmvsoldier.pose.Death");
      _loc1_.push("assets.hvmsoldier.legs.Foward");
      _loc1_.push("assets.hvmsoldier.legs.Sideway");
      _loc1_.push("assets.hvmsoldier.legs.Backward");
      _loc1_.push("assets.hvmsoldier.legs.Idle");
      return _loc1_;
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      super.o16955(param1);
      name = param2.readUTF();
      var _loc16_:int = param2.readShort();
      var _loc10_:o4332 = o4519.o9721.o12831(_loc16_);
      var _loc3_:o18509 = new o18509(_loc10_.position.x,_loc10_.position.y);
      var _loc15_:Number = _loc10_.rotation;
      o4519.o8116.o11954.o11867(_loc10_);
      var _loc8_:int = param2.readInt();
      o4175 = param2.readBoolean();
      var _loc13_:int = param2.readShort();
      _loc10_ = o4519.o9721.o12831(_loc13_);
      var _loc6_:o18509 = new o18509(_loc10_.position.x,_loc10_.position.y);
      var _loc9_:Number = _loc10_.rotation;
      o4519.o8116.o11954.o11867(_loc10_);
      var _loc14_:int = param2.readShort();
      _loc10_ = o4519.o9721.o12831(_loc14_);
      var _loc4_:o18509 = new o18509(_loc10_.position.x,_loc10_.position.y);
      var _loc7_:Number = _loc10_.rotation;
      o4519.o8116.o11954.o11867(_loc10_);
      if(o4519.o13206.o2685.o7629() < _loc8_)
      {
         o14999 = true;
         o1051.o9310(this,0.1,o19115);
         return;
      }
      var _loc12_:uint = o8723.o3969 | o8723.o18481 | o8723.o19523 | o8723.o7778 | o8723.o19394 | o8723.o9077 | o8723.o5479 | o8723.o18180 | o8723.o17079 | o8723.o42 | o8723.o14328;
      var _loc5_:uint = o8723.o17798 | o8723.o17079 | o8723.o7778 | o8723.o19394 | o8723.o42;
      var _loc11_:int = o4519.o13206.o1802(1);
      o7616 = new o7141();
      o10555 = o4519.o8116.o2996.o2998(o5640,[name,_loc3_,_loc15_,_loc12_,_loc5_,null,o7616],_loc11_) as o5640;
      o10555.body.o7191 = 200;
      o10555.o7921(150);
      o10555.o20593 = 0.2;
      o10555.o16390 = new Dictionary();
      o10555.o16390[4] = 0.5;
      o10555.o16390[1] = 0.25;
      o10555.o16390[2] = 0.2;
      o10555.o4027 = "HVM Soldier";
      o10555.o10051 = 9490778;
      o7616.o3151(o10555);
      o7616.o2179.rotation = _loc15_;
      o7616.o404(_loc6_,_loc9_);
      o7616.o7458(_loc4_,_loc7_);
      o7616.o16769 = 3.14159265358979 / 8;
      o7616.o6038 = _loc12_;
      if(o4175)
      {
         o10555.o1396 = "assets.hvmsoldier.pose.pistol.helmet.CaptainHVM";
         o10555.o5757 = "assets.hvmsoldier.pose.rifle.helmet.CaptainHVM";
         o10555.o19989 = "assets.hvmsoldier.pose.pistol.vest.CaptainHVM";
         o10555.o4963 = "assets.hvmsoldier.pose.rifle.vest.CaptainHVM";
         o10555.o17332 = "assets.hmvsoldier.pose.DeathCaptain";
         o10555.o6610();
         o10555.body.o7191 = 300;
         o10555.o7921(200);
         o10555.o20593 = 0.4;
         o10555.o4027 = "HVM Captain";
         o7616.o16769 = 3.14159265358979 / 11;
         o7616.o4175 = true;
      }
      o10555.o16280(this,o14571.o19115,o15439);
   }
   
   private function o15439(param1:Event) : void
   {
      o19115();
   }
   
   override public function o19115() : void
   {
      o10555 = null;
      o7616 = null;
      super.o19115();
   }
}
