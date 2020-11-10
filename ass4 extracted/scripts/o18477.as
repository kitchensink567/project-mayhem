package
{
   import flash.display.Sprite;
   
   public class o18477 extends Sprite
   {
       
      
      public function o18477()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o10617;
      }
   }
}

import flash.utils.ByteArray;

class o10617 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"image1"],[2,o17243.o2013,o13351.o10420,"physics1"],[3,o17243.o19845,o13351.o10420,"Node Name 1"],[4,o17243.o19845,o13351.o10420,"Node Name 1"],[5,o17243.o2013,o13351.o10420,"image2"],[6,o17243.o2013,o13351.o10420,"physics2"],[7,o17243.o19845,o13351.o10420,"Node Name 1"],[8,o17243.o19845,o13351.o10420,"Node Name 2"],[9,o17243.o2013,o13351.o5585,"image3"],[10,o17243.o2013,o13351.o5585,"physics3"],[11,o17243.o19845,o13351.o5585,"Node Name 1"],[12,o17243.o19845,o13351.o5585,"Node Name 2"],[13,o17243.o2013,o13351.o5585,"image4"],[14,o17243.o2013,o13351.o5585,"physics4"],[15,o17243.o19845,o13351.o5585,"Node Name 1"],[16,o17243.o19845,o13351.o5585,"Node Name 2"],[17,o17243.o2013,o13351.o5585,"image5"],[18,o17243.o2013,o13351.o5585,"physics5"],[19,o17243.o19845,o13351.o5585,"Node Name 1"],[20,o17243.o19845,o13351.o5585,"Node Name 2"]];
    
   
   function o10617()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:int = 0;
      var _loc5_:int = 0;
      var _loc16_:int = 0;
      var _loc9_:* = null;
      var _loc13_:* = null;
      var _loc4_:* = null;
      var _loc7_:* = null;
      var _loc8_:Array = [];
      var _loc10_:Array = [];
      var _loc11_:Array = [];
      var _loc3_:Array = [];
      _loc6_ = 0;
      while(_loc6_ < 5)
      {
         _loc5_ = param2.readShort();
         _loc16_ = param2.readShort();
         _loc9_ = param2.readUTF();
         _loc13_ = param2.readUTF();
         if(_loc9_ != "")
         {
            _loc11_.push(_loc9_);
         }
         if(_loc13_ != "")
         {
            _loc3_.push(_loc13_);
         }
         if(_loc5_ != 0)
         {
            _loc8_.push(_loc5_);
         }
         if(_loc16_ != 0)
         {
            _loc10_.push(_loc16_);
         }
         _loc6_++;
      }
      if(_loc8_.length != _loc10_.length)
      {
         throw new Error("mismatch image and physics count");
      }
      if(_loc8_.length <= 1)
      {
         throw new Error("need more than one image to work");
      }
      var _loc15_:int = o4519.o8116.random.o10418(param1) * _loc8_.length;
      var _loc14_:o4332 = o4519.o9721.o12831(_loc8_[_loc15_]);
      o4519.o8116.o11954.o17454(_loc14_);
      _loc6_ = 0;
      while(_loc6_ < _loc11_.length)
      {
         if(_loc15_ != _loc6_)
         {
            var _loc18_:int = 0;
            var _loc17_:* = o4519.o9721.o20360.o2013.o6041;
            for each(var _loc12_ in o4519.o9721.o20360.o2013.o6041)
            {
               if(_loc12_.name == _loc11_[_loc6_])
               {
                  _loc4_ = _loc12_;
               }
               if(_loc12_.name == _loc3_[_loc6_])
               {
                  _loc7_ = _loc12_;
               }
            }
            _loc4_.o16079.splice(_loc4_.o16079.indexOf(_loc7_),1);
            _loc7_.o16079.splice(_loc7_.o16079.indexOf(_loc4_),1);
         }
         _loc6_++;
      }
      _loc10_.splice(_loc15_,1);
      o4519.o9721.o3865(Vector.<int>(_loc10_));
      super.o16955(param1);
   }
}
