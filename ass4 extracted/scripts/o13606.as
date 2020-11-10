package
{
   import flash.display.Sprite;
   
   public class o13606 extends Sprite
   {
       
      
      public function o13606()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19784;
      }
   }
}

import assets.ui.AlphaVirusMarker;
import assets.ui.MiniMapArrowEdgeAlphaVirus;
import flash.events.Event;
import flash.utils.ByteArray;

class o19784 extends o15755
{
   
   public static const o5536:int = 1;
   
   public static const o20764:int = 2;
   
   public static const o3558:int = 3;
    
   
   private var o7362:Vector.<o18509> = null;
   
   private var o19021:Vector.<o18509> = null;
   
   private var o5369:ByteArray = null;
   
   private var o14241:Class = null;
   
   private var o13084:o13817 = null;
   
   private var o13508:Number = 0;
   
   public var o4491:o17517 = null;
   
   private var o11081:Number = 0;
   
   private var o20160;
   
   private var o4786:int = 5;
   
   private var o12691:int = -1;
   
   private var o13262:int = -1;
   
   private var o18198:Boolean = false;
   
   private var o9518:int = -1;
   
   private var o4714:int = -1;
   
   private var o5636:int = -1;
   
   function o19784()
   {
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.effects.AlphaVirusPedestal");
      _loc1_.push("assets.avatar.pose.rifle.AlphaVirusPack");
      _loc1_.push("assets.effects.AlphaVirusAuraParticles");
      _loc1_.push("assets.effects.AlphaVirusPickupAura");
      return _loc1_;
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      super.o16955(o5973);
      o4519.o13206.o7306 = false;
      o4519.o13206.o248 = false;
      o4519.o13206.o17551 = true;
      o4519.o13206.o15890 = true;
      o4519.o13206.o13771 = true;
      o4519.o13206.o2200 = true;
      o4519.o13206.o4732 = true;
      var _loc6_:int = o4519.o13206.o1802(2 + 10000000);
      var _loc7_:* = o4519.o9721.o12334("alphaVirusData");
      o7362 = _loc7_.o7362;
      o19021 = _loc7_.o19021;
      o5369 = _loc7_.o5369;
      var _loc5_:o18509 = o7362[0];
      o13084 = o13817(o4519.o8116.o2996.o2998(o13817,[this],_loc6_));
      o13084.o8564(_loc5_.x,_loc5_.y);
      o13084.o14322();
      var _loc9_:int = 0;
      var _loc8_:* = o4519.o13206.o2685.o10591;
      for each(var _loc4_ in o4519.o13206.o2685.o10591)
      {
         _loc4_.o19189 = 0;
      }
      o20160 = new o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.gameModes.AlphaVirusSpawner"]();
      o20160.o5973 = _loc6_ + 1;
      o20160.o16955(_loc6_ + 2,o5369);
      o4519.o9721.o5649(o20160);
      var _loc3_:* = o4519.o8116.o2996.o20716("FailSafeTeleportZone");
      if(_loc3_)
      {
         _loc3_.o14456();
      }
      o4519.o13206.o16280(this,o16450.o9745,o743);
   }
   
   private function o743(param1:Event) : void
   {
      o12891.o19505.o16587.o20838(new AlphaVirusMarker(),new MiniMapArrowEdgeAlphaVirus(),o13084);
      o4519.o13206.o2034 = false;
      o4519.o13206.o19155 = false;
      o4519.o13206.o2685.o16280(this,o18621.o17654,o10758);
      o4786 = 5;
      o12691 = o1051.o4767(this,1,o11821,6);
      var _loc2_:Array = o4519.o8116.o2996.o20698(o17517);
      var _loc5_:int = 0;
      var _loc4_:* = _loc2_;
      for each(var _loc3_ in _loc2_)
      {
         _loc3_.o15809(true);
      }
   }
   
