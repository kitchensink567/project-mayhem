package
{
   public class o972
   {
       
      
      public var o16255:Vector.<o18509> = null;
      
      public var o1661:Vector.<o18509> = null;
      
      public var o17751:o2041 = null;
      
      public var o6049:o2041 = null;
      
      public var o12968:Vector.<o2041> = null;
      
      public function o972()
      {
         super();
         o16255 = Mem.create(this,Vector.<o18509>) as Vector.<o18509>;
      }
      
      public function get o13498() : Number
      {
         var _loc1_:int = 0;
         var _loc2_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc3_:* = 0;
         _loc1_ = 1;
         while(_loc1_ < o16255.length)
         {
            _loc2_ = o16255[_loc1_].x - o16255[_loc1_ - 1].x;
            _loc4_ = o16255[_loc1_].y - o16255[_loc1_ - 1].y;
            _loc3_ = Number(_loc3_ + (_loc2_ * _loc2_ + _loc4_ * _loc4_));
            _loc1_++;
         }
         return _loc3_;
      }
      
      public function o18084() : o972
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         var _loc1_:o972 = Mem.create(this,o972) as o972;
         _loc3_ = 0;
         while(_loc3_ < this.o16255.length)
         {
            _loc2_ = Mem.create(this,o18509) as o18509;
            _loc2_.x = o16255[_loc3_].x;
            _loc2_.y = o16255[_loc3_].y;
            _loc1_.o16255.push(_loc2_);
            _loc3_++;
         }
         return _loc1_;
      }
   }
}
