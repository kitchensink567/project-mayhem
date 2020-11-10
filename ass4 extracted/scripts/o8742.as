package
{
   import flash.display.Sprite;
   
   public class o8742 extends Sprite
   {
       
      
      public function o8742()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o20256;
      }
   }
}

import flash.events.Event;
import flash.geom.Rectangle;
import flash.utils.ByteArray;

class o20256 extends o7848 implements o6270, o11190
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.o2013,o13351.o10420,"body image"],[12,o17243.o2013,o13351.o10420,"tray image"],[3,o17243.o2013,o13351.o10420,"door image"],[4,o17243.o2013,o13351.o10420,"physics upper"],[5,o17243.o2013,o13351.o10420,"physics lower"],[6,o17243.o2013,o13351.o10420,"physics door"],[8,o17243.o2013,o13351.o10420,"on the back trigger"],[11,o17243.o2013,o13351.o10420,"squasher physics"],[7,o17243.o2013,o13351.o10420,"path"],[9,o17243.o2013,o13351.o10420,"reverse path"],[10,o17243.o2013,o13351.o10420,"path continued"],[13,o17243.o2013,o13351.o10420,"Enemy Only Physics"]];
   
   public static const o14406:int = o19504.o4386();
   
   public static const o5749:int = o19504.o4386();
   
   public static const o18941:int = o19504.o4386();
    
   
   private var o1589:Number = 20000;
   
   private var o5476:Number = 0.008;
   
   private var o11243:Number = 1;
   
   private var o17534:o4332;
   
   private var o3446:o7331;
   
   private var o18526:o4332;
   
   private var o1606:o7331;
   
   private var o19668:int;
   
   private var o6372:int;
   
   private var o2239:int;
   
   private var o11895:o10262;
   
   private var o18149:o10262;
   
   private var o5465:Rectangle;
   
   private var o20344:Number = 0;
   
   private var o19120:o10262;
   
   private var o4424:o10262;
   
   private var o655:o10262;
   
   private var o18295:int;
   
   private var o1337:o972;
   
   private var o3054:o972;
   
   private var o16009:o972;
   
   private var o11586:o972;
   
   private var o8407:Array;
   
   private var o2868:Array;
   
   private const o16626:uint = 4294967295 ^ (o8723.o619 | o8723.o17079 | o8723.o7778);
   
   private const o14643:uint = 4294967295 ^ o8723.o619;
   
   private const o9903:int = 8;
   
   private var o9933:Number = 0;
   
   private var o9283:int = -1;
   
   private var o948:int = -1;
   
   private var o16554:int = -1;
   
   private var o12261:int = -1;
   
   private var o17556:int = -1;
   
   private var o18574:int = -1;
   
   private var o11974:int = -1;
   
   private var delta:Number = 0.03333333333333333;
   
   private var o9367:Boolean = false;
   
   private var o11585:Boolean = false;
   
   private var o9860:Number = 0;
   
   private var o6746:Number = 160;
   
   private var o7439:Number = 33;
   
   private var o20832:Boolean = false;
   
   private var o2393:int = 0;
   
   private var o414:int = 0;
   
   private var o529:Number = 0;
   
   private var o2301:Number = 0;
   
   private var o5228:Number = 1;
   
   private var o11295:Number = 0;
   
   private var o18584:Array;
   
   private var o12461:Vector.<o18442>;
   
   private var o8534:Number = 1;
   
   private const o17047:Number = 0.1;
   
   private var o6955:Boolean = false;
   
   private var o9732:Vector.<o4332>;
   
   private var o4420:Vector.<o7331>;
   
   private var o2650:Boolean = false;
   
   private var o3456:Boolean = false;
   
   private var o20175:Boolean = false;
   
   function o20256()
   {
      o18584 = [];
      o12461 = new Vector.<o18442>();
      o9732 = new Vector.<o4332>();
      o4420 = new Vector.<o7331>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:* = undefined;
      var _loc22_:* = null;
      var _loc5_:* = null;
      var _loc20_:int = 0;
      var _loc4_:* = null;
      var _loc23_:* = NaN;
      var _loc15_:* = NaN;
      var _loc19_:* = NaN;
      var _loc13_:* = null;
      var _loc10_:* = null;
      name = param2.readUTF();
      var _loc29_:int = param2.readShort();
      var _loc18_:int = param2.readShort();
      var _loc9_:int = param2.readShort();
      var _loc28_:int = param2.readShort();
      var _loc24_:int = param2.readShort();
      var _loc16_:int = param2.readShort();
      var _loc27_:int = param2.readShort();
      var _loc26_:int = param2.readShort();
      var _loc14_:int = param2.readShort();
      var _loc8_:int = param2.readShort();
      var _loc12_:int = param2.readShort();
      o18295 = param2.readShort();
      var _loc17_:o4332 = o4519.o9721.o12831(_loc29_);
      o17534 = o4519.o9721.o12831(_loc18_);
      o3446 = o4519.o9721.o7833(_loc18_);
      o18526 = o4519.o9721.o12831(_loc9_);
      o1606 = o4519.o9721.o7833(_loc9_);
      var _loc7_:int = 4294967295;
      o19668 = o4519.o9721.o3865(Vector.<int>([_loc28_]),o8723.o18180,_loc7_);
      o6372 = o4519.o9721.o3865(Vector.<int>([_loc24_]),o8723.o18180,_loc7_ ^ o8723.o619);
      body = o4519.o8116.o9869.o1968(2,0,false);
      var _loc3_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc24_].o6041[0].id);
      var _loc11_:Vector.<Vector.<o18509>> = o12075.o7521(_loc3_);
      var _loc33_:int = 0;
      var _loc32_:* = _loc11_;
      for each(_loc6_ in _loc11_)
      {
         var _loc31_:int = 0;
         var _loc30_:* = _loc6_;
         for each(var _loc21_ in _loc6_)
         {
            _loc21_.x = _loc21_.x - _loc17_.position.x;
            _loc21_.y = _loc21_.y - _loc17_.position.y;
            _loc21_.rotate(-_loc17_.rotation);
         }
         _loc22_ = new o17761(body.o2535);
         _loc22_.o14486(_loc6_);
         _loc5_ = o4519.o8116.o20600.o15803(o8723.o14328,0,o14643);
         _loc5_.o10289 = _loc22_.id;
         body.o14230(_loc5_);
      }
      _loc6_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc16_].o6041[0].id);
      var _loc35_:int = 0;
      var _loc34_:* = _loc6_;
      for each(_loc21_ in _loc6_)
      {
         _loc21_.x = _loc21_.x - _loc17_.position.x;
         _loc21_.y = _loc21_.y - _loc17_.position.y;
         _loc21_.rotate(-_loc17_.rotation);
      }
      _loc22_ = new o17761(body.o2535);
      _loc22_.o14486(_loc6_);
      _loc5_ = o4519.o8116.o20600.o15803(o8723.o14328,o16626,o14643);
      _loc5_.o10289 = _loc22_.id;
      o2239 = _loc5_.id;
      body.o14230(_loc5_);
      body.o7191 = 999999999;
      o11895 = o4519.o8116.o9869.o1968(2,0,false);
      _loc6_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc27_].o6041[0].id);
      var _loc37_:int = 0;
      var _loc36_:* = _loc6_;
      for each(_loc21_ in _loc6_)
      {
         _loc21_.x = _loc21_.x - _loc17_.position.x;
         _loc21_.y = _loc21_.y - _loc17_.position.y;
         _loc21_.rotate(-_loc17_.rotation);
      }
      _loc22_ = new o17761(o11895.o2535);
      _loc22_.o14486(_loc6_);
      _loc5_ = o4519.o8116.o20600.o15803(o8723.trigger,o8723.o32,o8723.o32,true);
      _loc5_.o10289 = _loc22_.id;
      o11895.o14230(_loc5_);
      o18149 = o4519.o8116.o9869.o1968(1,0,false);
      o5465 = new Rectangle(0,-100,190,200);
      _loc22_ = new o17761(o18149.o2535);
      _loc22_.o10827(o5465.x,o5465.y,o5465.width,o5465.height);
      _loc5_ = o4519.o8116.o20600.o15803(o8723.trigger,o8723.o18180 | o8723.o19523,o8723.o18180 | o8723.o19523,true);
      _loc5_.o10289 = _loc22_.id;
      o18149.o14230(_loc5_);
      o10783(param1,body,null,o4519.o8116.o11676);
      o6691 = _loc17_;
      o16166.o19115();
      o16166 = o4519.o9721.o7833(_loc29_);
      o19120 = o4519.o8116.o9869.o1968(2,0,false);
      _loc6_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc26_].o6041[0].id);
      var _loc39_:int = 0;
      var _loc38_:* = _loc6_;
      for each(_loc21_ in _loc6_)
      {
         _loc21_.x = _loc21_.x - _loc17_.position.x;
         _loc21_.y = _loc21_.y - _loc17_.position.y;
         _loc21_.rotate(-_loc17_.rotation);
      }
      _loc22_ = new o17761(o19120.o2535);
      _loc22_.o14486(_loc6_);
      _loc5_ = o4519.o8116.o20600.o15803(o8723.trigger,o8723.o18481,o8723.o18481,true);
      _loc5_.o10289 = _loc22_.id;
      o19120.o14230(_loc5_);
      o4424 = o4519.o8116.o9869.o1968(1,0,false);
      _loc22_ = new o17761(o4424.o2535);
      _loc22_.o14486(_loc6_);
      _loc5_ = o4519.o8116.o20600.o15803(o8723.o14328,o8723.trigger | o8723.o14409,o8723.trigger | o8723.o14409);
      _loc5_.o10289 = _loc22_.id;
      o4424.o14230(_loc5_);
      body.o16687(o6691.rotation);
      body.o8564(o6691.position.x,o6691.position.y);
      o11895.o16687(o6691.rotation);
      o11895.o8564(o6691.position.x,o6691.position.y);
      o18149.o16687(o6691.rotation);
      o18149.o8564(o6691.position.x,o6691.position.y);
      o19120.o16687(o6691.rotation);
      o19120.o8564(o6691.position.x,o6691.position.y);
      o4424.o16687(o6691.rotation);
      o4424.o8564(o6691.position.x,o6691.position.y);
      var _loc25_:o13848 = o4519.o9721.o7352[_loc14_];
      o3054 = o12498(_loc25_);
      _loc25_ = o4519.o9721.o7352[_loc8_];
      o16009 = o12498(_loc25_);
      _loc25_ = o4519.o9721.o7352[_loc12_];
      o11586 = o12498(_loc25_);
      o1337 = o3054;
      o8407 = [o3054,o16009,o11586];
      o16152();
      _loc20_ = 0;
      while(_loc20_ < 8)
      {
         _loc4_ = "assets.maps.snow.TruckSmoke";
         _loc23_ = 30;
         if(_loc20_ >= 4)
         {
            _loc4_ = "assets.maps.snow.TruckFire";
            _loc23_ = 31;
         }
         if(_loc20_ % 2 == 1)
         {
            _loc13_.scaleY = -1;
         }
         _loc15_ = 0;
         _loc19_ = 0;
         if(int(_loc20_ / 2) % 2 == 1)
         {
            _loc15_ = Number(-260);
            _loc19_ = 55;
            if(_loc20_ % 2 == 1)
            {
               _loc19_ = -55;
            }
         }
         _loc13_ = o4519.o8116.o11954.o10869();
         _loc13_.o16396 = o17541.o13617(_loc4_);
         _loc13_.position = new o18342(_loc13_,o6691,_loc15_,_loc19_,true);
         _loc13_.o16990 = _loc23_;
         _loc13_.o9824 = false;
         o4519.o8116.o11954.o9226(_loc13_);
         _loc10_ = o4519.o8116.o11676.o6798(_loc4_);
         _loc10_.o11525(_loc13_);
         _loc10_.play();
         o9732.push(_loc13_);
         o4420.push(_loc10_);
         _loc20_++;
      }
      o4519.o13206.o16280(this,o16450.o9745,o2203);
   }
   
   private function o2203(param1:Event) : void
   {
      o4519.o13206.o12657(o16450.o9745,o2203);
      o1589 = o1589 + o1589 * o10176.o13327() * 0.34;
      o11243 = o1589 + o1589 * o10176.o13327() * 0.34;
      o8534 = 100 + o10176.o13327() * 6;
      if(o4519.o13206.o4326 == 2)
      {
         var _loc2_:* = o1589 * 20;
         o1589 = _loc2_;
         o11243 = _loc2_;
      }
   }
   
   private function o16152() : void
   {
      var _loc3_:int = 0;
      var _loc2_:* = null;
      var _loc8_:* = null;
      var _loc1_:int = 0;
      var _loc7_:* = null;
      var _loc5_:* = null;
      var _loc6_:* = null;
      var _loc4_:* = null;
      o2868 = [];
      _loc3_ = 0;
      while(_loc3_ < o8407.length)
      {
         _loc2_ = o8407[_loc3_];
         _loc8_ = [];
         o2868.push(_loc8_);
         _loc1_ = 0;
         while(_loc1_ < _loc2_.o16255.length)
         {
            _loc7_ = null;
            if(_loc1_ - 1 > 0)
            {
               _loc7_ = _loc2_.o16255[_loc1_ - 1];
            }
            _loc5_ = _loc2_.o16255[_loc1_];
            _loc6_ = null;
            if(_loc1_ + 1 < _loc2_.o16255.length)
            {
               _loc6_ = _loc2_.o16255[_loc1_ + 1];
            }
            if(_loc6_ == null)
            {
               _loc4_ = _loc5_.o2413(_loc7_);
               _loc8_.push(_loc4_.rotation);
            }
            else if(_loc7_ == null)
            {
               _loc4_ = _loc6_.o2413(_loc5_);
               _loc8_.push(_loc4_.rotation);
            }
            else
            {
               _loc4_ = _loc6_.o2413(_loc7_);
               _loc8_.push(_loc4_.rotation);
            }
            _loc1_++;
         }
         _loc3_++;
      }
   }
   
   public function o10812() : void
   {
      o1606.play();
      body.o15838(o14643);
      body.o11496(o2239,0);
      o18526.o16990 = 0.91;
      o4519.o9721.o5294(o6372);
      o4519.o9721.o5294(o19668);
      o11895.o16280(this,o8273.o7087,o2854);
      o9283 = o1051.o4767(this,0.5,o18718);
   }
   
   private function o2854(param1:o663) : void
   {
      var _loc2_:o17517 = o17517(o4519.o8116.o2996.o14389(param1.o11541));
      if(_loc2_ == o4519.o32)
      {
         body.o11496(o2239,o14643);
         o11895.o12657(o8273.o7087,o2854);
         o948 = o1051.o4767(this,1,o16424);
      }
   }
   
   private function o16424() : void
   {
      var _loc2_:int = 0;
      var _loc4_:* = null;
      var _loc3_:* = null;
      var _loc5_:Array = [];
      var _loc1_:Vector.<o10262> = o4519.o8116.o9869.o8182(o11895);
      _loc2_ = 0;
      while(_loc2_ < _loc1_.length)
      {
         _loc4_ = o17517(o4519.o8116.o2996.o14389(_loc1_[_loc2_]));
         if(_loc4_)
         {
            _loc5_.push(_loc4_);
         }
         _loc2_++;
      }
      if(_loc5_.indexOf(o4519.o32) == -1)
      {
         _loc3_ = o15460.o4078;
         _loc3_.x = _loc4_.x - o6691.position.x;
         _loc3_.y = _loc4_.y - o6691.position.y;
         _loc3_.o3215 = 40;
         _loc4_.body.o8564(o6691.position.x + _loc3_.x,o6691.position.y + _loc3_.y);
      }
   }
   
   private function o2932() : void
   {
      var _loc3_:int = 0;
      var _loc5_:* = null;
      var _loc4_:* = null;
      var _loc6_:Array = [];
      var _loc2_:Vector.<o10262> = o4519.o8116.o9869.o8182(o11895);
      _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         _loc5_ = o17517(o4519.o8116.o2996.o14389(_loc2_[_loc3_]));
         if(_loc5_)
         {
            _loc6_.push(_loc5_);
         }
         _loc3_++;
      }
      var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
      var _loc8_:int = 0;
      var _loc7_:* = _loc1_;
      for each(_loc5_ in _loc1_)
      {
         if(_loc6_.indexOf(_loc5_) == -1)
         {
            _loc4_ = o15460.o4078;
            _loc4_.x = _loc5_.x - o6691.position.x;
            _loc4_.y = _loc5_.y - o6691.position.y;
            _loc4_.o3215 = 40;
            _loc5_.body.o8564(o6691.position.x + _loc4_.x,o6691.position.y + _loc4_.y);
         }
      }
   }
   
   private function o18718() : void
   {
      var _loc1_:Vector.<o10262> = o4519.o8116.o9869.o8182(o11895);
      if(_loc1_.length == o4519.o13206.o2685.o7629())
      {
         o1051.o19115(o9283);
         o15777(o14406);
         o1606.o6343();
         o1606.play();
      }
   }
   
   public function o8977() : void
   {
      o1051.o19115(o948);
      o948 = o1051.o4767(this,1,o2932);
   }
   
   public function o9526() : void
   {
      var _loc4_:* = null;
      var _loc1_:* = null;
      o18526.o9824 = false;
      o16166.o3030("lightson");
      o16166.o12265 = true;
      o16166.play();
      o3446.o3030("lightson");
      o3446.o12265 = true;
      o3446.play();
      o12261 = o1051.o4767(this,delta,o11170);
      if(o12891.o19505)
      {
         o12891.o19505.o2944("Truck");
      }
      o11441();
      o18149.o16280(this,o8273.o7087,o11685);
      o18149.o16280(this,o8273.o20083,o4762);
      o18574 = o1051.o4767(this,3,o9948);
      o19120.o16280(this,o8273.o7087,o512);
      o19120.o16280(this,o8273.o20083,o15822);
      o17556 = o1051.o4767(this,0.1,o6570);
      o11974 = o1051.o4767(this,1,regenHealth);
      o2393 = 0;
      o414 = 0;
      o6892();
      o16554 = o1051.o4767(this,delta,o7664);
      var _loc3_:Array = o4519.o8116.o2996.o20698(o17517);
      var _loc9_:int = 0;
      var _loc8_:* = _loc3_;
      for each(var _loc7_ in _loc3_)
      {
         if(_loc7_)
         {
            _loc7_.o9488 = this;
            _loc7_.o1591();
         }
      }
      o17534.position = new o18342(o17534,o6691,0,0);
      o655 = o4519.o8116.o9869.o1968(2,0,false);
      var _loc2_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o18295].o6041[0].id);
      var _loc6_:Vector.<Vector.<o18509>> = o12075.o7521(_loc2_);
      var _loc13_:int = 0;
      var _loc12_:* = _loc6_;
      for each(_loc2_ in _loc6_)
      {
         var _loc11_:int = 0;
         var _loc10_:* = _loc2_;
         for each(var _loc5_ in _loc2_)
         {
            _loc5_.x = _loc5_.x - o6691.position.x;
            _loc5_.y = _loc5_.y - o6691.position.y;
            _loc5_.rotate(-o6691.rotation);
         }
         _loc4_ = new o17761(body.o2535);
         _loc4_.o14486(_loc2_);
         _loc1_ = o4519.o8116.o20600.o15803(o8723.o14328,o8723.o2823,o8723.o2823);
         _loc1_.o10289 = _loc4_.id;
         o655.o14230(_loc1_);
      }
      if(o4519.o32)
      {
         o4519.o32.o15777(o2777.o3193);
      }
   }
   
   private function o11170() : void
   {
      o3446.frameRate = o16166.frameRate;
   }
   
   private function o11685(param1:o663) : void
   {
      o9367 = true;
   }
   
   private function o4762(param1:o18091) : void
   {
      o9367 = false;
   }
   
   private function o9948() : void
   {
      var _loc1_:* = undefined;
      if(o9367)
      {
         _loc1_ = o4519.o8116.o9869.o8182(o18149);
         if(_loc1_.length == 0)
         {
            o9367 = false;
         }
      }
   }
   
   private function o7664() : void
   {
      var _loc1_:* = null;
      var _loc4_:* = null;
      var _loc7_:Number = NaN;
      var _loc6_:Number = NaN;
      var _loc5_:Number = NaN;
      o11295 = o11295 - delta;
      if(o4519.o13206.o2685.o6370)
      {
         o5228 = 1;
      }
      var _loc8_:Boolean = true;
      var _loc2_:o972 = o8407[o2393];
      if(o414 + 2 == _loc2_.o16255.length && o529 == 1)
      {
         o9860 = 0;
         o16166.frameRate = 9999999;
         _loc8_ = false;
      }
      if(_loc8_)
      {
         if(o9367 || o6955)
         {
            o9860 = o9860 - o7439 * o5228 * delta;
         }
         else
         {
            o9860 = o9860 + o7439 * o5228 * delta;
         }
         if(o9860 > o6746 * o5228)
         {
            o9860 = o6746 * o5228;
         }
         else if(o9860 < 0)
         {
            o9860 = 0;
         }
         if(o9860 == 0)
         {
            if(o20832 && !o6955)
            {
               o11427();
            }
            o16166.frameRate = 9999999;
            _loc8_ = false;
         }
         else if(!o20832)
         {
            o804();
         }
      }
      if(_loc8_)
      {
         _loc1_ = _loc2_.o16255[o414];
         _loc4_ = _loc2_.o16255[o414 + 1];
         _loc7_ = _loc4_.o2413(_loc1_).o3215;
         _loc6_ = o9860 * delta;
         while(true)
         {
            _loc5_ = _loc7_ * (1 - o529);
            if(_loc6_ < _loc5_)
            {
               o529 = o529 + _loc6_ / _loc7_;
               o2301 = o2301 + _loc6_;
               break;
            }
            o2301 = o2301 + _loc5_;
            _loc6_ = _loc6_ - _loc5_;
            o529 = 0;
            if(o414 + 2 < _loc2_.o16255.length)
            {
               o414 = Number(o414) + 1;
               _loc1_ = _loc2_.o16255[o414];
               _loc4_ = _loc2_.o16255[o414 + 1];
               _loc7_ = _loc4_.o2413(_loc1_).o3215;
               continue;
            }
            o529 = 1;
            o7434(o2393);
            break;
         }
         o1488();
      }
      var _loc3_:ByteArray = new ByteArray();
      _loc3_.writeFloat(o2301);
      dispatchData(new o2149(this,_loc3_,false,false,-1,false));
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      o10650(param2.readFloat());
   }
   
   private function o10650(param1:Number) : void
   {
      o5228 = 1 + (param1 - this.o2301) / 300;
      if(o5228 < 0.1)
      {
         o5228 = 0.1;
      }
   }
   
   private function o1488() : void
   {
      var _loc4_:o972 = o8407[o2393];
      var _loc3_:o18509 = _loc4_.o16255[o414];
      var _loc5_:o18509 = _loc4_.o16255[o414 + 1];
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = _loc3_.x + (_loc5_.x - _loc3_.x) * o529;
      _loc2_.y = _loc3_.y + (_loc5_.y - _loc3_.y) * o529;
      var _loc9_:* = 0;
      var _loc1_:Number = o2868[o2393][o414];
      var _loc11_:Number = o2868[o2393][o414 + 1];
      _loc9_ = Number(_loc1_ + o8839(_loc11_ - _loc1_) * o529);
      var _loc6_:Number = o6691.position.x;
      var _loc8_:Number = o6691.position.y;
      var _loc7_:Number = o6691.rotation;
      o6691.position.x = _loc2_.x;
      o6691.position.y = _loc2_.y;
      o6691.rotation = _loc9_;
      if(o11585)
      {
         o6691.rotation = o6691.rotation + 3.14159265358979;
      }
      body.o16687(o6691.rotation);
      o655.o16687(o6691.rotation);
      o11895.o16687(o6691.rotation);
      o4424.o16687(_loc9_);
      o19120.o16687(_loc9_);
      o18149.o16687(_loc9_);
      body.o8564(o6691.position.x,o6691.position.y);
      o655.o8564(o6691.position.x,o6691.position.y);
      o11895.o8564(o6691.position.x,o6691.position.y);
      o19120.o8564(o6691.position.x,o6691.position.y);
      o4424.o8564(o6691.position.x,o6691.position.y);
      this.o9860 = o9860;
      o20344 = -(o9860 * o9860) / (2 * -o7439);
      var _loc10_:o18509 = o15460.o16789;
      _loc10_.x = o20344;
      _loc10_.y = 0;
      _loc10_.rotate(_loc9_);
      o18149.o8564(o6691.position.x + _loc10_.x,o6691.position.y + _loc10_.y);
      if(o9860 > 0)
      {
         o16166.frameRate = 1 / (o9860 / o6746 * 30);
      }
      else
      {
         o16166.frameRate = 9999999;
      }
      o18549(_loc6_,_loc8_,o6691.rotation - _loc7_);
   }
   
   private function o18549(param1:Number, param2:Number, param3:Number) : void
   {
      var _loc7_:o18509 = o15460.o16789;
      var _loc5_:Array = o4519.o8116.o2996.o20698(o17517);
      var _loc14_:int = 0;
      var _loc13_:* = _loc5_;
      for each(var _loc10_ in _loc5_)
      {
         if(_loc10_)
         {
            _loc7_.x = _loc10_.x - param1;
            _loc7_.y = _loc10_.y - param2;
            _loc7_.rotate(param3);
            _loc10_.body.o8564(o6691.position.x + _loc7_.x,o6691.position.y + _loc7_.y);
         }
      }
      var _loc6_:Array = o4519.o8116.o2996.o20698(o5640);
      var _loc16_:int = 0;
      var _loc15_:* = _loc6_;
      for each(var _loc9_ in _loc6_)
      {
         _loc7_.x = _loc9_.x - param1;
         _loc7_.y = _loc9_.y - param2;
         _loc7_.rotate(param3);
         _loc9_.body.o8564(o6691.position.x + _loc7_.x,o6691.position.y + _loc7_.y);
      }
      var _loc12_:Array = o4519.o8116.o2996.o20698(o8111);
      var _loc18_:int = 0;
      var _loc17_:* = _loc12_;
      for each(var _loc8_ in _loc12_)
      {
         if(o18584.indexOf(_loc8_) == -1)
         {
            _loc7_.x = _loc8_.body.position.x - param1;
            _loc7_.y = _loc8_.body.position.y - param2;
            _loc7_.rotate(param3);
            _loc8_.o14622.rotation = _loc8_.o14622.rotation + param3;
            _loc8_.o8564(o6691.position.x + _loc7_.x,o6691.position.y + _loc7_.y);
         }
      }
      var _loc4_:Array = o4519.o8116.o2996.o20698(o4198.o13465());
      var _loc20_:int = 0;
      var _loc19_:* = _loc4_;
      for each(var _loc11_ in _loc4_)
      {
         if(o18584.indexOf(_loc11_) == -1)
         {
            _loc7_.x = _loc11_.body.position.x - param1;
            _loc7_.y = _loc11_.body.position.y - param2;
            _loc7_.rotate(param3);
            _loc11_.body.o8564(o6691.position.x + _loc7_.x,o6691.position.y + _loc7_.y);
            _loc11_.o6691.rotation = _loc11_.o6691.rotation + param3;
         }
      }
   }
   
   private function o6892() : void
   {
      var _loc2_:o18509 = o15460.o4078;
      var _loc5_:Array = o4519.o8116.o2996.o20698(o8111);
      var _loc7_:int = 0;
      var _loc6_:* = _loc5_;
      for each(var _loc3_ in _loc5_)
      {
         _loc2_.x = _loc3_.body.position.x - this.o6691.position.x;
         _loc2_.y = _loc3_.body.position.y - this.o6691.position.y;
         if(_loc2_.x > 225 || _loc2_.x < -200 || _loc2_.y > 75 || _loc2_.y < -75)
         {
            o18584.push(_loc3_);
            _loc3_.o16280(this,o14571.o19115,o14270);
         }
      }
      var _loc1_:Array = o4519.o8116.o2996.o20698(o4198.o13465());
      var _loc9_:int = 0;
      var _loc8_:* = _loc1_;
      for each(var _loc4_ in _loc1_)
      {
         _loc2_.x = _loc4_.body.position.x - this.o6691.position.x;
         _loc2_.y = _loc4_.body.position.y - this.o6691.position.y;
         if(_loc2_.x > 225 || _loc2_.x < -200 || _loc2_.y > 75 || _loc2_.y < -75)
         {
            o18584.push(_loc4_);
            _loc4_.o16280(this,o14571.o19115,o14270);
         }
      }
   }
   
   private function o14270(param1:o7734) : void
   {
      var _loc2_:int = o18584.indexOf(param1.o11493);
      if(_loc2_ != -1)
      {
         o18584.splice(_loc2_,1);
      }
   }
   
   private function o7434(param1:int) : void
   {
      switch(int(param1))
      {
         case 0:
            if(o20832 && !o6955)
            {
               o11427();
            }
            o15777(o5749);
            break;
         case 1:
            o11543();
            break;
         case 2:
            o4152();
            o15777(o18941);
      }
   }
   
   public function o14714() : void
   {
      o11585 = true;
      o16166.o6343();
      o3446.o6343();
      o2393 = Number(o2393) + 1;
      o414 = 0;
      o529 = 0;
      o9367 = false;
   }
   
   private function o11543() : void
   {
      o11585 = false;
      o16166.o11543();
      o3446.o11543();
      o2393 = Number(o2393) + 1;
      o414 = 0;
      o529 = 0;
      o9367 = false;
      o9860 = 0;
   }
   
   private function o4152() : void
   {
      o6691.o9824 = false;
      o3446.o3030("destroyed");
      var _loc3_:int = 0;
      var _loc2_:* = o9732;
      for each(var _loc1_ in o9732)
      {
         _loc1_.o9824 = false;
      }
      o18526.o9824 = true;
      o18526.position.x = o6691.position.x;
      o18526.position.y = o6691.position.y;
      o18526.rotation = o6691.rotation;
      o5117();
   }
   
   private function o3162() : void
   {
      o1051.o19115(o948);
      var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
      var _loc4_:int = 0;
      var _loc3_:* = _loc1_;
      for each(var _loc2_ in _loc1_)
      {
         if(_loc2_)
         {
            _loc2_.o9488 = null;
            _loc2_.o18989();
         }
      }
   }
   
   public function o17251() : void
   {
      if(this.o11243 == this.o1589)
      {
         o4519.o8116.o12094.setAchievement(544,1);
      }
      o3162();
      if(o12891.o19505)
      {
         o12891.o19505.o1615();
      }
      o1051.o19115(o16554);
      o1051.o19115(o17556);
      o1051.o19115(o12261);
      o18149.o12657(o8273.o7087,o11685);
      o18149.o12657(o8273.o20083,o4762);
      o1051.o19115(o18574);
      o19120.o12657(o8273.o7087,o512);
      o19120.o12657(o8273.o20083,o15822);
      o1606.o11543();
      o1606.play();
      body.o15838(0);
      o655.o15838(0);
      o5117();
      if(o4519.o32)
      {
         o4519.o32.o15777(o2777.o12848);
      }
   }
   
   private function o512(param1:o663) : void
   {
      o12461.push(o18442(o4519.o8116.o2996.o14389(param1.o11541)));
   }
   
   private function o15822(param1:o18091) : void
   {
      var _loc2_:int = o12461.indexOf(o18442(o4519.o8116.o2996.o14389(param1.o11541)));
      if(_loc2_ != -1)
      {
         o12461.splice(_loc2_,1);
      }
   }
   
   private function o6570() : void
   {
      var _loc1_:Number = NaN;
      var _loc4_:int = 0;
      var _loc3_:* = o12461;
      for each(var _loc2_ in o12461)
      {
         _loc1_ = o9860 / o6746 * o8534;
         if(_loc1_ > 0 && _loc2_ != null)
         {
            o4519.o8116.o8361.o5725(_loc2_,o4016.o10062().initialise(_loc1_,1,this,null,o6691.rotation));
         }
      }
   }
   
   private function o8839(param1:Number) : Number
   {
      while(param1 > 3.14159265358979)
      {
         param1 = param1 - 2 * 3.14159265358979;
      }
      while(param1 <= -3.14159265358979)
      {
         param1 = param1 + 2 * 3.14159265358979;
      }
      return param1;
   }
   
   private function o12498(param1:o13848) : o972
   {
      var _loc4_:* = null;
      var _loc5_:int = 0;
      var _loc3_:o972 = new o972();
      var _loc6_:* = null;
      var _loc2_:o2041 = param1.o6041[0];
      while(_loc3_.o16255.length < param1.o6041.length)
      {
         _loc4_ = new o18509(_loc2_.x,_loc2_.y);
         _loc3_.o16255.push(_loc4_);
         _loc5_ = 0;
         while(_loc5_ < _loc2_.o16079.length)
         {
            if(_loc2_.o16079[_loc5_] != _loc6_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.o16079[_loc5_];
               break;
            }
            _loc5_++;
         }
      }
      return _loc3_;
   }
   
   private function regenHealth() : void
   {
      var _loc1_:o18848 = new o18848();
      _loc1_.amount = o1589 * o5476;
      o4519.o8116.o8361.o3742(this,_loc1_);
   }
   
   public function o2533(param1:o18848) : void
   {
   }
   
   public function o3742(param1:o18848) : void
   {
      var _loc2_:int = 0;
      if(o6955 || o9860 <= 0)
      {
         return;
      }
      o11243 = o11243 + param1.amount;
      if(o11243 > o1589)
      {
         o11243 = o1589;
      }
      var _loc3_:int = (1 - o11243 / o1589) * (8 + 1);
      _loc2_ = 0;
      while(_loc2_ < 8)
      {
         o9732[_loc2_].o9824 = _loc2_ < _loc3_;
         _loc2_++;
      }
      if(o12891.o19505)
      {
         o12891.o19505.o19756(o11243 / o1589);
      }
   }
   
   public function o11022(param1:o4016) : void
   {
      if(o11295 > 0)
      {
         param1.amount = 0;
         return;
      }
      if(param1.amount >= o11243)
      {
         param1.amount = 999999999;
      }
   }
   
   public function o5725(param1:o4016) : void
   {
      var _loc3_:* = null;
      var _loc4_:* = null;
      var _loc8_:* = null;
      var _loc2_:* = null;
      var _loc6_:int = 0;
      var _loc5_:int = 0;
      if(o6955)
      {
         return;
      }
      o11243 = o11243 - param1.amount;
      if(o11243 <= 0)
      {
         o11243 = 0;
         o6955 = true;
         o6691.o9824 = false;
         o3446.o3030("destroyed");
         _loc3_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion.Bigger"]) as o2130;
         if(_loc3_ != null)
         {
            _loc4_ = o15460.o4078;
            _loc4_.x = -40;
            _loc4_.y = 0;
            _loc3_.o6691.position.x = o6691.position.x;
            _loc3_.o6691.position.y = o6691.position.y;
            _loc3_.o6691.scaleX = _loc3_.o6691.scaleX * 2;
            _loc3_.o6691.scaleY = _loc3_.o6691.scaleY * 2;
            _loc3_.o6691.o16990 = o11381.o1041;
         }
         _loc3_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion.Bigger"]) as o2130;
         if(_loc3_ != null)
         {
            _loc4_ = o15460.o4078;
            _loc4_.x = 160;
            _loc4_.y = 0;
            _loc4_.rotate(o6691.rotation);
            _loc3_.o6691.position.x = o6691.position.x + _loc4_.x;
            _loc3_.o6691.position.y = o6691.position.y + _loc4_.y;
            _loc3_.o6691.scaleX = _loc3_.o6691.scaleX * 2;
            _loc3_.o6691.scaleY = _loc3_.o6691.scaleY * 2;
            _loc3_.o6691.o16990 = o11381.o1041;
         }
         _loc8_ = new o257(_loc3_.o6691.position.x,_loc3_.o6691.position.y);
         o4519.o8116.o4812.o20325.o19111.play(0.6,0,0,false,_loc8_.o10088());
         o5117();
         _loc2_ = o4519.o8116.o2996.o20698(o17517);
         var _loc10_:int = 0;
         var _loc9_:* = _loc2_;
         for each(var _loc7_ in _loc2_)
         {
            if(_loc7_)
            {
               o4519.o8116.o8361.o5725(_loc7_,o4016.o10062().initialise(999999999,8,this));
            }
         }
      }
      else
      {
         _loc6_ = (1 - o11243 / o1589) * (8 + 1);
         _loc5_ = 1;
         while(_loc5_ <= _loc6_)
         {
            o9732[_loc5_ - 1].o9824 = true;
            _loc5_++;
         }
      }
      if(o12891.o19505)
      {
         o12891.o19505.o19756(o11243 / o1589);
      }
      o1101();
   }
   
   private function o1101() : void
   {
      var _loc1_:* = null;
      if(!o20175 && o11243 / o1589 < 0.15)
      {
         _loc1_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgDamage3");
         o4519.o8116.o20488.o2251(12,_loc1_);
         o20175 = true;
         o6856();
      }
      else if(!o3456 && o11243 / o1589 < 0.5)
      {
         _loc1_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgDamage2");
         o4519.o8116.o20488.o2251(12,_loc1_);
         o3456 = true;
         o6856();
      }
      else if(!o2650 && o11243 / o1589 < 0.85)
      {
         _loc1_ = o4519.o8116.profileData.o10206("dialogMessage.iceStationMessages.msgDamage1");
         o4519.o8116.o20488.o2251(12,_loc1_);
         o2650 = true;
         o6856();
      }
   }
   
   public function o14064() : void
   {
      o6746 = 500;
      o7439 = 140;
      o18149.o12657(o8273.o7087,o11685);
      o18149.o12657(o8273.o20083,o4762);
      o9367 = false;
      o1051.o19115(o18574);
   }
   
   public function o7613() : void
   {
      o6955 = false;
      o11243 = o1589;
      if(o12891.o19505)
      {
         o12891.o19505.o19756(1);
      }
      o6691.o9824 = true;
      o3446.o3030("lightson");
      var _loc3_:int = 0;
      var _loc2_:* = o9732;
      for each(var _loc1_ in o9732)
      {
         _loc1_.o9824 = false;
      }
      o11441();
      o11295 = o4519.o8116.profileData.o5292.o10129;
   }
   
   override public function o19115() : void
   {
      var _loc1_:int = 0;
      o18149.o12657(o8273.o7087,o11685);
      o18149.o12657(o8273.o20083,o4762);
      o19120.o12657(o8273.o7087,o512);
      o19120.o12657(o8273.o20083,o15822);
      if(o12891.o19505)
      {
         o12891.o19505.o1615();
      }
      if(o17534)
      {
         o17534.o19115();
      }
      o17534 = null;
      if(o3446)
      {
         o3446.o19115();
      }
      o3446 = null;
      if(o18526)
      {
         o18526.o19115();
      }
      o18526 = null;
      if(o1606)
      {
         o1606.o19115();
      }
      o1606 = null;
      if(o11895)
      {
         o11895.o19115();
      }
      o11895 = null;
      if(o18149)
      {
         o18149.o19115();
      }
      o18149 = null;
      o5465 = null;
      if(o19120)
      {
         o19120.o19115();
      }
      o19120 = null;
      if(o4424)
      {
         o4424.o19115();
      }
      o4424 = null;
      if(o655)
      {
         o655.o19115();
      }
      o1337 = null;
      o3054 = null;
      o16009 = null;
      o11586 = null;
      o8407 = null;
      o2868 = null;
      o18584 = null;
      o12461 = null;
      if(o9732)
      {
         _loc1_ = 0;
         while(_loc1_ < o9732.length)
         {
            o9732[_loc1_].o19115();
            _loc1_++;
         }
      }
      o9732 = null;
      if(o4420)
      {
         _loc1_ = 0;
         while(_loc1_ < o4420.length)
         {
            o4420[_loc1_].o19115();
            _loc1_++;
         }
      }
      o4420 = null;
      super.o19115();
   }
   
   override public function o18192(param1:ByteArray) : void
   {
   }
   
   override public function o14232(param1:ByteArray, param2:int = 0) : void
   {
   }
   
   private function o11441() : void
   {
      o5117();
      o4519.o8116.o4812.o4404.o2374.play(1);
      o804();
   }
   
   private function o11427() : void
   {
      o20832 = false;
      o5117();
      var _loc1_:Date = new Date();
      o9933 = _loc1_.valueOf();
      o4519.o8116.o4812.o4404.o17980.play(0.9,2147483647,0,false,null,0,0,o9933);
   }
   
   private function o804() : void
   {
      o20832 = true;
      o5117();
      var _loc1_:Date = new Date();
      o9933 = _loc1_.valueOf();
      o4519.o8116.o4812.o4404.o5612.play(0.65,2147483647,0,false,null,0,0,o9933);
   }
   
   private function o5117() : void
   {
      o4519.o8116.o6169.o595();
   }
   
   private function o6856() : void
   {
      o4519.o8116.o4812.o20325.o4335.play(0.45);
      o4519.o8116.o4812.o4404.o12307.play(0.6);
      o4519.o8116.o4812.o4404.o19817.play(0.4);
   }
   
   private function o4508() : void
   {
      o4519.o8116.debugView.graphics.clear();
      o4519.o8116.debugView.graphics.lineStyle(3,16711935,1);
      if(o9367)
      {
         o4519.o8116.debugView.graphics.lineStyle(3,65280,1);
      }
      var _loc5_:Number = o6691.rotation;
      if(o11585)
      {
         _loc5_ = _loc5_ - 3.14159265358979;
      }
      var _loc7_:Number = o18149.position.x;
      var _loc6_:Number = o18149.position.y;
      var _loc1_:o18509 = o15460.o4078;
      var _loc4_:o18509 = o15460.o16789;
      var _loc2_:o18509 = o15460.o20546;
      var _loc3_:o18509 = o15460.o4597;
      _loc1_.x = o5465.x + o20344;
      _loc1_.y = o5465.y;
      _loc4_.x = o5465.x + o5465.width + o20344;
      _loc4_.y = o5465.y;
      _loc2_.x = o5465.x + o5465.width + o20344;
      _loc2_.y = o5465.y + o5465.height;
      _loc3_.x = o5465.x + o20344;
      _loc3_.y = o5465.y + o5465.height;
      _loc1_.rotate(_loc5_);
      _loc4_.rotate(_loc5_);
      _loc2_.rotate(_loc5_);
      _loc3_.rotate(_loc5_);
      o4519.o8116.debugView.graphics.moveTo(_loc7_ + _loc1_.x,_loc6_ + _loc1_.y);
      o4519.o8116.debugView.graphics.lineTo(_loc7_ + _loc4_.x,_loc6_ + _loc4_.y);
      o4519.o8116.debugView.graphics.lineTo(_loc7_ + _loc2_.x,_loc6_ + _loc2_.y);
      o4519.o8116.debugView.graphics.lineTo(_loc7_ + _loc3_.x,_loc6_ + _loc3_.y);
      o4519.o8116.debugView.graphics.lineTo(_loc7_ + _loc1_.x,_loc6_ + _loc1_.y);
   }
   
   private function o15454() : void
   {
      var _loc1_:Number = NaN;
      var _loc2_:Number = NaN;
      o4519.o8116.debugView.graphics.beginFill(16711680,1);
      o4519.o8116.debugView.graphics.lineStyle(0,0,1);
      var _loc4_:Array = o4519.o8116.o2996.o20698(o18442);
      var _loc6_:int = 0;
      var _loc5_:* = _loc4_;
      for each(var _loc3_ in _loc4_)
      {
         _loc1_ = (_loc3_.body.position.x - o4519.o32.body.position.x) / 10 + o4519.o32.body.position.x;
         _loc2_ = (_loc3_.body.position.y - o4519.o32.body.position.y) / 10 + o4519.o32.body.position.y;
         o4519.o8116.debugView.graphics.drawCircle(_loc1_,_loc2_,3);
      }
   }
}
