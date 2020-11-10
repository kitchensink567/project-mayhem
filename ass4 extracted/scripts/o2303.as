package
{
   import flash.display.Sprite;
   
   public class o2303 extends Sprite
   {
       
      
      public function o2303()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o13730;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o13730 extends o9347
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"barrier graph"],[2,o17243.o2013,o13351.o10420,"image"],[3,o17243.o2013,o13351.o10420,"wait trigger"],[6,o17243.o2013,o13351.o10420,"teleport positions"],[4,o17243.o2013,o13351.o10420,"physics to add"],[5,o17243.o2013,o13351.o10420,"image to animate on trigger"],[7,o17243.o2013,o13351.o10420,"failsafe: player teleporter, enemy killer graph"],[8,o17243.o2013,o13351.o10420,"Enemy Teleport Spot"]];
    
   
   private var o16997:int = 1;
   
   private var o20778:int = 0;
   
   private var o15936:int = 0;
   
   private var o14146:int = 0;
   
   private var o6526:int = 2;
   
   private var o6112:int = 0;
   
   private var o10781:int = 0;
   
   private var o694:int = 0;
   
   private var o1198:int = 0;
   
   private var o18462:Boolean = true;
   
   private var o9476:Boolean = false;
   
   private var o18370:o4332;
   
   private var o9695:o7331;
   
   private var o10453:o4332;
   
   private var o20651:o10262;
   
   private var o1535:o10262 = null;
   
   private var o13457:o10262;
   
   private var o17072:int = -1;
   
   private var o10372:int = 0;
   
   private var o4449:int = 0;
   
   private var o2953:Boolean = false;
   
   function o13730()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o11243 = 2000;
      super.o2348(param1,param2.readShort(),param2.readShort(),o8723.o10217,0,o11243);
      o10781 = param2.readShort();
      o15936 = param2.readShort();
      o694 = param2.readShort();
      o1198 = param2.readShort();
      o14146 = param2.readShort();
      o20778 = param2.readShort();
      o18462 = true;
      o13457 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc5_:o17761 = new o17761(o13457.o2535);
      var _loc4_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o10781].o6041[0].id);
      _loc5_.o14486(_loc4_);
      var _loc3_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o17517.o6365,o17517.o6365,true);
      _loc3_.o10289 = _loc5_.id;
      o13457.o14230(_loc3_);
      o13457.o16280(this,o8273.o7087,o4827);
      o13457.o16280(this,o8273.o20083,o6826);
      o13457.o16280(this,o8273.o7087,o46);
      o13457.o16280(this,o8273.o20083,o11631);
      if(o1198 != 0)
      {
         o10453 = o4519.o9721.o12831(o1198);
      }
      if(o20778 != 0)
      {
         o18370 = o4519.o9721.o12831(o20778);
      }
      if(o10453)
      {
         o4519.o8116.o11954.o17454(o10453);
      }
      o9476 = false;
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      param2.position = 0;
      var _loc3_:int = param2.readByte();
      var _loc4_:* = _loc3_;
      switch(_loc4_)
      {
         case o16997:
            if(o18462 == true && o9476 == false)
            {
               o18462 = false;
               o17072 = o1051.o9310(this,60,o15509);
            }
            break;
         case o6526:
            o19646();
      }
   }
   
   private function o15509(param1:Event = null) : void
   {
      var _loc4_:int = 0;
      var _loc2_:* = null;
      var _loc5_:* = null;
      if(o9476)
      {
         return;
      }
      var _loc3_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o15936].o6041[0].id);
      var _loc6_:Vector.<o17517> = Vector.<o17517>(o4519.o8116.o2996.o20698(o17517));
      _loc4_ = 0;
      while(_loc4_ < _loc6_.length)
      {
         _loc2_ = _loc3_[_loc4_ % 4];
         _loc5_ = _loc6_[_loc4_];
         _loc5_.body.o8564(_loc2_.x,_loc2_.y);
         if(_loc5_ is o17517 && _loc5_.o5973 == o4519.o13206.o2685.id)
         {
            o17517(_loc5_).o15315(new o18509(_loc2_.x,_loc2_.y));
         }
         _loc4_++;
      }
   }
   
   private function o4827(param1:o663) : void
   {
      var _loc4_:* = null;
      var _loc3_:* = undefined;
      var _loc6_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      o10372 = Number(o10372) + 1;
      if(o10372 >= int(o4519.o13206.o2685.o7629() / 2) && o4519.o13206.o2685.o7629() > 1 && o18462)
      {
         _loc4_ = new ByteArray();
         _loc4_.writeByte(o16997);
         _loc3_ = this;
         dispatchData(new o2149(_loc3_,_loc4_));
         return;
      }
      if(o10372 < o4519.o13206.o2685.o7629())
      {
         return;
      }
      o18462 = false;
      if(o17072 != -1)
      {
         o1051.o19115(o17072);
         o17072 = -1;
      }
      var _loc5_:ByteArray = new ByteArray();
      _loc5_.writeByte(o6526);
      var _loc2_:* = this;
      dispatchData(new o2149(_loc2_,_loc5_));
   }
   
   private function o19646() : void
   {
      var _loc11_:* = null;
      var _loc3_:* = null;
      var _loc8_:int = 0;
      o9288 = o8723.o10217 ^ o8723.o2823 ^ o8723.o3732;
      var _loc5_:int = 0;
      o1535 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc2_:o13848 = o4519.o9721.o7352[o694];
      var _loc7_:Vector.<o18509> = o4519.o9721.o7963(_loc2_.o6041[0].id);
      var _loc12_:Vector.<Vector.<o18509>> = o12075.o7521(_loc7_);
      var _loc14_:int = 0;
      var _loc13_:* = _loc12_;
      for each(var _loc6_ in _loc12_)
      {
         _loc11_ = new o17761(o1535.o2535);
         _loc11_.o14486(_loc6_);
         _loc3_ = o4519.o8116.o20600.o15803(o6365,o9288,_loc5_);
         _loc3_.o10289 = _loc11_.id;
         o1535.o14230(_loc3_);
      }
      o4519.o8116.o11954.o9226(o10453);
      o9695 = o4519.o9721.o7833(o1198);
      o9695.o12265 = false;
      o9695.gotoAndPlay(0);
      o4519.o8116.o4812.o4404.o14151.play(1);
      if(o2953 == false)
      {
         o7433();
      }
      o13457.o12657(o8273.o7087,o4827);
      o13457.o12657(o8273.o20083,o6826);
      o9476 = true;
      if(o17072 != -1)
      {
         o1051.o19115(o17072);
         o17072 = -1;
      }
      o20651 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc4_:o17761 = new o17761(o20651.o2535);
      var _loc1_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o14146].o6041[0].id);
      _loc4_.o14486(_loc1_);
      var _loc10_:o4039 = o4519.o8116.o20600.o15803(o8723.o9077,o17517.o6365 | o18442.o6365,o17517.o6365 | o18442.o6365,true);
      _loc10_.o10289 = _loc4_.id;
      o20651.o14230(_loc10_);
      o20651.o16280(this,o8273.o7087,o745);
      o4519.o8116.o20488.o12056("zombiePodsMapArrow5");
      o4519.o8116.o20488.o13122("zombiePodsMapArrow6");
      var _loc9_:Array = o4519.o8116.o2996.o20698(o18442).concat();
      _loc8_ = 0;
      while(_loc8_ < _loc9_.length)
      {
         _loc9_[_loc8_].o19115();
         _loc8_++;
      }
   }
   
   private function o6826(param1:o18091) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      o10372 = Number(o10372) - 1;
   }
   
   private function o46(param1:o663) : void
   {
      var _loc2_:int = 0;
      if(o6955)
      {
         return;
      }
      var _loc3_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc3_ != null)
      {
         o4449 = Number(o4449) + 1;
         _loc2_ = o10176.o6407();
         if(o4449 > _loc2_)
         {
            o4449 = _loc2_;
         }
         if(o4449 > 0 && !o2953 && o9476)
         {
            o7433();
         }
      }
   }
   
   private function o745(param1:o663) : void
   {
      var _loc2_:* = null;
      if(o6955)
      {
         return;
      }
      var _loc3_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc3_ != null)
      {
         o13481(_loc3_);
      }
      else
      {
         _loc2_ = o4519.o8116.o2996.o14389(param1.o11541) as o18442;
         if(_loc2_)
         {
            if(!_loc2_.o18200)
            {
               o7627(_loc2_);
            }
         }
      }
   }
   
   private function o13481(param1:o17517) : void
   {
      var _loc3_:* = undefined;
      var _loc2_:* = null;
      if(!this.o5836)
      {
         _loc3_ = o4519.o9721.o7963(o4519.o9721.o7352[o15936].o6041[0].id);
         _loc2_ = _loc3_[0];
         param1.body.o8564(_loc2_.x,_loc2_.y);
         if(param1.o5973 == o4519.o13206.o2685.id)
         {
            param1.o15315(new o18509(_loc2_.x,_loc2_.y));
         }
      }
   }
   
   private function o7627(param1:o18442) : void
   {
      if(!this.o5836)
      {
         param1.body.o8564(o18370.position.x,o18370.position.y);
      }
   }
   
   private function o11631(param1:o18091) : void
   {
      if(o6955)
      {
         return;
      }
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc2_ != null)
      {
         o4449 = Number(o4449) - 1;
         if(o4449 < 0)
         {
            o4449 = 0;
         }
      }
   }
   
   override public function o7433(param1:Boolean = true) : void
   {
      var _loc2_:* = null;
      o2953 = true;
      o16166.o12265 = false;
      o16166.o3030("damage" + 1 + "Open");
      o16166.o11543();
      o16166.play();
      body.o15838(0);
      if(this.o6691 && this.o6691.position)
      {
         _loc2_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o14791.play(0.5,0,0,false,_loc2_.o10088());
      }
   }
   
   override public function o13052(param1:Boolean = true) : void
   {
      var _loc2_:* = null;
      o2953 = false;
      o16166.o12265 = false;
      o16166.o3030("damage" + 1 + "Open");
      o16166.o6343();
      o16166.play();
      body.o15838(o9288);
      if(this.o6691 && this.o6691.position)
      {
         _loc2_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o16977.play(0.5,0,0,false,_loc2_.o10088());
      }
   }
   
   override public function o19115() : void
   {
      super.o19115();
      if(o1535 != null)
      {
         o1535.o19115();
      }
   }
}
