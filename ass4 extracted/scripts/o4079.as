package
{
   import flash.display.Sprite;
   
   public class o4079 extends Sprite
   {
       
      
      public function o4079()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o12716;
      }
   }
}

import flash.display.Sprite;
import flash.geom.Rectangle;
import flash.utils.ByteArray;

class o12716 extends o15755
{
   
   public static var o20272:Array = [[8,o17243.o2013,o13351.o10420,"carraige 1 area"],[36,o17243.o2013,o13351.o10420,"carraige 2 area"],[37,o17243.o2013,o13351.o10420,"carraige 3 area"],[38,o17243.o2013,o13351.o10420,"carraige 4 area"],[10,o17243.o2013,o13351.o10420,"platform A"],[22,o17243.o2013,o13351.o10420,"platform A Shadow"],[11,o17243.o2013,o13351.o10420,"platform B"],[23,o17243.o2013,o13351.o10420,"platform B Shadow"],[12,o17243.o2013,o13351.o10420,"platform C1"],[24,o17243.o2013,o13351.o10420,"platform C1 Shadow"],[16,o17243.o2013,o13351.o10420,"platform C2"],[25,o17243.o2013,o13351.o10420,"platform C2 Shadow"],[17,o17243.o2013,o13351.o10420,"platform D"],[26,o17243.o2013,o13351.o10420,"platform D Shadow"],[13,o17243.o2013,o13351.o10420,"carraige roof 2"],[14,o17243.o2013,o13351.o10420,"carraige roof 3"],[15,o17243.o2013,o13351.o10420,"carraige roof 4"],[1,o17243.o2013,o13351.o10420,"rails"],[2,o17243.o2013,o13351.o10420,"rails"],[3,o17243.o2013,o13351.o10420,"rails"],[4,o17243.o2013,o13351.o10420,"rails"],[18,o17243.o2013,o13351.o10420,"rails"],[19,o17243.o2013,o13351.o10420,"rails"],[20,o17243.o2013,o13351.o10420,"rails"],[21,o17243.o2013,o13351.o10420,"rails"],[28,o17243.o2013,o13351.o10420,"rails"],[27,o17243.o2013,o13351.o10420,"rails"],[34,o17243.o2013,o13351.o10420,"rails"],[5,o17243.o2013,o13351.o10420,"lights"],[6,o17243.o2013,o13351.o10420,"lights"],[7,o17243.o2013,o13351.o10420,"lights"],[9,o17243.o2013,o13351.o10420,"lights"],[30,o17243.o2013,o13351.o10420,"lights"],[31,o17243.o2013,o13351.o10420,"lights"],[32,o17243.o2013,o13351.o10420,"lights"],[33,o17243.o2013,o13351.o10420,"lights"],[35,o17243.o2013,o13351.o10420,"no blood stain area"]];
    
   
   private const o16147:int = 3;
   
   private const o19057:int = 4;
   
   private const o1348:int = 7;
   
   private const o770:int = 8;
   
   private const o10300:int = 11;
   
   private const o15280:int = 12;
   
   private const o2436:int = 15;
   
   private var o19434:Vector.<o4332>;
   
   private var o3186:Vector.<Number>;
   
   private var o14193:Vector.<o4332>;
   
   private var o10165:Vector.<Number>;
   
   private var o4145:o10262;
   
   private var o9290:o10262;
   
   private var o13840:o10262;
   
   private var o9107:o10262;
   
   private var o2814:Sprite;
   
   private var o20944:o4332;
   
   private var o10526:o4332;
   
   private var o15214:o4332;
   
   private var o12061:o4332;
   
   private var o16336:o4332;
   
   private var o2027:o4332;
   
   private var o11177:o4332;
   
   private var o14930:o4332;
   
   private var o5151:o4332;
   
   private var o8262:o4332;
   
   private var o13355:o4332;
   
   private var o9084:o4332;
   
   private var o14164:o4332;
   
   private var o2435:o10262;
   
   private var o9933:Number = 0;
   
   private var o11637:int = -1;
   
   private var o12294:int = -1;
   
   private var o10372:Vector.<o17517>;
   
   private const o3328:o18509 = new o18509(-818,-842);
   
   private var o3772:Boolean = false;
   
   private var o11923:Number = 3701;
   
   private var o7622:Number = 1154;
   
   private var o4137:Boolean = false;
   
   private var o8120:int = -1;
   
   private var o10451:Boolean = false;
   
   private var o833:int = -1;
   
