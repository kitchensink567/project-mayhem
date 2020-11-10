package
{
   public class o1693
   {
       
      
      public var o8628:o20021;
      
      public var o18391:o20021;
      
      public function o1693()
      {
         o8628 = new o20021();
         o18391 = new o20021();
         super();
      }
      
      public static function o1852(param1:o1693, param2:o1693) : o1693
      {
         var _loc3_:o1693 = new o1693();
         _loc3_.o1852(param1,param2);
         return _loc3_;
      }
      
      public function o8744() : Boolean
      {
         var _loc2_:Number = o18391.x - o8628.x;
         var _loc1_:Number = o18391.y - o8628.y;
         var _loc3_:Boolean = _loc2_ >= 0 && _loc1_ >= 0;
         _loc3_ = _loc3_ && o8628.o8744() && o18391.o8744();
         return _loc3_;
      }
      
      public function o9628() : o20021
      {
         return new o20021((o8628.x + o18391.x) / 2,(o8628.y + o18391.y) / 2);
      }
      
      public function o19787() : o20021
      {
         return new o20021((o18391.x - o8628.x) / 2,(o18391.y - o8628.y) / 2);
      }
      
      public function o19221(param1:o1693) : Boolean
      {
         var _loc2_:* = true;
         if(_loc2_)
         {
            _loc2_ = o8628.x <= param1.o8628.x;
         }
         if(_loc2_)
         {
            _loc2_ = o8628.y <= param1.o8628.y;
         }
         if(_loc2_)
         {
            _loc2_ = param1.o18391.x <= o18391.x;
         }
         if(_loc2_)
         {
            _loc2_ = param1.o18391.y <= o18391.y;
         }
         return _loc2_;
      }
      
      public function o4566(param1:o14303, param2:o13148) : Boolean
      {
         var _loc11_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc12_:* = NaN;
         var _loc15_:* = NaN;
         var _loc3_:* = NaN;
         var _loc14_:* = -1.79769313486232e308;
         var _loc10_:* = 1.79769313486232e308;
         var _loc6_:Number = param2.o12282.x;
         var _loc13_:Number = param2.o12282.y;
         var _loc9_:Number = param2.o14457.x - param2.o12282.x;
         var _loc4_:Number = param2.o14457.y - param2.o12282.y;
         var _loc16_:Number = Math.abs(_loc9_);
         var _loc7_:Number = Math.abs(_loc4_);
         var _loc5_:o20021 = param1.o1654;
         if(_loc16_ < Number.MIN_VALUE)
         {
            if(_loc6_ < o8628.x || o18391.x < _loc6_)
            {
               return false;
            }
         }
         else
         {
            _loc11_ = 1 / _loc9_;
            _loc8_ = Number((o8628.x - _loc6_) * _loc11_);
            _loc12_ = Number((o18391.x - _loc6_) * _loc11_);
            _loc3_ = -1;
            if(_loc8_ > _loc12_)
            {
               _loc15_ = _loc8_;
               _loc8_ = _loc12_;
               _loc12_ = _loc15_;
               _loc3_ = 1;
            }
            if(_loc8_ > _loc14_)
            {
               _loc5_.x = _loc3_;
               _loc5_.y = 0;
               _loc14_ = _loc8_;
            }
            _loc10_ = Number(Math.min(_loc10_,_loc12_));
            if(_loc14_ > _loc10_)
            {
               return false;
            }
         }
         if(_loc7_ < Number.MIN_VALUE)
         {
            if(_loc13_ < o8628.y || o18391.y < _loc13_)
            {
               return false;
            }
         }
         else
         {
            _loc11_ = 1 / _loc4_;
            _loc8_ = Number((o8628.y - _loc13_) * _loc11_);
            _loc12_ = Number((o18391.y - _loc13_) * _loc11_);
            _loc3_ = -1;
            if(_loc8_ > _loc12_)
            {
               _loc15_ = _loc8_;
               _loc8_ = _loc12_;
               _loc12_ = _loc15_;
               _loc3_ = 1;
            }
            if(_loc8_ > _loc14_)
            {
               _loc5_.y = _loc3_;
               _loc5_.x = 0;
               _loc14_ = _loc8_;
            }
            _loc10_ = Number(Math.min(_loc10_,_loc12_));
            if(_loc14_ > _loc10_)
            {
               return false;
            }
         }
         param1.o9664 = _loc14_;
         return true;
      }
      
      public function o15642(param1:o1693) : Boolean
      {
         var _loc5_:Number = param1.o8628.x - o18391.x;
         var _loc2_:Number = param1.o8628.y - o18391.y;
         var _loc3_:Number = o8628.x - param1.o18391.x;
         var _loc4_:Number = o8628.y - param1.o18391.y;
         if(_loc5_ > 0 || _loc2_ > 0)
         {
            return false;
         }
         if(_loc3_ > 0 || _loc4_ > 0)
         {
            return false;
         }
         return true;
      }
      
      public function o1852(param1:o1693, param2:o1693) : void
      {
         o8628.x = Math.min(param1.o8628.x,param2.o8628.x);
         o8628.y = Math.min(param1.o8628.y,param2.o8628.y);
         o18391.x = Math.max(param1.o18391.x,param2.o18391.x);
         o18391.y = Math.max(param1.o18391.y,param2.o18391.y);
      }
   }
}
