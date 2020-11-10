package
{
   import flash.display.Sprite;
   
   public class o8671 extends Sprite
   {
       
      
      public function o8671()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o5240;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o5240 extends o9347
{
   
   public static var o20272:Array = [[12,o17243.o19845,o13351.o10420,"name"],[1,o17243.o2013,o13351.o10420,"barrier graph"],[2,o17243.o2013,o13351.o10420,"image"],[3,o17243.o8809,o13351.o10420,"enemy flag to check"],[5,o17243.o14773,o13351.o10420,"projectiles pass through"],[4,o17243.o2013,o13351.o5585,"image to remove when open"],[11,o17243.float,o13351.o5585,"image fade time"],[13,o17243.float,o13351.o5585,"open after time (0 = ignore)"],[14,o17243.o2013,o13351.o5585,"trigger for character message"]];
   
   private static const o435:int = 1;
   
   private static const o11093:int = 2;
   
   protected static const o6500:int = 3;
    
   
   private var o17335:int = -1;
   
   private var o5169:int = 0;
   
   private var o19851:o4332 = null;
   
   private var o10545:Number = 0;
   
   private var o843:Number = 0;
   
   private var o406:o10262;
   
   public var o16813;
   
   private var o16554:int;
   
   private var o6196:Boolean = false;
   
   private var o2953:Boolean = false;
   
   function o5240()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc8_:* = undefined;
      var _loc7_:* = null;
      var _loc4_:* = undefined;
      var _loc3_:* = null;
      name = param2.readUTF();
      var _loc11_:int = param2.readShort();
      var _loc6_:int = param2.readShort();
      o17335 = param2.readInt();
      var _loc10_:Boolean = param2.readByte();
      var _loc5_:int = param2.readShort();
      o10545 = param2.readFloat();
      o843 = param2.readFloat();
      var _loc9_:int = param2.readShort();
      if(_loc5_ != 0)
      {
         o19851 = o4519.o9721.o12831(_loc5_);
         if(o19851 == null)
         {
            _loc8_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc5_].o6041[0].id);
            o19851 = o4519.o8116.o11954.o10869();
            o19851.o16396 = o17541.o13617(_loc8_);
            o19851.position = new o2415();
            o19851.o16990 = 110;
            o4519.o8116.o11954.o9226(o19851);
         }
      }
      super.o2348(param1,_loc11_,_loc6_,!!_loc10_?o8723.o10217 ^ o8723.o17798:o8723.o10217,0,0);
      if(_loc9_ > 0)
      {
         o406 = o4519.o8116.o9869.o1968(0,0,false);
         _loc7_ = new o17761(o406.o2535);
         _loc4_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc9_].o6041[0].id);
         _loc7_.o14486(_loc4_);
         _loc3_ = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32,o8723.o32,true);
         _loc3_.o10289 = _loc7_.id;
         o406.o14230(_loc3_);
         _loc3_.o16280(this,o2841.o1516,o46);
      }
      o2953 = true;
      o16166.o5388("open");
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      o16554 = o1051.o4767(this,1,o20666,2147483647);
      if(o843 > 0)
      {
         o1051.o9310(this,o843,o6905);
      }
   }
   
   private function o20666() : void
   {
      var _loc1_:int = 0;
      var _loc2_:Array = o4519.o8116.o2996.o20698(o18442);
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length)
      {
         if(_loc2_[_loc1_].o12555 == o17335)
         {
            if(o2953)
            {
               o8409();
            }
            return;
         }
         _loc1_++;
      }
      if(!o2953)
      {
         o14056();
      }
   }
   
   private function o14056() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(1);
      dispatchData(new o2149(this,_loc1_,true));
   }
   
   private function o8409() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(2);
      dispatchData(new o2149(this,_loc1_,true));
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      switch(int(_loc3_) - 1)
      {
         case 0:
            o7433();
            break;
         case 1:
            o13052();
      }
   }
   
   public function o6905() : void
   {
      o1051.o19115(o16554);
      o6196 = true;
      if(!o2953)
      {
         o7433();
      }
   }
   
   override public function o7433(param1:Boolean = true) : void
   {
      if(o2953)
      {
         return;
      }
      o16166.o12657(o1490.o16612,o14813);
      if(o19851)
      {
         if(o10545 <= 0)
         {
            o4519.o8116.o11954.o17454(o19851);
         }
         else
         {
            new o6880(o19851).o20013(o10545,true);
         }
         o19851 = null;
      }
      if(o16813 && !o16813.o8289())
      {
         o16813.o4526();
      }
      o2953 = true;
      o16166.o12265 = false;
      o16166.o3030("open");
      o16166.o11543();
      o16166.play();
      body.o15838(0);
      var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o219.play(1,0,0,false,_loc2_.o10088());
      o6196 = true;
   }
   
   override public function o13052(param1:Boolean = true) : void
   {
      if(!o2953 || o6196)
      {
         return;
      }
      o2953 = false;
      o16166.o12265 = false;
      o16166.o3030("open");
      o16166.o6343();
      o16166.play();
      o16166.o16280(this,o1490.o16612,o14813);
      body.o15838(o9288);
      var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o4333.play(1,0,0,false,_loc2_.o10088());
   }
   
   private function o14813(param1:Event) : void
   {
      o16166.o12657(o1490.o16612,o14813);
      o16166.o5388("closed");
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      if(o19851 != null)
      {
         o19851.o19115();
      }
      if(o406)
      {
         o406.o19115();
      }
      super.o19115();
   }
   
   private function o46(param1:o4217) : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = null;
      var _loc4_:o17517 = o4519.o8116.o2996.o14389(param1.o11541.body) as o17517;
      if(_loc4_)
      {
         if(name == "terminalDoor" && o2953 == false)
         {
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
            _loc3_ = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msgTerminalDoorClosed");
            o4519.o8116.o20488.o2251(_loc2_,_loc3_);
         }
      }
   }
}
