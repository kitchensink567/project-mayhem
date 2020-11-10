package
{
   import flash.display.Sprite;
   
   public class o10410 extends Sprite
   {
       
      
      public function o10410()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o20358;
      }
   }
}

import flash.display.Sprite;
import flash.geom.Rectangle;
import flash.utils.ByteArray;

class o20358 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.float,o13351.o10420,"spawn time (s)"],[2,o17243.o2013,o13351.o10420,"spawn area"],[20,o17243.o8809,o13351.o10420,"spawn behavior"],[21,o17243.o8809,o13351.o10420,"special flag"],[4,o17243.float,o13351.o5585,"close max"],[3,o17243.float,o13351.o5585,"num slow zombies"],[5,o17243.float,o13351.o5585,"num faster zombies"],[7,o17243.float,o13351.o5585,"num spitters"],[9,o17243.float,o13351.o5585,"num runners"],[11,o17243.float,o13351.o5585,"num fat zombies"],[13,o17243.float,o13351.o5585,"num shielded"],[15,o17243.float,o13351.o5585,"num zombdroid servants"],[17,o17243.float,o13351.o5585,"num zombdroid soldiers"],[19,o17243.float,o13351.o5585,"num worms"]];
    
   
   private var o7485:Vector.<o18509>;
   
   private var o18614:int = 0;
   
   private var o12555:int = 0;
   
   private var o17205:Vector.<o13304>;
   
   private var o17625:Number;
   
   function o20358()
   {
      o7485 = new Vector.<o18509>();
      o17205 = new Vector.<o13304>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:int = 0;
      var _loc12_:Number = NaN;
      var _loc4_:Number = NaN;
      var _loc11_:int = 0;
      var _loc15_:int = 0;
      o949(param1);
      var _loc7_:Number = param2.readFloat();
      var _loc3_:int = param2.readShort();
      o18614 = param2.readInt();
      o12555 = param2.readInt();
      o17625 = param2.readFloat();
      _loc6_ = 0;
      while(_loc6_ < 9)
      {
         _loc12_ = param2.readFloat();
         _loc4_ = param2.readFloat();
         if(_loc12_ != 0)
         {
            o17205.push(new o13304(0 + _loc6_,_loc12_));
         }
         _loc6_++;
      }
      o1051.o9310(this,_loc7_,o10540);
      var _loc13_:o13848 = o4519.o9721.o7352[_loc3_];
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(_loc13_.o6041[0].id);
      var _loc14_:Sprite = new Sprite();
      _loc14_.graphics.beginFill(16777215,1);
      var _loc10_:Boolean = true;
      var _loc17_:int = 0;
      var _loc16_:* = _loc5_;
      for each(var _loc8_ in _loc5_)
      {
         if(_loc10_)
         {
            _loc14_.graphics.moveTo(_loc8_.x,_loc8_.y);
            _loc10_ = false;
         }
         else
         {
            _loc14_.graphics.lineTo(_loc8_.x,_loc8_.y);
         }
      }
      _loc14_.graphics.endFill();
      o4519.o8116.stage.addChild(_loc14_);
      var _loc9_:Rectangle = _loc14_.getBounds(_loc14_);
      _loc11_ = _loc9_.left;
      while(_loc11_ <= _loc9_.right)
      {
         _loc15_ = _loc9_.top;
         while(_loc15_ <= _loc9_.bottom)
         {
            if(_loc14_.hitTestPoint(_loc11_,_loc15_,true))
            {
               o7485.push(new o18509(_loc11_,_loc15_));
            }
            _loc15_ = _loc15_ + 20;
         }
         _loc11_ = _loc11_ + 20;
      }
      o4519.o8116.stage.removeChild(_loc14_);
   }
   
   private function o10540() : void
   {
      var _loc2_:int = 0;
      var _loc1_:Vector.<o20743> = o10176.o10383(o17205,o17625);
      _loc2_ = 0;
      while(_loc2_ < _loc1_.length)
      {
         o3370(_loc1_[_loc2_].o18948,_loc1_[_loc2_].grade,o7485[int(Math.random() * o7485.length)],o18614,o12555);
         _loc2_++;
      }
   }
}
