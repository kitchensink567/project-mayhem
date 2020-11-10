package
{
   import flash.display.Sprite;
   
   public class o16668 extends Sprite
   {
       
      
      public function o16668()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o2290;
      }
   }
}

import flash.utils.ByteArray;

class o2290 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o8809,o13351.o10420,"spawn event id"],[2,o17243.o2013,o13351.o10420,"spawn points"],[3,o17243.float,o13351.o5585,"close max"],[4,o17243.float,o13351.o5585,"num slow zombies"],[5,o17243.float,o13351.o5585,"num faster zombies"],[6,o17243.float,o13351.o5585,"num spitters"],[7,o17243.float,o13351.o5585,"num runners"],[8,o17243.float,o13351.o5585,"num fat zombies"],[9,o17243.float,o13351.o5585,"num shielded"],[10,o17243.float,o13351.o5585,"num zombdroid servants"],[11,o17243.float,o13351.o5585,"num zombdroid soldiers"],[12,o17243.float,o13351.o5585,"num worms"],[13,o17243.float,o13351.o5585,"num spew worms"]];
    
   
   private var o16153:int = 0;
   
   private var o7485:Vector.<o18509>;
   
   private var o17205:Vector.<o13304>;
   
   private var o17625:Number;
   
   function o2290()
   {
      o7485 = new Vector.<o18509>();
      o17205 = new Vector.<o13304>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc7_:int = 0;
      var _loc3_:Number = NaN;
      o949(param1);
      o16153 = param2.readInt();
      var _loc6_:int = param2.readShort();
      o17625 = param2.readFloat();
      var _loc4_:o13848 = o4519.o9721.o7352[_loc6_];
      var _loc5_:Array = o4519.o9721.o18622(_loc4_.o6041[0].id);
      var _loc10_:int = 0;
      var _loc9_:* = _loc5_;
      for each(var _loc8_ in _loc5_)
      {
         o7485.push(new o18509(_loc8_.x,_loc8_.y));
      }
      _loc7_ = 0;
      while(_loc7_ < 10)
      {
         _loc3_ = param2.readFloat();
         if(_loc3_ != 0)
         {
            o17205.push(new o13304(0 + _loc7_,_loc3_));
         }
         _loc7_++;
      }
      o4519.o13206.o16280(this,o3519.o10551,o10540);
   }
   
   private function o10540(param1:o9534) : void
   {
      var _loc3_:int = 0;
      if(param1.o9079 != o16153)
      {
         return;
      }
      o4519.o13206.o12657(o3519.o10551,o10540);
      var _loc2_:Vector.<o20743> = o10176.o10383(o17205,o17625);
      _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         o3370(_loc2_[_loc3_].o18948,_loc2_[_loc3_].grade,o7485[int(o20384.random() * o7485.length)],0);
         _loc3_++;
      }
   }
}
