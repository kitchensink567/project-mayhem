package
{
   import flash.display.Sprite;
   
   public class o6335 extends Sprite
   {
       
      
      public function o6335()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o15147;
      }
   }
}

import flash.display.Sprite;
import flash.geom.Rectangle;
import flash.utils.ByteArray;

class o15147 extends o3047
{
   
   public static var o20272:Array = [[30,o17243.o8809,o13351.o10420,"spawner flag"],[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.o2013,o13351.o10420,"spawn area"],[23,o17243.o2013,o13351.o10420,"overflow spawn position 1"],[26,o17243.o2013,o13351.o10420,"overflow spawn position 1 top"],[24,o17243.o2013,o13351.o10420,"overflow spawn position 2"],[27,o17243.o2013,o13351.o10420,"overflow spawn position 2 top"],[25,o17243.o2013,o13351.o10420,"overflow spawn position 3"],[28,o17243.o2013,o13351.o10420,"overflow spawn position 3 top"],[20,o17243.o8809,o13351.o10420,"spawn behavior"],[21,o17243.o8809,o13351.o10420,"special flag"],[4,o17243.float,o13351.o5585,"close max"],[3,o17243.float,o13351.o5585,"num slow zombies"],[5,o17243.float,o13351.o5585,"num faster zombies"],[7,o17243.float,o13351.o5585,"num spitters"],[9,o17243.float,o13351.o5585,"num runners"],[11,o17243.float,o13351.o5585,"num fat zombies"],[13,o17243.float,o13351.o5585,"num shielded"],[15,o17243.float,o13351.o5585,"num zombdroid servants"],[17,o17243.float,o13351.o5585,"num zombdroid soldiers"],[19,o17243.float,o13351.o5585,"num worms"]];
    
   
   private var o18614:int = 0;
   
   private var o12555:int = 0;
   
   private var o7485:Vector.<o18509>;
   
   private var o17205:Vector.<o13304>;
   
   private var o17625:Number;
   
   private var o3769:Vector.<o14882>;
   
   private var o20754:int = 0;
   
   private var o952:int = 0;
   
   private var o5795:Boolean = false;
   
   private var o16261:int = 0;
   
   function o15147()
   {
      o7485 = new Vector.<o18509>();
      o17205 = new Vector.<o13304>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc13_:int = 0;
      var _loc19_:int = 0;
      var _loc6_:* = null;
      var _loc14_:* = null;
      var _loc3_:* = null;
      var _loc5_:* = null;
      var _loc8_:int = 0;
      var _loc15_:Number = NaN;
      var _loc12_:int = 0;
      var _loc18_:int = 0;
      o949(param1);
      o4951 = param2.readInt();
      name = param2.readUTF();
      var _loc4_:int = param2.readShort();
      o3769 = new Vector.<o14882>();
      _loc8_ = 0;
      while(_loc8_ < 3)
      {
         _loc13_ = param2.readShort();
         _loc19_ = param2.readShort();
         _loc6_ = o4519.o9721.o12831(_loc13_);
         _loc14_ = o4519.o9721.o7833(_loc13_);
         _loc3_ = o4519.o9721.o12831(_loc19_);
         if(!(_loc13_ == 0 || _loc6_ == null))
         {
            _loc5_ = new o14882();
            _loc5_.init(_loc6_,_loc14_,_loc3_);
            o3769.push(_loc5_);
         }
         _loc8_++;
      }
      if(o3769.length == 0)
      {
         o8339("WARNING: AREA SPAWNER HAS NO OVERFLOW POSITIONS");
      }
      o18614 = param2.readInt();
      o12555 = param2.readInt();
      o17625 = param2.readFloat();
      _loc8_ = 0;
      while(_loc8_ < 9)
      {
         _loc15_ = param2.readFloat();
         if(_loc15_ != 0)
         {
            o17205.push(new o13304(0 + _loc8_,_loc15_));
         }
         _loc8_++;
      }
      var _loc16_:o13848 = o4519.o9721.o7352[_loc4_];
      var _loc7_:Vector.<o18509> = o4519.o9721.o7963(_loc16_.o6041[0].id);
      var _loc17_:Sprite = new Sprite();
      _loc17_.graphics.beginFill(16777215,1);
      var _loc11_:Boolean = true;
      var _loc21_:int = 0;
      var _loc20_:* = _loc7_;
      for each(var _loc9_ in _loc7_)
      {
         if(_loc11_)
         {
            _loc17_.graphics.moveTo(_loc9_.x,_loc9_.y);
            _loc11_ = false;
         }
         else
         {
            _loc17_.graphics.lineTo(_loc9_.x,_loc9_.y);
         }
      }
      _loc17_.graphics.endFill();
      o4519.o8116.stage.addChild(_loc17_);
      var _loc10_:Rectangle = _loc17_.getBounds(_loc17_);
      _loc12_ = _loc10_.left;
      while(_loc12_ <= _loc10_.right)
      {
         _loc18_ = _loc10_.top;
         while(_loc18_ <= _loc10_.bottom)
         {
            if(_loc17_.hitTestPoint(_loc12_,_loc18_,true))
            {
               o7485.push(new o18509(_loc12_,_loc18_));
            }
            _loc18_ = _loc18_ + 20;
         }
         _loc12_ = _loc12_ + 20;
      }
      o4519.o8116.stage.removeChild(_loc17_);
   }
   
   public function o4526() : void
   {
      o10540();
   }
   
   private function o10540() : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = null;
      if(!o17205)
      {
         return;
      }
      var _loc1_:Vector.<o20743> = o10176.o10383(o17205,o17625,0,o5973);
      o20754 = _loc1_.length;
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
      o952 = Number(o952) + 1;
      if(o952 == o20754)
      {
         o1051.o9310(this,0.1,o19115);
      }
      return super.o18421(param1,param2,param3,param4,param5,param6,param7,param8,param9);
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o17205 = null;
      o7485 = null;
      o3769 = null;
      super.o19115();
   }
}
