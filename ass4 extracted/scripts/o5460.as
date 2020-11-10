package
{
   import flash.display.Sprite;
   
   public class o5460 extends Sprite
   {
       
      
      public function o5460()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o246;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o246 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"spawn position 1"],[2,o17243.o2013,o13351.o10420,"spawn position 2"],[3,o17243.o2013,o13351.o10420,"spawn position 3"],[4,o17243.o2013,o13351.o10420,"spawn position 4"]];
    
   
   private const o4445:int = 0;
   
   private var o18945:Vector.<o16541>;
   
   private var o2215:Vector.<o18509>;
   
   private var o3840:int = 0;
   
   private const o2862:Number = 0.7;
   
   private const o7886:Number = 0.5;
   
   private var o7023:int = 0;
   
   private var o17792:int;
   
   private var o11947:int;
   
   private var o18593:Number = 0;
   
   function o246()
   {
      o18945 = new Vector.<o16541>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc3_:* = null;
      o2215 = new Vector.<o18509>();
      _loc5_ = 0;
      while(_loc5_ < 4)
      {
         _loc4_ = param2.readShort();
         _loc3_ = o4519.o9721.o12831(_loc4_);
         o2215.push(new o18509(_loc3_.position.x,_loc3_.position.y));
         o4519.o8116.o11954.o11867(_loc3_);
         _loc5_++;
      }
      super.o949(param1);
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      var _loc6_:int = 0;
      var _loc5_:int = o20712;
      var _loc7_:int = 0;
      var _loc3_:int = 200000;
      o3840 = o10176.o13327();
      var _loc2_:* = 1;
      var _loc4_:* = 1;
      if(o3840 == 1)
      {
         _loc2_ = Number(_loc2_ * 0.7);
         _loc4_ = Number(_loc4_ * 0.5);
      }
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,0,2 * _loc2_,98 * _loc2_,33 * _loc4_,3,true,2.5));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,1,30 * _loc2_,70 * _loc2_,14 * _loc4_,3,true,2.5));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,3,115 * _loc2_,8 * _loc2_,6 * _loc4_,3,true,1));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,0,115 * _loc2_,25 * _loc2_,11 * _loc4_,3,true,1));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,1,120 * _loc2_,25 * _loc2_,4 * _loc4_,3,true,1));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,2,155 * _loc2_,45 * _loc2_,12 * _loc4_,3,true,1.5));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,0,145 * _loc2_,45 * _loc2_,40 * _loc4_,3,true,1.5));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,0,180 * _loc2_,60 * _loc2_,18 * _loc4_,3,true,2));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,1,190 * _loc2_,60 * _loc2_,8 * _loc4_,3,true,2));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,3,220 * _loc2_,40 * _loc2_,5 * _loc4_,3,true,1));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,2,250 * _loc2_,40 * _loc2_,6 * _loc4_,3,true,1.5));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,0,260 * _loc2_,60 * _loc2_,12 * _loc4_,3,true,1));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,1,270 * _loc2_,60 * _loc2_,7 * _loc4_,3,true,1));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,4,270 * _loc2_,60 * _loc2_,2 * _loc4_,3,true,1));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,5,280 * _loc2_,10 * _loc2_,5 * _loc4_,3,true,1));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,3,310 * _loc2_,40 * _loc2_,4 * _loc4_,3,true,1));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,0,350 * _loc2_,30 * _loc2_,22 * _loc4_,3,true,0.7));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,1,350 * _loc2_,30 * _loc2_,10 * _loc4_,3,true,0.7));
      _loc7_++;
      o18945.push(new o16541(this,_loc5_ + _loc7_ * _loc3_,3,350 * _loc2_,30 * _loc2_,6 * _loc4_,3,true,0.7));
      o11947 = _loc3_;
      o17792 = _loc5_ + _loc7_ * _loc3_;
      _loc6_ = 0;
      while(_loc6_ < o18945.length)
      {
         o18945[_loc6_].o4526();
         _loc6_++;
      }
      if(o3840 == 1)
      {
         o1051.o9310(this,130 * 0.7,o14210);
      }
      else
      {
         o1051.o9310(this,130,o14210);
      }
   }
   
   override public function o3370(param1:Class = null, param2:Number = 0, param3:o18509 = null, param4:int = 0, param5:int = 0, param6:Boolean = false, param7:Boolean = true, param8:Boolean = true, param9:int = 0, param10:int = -1) : o18442
   {
      var _loc11_:o18509 = o2215[o7023];
      o7023 = Number(o7023) + 1;
      if(o7023 >= o2215.length)
      {
         o7023 = 0;
      }
      return super.o3370(param1,param2,_loc11_,param4,param5,param6,param7,param8,param9,param10);
   }
   
   override public function o1710() : Boolean
   {
      if(o4519.o13206.multiplayer == true)
      {
         return super.o1710();
      }
      return o4519.o32.level > 1 || o4519.o8116.o2996.o20698(o18442).length < 10;
   }
   
   private function o14210() : void
   {
      var _loc1_:* = null;
      if(!o4519.o13206.o2685.o6370)
      {
         return;
      }
      var _loc3_:* = o4519.o8116.o2996.o20716("mainDoor1");
      var _loc2_:* = o4519.o8116.o2996.o20716("mainDoor2");
      if(_loc3_ != null && _loc2_ != null && !_loc3_.o6955 && !_loc2_.o6955)
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(0);
         _loc1_.writeFloat(o18593);
         dispatchData(new o2149(this,_loc1_,true));
      }
   }
   
   private function o449(param1:Number) : void
   {
      if(o3840 == 1)
      {
         o17792 = o17792 + o11947;
         new o16541(this,o17792,4,0,5,2 * 0.5 + param1 * 0.5,6,true,1).o4526();
         o18593 = param1;
         o18593 = o18593 + 1;
         if(o18593 < 5)
         {
            o1051.o9310(this,60 * 0.7,o14210);
         }
      }
      else
      {
         o17792 = o17792 + o11947;
         new o16541(this,o17792,4,0,5,2 + param1,6,true,1).o4526();
         o18593 = param1;
         o18593 = o18593 + 1;
         if(o18593 < 5)
         {
            o1051.o9310(this,60,o14210);
         }
      }
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      if(!int(_loc3_))
      {
         o449(param2.readFloat());
      }
   }
   
   override public function o19115() : void
   {
      var _loc1_:int = 0;
      if(o8289())
      {
         return;
      }
      o2215 = null;
      _loc1_ = 0;
      while(_loc1_ < o18945.length)
      {
         o18945[_loc1_].o19115();
         _loc1_++;
      }
      o18945 = null;
      super.o19115();
   }
}
