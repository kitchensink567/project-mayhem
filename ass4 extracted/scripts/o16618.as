package
{
   import flash.display.Sprite;
   
   public class o16618 extends Sprite
   {
       
      
      public function o16618()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o10686;
      }
   }
}

import flash.display.Sprite;
import flash.geom.Rectangle;
import flash.utils.ByteArray;

class o10686 extends o3047
{
   
   public static var o20272:Array = [[22,o17243.o8809,o13351.o10420,"spawner flag"],[1,o17243.o2013,o13351.o10420,"spawn trigger"],[2,o17243.o2013,o13351.o10420,"spawn area"],[23,o17243.o2013,o13351.o10420,"overflow spawn position 1"],[26,o17243.o2013,o13351.o10420,"overflow spawn position 1 top"],[24,o17243.o2013,o13351.o10420,"overflow spawn position 2"],[27,o17243.o2013,o13351.o10420,"overflow spawn position 2 top"],[25,o17243.o2013,o13351.o10420,"overflow spawn position 3"],[28,o17243.o2013,o13351.o10420,"overflow spawn position 3 top"],[20,o17243.o8809,o13351.o10420,"spawn behavior"],[21,o17243.o8809,o13351.o10420,"special flag"],[4,o17243.float,o13351.o5585,"close max"],[3,o17243.float,o13351.o5585,"num slow zombies"],[5,o17243.float,o13351.o5585,"num faster zombies"],[7,o17243.float,o13351.o5585,"num spitters"],[9,o17243.float,o13351.o5585,"num runners"],[11,o17243.float,o13351.o5585,"num fat zombies"],[13,o17243.float,o13351.o5585,"num shielded"],[15,o17243.float,o13351.o5585,"num zombdroid servants"],[17,o17243.float,o13351.o5585,"num zombdroid soldiers"],[19,o17243.float,o13351.o5585,"num worms"]];
   
   private static const o16292:int = 1;
    
   
   private var o18614:int = 0;
   
   private var o12555:int = 0;
   
   private var o7485:Vector.<o18509>;
   
   private var o17205:Vector.<o13304>;
   
   private var o17625:Number;
   
   private var o406:o10262;
   
   private var o3769:Vector.<o14882>;
   
   private var o5795:Boolean = false;
   
   private var o16261:int = 0;
   