   private function o10758(param1:Event) : void
   {
      o13262 = o1051.o9310(this,10,o17654);
      o1051.o19115(o9518);
      o1051.o19115(o4714);
   }
   
   private function o17654() : void
   {
      if(o13262 != -1)
      {
         o1051.o19115(o13262);
      }
      o18198 = true;
      o4519.o13206.o17799();
   }
   
   private function o11821() : void
   {
      var _loc1_:* = null;
      if(o4786 == 5)
      {
         _loc1_ = o4519.o8116.profileData.o5292.o3907(3);
         o12891.o19505.o16481(_loc1_.o17977,_loc1_.o12043,o4786);
      }
      if(o4786 == 0)
      {
         o12891.o19505.o4043(0);
         o12891.o19505.o8283();
         start();
      }
      else
      {
         o12891.o19505.o4043(o4786);
      }
      o4786 = Number(o4786) - 1;
   }
   
   private function start() : void
   {
      o17517.o10763.o16280(this,o2777.o3964,o8907);
      o17517.o10763.o16280(this,o2777.o5836,o4700);
      reset();
      o20160.start();
      o4519.o13206.o2034 = true;
      o4519.o13206.o19155 = true;
      o9518 = o1051.o4767(this,o19616.o4621,o20623,0,true);
      o1051.o4767(this,0.0333333333333333,o8588);
      o5636 = o1051.o9310(this,5,o4700);
      o4714 = o1051.o9310(this,o19616.o9508,o7956);
   }
   
   private function o8588() : void
   {
      if(o4491)
      {
         o13084.o8564(o4491.body.position.x,o4491.body.position.y);
      }
   }
   
   private function o20623() : void
   {
      var _loc1_:* = null;
      var _loc2_:int = 0;
      if(o12891.o19505 == null || o5836)
      {
         return;
      }
      if(o4491)
      {
         if(o4519.o13206.o2685.o10591[o4491.o5973])
         {
            o4519.o13206.o2685.o10591[o4491.o5973].o19189 = o4519.o13206.o2685.o10591[o4491.o5973].o19189 + o19616.o18805;
            if(o4491 == o4519.o32)
            {
               _loc1_ = o4519.o13206.o2685.o10591[o4519.o32.o5973];
               _loc1_.o2236();
            }
            o12891.o19505.o2574 = o4491.o5973;
            o20160.o1295 = o20160.o1295 + o19616.o10974;
            if(o4519.o13206.o2685.o10591[o4491.o5973].o19189 >= o19616.o5272)
            {
               o7956();
            }
            if(o4491 == o4519.o32)
            {
               o11081 = o11081 + o19616.o18805;
               _loc2_ = 0;
               while(_loc2_ < o19616.o1547.length)
               {
                  if(o11081 >= o19616.o1547[_loc2_].x)
                  {
                     o4519.o8116.o8361.o5725(o4491,o4016.o10062().initialise(o4491.o1589 * o19616.o1547[_loc2_].y,8,o13084));
                     break;
                  }
                  _loc2_++;
               }
            }
         }
         else
         {
            return;
         }
      }
      else
      {
         o12891.o19505.o2574 = -1;
         o20160.o1295 = o20160.o1295 + o19616.o1122;
      }
   }
   
