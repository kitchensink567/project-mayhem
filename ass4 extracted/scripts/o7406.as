package
{
   public class o7406
   {
       
      
      public var o15652:int;
      
      public var x:Array;
      
      public var y:Array;
      
      public function o7406(param1:Vector.<o18509>)
      {
         var _loc2_:int = 0;
         x = [];
         y = [];
         super();
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            x.push(param1[_loc2_].x);
            y.push(param1[_loc2_].y);
            _loc2_++;
         }
         o15652 = x.length;
      }
      
      public static function o4960(param1:Array, param2:Array) : o7406
      {
         var _loc4_:int = 0;
         var _loc3_:Vector.<o18509> = new Vector.<o18509>();
         _loc4_ = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_.push(new o18509(param1[_loc4_],param2[_loc4_]));
            _loc4_++;
         }
         return new o7406(_loc3_);
      }
      
      public function get o2625() : Vector.<o18509>
      {
         var _loc2_:int = 0;
         var _loc1_:Vector.<o18509> = new Vector.<o18509>();
         _loc2_ = 0;
         while(_loc2_ < x.length)
         {
            _loc1_.push(new o18509(x[_loc2_],y[_loc2_]));
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function set(param1:o7406) : void
      {
         var _loc2_:int = 0;
         o15652 = param1.o15652;
         x = [];
         y = [];
         _loc2_ = 0;
         while(_loc2_ < o15652)
         {
            x[_loc2_] = param1.x[_loc2_];
            y[_loc2_] = param1.y[_loc2_];
            _loc2_++;
         }
      }
      
      public function o12813() : Boolean
      {
         var _loc8_:int = 0;
         var _loc6_:int = 0;
         var _loc1_:* = 0;
         var _loc9_:int = 0;
         var _loc2_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc11_:* = false;
         _loc8_ = 0;
         while(_loc8_ < o15652)
         {
            _loc6_ = _loc8_ == 0?o15652 - 1:_loc8_ - 1;
            _loc1_ = _loc8_;
            _loc9_ = _loc8_ == o15652 - 1?0:_loc8_ + 1;
            _loc2_ = x[_loc1_] - x[_loc6_];
            _loc4_ = y[_loc1_] - y[_loc6_];
            _loc3_ = x[_loc9_] - x[_loc1_];
            _loc5_ = y[_loc9_] - y[_loc1_];
            _loc10_ = _loc2_ * _loc5_ - _loc3_ * _loc4_;
            _loc7_ = _loc10_ > 0?true:false;
            if(_loc8_ == 0)
            {
               _loc11_ = _loc7_;
            }
            else if(_loc11_ != _loc7_)
            {
               return false;
            }
            _loc8_++;
         }
         return true;
      }
      
      public function add(param1:o13020) : o7406
      {
         var _loc6_:* = -1;
         var _loc4_:int = -1;
         var _loc8_:* = -1;
         var _loc2_:int = -1;
         var _loc7_:int = 0;
         _loc7_ = 0;
         while(_loc7_ < o15652)
         {
            if(param1.x[0] == this.x[_loc7_] && param1.y[0] == this.y[_loc7_])
            {
               if(_loc6_ == -1)
               {
                  _loc6_ = _loc7_;
                  _loc4_ = 0;
               }
               else
               {
                  _loc8_ = _loc7_;
                  _loc2_ = 0;
               }
            }
            else if(param1.x[1] == this.x[_loc7_] && param1.y[1] == this.y[_loc7_])
            {
               if(_loc6_ == -1)
               {
                  _loc6_ = _loc7_;
                  _loc4_ = 1;
               }
               else
               {
                  _loc8_ = _loc7_;
                  _loc2_ = 1;
               }
            }
            else if(param1.x[2] == this.x[_loc7_] && param1.y[2] == this.y[_loc7_])
            {
               if(_loc6_ == -1)
               {
                  _loc6_ = _loc7_;
                  _loc4_ = 2;
               }
               else
               {
                  _loc8_ = _loc7_;
                  _loc2_ = 2;
               }
            }
            _loc7_++;
         }
         if(_loc6_ == 0 && _loc8_ == o15652 - 1)
         {
            _loc6_ = int(o15652 - 1);
            _loc8_ = 0;
         }
         if(_loc8_ == -1)
         {
            return null;
         }
         var _loc9_:int = 0;
         if(_loc9_ == _loc4_ || _loc9_ == _loc2_)
         {
            _loc9_ = 1;
         }
         if(_loc9_ == _loc4_ || _loc9_ == _loc2_)
         {
            _loc9_ = 2;
         }
         var _loc5_:Array = [];
         var _loc10_:Array = [];
         var _loc3_:int = 0;
         _loc7_ = 0;
         while(_loc7_ < o15652)
         {
            _loc5_[_loc3_] = x[_loc7_];
            _loc10_[_loc3_] = y[_loc7_];
            if(_loc7_ == _loc6_)
            {
               _loc3_++;
               _loc5_[_loc3_] = param1.x[_loc9_];
               _loc10_[_loc3_] = param1.y[_loc9_];
            }
            _loc3_++;
            _loc7_++;
         }
         return o7406.o4960(_loc5_,_loc10_);
      }
   }
}
