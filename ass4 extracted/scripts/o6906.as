package
{
   import flash.display.Sprite;
   
   public class o6906 extends Sprite
   {
       
      
      public function o6906()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o2769;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o2769 extends o10384
{
   
   private static const o12011:int = 1;
   
   private static const o8820:int = 2;
   
   private static const o12634:int = 3;
   
   private static const o15030:int = 4;
   
   private static const o12913:int = 5;
   
   private static const o10089:int = 6;
   
   private static const o13836:int = 7;
   
   private static const o15074:int = 8;
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"image"],[2,o17243.o8809,o13351.o10420,"stat class"]];
    
   
   private var o12487:Boolean = false;
   
   private var o11243:Number = 0;
   
   private var o1589:Number = 0;
   
   private var o2168:int = 3;
   
   private var o1768:Number = 0;
   
   private var o5647:Number = 0.3;
   
   private var o20649:Number = 0.75;
   
   function o2769()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      if(param2 == null)
      {
         return;
      }
      o9153 = true;
      o12086 = false;
      var _loc5_:int = param2.readShort();
      var _loc13_:int = param2.readInt();
      var _loc19_:o4332 = o4519.o9721.o12831(_loc5_);
      var _loc22_:* = 45;
      var _loc9_:* = 45;
      var _loc12_:* = Number(3000);
      var _loc21_:Boolean = true;
      var _loc15_:Boolean = false;
      var _loc23_:Boolean = false;
      var _loc18_:Boolean = true;
      var _loc16_:Boolean = true;
      var _loc14_:* = Number(1000);
      var _loc8_:* = 5;
      var _loc17_:* = 10;
      var _loc20_:* = 0;
      var _loc7_:Boolean = false;
      switch(int(_loc13_) - 1)
      {
         case 0:
            _loc19_.o16990 = o11381.o12714;
            _loc22_ = 45;
            _loc9_ = 45;
            _loc12_ = Number(3000);
            _loc21_ = true;
            _loc23_ = false;
            _loc18_ = true;
            _loc16_ = true;
            _loc14_ = Number(1000);
            _loc8_ = 5;
            _loc17_ = 10;
            _loc20_ = 0;
            break;
         case 1:
            _loc19_.o16990 = o11381.o1041;
            _loc22_ = 45;
            _loc9_ = 45;
            _loc12_ = Number(5000);
            _loc21_ = false;
            _loc23_ = true;
            _loc18_ = true;
            _loc16_ = true;
            _loc14_ = Number(3000);
            _loc8_ = 10;
            _loc17_ = 10;
            _loc20_ = 0;
            break;
         case 2:
            _loc19_.o16990 = o11381.o12714;
            _loc22_ = 80;
            _loc9_ = 80;
            _loc12_ = Number(9000);
            _loc21_ = true;
            _loc23_ = false;
            _loc18_ = true;
            _loc16_ = true;
            _loc14_ = Number(4000);
            _loc8_ = 5;
            _loc17_ = 10;
            _loc20_ = 0;
            break;
         case 3:
            _loc19_.o16990 = o11381.o1041;
            _loc22_ = 80;
            _loc9_ = 80;
            _loc12_ = Number(13000);
            _loc21_ = false;
            _loc23_ = true;
            _loc18_ = true;
            _loc16_ = false;
            _loc14_ = Number(18000);
            _loc8_ = 10;
            _loc17_ = 10;
            _loc20_ = 0;
            break;
         case 4:
            _loc19_.o16990 = o11381.o7186;
            _loc22_ = 47;
            _loc9_ = 47;
            _loc12_ = Number(500);
            _loc21_ = false;
            _loc15_ = true;
            _loc23_ = true;
            _loc18_ = false;
            _loc16_ = false;
            o1768 = 0.07;
            o2168 = 2;
            break;
         case 5:
            _loc19_.o16990 = o11381.o7186;
            _loc22_ = 57;
            _loc9_ = 65;
            _loc12_ = Number(700);
            _loc21_ = false;
            _loc15_ = true;
            _loc23_ = true;
            _loc18_ = false;
            _loc16_ = false;
            o1768 = 0.085;
            o2168 = 2;
            break;
         case 6:
            _loc19_.o16990 = o11381.o7186;
            _loc22_ = 50;
            _loc9_ = 100;
            _loc12_ = Number(1000);
            _loc21_ = false;
            _loc15_ = true;
            _loc23_ = true;
            _loc18_ = false;
            _loc16_ = false;
            o1768 = 0.1;
            o2168 = 2;
            break;
         case 7:
            _loc19_.o16990 = o11381.o12714;
            _loc22_ = 21;
            _loc7_ = true;
            _loc12_ = 0;
            _loc21_ = true;
            _loc15_ = false;
            _loc23_ = false;
            _loc18_ = false;
            _loc16_ = true;
            _loc14_ = 20;
            _loc8_ = 2;
            _loc17_ = 2;
            _loc20_ = 0.3;
      }
      var _loc3_:o10262 = o4519.o8116.o9869.o1968(!!_loc16_?1:0,_loc8_,false,false);
      var _loc11_:o17761 = new o17761(_loc3_.o2535);
      if(_loc7_)
      {
         _loc11_.o16716(_loc22_);
      }
      else
      {
         _loc11_.o10827(-_loc22_ / 2,-_loc9_ / 2,_loc22_,_loc9_);
      }
      var _loc10_:* = int(o8723.o10217);
      var _loc6_:* = 0;
      if(_loc21_)
      {
         _loc10_ = _loc10_ ^ o8723.o17798;
      }
      else if(_loc23_)
      {
         _loc6_ = _loc6_ | o8723.o17798;
      }
      if(_loc15_)
      {
         _loc10_ = _loc10_ ^ (o8723.o3732 | o8723.o32 | o8723.o478 | o8723.o2823 | o8723.o12624);
      }
      if(_loc12_ == 0)
      {
         o12487 = true;
      }
      else if(_loc18_)
      {
         _loc6_ = _loc6_ | o8723.o17079;
         _loc6_ = _loc6_ | o8723.o42;
      }
      var _loc4_:o4039 = o4519.o8116.o20600.o15803(o6365,_loc10_,_loc6_,false,_loc17_,_loc20_);
      _loc4_.o10289 = _loc11_.id;
      _loc3_.o14230(_loc4_);
      _loc3_.o16687(_loc19_.rotation);
      _loc3_.o8564(_loc19_.position.x,_loc19_.position.y);
      _loc3_.o7191 = _loc14_;
      o1589 = _loc12_;
      o11243 = _loc12_;
      super.o10783(param1,_loc3_,_loc19_,o4519.o8116.o11676);
      o16166.gotoAndStop(0);
   }
   
   override public function o5725(param1:o4016) : void
   {
      o317(param1.amount);
      o10492(param1.o9968);
   }
   
   private function o317(param1:Number) : void
   {
      var _loc5_:* = null;
      var _loc2_:* = null;
      var _loc3_:* = null;
      var _loc4_:int = 0;
      if(o12487 || o11243 <= 0)
      {
         return;
      }
      o11243 = o11243 - param1;
      if(o11243 <= 0)
      {
         o4929(0,0,0,0,0,0);
         _loc5_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o19817.play(o20649,0,0,false,_loc5_.o10088());
         o16166.o12265 = false;
         o16166.o3030("destroyed");
         o16166.o11("destroyed");
         o6691.o16990 = o11381.o6180;
         o16166.o16280(this,o1490.o16612,o14851);
         if(o1768 > o4519.o8116.random.o10418(this.o5973))
         {
            _loc2_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
            _loc3_ = o4519.o8116.o2996.o2998(_loc2_,[new o18509(body.position.x,body.position.y),o1197.o9344,0]) as o6743;
         }
      }
      else
      {
         _loc4_ = Math.ceil((1 - o11243 / o1589) * o2168);
         o16166.gotoAndStop(_loc4_ - 1);
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