   private var o10680:Boolean = false;
   
   private var o3789:int = -1;
   
   private var o1740:o4399;
   
   private const o99:Number = 100;
   
   private const o3884:Number = 20.0;
   
   private const o2981:Number = 612;
   
   private var o17273:Number;
   
   private var o15352:Number;
   
   private const o14616:Number = 200;
   
   private const o2289:Number = 200;
   
   private var o17220:int = 0;
   
   private var o9444:Boolean = false;
   
   private var o6217:Number = 0;
   
   private var o14091:Number = 0;
   
   private var o8292:Boolean = true;
   
   private var o14301:Boolean = false;
   
   private var o11312:Number;
   
   private var o5401:Boolean = true;
   
   private var o2701:Number = 0;
   
   function o12716()
   {
      o19434 = new Vector.<o4332>();
      o3186 = new Vector.<Number>();
      o14193 = new Vector.<o4332>();
      o10165 = new Vector.<Number>();
      o10372 = new Vector.<o17517>();
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:int = 0;
      var _loc10_:int = 0;
      var _loc8_:* = null;
      var _loc12_:* = null;
      var _loc13_:int = param2.readShort();
      var _loc11_:int = param2.readShort();
      var _loc3_:int = param2.readShort();
      var _loc9_:int = param2.readShort();
      o20944 = o4519.o9721.o12831(param2.readShort());
      o10526 = o4519.o9721.o12831(param2.readShort());
      o15214 = o4519.o9721.o12831(param2.readShort());
      o12061 = o4519.o9721.o12831(param2.readShort());
      o16336 = o4519.o9721.o12831(param2.readShort());
      o2027 = o4519.o9721.o12831(param2.readShort());
      o11177 = o4519.o9721.o12831(param2.readShort());
      o14930 = o4519.o9721.o12831(param2.readShort());
      o5151 = o4519.o9721.o12831(param2.readShort());
      o8262 = o4519.o9721.o12831(param2.readShort());
      o4519.o8116.o11954.o17454(o20944);
      o4519.o8116.o11954.o17454(o10526);
      o4519.o8116.o11954.o17454(o15214);
      o4519.o8116.o11954.o17454(o12061);
      o4519.o8116.o11954.o17454(o16336);
      o4519.o8116.o11954.o17454(o2027);
      o4519.o8116.o11954.o17454(o11177);
      o4519.o8116.o11954.o17454(o14930);
      o4519.o8116.o11954.o17454(o5151);
      o4519.o8116.o11954.o17454(o8262);
      o13355 = o4519.o9721.o12831(param2.readShort());
      o9084 = o4519.o9721.o12831(param2.readShort());
      o14164 = o4519.o9721.o12831(param2.readShort());
      _loc6_ = 0;
      while(_loc6_ < 11)
      {
         _loc10_ = param2.readShort();
         if(_loc10_ != 0)
         {
            _loc8_ = o4519.o9721.o12831(_loc10_);
            _loc8_.o16444 = false;
            o19434.push(_loc8_);
            o3186.push(o19434[_loc6_].position.x);
         }
         _loc6_++;
      }
      _loc6_ = 0;
      while(_loc6_ < 8)
      {
         _loc10_ = param2.readShort();
         if(_loc10_ != 0)
         {
            _loc12_ = o4519.o9721.o12831(_loc10_);
            _loc12_.o16444 = false;
            _loc12_.o2158 = 7;
            o14193.push(_loc12_);
            o10165.push(o14193[_loc6_].position.x);
         }
         _loc6_++;
      }
      var _loc14_:int = param2.readShort();
      o17273 = o19434[_loc6_].position.y;
      o15352 = o17273 + 560;
      o11312 = o17273;
      o4145 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc7_:o17761 = new o17761(o4145.o2535);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc13_].o6041[0].id);
      _loc7_.o14486(_loc5_);
      var _loc4_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32 | o8723.o2823,o8723.o32 | o8723.o2823,true);
      _loc4_.o10289 = _loc7_.id;
      o4145.o14230(_loc4_);
      o4145.o16280(this,o8273.o7087,o8019);
      o4145.o16280(this,o8273.o20083,o4465);
      o2814 = o7031(_loc5_);
      o2814.x = o2814.x + o3328.x;
      o2814.y = o2814.y + o3328.y;
      o9290 = o4519.o8116.o9869.o1968(0,0,false);
      _loc7_ = new o17761(o9290.o2535);
      _loc5_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc11_].o6041[0].id);
      _loc7_.o14486(_loc5_);
      _loc4_ = o4519.o8116.o20600.o15803(o8723.o5479,o17517.o6365,o17517.o6365,true);
      _loc4_.o10289 = _loc7_.id;
      o9290.o14230(_loc4_);
      o13840 = o4519.o8116.o9869.o1968(0,0,false);
      _loc7_ = new o17761(o13840.o2535);
      _loc5_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc3_].o6041[0].id);
      _loc7_.o14486(_loc5_);
      _loc4_ = o4519.o8116.o20600.o15803(o8723.o5479,o17517.o6365,o17517.o6365,true);
      _loc4_.o10289 = _loc7_.id;
      o13840.o14230(_loc4_);
      o9107 = o4519.o8116.o9869.o1968(0,0,false);
      _loc7_ = new o17761(o9107.o2535);
      _loc5_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc9_].o6041[0].id);
      _loc7_.o14486(_loc5_);
      _loc4_ = o4519.o8116.o20600.o15803(o8723.o5479,o17517.o6365,o17517.o6365,true);
      _loc4_.o10289 = _loc7_.id;
      o9107.o14230(_loc4_);
   }
   
   private function o7031(param1:Vector.<o18509>) : Sprite
   {
      var _loc2_:Sprite = new Sprite();
      _loc2_.graphics.beginFill(16777215,1);
      var _loc4_:Boolean = true;
      var _loc6_:int = 0;
      var _loc5_:* = param1;
      for each(var _loc3_ in param1)
      {
         if(_loc4_)
         {
            _loc2_.graphics.moveTo(_loc3_.x,_loc3_.y);
            _loc4_ = false;
         }
         else
         {
            _loc2_.graphics.lineTo(_loc3_.x,_loc3_.y);
         }
      }
      _loc2_.graphics.endFill();
      return _loc2_;
   }
   
   private function o8019(param1:o663) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc2_ && o10372.indexOf(_loc2_) == -1)
      {
         o10372.push(_loc2_);
         if(o11637 == -1)
         {
            o11637 = o1051.o4767(this,1,o20450,0,true);
         }
      }
   }
   
   private function o4465(param1:o18091) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc2_ && o10372.indexOf(_loc2_) != -1)
      {
         o10372.splice(o10372.indexOf(_loc2_),1);
      }
   }
   
   private function o20450() : void
   {
      var _loc4_:* = null;
      var _loc3_:int = 0;
      var _loc1_:* = null;
      var _loc2_:* = null;
      if(o4519.o13206.o2685.o4326 == 2)
      {
         _loc4_ = o4519.o8116.o2996.o20698(o18442);
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            if(_loc4_[_loc3_].o12555 == 27)
            {
               return;
            }
            _loc3_++;
         }
         if(o4519.o8116.o8756.o2282.o19055)
         {
            o4519.o8116.o8756.o2282.o17511();
         }
      }
      if(o4519.o13206.o2685.o7629() == o10372.length)
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(3);
         dispatchData(new o2149(this,_loc1_,true));
      }
      else if(o10372.length >= Math.ceil(o4519.o13206.o2685.o7629() / 2))
      {
         if(o12294 == -1)
         {
            _loc2_ = o4519.o8116.profileData.o10206("dialogMessage.vaccineMessages.msgFoundTheTrain");
            o4519.o8116.o20488.o2251(3,_loc2_);
            o12294 = o1051.o9310(this,10,o13474);
         }
      }
      else if(o12294 != -1)
      {
         o1051.o19115(o12294);
         o12294 = -1;
      }
   }
   
   private function o13474() : void
   {
      o12294 = -1;
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(3);
      dispatchData(new o2149(this,_loc1_,true));
   }
   
   private function o14836() : void
   {
      var _loc2_:int = 0;
      if(o3772)
      {
         return;
      }
      o3772 = true;
      o1051.o19115(o11637);
      o1051.o19115(o12294);
      o4145.o12657(o8273.o7087,o8019);
      o4145.o12657(o8273.o20083,o4465);
      var _loc3_:Vector.<o3047> = o3047.o15006;
      _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         if(_loc3_[_loc2_].o4951 == 1)
         {
            _loc3_[_loc2_].o19115();
         }
         _loc2_++;
      }
      o3047.o10061.splice(0,4294967295);
      o19428();
      o1051.o9310(this,0.5,o9629);
      o4145.o16280(this,o8273.o7087,o6152);
      o17220 = o1051.o4767(this,0.0333333333333333,o14404,o1051.o4804);
      o7698(2);
      o1051.o9310(this,1.5,o8186);
      o1051.o9310(this,1,o7357);
      o1051.o9310(this,11,o16508);
      o1051.o9310(this,16,o2294);
      o1740 = o4519.o13206.o16821(0);
      var _loc1_:* = o4519.o8116.o2996.o20716("FailSafeTeleportZone");
      if(_loc1_)
      {
         _loc1_.o14456();
      }
      var _loc4_:* = o4519.o9721.o12334("NGZTriggered");
      if(_loc4_)
      {
         _loc4_.o967();
      }
   }
   
   private function o19428() : void
   {
      var _loc9_:* = null;
      var _loc13_:Number = NaN;
      var _loc11_:Number = NaN;
      var _loc3_:int = 0;
      var _loc10_:* = null;
      var _loc4_:* = null;
      var _loc2_:Boolean = false;
      var _loc1_:int = 0;
      var _loc5_:Vector.<o17517> = Vector.<o17517>(o4519.o8116.o2996.o20698(o17517));
      var _loc6_:Rectangle = o2814.getBounds(o4519.o8116.stage);
      _loc3_ = 0;
      while(_loc3_ < _loc5_.length)
      {
         _loc9_ = _loc5_[_loc3_];
         if(_loc9_)
         {
            _loc9_.o11711();
            _loc13_ = _loc9_.x + o3328.x;
            _loc11_ = _loc9_.y + o3328.y;
            if(_loc13_ > _loc6_.right)
            {
               _loc13_ = o11923;
            }
            else if(_loc13_ < _loc6_.left)
            {
               _loc13_ = o11923;
            }
            if(_loc11_ > _loc6_.bottom)
            {
               _loc11_ = o7622;
            }
            else if(_loc11_ < _loc6_.top)
            {
               _loc11_ = o7622;
            }
            _loc9_.body.o8564(_loc13_,_loc11_);
            if(_loc9_ is o17517 && _loc9_.o5973 == o4519.o13206.o2685.id)
            {
               o17517(_loc9_).o15315(new o18509(_loc13_,_loc11_));
            }
         }
         _loc3_++;
      }
      var _loc7_:Vector.<o10262> = o4519.o8116.o9869.o8182(o4145);
      var _loc12_:Vector.<o18442> = new Vector.<o18442>();
      _loc3_ = 0;
      while(_loc3_ < _loc7_.length)
      {
         _loc10_ = o4519.o8116.o2996.o14389(_loc7_[_loc3_]);
         if(_loc10_ is o18442)
         {
            _loc12_.push(_loc10_);
         }
         _loc3_++;
      }
      var _loc8_:Array = o4519.o8116.o2996.o20698(o18442).concat();
      _loc3_ = 0;
      while(_loc3_ < _loc8_.length)
      {
         _loc4_ = _loc8_[_loc3_];
         _loc2_ = false;
         _loc1_ = 0;
         while(_loc1_ < _loc12_.length)
         {
            if(_loc12_[_loc1_] == _loc4_)
            {
               _loc2_ = true;
               break;
            }
            _loc1_++;
         }
         if(!_loc2_)
         {
            o4519.o8116.o8361.o5725(_loc4_,o4016.o10062().initialise(999999999,8,null));
            _loc4_.o19115();
         }
         else
         {
            _loc13_ = _loc4_.x + o3328.x;
            _loc11_ = _loc4_.y + o3328.y;
            if(_loc13_ > _loc6_.right)
            {
               _loc13_ = _loc6_.right;
            }
            else if(_loc13_ < _loc6_.left)
            {
               _loc13_ = _loc6_.left;
            }
            if(_loc11_ > _loc6_.bottom)
            {
               _loc11_ = _loc6_.bottom;
            }
            else if(_loc11_ < _loc6_.top)
            {
               _loc11_ = _loc6_.top;
            }
            _loc4_.body.o8564(_loc13_,_loc11_);
         }
         _loc3_++;
      }
   }
   
   private function o9629() : void
   {
      var _loc1_:int = 0;
      var _loc2_:* = null;
      var _loc3_:Vector.<o17517> = Vector.<o17517>(o4519.o8116.o2996.o20698(o17517));
      _loc1_ = 0;
      while(_loc1_ < _loc3_.length)
      {
         _loc2_ = _loc3_[_loc1_];
         if(_loc2_)
         {
            _loc2_.o6044();
         }
         _loc1_++;
      }
   }
   
   private function o6152(param1:o663) : void
   {
      var _loc2_:* = null;
      var _loc5_:Number = NaN;
      var _loc4_:Number = NaN;
      var _loc3_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc3_)
      {
         _loc2_ = o2814.getBounds(o4519.o8116.stage);
         _loc5_ = _loc3_.x + o3328.x;
         _loc4_ = _loc3_.y + o3328.y;
         if(_loc5_ > _loc2_.right)
         {
            _loc5_ = o11923;
         }
         else if(_loc5_ < _loc2_.left)
         {
            _loc5_ = o11923;
         }
         if(_loc4_ > _loc2_.bottom)
         {
            _loc4_ = o7622;
         }
         else if(_loc4_ < _loc2_.top)
         {
            _loc4_ = o7622;
         }
         _loc3_.body.o8564(_loc5_,_loc4_);
         if(_loc3_ is o17517 && _loc3_.o5973 == o4519.o13206.o2685.id)
         {
            o17517(_loc3_).o15315(new o18509(_loc5_,_loc4_));
         }
      }
   }
   
   private function o2294() : void
   {
      o20263();
      new o6880(o20944).o2008(2,true);
      new o6880(o10526).o2008(2,true);
      var _loc1_:* = o4519.o9721.o12334("enemyWaveA");
      _loc1_.o4526();
      o1051.o9310(this,10,o3746);
      o1051.o9310(this,40,o16019);
   }
   
   private function o3746() : void
   {
      var _loc2_:int = 0;
      var _loc1_:* = null;
      if(o4137)
      {
         return;
      }
      var _loc3_:Array = o4519.o8116.o2996.o20698(o18442);
      var _loc4_:Boolean = false;
      _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         if(_loc3_[_loc2_].o12555 == 2)
         {
            _loc4_ = true;
            break;
         }
         _loc2_++;
      }
      if(_loc4_)
      {
         o1051.o9310(this,3,o3746);
      }
      else
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(4);
         dispatchData(new o2149(this,_loc1_,true,false,4));
      }
   }
   
   private function o12123() : void
   {
      o4137 = true;
      new o6880(o20944).o20013(2,true);
      new o6880(o10526).o20013(2,true);
      var _loc1_:* = o4519.o8116.o2996.o20716("doorC1Right");
      _loc1_.o17776();
      _loc1_ = o4519.o8116.o2996.o20716("doorC2Left");
      _loc1_.o17776();
      o20806(3);
      o9290.o16280(this,o8273.o7087,o16055);
      o8120 = o1051.o4767(this,1,o3467);
      o13837();
      new o6880(o13355).o20013(2,true);
   }
   
   private function o16019() : void
   {
      var _loc1_:int = 0;
      if(o4137)
      {
         return;
      }
      var _loc2_:Array = o4519.o8116.o2996.o20698(o18442).slice();
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length)
      {
         if(_loc2_[_loc1_].o12555 == 2)
         {
            _loc2_[_loc1_].o19115();
         }
         _loc1_++;
      }
   }
   
   private function o16055(param1:o663) : void
   {
      var _loc2_:* = undefined;
      if(param1.o11541 == o4519.o32.body)
      {
         _loc2_ = o4519.o8116.o2996.o20716("doorC1Right");
         _loc2_.o7730();
         _loc2_ = o4519.o8116.o2996.o20716("doorC2Left");
         _loc2_.o7730();
         o9290.o12657(o8273.o7087,o16055);
      }
   }
   
   private function o3467() : void
   {
      var _loc1_:* = null;
      var _loc2_:Vector.<o10262> = o4519.o8116.o9869.o8182(o9290);
      if(_loc2_.length >= 1)
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(7);
         dispatchData(new o2149(this,_loc1_,true,false,7));
      }
   }
   
   private function o20902() : void
   {
      o1051.o19115(o8120);
      o7698(3);
      o5333();
      o1051.o9310(this,4,o20281);
      o1051.o9310(this,4,o8018);
      o1051.o9310(this,1,o7357);
      o1051.o9310(this,8,o4030);
      o1051.o9310(this,11,o16508);
      o1051.o9310(this,16,o14247);
   }
   
   private function o14247() : void
   {
      o20263();
      new o6880(o15214).o2008(2,true);
      new o6880(o12061).o2008(2,true);
      var _loc1_:* = o4519.o9721.o12334("enemyWaveB");
      _loc1_.o4526();
      o1051.o9310(this,10,o17425);
      o1051.o9310(this,40,o15627);
   }
   
   private function o17425() : void
   {
      var _loc2_:int = 0;
      var _loc1_:* = null;
      if(o10451)
      {
         return;
      }
      var _loc3_:Array = o4519.o8116.o2996.o20698(o18442);
      var _loc4_:Boolean = false;
      _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         if(_loc3_[_loc2_].o12555 == 3)
         {
            _loc4_ = true;
            break;
         }
         _loc2_++;
      }
      if(_loc4_)
      {
         o1051.o9310(this,3,o17425);
      }
      else
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(8);
         dispatchData(new o2149(this,_loc1_,true,false,8));
      }
   }
   
   private function o1143() : void
   {
      o10451 = true;
      new o6880(o15214).o20013(2,true);
      new o6880(o12061).o20013(2,true);
      var _loc1_:* = o4519.o8116.o2996.o20716("doorC2Right");
      _loc1_.o17776();
      _loc1_ = o4519.o8116.o2996.o20716("doorC3Left");
      _loc1_.o17776();
      o20806(4);
      o13840.o16280(this,o8273.o7087,o17133);
      o833 = o1051.o4767(this,1,o13329);
      o13837();
      new o6880(o9084).o20013(2,true);
   }
   
   private function o15627() : void
   {
      var _loc1_:int = 0;
      if(o10451)
      {
         return;
      }
      var _loc2_:Array = o4519.o8116.o2996.o20698(o18442).slice();
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length)
      {
         if(_loc2_[_loc1_].o12555 == 3)
         {
            _loc2_[_loc1_].o19115();
         }
         _loc1_++;
      }
   }
   
   private function o17133(param1:o663) : void
   {
      var _loc2_:* = undefined;
      if(param1.o11541 == o4519.o32.body)
      {
         _loc2_ = o4519.o8116.o2996.o20716("doorC2Right");
         _loc2_.o7730();
         _loc2_ = o4519.o8116.o2996.o20716("doorC3Left");
         _loc2_.o7730();
         o13840.o12657(o8273.o7087,o17133);
      }
   }
   
   private function o13329() : void
   {
      var _loc1_:* = null;
      var _loc2_:Vector.<o10262> = o4519.o8116.o9869.o8182(o13840);
      if(_loc2_.length >= 1)
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(11);
         dispatchData(new o2149(this,_loc1_,true,false,11));
      }
   }
   
   private function o9467() : void
   {
      o1051.o19115(o833);
      o7698(4);
      o5333();
      o1051.o9310(this,4,o20281);
      o1051.o9310(this,4,o8018);
      o1051.o9310(this,1,o7357);
      o1051.o9310(this,12,o14476);
      o1051.o9310(this,12,o20079);
      o1051.o9310(this,11,o16508);
      o1051.o9310(this,16,o6290);
   }
   
   private function o6290() : void
   {
      o20263();
      new o6880(o16336).o2008(2,true);
      new o6880(o11177).o2008(2,true);
      new o6880(o2027).o2008(2,true);
      new o6880(o14930).o2008(2,true);
      var _loc1_:* = o4519.o9721.o12334("enemyWaveC");
      _loc1_.o4526();
      o1051.o9310(this,10,o12348);
      o1051.o9310(this,40,o4306);
   }
   
   private function o12348() : void
   {
      var _loc2_:int = 0;
      var _loc1_:* = null;
      if(o10680)
      {
         return;
      }
      var _loc3_:Array = o4519.o8116.o2996.o20698(o18442);
      var _loc4_:Boolean = false;
      _loc2_ = 0;
      while(_loc2_ < _loc3_.length)
      {
         if(_loc3_[_loc2_].o12555 == 4)
         {
            _loc4_ = true;
            break;
         }
         _loc2_++;
      }
      if(_loc4_)
      {
         o1051.o9310(this,3,o12348);
      }
      else
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(12);
         dispatchData(new o2149(this,_loc1_,true,false,12));
      }
   }
   
   private function o2489() : void
   {
      o10680 = true;
      new o6880(o16336).o20013(2,true);
      new o6880(o11177).o20013(2,true);
      new o6880(o2027).o20013(2,true);
      new o6880(o14930).o20013(2,true);
      var _loc1_:* = o4519.o8116.o2996.o20716("doorC3Right");
      _loc1_.o17776();
      _loc1_ = o4519.o8116.o2996.o20716("doorC4Left");
      _loc1_.o17776();
      o20806(5);
      o9107.o16280(this,o8273.o7087,o3373);
      o3789 = o1051.o4767(this,1,o15517);
      o13837();
      new o6880(o14164).o20013(2,true);
   }
   
   private function o4306() : void
   {
      var _loc1_:int = 0;
      if(o10680)
      {
         return;
      }
      var _loc2_:Array = o4519.o8116.o2996.o20698(o18442).slice();
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length)
      {
         if(_loc2_[_loc1_].o12555 == 4)
         {
            _loc2_[_loc1_].o19115();
         }
         _loc1_++;
      }
   }
   
   private function o3373(param1:o663) : void
   {
      var _loc2_:* = undefined;
      if(param1.o11541 == o4519.o32.body)
      {
         _loc2_ = o4519.o8116.o2996.o20716("doorC3Right");
         _loc2_.o7730();
         _loc2_ = o4519.o8116.o2996.o20716("doorC4Left");
         _loc2_.o7730();
         o9107.o12657(o8273.o7087,o3373);
      }
   }
   
   private function o15517() : void
   {
      var _loc1_:* = null;
      var _loc2_:Vector.<o10262> = o4519.o8116.o9869.o8182(o9107);
      if(_loc2_.length >= 1)
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(15);
         dispatchData(new o2149(this,_loc1_,true,false,15));
      }
   }
   
   private function o11885() : void
   {
      o1051.o19115(o3789);
      o7698(5);
      o5333();
      o1051.o9310(this,4,o20281);
      o1051.o9310(this,4,o8018);
      o1051.o9310(this,1,o7357);
      o1051.o9310(this,6,o4030);
      o1051.o9310(this,6,o3423);
      o1051.o9310(this,11,o16508);
      o1051.o9310(this,16,o5574);
      o1051.o9310(this,16,o1803);
   }
   
   private function o1803() : void
   {
      o20263();
      o20806(6);
      o4519.o8116.o20488.o20575(2);
      new o6880(o5151).o2008(2,true);
      new o6880(o8262).o2008(2,true);
      o4519.o8116.o20488.o9874("VaccineMap",true);
      o4519.o8116.o20488.o9874("VaccineMapSubwayEnd",false);
      var _loc1_:* = o4519.o9721.o12334("platformDSpawn");
      _loc1_.o4526();
      _loc1_ = o4519.o8116.o2996.o20716("doorC4TopRight");
      _loc1_.o17776();
      _loc1_ = o4519.o8116.o2996.o20716("doorC4TopLeft");
      _loc1_.o17776();
      o4519.o13206.o17568 = false;
      o4519.o13206.o5360 = false;
      o4519.o13206.o754(o1740);
      o1051.o19115(o17220);
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      switch(int(_loc3_) - 3)
      {
         case 0:
            o14836();
            break;
         case 1:
            o12123();
            break;
         default:
            o12123();
            break;
         default:
            o12123();
            break;
         case 4:
            o20902();
            break;
         case 5:
            o1143();
            break;
         default:
            o1143();
            break;
         default:
            o1143();
            break;
         case 8:
            o9467();
            break;
         case 9:
            o2489();
            break;
         default:
            o2489();
            break;
         default:
            o2489();
            break;
         case 12:
            o11885();
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      var _loc4_:int = 0;
      var _loc3_:* = o19434;
      for each(var _loc2_ in o19434)
      {
         _loc2_.o19115();
      }
      o19434.splice(0,4294967295);
      o3186.splice(0,4294967295);
      var _loc6_:int = 0;
      var _loc5_:* = o14193;
      for each(var _loc1_ in o14193)
      {
         _loc1_.o19115();
      }
      o14193.splice(0,4294967295);
      o10165.splice(0,4294967295);
      o4145.o19115();
      o20944.o19115();
      o10526.o19115();
      o15214.o19115();
      o12061.o19115();
      o16336.o19115();
      o2027.o19115();
      o11177.o19115();
      o14930.o19115();
      o5151.o19115();
      o8262.o19115();
      o13355.o19115();
      o9084.o19115();
      o14164.o19115();
      super.o19115();
   }
   
   private function o20806(param1:int) : void
   {
      o4519.o8116.o20488.o13122("vaccineMapArrow" + param1.toString());
   }
   
   private function o7698(param1:int) : void
   {
      o4519.o8116.o20488.o12056("vaccineMapArrow" + param1.toString());
   }
   
   private function o13837() : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = null;
      var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
      _loc2_ = 0;
      while(_loc2_ < _loc1_.length)
      {
         _loc3_ = _loc1_[_loc2_].o7616 as o17762;
         if(_loc3_)
         {
            _loc3_.o2794();
         }
         _loc2_++;
      }
   }
   
   private function o20281() : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = null;
      var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
      _loc2_ = 0;
      while(_loc2_ < _loc1_.length)
      {
         _loc3_ = _loc1_[_loc2_].o7616 as o17762;
         if(_loc3_)
         {
            _loc3_.o7561();
         }
         _loc2_++;
      }
   }
   
   private function o5333() : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = null;
      var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
      _loc2_ = 0;
      while(_loc2_ < _loc1_.length)
      {
         _loc3_ = _loc1_[_loc2_].o7616 as o17762;
         if(_loc3_)
         {
            _loc3_.o12564();
         }
         _loc2_++;
      }
   }
   
   private function o8018() : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = null;
      var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
      _loc2_ = 0;
      while(_loc2_ < _loc1_.length)
      {
         _loc3_ = _loc1_[_loc2_].o7616 as o17762;
         if(_loc3_)
         {
            _loc3_.o4011();
         }
         _loc2_++;
      }
   }
   
   private function o8186() : void
   {
      o4519.o13206.o17568 = true;
      o4519.o13206.o12068 = o19434[0].position.y + 138;
      o4519.o13206.o5360 = true;
   }
   
   private function o14404() : void
   {
      var _loc2_:int = 0;
      var _loc1_:* = 0.0333333333333333;
      if(o9444)
      {
         o6217 = o6217 + 20 * _loc1_;
         if(o6217 > 100)
         {
            o6217 = 100;
         }
      }
      else
      {
         o6217 = o6217 - 20 * _loc1_;
         if(o6217 < 0)
         {
            o6217 = 0;
         }
      }
      if(o6217 > 0)
      {
         o14091 = o14091 - o6217;
         o14091 = o14091 % 612;
         o2701 = o2701 - o6217;
         o2701 = o2701 % 612;
         o20765(_loc1_);
         _loc2_ = 0;
         while(_loc2_ < o19434.length)
         {
            o19434[_loc2_].position.x = o3186[_loc2_] + o14091;
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < o14193.length)
         {
            o14193[_loc2_].position.x = o10165[_loc2_] + o2701;
            _loc2_++;
         }
      }
      o1740.o15771 = o6217 / 22;
   }
   
   private function o20765(param1:Number) : void
   {
      var _loc2_:int = 0;
      if(o8292)
      {
         o11312 = o11312 + 200 * param1;
         if(o5401)
         {
            if(o11312 > o17273)
            {
               o11312 = o17273;
            }
         }
         else if(o11312 > o15352 + 200)
         {
            if(o14301)
            {
               o11312 = o15352 + 200;
            }
            else
            {
               o5401 = true;
               o11312 = o17273 - 200;
            }
         }
      }
      else
      {
         o11312 = o11312 - 200 * param1;
         if(o5401)
         {
            if(o11312 < o17273 - 200)
            {
               if(o14301)
               {
                  o11312 = o17273 - 200;
               }
               else
               {
                  o5401 = false;
                  o11312 = o15352 + 200;
               }
            }
         }
         else if(o11312 < o15352)
         {
            o11312 = o15352;
         }
      }
      _loc2_ = 2;
      while(_loc2_ < o19434.length)
      {
         o19434[_loc2_].position.y = o11312;
         _loc2_++;
      }
   }
   
   private function o7357() : void
   {
      o20011();
      o9444 = true;
   }
   
   private function o16508() : void
   {
      o9444 = false;
   }
   
   private function o14476() : void
   {
      o8292 = true;
   }
   
   private function o4030() : void
   {
      o8292 = false;
   }
   
   private function o20079() : void
   {
      o14301 = true;
   }
   
   private function o3423() : void
   {
      o14301 = false;
   }
   
   private function o20011() : void
   {
      var _loc1_:Date = new Date();
      o9933 = _loc1_.valueOf();
      o4519.o8116.o4812.o4404.o8458.play(0.65);
      o4519.o8116.o8756.o20541.play(0.5,2147483647,0,false,null,0,0,o9933);
   }
   
   private function o20263() : void
   {
      o4519.o8116.o6169.o1529(o9933);
      o4519.o8116.o4812.o4404.o8458.play(0.65);
   }
   
   private function o5574() : void
   {
      o4519.o8116.o6169.o16404();
      o4519.o8116.o8756.o13179.play(1,0,0,true);
   }
}
