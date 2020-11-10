package
{
   import flash.display.Sprite;
   
   public class o16637 extends Sprite
   {
       
      
      public function o16637()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o17124;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o17124 extends o10384
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"physics"],[2,o17243.o2013,o13351.o10420,"image"],[14,o17243.o14773,o13351.o10420,"above player layer"],[4,o17243.float,o13351.o10420,"health base (0 for invincible)"],[6,o17243.o14773,o13351.o10420,"projectiles pass through"],[7,o17243.o14773,o13351.o10420,"projectiles can hurt"],[8,o17243.o14773,o13351.o10420,"enemies can target/hurt"],[3,o17243.o14773,o13351.o10420,"moveable"],[12,o17243.float,o13351.o5585,"mass"],[9,o17243.float,o13351.o5585,"linear dampening"],[10,o17243.float,o13351.o5585,"friction"],[11,o17243.float,o13351.o5585,"restitution"],[15,o17243.o14773,o13351.o5585,"fixed rotation"]];
    
   
   private var o12487:Boolean = false;
   
   private var o11243:Number = 0;
   
   private var o1589:Number = 0;
   
   private var o5647:Number = 0.3;
   
   private var o20649:Number = 0.75;
   
   function o17124()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc8_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      var _loc7_:Number = param2.readByte();
      var _loc11_:Number = param2.readFloat();
      var _loc13_:Boolean = param2.readBoolean();
      var _loc15_:Boolean = param2.readBoolean();
      var _loc22_:Boolean = param2.readBoolean();
      var _loc19_:Boolean = param2.readBoolean();
      var _loc12_:* = Number(param2.readFloat());
      var _loc16_:Number = param2.readFloat();
      var _loc21_:Number = param2.readFloat();
      var _loc14_:Number = param2.readFloat();
      var _loc23_:Boolean = param2.readBoolean();
      if(_loc12_ == 0)
      {
         _loc12_ = 10;
      }
      var _loc24_:o4332 = o4519.o9721.o12831(_loc4_);
      if(_loc7_)
      {
         _loc24_.o16990 = o11381.o1041;
      }
      else
      {
         _loc24_.o16990 = o11381.o12714;
      }
      var _loc3_:o10262 = o4519.o8116.o9869.o1968(!!_loc19_?1:0,_loc16_,false,_loc23_);
      var _loc20_:o13848 = o4519.o9721.o7352[_loc8_];
      var _loc9_:Vector.<o18509> = o4519.o9721.o7963(_loc20_.o6041[0].id);
      var _loc27_:int = 0;
      var _loc26_:* = _loc9_;
      for each(var _loc17_ in _loc9_)
      {
         _loc17_.x = _loc17_.x - _loc24_.position.x;
         _loc17_.y = _loc17_.y - _loc24_.position.y;
         _loc17_.rotate(-_loc24_.rotation);
      }
      var _loc18_:o17761 = new o17761(_loc3_.o2535);
      _loc18_.o14486(_loc9_);
      var _loc10_:* = int(o8723.o10217);
      var _loc6_:* = 0;
      if(_loc13_)
      {
         _loc10_ = _loc10_ ^ o8723.o17798;
      }
      else if(_loc15_)
      {
         _loc6_ = _loc6_ | o8723.o17798;
      }
      if(_loc11_ == 0)
      {
         o12487 = true;
      }
      else if(_loc22_)
      {
         _loc6_ = _loc6_ | o8723.o17079;
      }
      var _loc5_:o4039 = o4519.o8116.o20600.o15803(o6365,_loc10_,_loc6_,false,_loc21_,_loc14_);
      _loc5_.o10289 = _loc18_.id;
      _loc3_.o14230(_loc5_);
      _loc3_.o16687(_loc24_.rotation);
      _loc3_.o8564(_loc24_.position.x,_loc24_.position.y);
      _loc3_.o7191 = _loc12_;
      var _loc25_:int = o4519.o8116.o20488.o10608.level;
      o1589 = _loc11_;
      o11243 = _loc11_;
      super.o10783(param1,_loc3_,_loc24_,o4519.o8116.o11676);
      o16166.gotoAndStop(0);
   }
   
   override public function o5725(param1:o4016) : void
   {
      o317(param1.amount);
      o10492(param1.o9968);
   }
   
   private function o317(param1:Number) : void
   {
      var _loc3_:* = null;
      var _loc2_:int = 0;
      if(o12487 || o11243 <= 0)
      {
         return;
      }
      o11243 = o11243 - param1;
      if(o11243 <= 0)
      {
         o4929(0,0,0,0,0,0);
         _loc3_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o19817.play(o20649,0,0,false,_loc3_.o10088());
         o16166.o12265 = false;
         o16166.o3030("destroyed");
         o16166.o11("destroyed");
         o6691.o16990 = o11381.o6180;
         o16166.o16280(this,o1490.o16612,o14851);
      }
      else
      {
         _loc2_ = Math.ceil((1 - o11243 / o1589) * 3);
         o16166.gotoAndStop(_loc2_ - 1);
      }
   }
   
   private function o14851(param1:Event) : void
   {
      o4519.o9721.o2075.o471(o6691);
      o6691 = null;
      o19115();
   }
   
   private function o10492(param1:Boolean = false) : void
   {
      if(o8289())
      {
         return;
      }
      var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      if(!param1)
      {
         o4519.o8116.o4812.o4404.o8918.play(o5647,0,0,false,_loc2_.o10088());
      }
   }
}
