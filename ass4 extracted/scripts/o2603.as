package
{
   import flash.display.Sprite;
   
   public class o2603 extends Sprite
   {
       
      
      public function o2603()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o18677;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o18677 extends o10384
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"image"],[2,o17243.float,o13351.o5585,"cash multiplier"]];
    
   
   private var o11243:Number = 0;
   
   private var o1589:Number = 0;
   
   private var o8128:Number = 0;
   
   private var o5647:Number = 0.4;
   
   private var o20649:Number = 0.35;
   
   function o18677()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc5_:int = param2.readShort();
      if(param2.bytesAvailable > 0)
      {
         o8128 = param2.readFloat();
      }
      var _loc7_:o4332 = o4519.o9721.o12831(_loc5_);
      _loc7_.o16990 = o11381.o12714;
      var _loc10_:Number = 1200;
      var _loc3_:o10262 = o4519.o8116.o9869.o1968(0);
      var _loc9_:o17761 = new o17761(_loc3_.o2535);
      _loc9_.o10827(-8.5,-15,17,30);
      o30 = 15;
      var _loc8_:int = o8723.o17798;
      var _loc6_:int = o8723.o17798;
      var _loc4_:o4039 = o4519.o8116.o20600.o15803(o6365,_loc8_,_loc6_,false);
      _loc4_.o10289 = _loc9_.id;
      _loc3_.o14230(_loc4_);
      _loc3_.o16687(_loc7_.rotation);
      _loc3_.o8564(_loc7_.position.x,_loc7_.position.y);
      o1589 = _loc10_;
      o11243 = _loc10_;
      super.o10783(param1,_loc3_,_loc7_,o4519.o8116.o11676);
      o16166.gotoAndStop(0);
   }
   
   override public function o5725(param1:o4016) : void
   {
      o317(param1.amount);
      o10492(param1.o9968);
   }
   
   private function o317(param1:Number) : void
   {
      var _loc2_:* = null;
      if(o11243 <= 0)
      {
         return;
      }
      o11243 = o11243 - param1;
      if(o11243 <= 0)
      {
         o4929(0,0,0,0,0,0);
         _loc2_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o492.play(o20649,0,0,false,_loc2_.o10088());
         o16166.o12265 = false;
         o16166.o3030("destroyed");
         o16166.o11("destroyed");
         o6691.o16990 = o11381.o6180;
         o16166.o16280(this,o1490.o16612,o13417);
      }
   }
   
   private function o13417(param1:Event) : void
   {
      if(o8128 > 0)
      {
         o14063();
      }
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
         o4519.o8116.o4812.o4404.o18609.play(o5647,0,0,false,_loc2_.o10088());
      }
   }
   
   private function o14063() : void
   {
      var _loc1_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
      o4519.o8116.o2996.o2998(_loc1_,[new o18509(body.o2697.x,body.o2697.y),o1197.o17861,0,o8128]);
   }
}