   private function o7956() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(3);
      dispatchData(new o2149(this,_loc1_,false,false,3));
   }
   
   private function o18133() : void
   {
      if(!o18198 && !o4519.o13206.o4231)
      {
         o4519.o13206.o14994();
      }
      else
      {
         o17654();
      }
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      param2.position = 0;
      var _loc3_:int = param2.readByte();
      switch(int(_loc3_) - 1)
      {
         case 0:
            o7747(param2.readInt());
            break;
         case 1:
            o5654(param2.readByte());
            break;
         case 2:
            o18133();
      }
   }
   
   public function o9120(param1:o17517) : void
   {
      if(o4491)
      {
         return;
      }
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(1);
      _loc2_.writeInt(param1.o5973);
      dispatchData(new o2149(this,_loc2_));
   }
   
   public function o7747(param1:int) : void
   {
      if(o4491)
      {
         o4491.o2153();
         o4491.o8983 = 1;
         o4491.o12657(o14571.o19115,o13183);
      }
      o13084.o14322();
      var _loc4_:o17517 = o4519.o8116.o2996.o16775(param1) as o17517;
      _loc4_.o4345();
      _loc4_.o8983 = o19616.o6401;
      o4491 = _loc4_;
      o4491.o16280(this,o14571.o19115,o13183);
      o9018();
      o12891.o19505.o16587.o19147(o13084,o4491);
      var _loc3_:Array = o4519.o8116.o2996.o20698(o18442);
      var _loc6_:int = 0;
      var _loc5_:* = _loc3_;
      for each(var _loc2_ in _loc3_)
      {
         _loc2_.o2840 = 0;
      }
      if(o4491 == o4519.o32)
      {
         o11081 = 0;
      }
   }
   
   private function o13183(param1:Event) : void
   {
      reset();
   }
   
   private function o4700(param1:Event = null) : void
   {
      if(o4519.o13206.o4231 && !o18198)
      {
         o17654();
      }
      if(o4519.o13206.o2685.o7629() <= 1)
      {
         o4519.o13206.o14994();
      }
      o5636 = o1051.o9310(this,5,o4700);
   }
   
   private function o8907(param1:o17151) : void
   {
      var _loc2_:o17517 = param1.o32;
      _loc2_.o2153();
      _loc2_.o8983 = 1;
      if(_loc2_ == o4491)
      {
         _loc2_.o14118 = o19616.o4613;
         _loc2_.o4532 = o19616.o12409;
         o13084.o8564(_loc2_.body.position.x,_loc2_.body.position.y);
         o13084.o9072();
         o13084.o19344(_loc2_);
         o13084.o19821(_loc2_.o17881);
         o20160.o1295 = o20160.o1295 + o19616.o20930;
         o4491.o12657(o14571.o19115,o13183);
         o4491 = null;
         o12891.o19505.o16587.o19147(o13084,o13084);
      }
      else
      {
         _loc2_.o14118 = o19616.o15143;
         _loc2_.o4532 = o19616.o3575;
      }
   }
   
   public function reset() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(2);
      _loc1_.writeByte(o7362.length * Math.random());
      dispatchData(new o2149(this,_loc1_));
   }
   
   private function o5654(param1:*) : void
   {
      var _loc3_:* = null;
      var _loc2_:* = null;
      if(o13084)
      {
         _loc3_ = o7362[param1];
         o13084.o8564(_loc3_.x,_loc3_.y);
         o13084.o6691.rotation = 0;
         o13084.o9072();
         if(o12891.o19505 && o12891.o19505.o16587)
         {
            o12891.o19505.o16587.o19147(o13084,o13084);
            _loc2_ = o4519.o8116.o11954.o10869();
            _loc2_.o16396 = o17541.o13617("assets.effects.AlphaVirusPedestal");
            _loc2_.position = new o2415();
            _loc2_.position.x = _loc3_.x;
            _loc2_.position.y = _loc3_.y;
            _loc2_.o16990 = o11381.o12714;
            o4519.o8116.o11954.o9226(_loc2_);
         }
      }
   }
   
   public function o8895(param1:Number, param2:Number) : void
   {
      o13084.o8564(param1,param2);
   }
   
   private function o9018() : void
   {
      var _loc1_:o257 = new o257(o4491.body.position.x,o4491.body.position.y);
      o4519.o8116.o4812.o10460.o13041.play(1,0,0,false,_loc1_.o10088());
   }
   
   override public function o19115() : void
   {
      o7362 = null;
      o19021 = null;
      o5369 = null;
      o1051.o19115(o13262);
      o1051.o19115(o5636);
      o14241 = null;
      o13084 = null;
      o4491 = null;
      o20160 = null;
      super.o19115();
   }
}
