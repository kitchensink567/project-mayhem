package
{
   import flash.display.Sprite;
   
   public class o1074 extends Sprite
   {
       
      
      public function o1074()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o10125;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o10125 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"side spawn 1"],[2,o17243.o2013,o13351.o10420,"side spawn 2"],[3,o17243.o2013,o13351.o10420,"boss spawn"],[4,o17243.o2013,o13351.o10420,"side 1 graphic"],[5,o17243.o2013,o13351.o10420,"side 2 graphic"],[6,o17243.o2013,o13351.o10420,"boss graphic"]];
    
   
   private const o19893:Number = 75;
   
   private const o3361:Number = 3;
   
   private const o41:Number = 200;
   
   private var o9863:Vector.<o16541>;
   
   private var o2215:Vector.<o18509>;
   
   private var o1005:o18509;
   
   private var o13250:o7331;
   
   private var o6782:o7331;
   
   private var o9181:o7331;
   
   private var o3840:int = 0;
   
   private var o7023:int = 0;
   
   private var o7341:Boolean = true;
   
   private var o18011:Boolean = true;
   
   function o10125()
   {
      o9863 = new Vector.<o16541>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc3_:* = null;
      o2215 = new Vector.<o18509>();
      _loc5_ = 0;
      while(_loc5_ < 2)
      {
         _loc4_ = param2.readShort();
         _loc3_ = o4519.o9721.o12831(_loc4_);
         o2215.push(new o18509(_loc3_.position.x,_loc3_.position.y));
         o4519.o8116.o11954.o11867(_loc3_);
         _loc5_++;
      }
      _loc4_ = param2.readShort();
      _loc3_ = o4519.o9721.o12831(_loc4_);
      o1005 = new o18509(_loc3_.position.x,_loc3_.position.y);
      o4519.o8116.o11954.o11867(_loc3_);
      _loc4_ = param2.readShort();
      o13250 = o4519.o9721.o7833(_loc4_);
      o13250.gotoAndStop(1);
      _loc4_ = param2.readShort();
      o6782 = o4519.o9721.o7833(_loc4_);
      o6782.gotoAndStop(1);
      _loc4_ = param2.readShort();
      o9181 = o4519.o9721.o7833(_loc4_);
      o9181.gotoAndStop(1);
      super.o949(param1);
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      var _loc3_:int = o20712;
      var _loc5_:int = 0;
      var _loc2_:int = 200000;
      o3840 = o10176.o13327();
      var _loc4_:Vector.<o20743> = o10176.o8930(75,-1,-1,true);
      o9863.push(new o8734(this,_loc3_ + _loc5_ * _loc2_,_loc4_,3));
      _loc5_++;
      o9863.push(new o16541(this,_loc3_ + _loc5_ * _loc2_,3,20,40,3,3,true,1));
      _loc5_++;
      o9863.push(new o16541(this,_loc3_ + _loc5_ * _loc2_,2,50,40,4,3,true,1.5));
      _loc5_++;
      o9863.push(new o16541(this,_loc3_ + _loc5_ * _loc2_,0,60,60,8,3,true,1));
      _loc5_++;
      o9863.push(new o16541(this,_loc3_ + _loc5_ * _loc2_,1,70,60,4,3,true,1));
      _loc5_++;
      o9863.push(new o16541(this,_loc3_ + _loc5_ * _loc2_,4,70,60,1,3,true,1));
      _loc5_++;
      o9863.push(new o16541(this,_loc3_ + _loc5_ * _loc2_,5,80,10,3,3,true,1));
      _loc5_++;
      o9863.push(new o16541(this,_loc3_ + _loc5_ * _loc2_,3,110,40,2,3,true,1));
      _loc5_++;
      o9863.push(new o16541(this,_loc3_ + _loc5_ * _loc2_,0,150,30,12,3,true,0.7));
      _loc5_++;
      o9863.push(new o16541(this,_loc3_ + _loc5_ * _loc2_,1,150,30,5,3,true,0.7));
      _loc5_++;
      o9863.push(new o16541(this,_loc3_ + _loc5_ * _loc2_,3,150,30,3,3,true,0.7));
      o1051.o9310(this,200,o4745);
   }
   
   override public function o3370(param1:Class = null, param2:Number = 0, param3:o18509 = null, param4:int = 0, param5:int = 0, param6:Boolean = false, param7:Boolean = true, param8:Boolean = true, param9:int = 0, param10:int = -1) : o18442
   {
      var _loc11_:* = null;
      var _loc12_:* = null;
      if(param5 == 3)
      {
         _loc12_ = o1005;
         param5 = 0;
         if(o18011)
         {
            o18011 = false;
            o9181.play();
            _loc11_ = new o257(o1005.x,o1005.y);
            o4519.o8116.o4812.o4404.o14151.play(1,0,1000,false,_loc11_.o10088());
         }
      }
      else
      {
         if(o7341)
         {
            o7341 = false;
            o13250.play();
            o6782.play();
            _loc11_ = new o257(o2215[0].x,o2215[0].y);
            o4519.o8116.o4812.o4404.o14151.play(1,0,1000,false,_loc11_.o10088());
            _loc11_ = new o257(o2215[1].x,o2215[1].y);
            o4519.o8116.o4812.o4404.o14151.play(1,0,1000,false,_loc11_.o10088());
         }
         _loc12_ = o2215[o7023];
         o7023 = Number(o7023) + 1;
         if(o7023 >= o2215.length)
         {
            o7023 = 0;
         }
      }
      var _loc13_:o18442 = super.o3370(param1,param2,_loc12_,param4,param5,param6,param7,param8,param9,param10);
      return _loc13_;
   }
   
   private function o4745() : void
   {
      var _loc3_:int = 0;
      var _loc2_:* = o9863;
      for each(var _loc1_ in o9863)
      {
         _loc1_.o4526();
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
      o1005 = null;
      o13250 = null;
      o6782 = null;
      o9181 = null;
      if(o9863)
      {
         _loc1_ = 0;
         while(_loc1_ < o9863.length)
         {
            o9863[_loc1_].o19115();
            _loc1_++;
         }
      }
      o9863 = null;
      super.o19115();
   }
}
