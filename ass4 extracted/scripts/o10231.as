package
{
   use namespace b2internal;
   
   public class o10231
   {
       
      
      public var o17252:Vector.<o20021>;
      
      public var o15052:int;
      
      public var o4879:Number;
      
      public function o10231()
      {
         super();
      }
      
      public function o18596(param1:o17586) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         switch(int(param1.o20697()))
         {
            case 0:
               _loc2_ = param1 as o15114;
               o17252 = new Vector.<o20021>(1,true);
               o17252[0] = _loc2_.o17446;
               o15052 = 1;
               o4879 = _loc2_.o4879;
               break;
            case 1:
               _loc3_ = param1 as o13884;
               o17252 = _loc3_.o17252;
               o15052 = _loc3_.o11880;
               o4879 = _loc3_.o4879;
         }
      }
      
      public function o3616(param1:o20021) : Number
      {
         var _loc5_:int = 0;
         var _loc4_:Number = NaN;
         var _loc3_:* = 0;
         var _loc2_:* = Number(o17252[0].x * param1.x + o17252[0].y * param1.y);
         _loc5_ = 1;
         while(_loc5_ < o15052)
         {
            _loc4_ = o17252[_loc5_].x * param1.x + o17252[_loc5_].y * param1.y;
            if(_loc4_ > _loc2_)
            {
               _loc3_ = _loc5_;
               _loc2_ = _loc4_;
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function o6047(param1:o20021) : o20021
      {
         var _loc5_:int = 0;
         var _loc4_:Number = NaN;
         var _loc3_:* = 0;
         var _loc2_:* = Number(o17252[0].x * param1.x + o17252[0].y * param1.y);
         _loc5_ = 1;
         while(_loc5_ < o15052)
         {
            _loc4_ = o17252[_loc5_].x * param1.x + o17252[_loc5_].y * param1.y;
            if(_loc4_ > _loc2_)
            {
               _loc3_ = _loc5_;
               _loc2_ = _loc4_;
            }
            _loc5_++;
         }
         return o17252[_loc3_];
      }
      
      public function o16646() : int
      {
         return o15052;
      }
      
      public function o5529(param1:int) : o20021
      {
         o14980.o12199(0 <= param1 && param1 < o15052);
         return o17252[param1];
      }
   }
}