   function o10686()
   {
      o7485 = new Vector.<o18509>();
      o17205 = new Vector.<o13304>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc17_:int = 0;
      var _loc24_:int = 0;
      var _loc7_:* = null;
      var _loc18_:* = null;
      var _loc3_:* = null;
      var _loc5_:* = null;
      var _loc10_:int = 0;
      var _loc20_:Number = NaN;
      var _loc12_:* = null;
      var _loc6_:* = null;
      var _loc16_:int = 0;
      var _loc23_:int = 0;
      o949(param1);
      o4951 = param2.readInt();
      var _loc21_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      o3769 = new Vector.<o14882>();
      _loc10_ = 0;
      while(_loc10_ < 3)
      {
         _loc17_ = param2.readShort();
         _loc24_ = param2.readShort();
         _loc7_ = o4519.o9721.o12831(_loc17_);
         _loc18_ = o4519.o9721.o7833(_loc17_);
         _loc3_ = o4519.o9721.o12831(_loc24_);
         if(!(_loc17_ == 0 || _loc7_ == null))
         {
            _loc5_ = new o14882();
            _loc5_.init(_loc7_,_loc18_,_loc3_);
            o3769.push(_loc5_);
         }
         _loc10_++;
      }
      if(o3769.length == 0)
      {
         o8339("WARNING: AREA SPAWNER HAS NO OVERFLOW POSITIONS");
      }
      o18614 = param2.readInt();
      o12555 = param2.readInt();
      o17625 = param2.readFloat();
      _loc10_ = 0;
      while(_loc10_ < 9)
      {
         _loc20_ = param2.readFloat();
         if(_loc20_ != 0)
         {
            o17205.push(new o13304(0 + _loc10_,_loc20_));
         }
         _loc10_++;
      }
      o406 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc8_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc21_].o6041[0].id);
      var _loc14_:Vector.<Vector.<o18509>> = o12075.o7521(_loc8_);
      var _loc26_:int = 0;
      var _loc25_:* = _loc14_;
      for each(var _loc9_ in _loc14_)
      {
         _loc12_ = new o17761(o406.o2535);
         _loc12_.o14486(_loc9_);
         _loc6_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365 | o8723.o14328,o17517.o6365 | o8723.o14328,true);
         _loc6_.o10289 = _loc12_.id;
         o406.o14230(_loc6_);
      }
      o406.o16280(this,o8273.o7087,o46);
      var _loc19_:o13848 = o4519.o9721.o7352[_loc4_];
      _loc9_ = o4519.o9721.o7963(_loc19_.o6041[0].id);
      var _loc22_:Sprite = new Sprite();
      _loc22_.graphics.beginFill(16777215,1);
      var _loc15_:Boolean = true;
      var _loc28_:int = 0;
      var _loc27_:* = _loc9_;
      for each(var _loc11_ in _loc9_)
      {
         if(_loc15_)
         {
            _loc22_.graphics.moveTo(_loc11_.x,_loc11_.y);
            _loc15_ = false;
         }
         else
         {
            _loc22_.graphics.lineTo(_loc11_.x,_loc11_.y);
         }
      }
      _loc22_.graphics.endFill();
      o4519.o8116.stage.addChild(_loc22_);
      var _loc13_:Rectangle = _loc22_.getBounds(_loc22_);
      _loc16_ = _loc13_.left;
      while(_loc16_ <= _loc13_.right)
      {
         _loc23_ = _loc13_.top;
         while(_loc23_ <= _loc13_.bottom)
         {
            if(_loc22_.hitTestPoint(_loc16_,_loc23_,true))
            {
               o7485.push(new o18509(_loc16_,_loc23_));
            }
            _loc23_ = _loc23_ + 20;
         }
         _loc16_ = _loc16_ + 20;
      }
      o4519.o8116.stage.removeChild(_loc22_);
   }
   
   private function o46(param1:o663) : void
   {
      o406.o12657(o8273.o7087,o46);
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(1);
      dispatchData(new o2149(this,_loc2_,true,false,1));
   }
   
   private function o10540() : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = null;
      var _loc1_:Vector.<o20743> = o10176.o10383(o17205,o17625,0,o5973);
      _loc2_ = 0;
      while(_loc2_ < _loc1_.length)
      {
         if(o1710() == false && o3769.length > 0)
         {
            o5795 = true;
            _loc3_ = o3769[o20712 % o3769.length];
            o3370(_loc1_[_loc2_].o18948,_loc1_[_loc2_].grade,_loc3_.position,o18614,o12555);
         }
         else
         {
            o3370(_loc1_[_loc2_].o18948,_loc1_[_loc2_].grade,o7485[int(o4519.o8116.random.o10418(o20712) * o7485.length)],o18614,o12555);
         }
         _loc2_++;
      }
   }
   
   override public function o18421(param1:Class, param2:Number, param3:int, param4:o18509 = null, param5:int = 0, param6:int = 0, param7:Boolean = true, param8:Boolean = true, param9:int = 0) : o18442
   {
      var _loc10_:int = 0;
      var _loc11_:* = null;
      if(o5795 && o16261 < o3769.length)
      {
         _loc10_ = 0;
         while(_loc10_ < o3769.length)
         {
            _loc11_ = o3769[_loc10_];
            if(param4.x == _loc11_.position.x && param4.y == _loc11_.position.y)
            {
               if(_loc11_.o8478 == false)
               {
                  _loc11_.o20816();
                  o16261 = Number(o16261) + 1;
               }
            }
            _loc10_++;
         }
      }
      return super.o18421(param1,param2,param3,param4,param5,param6,param7,param8,param9);
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      if(!(int(_loc3_) - 1))
      {
         o10540();
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o406.o19115();
      o7485 = null;
      o17205 = null;
      super.o19115();
   }
}
