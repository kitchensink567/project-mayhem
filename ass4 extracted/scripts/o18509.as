package
{
   public class o18509
   {
       
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public function o18509(param1:Number = 0, param2:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
      
      public static function o18683(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = Math.acos((param3 * param3 + param2 * param4) / (Math.sqrt(param1 * param1 + param2 * param2) * Math.sqrt(param3 * param3 + param4 * param4)));
         var _loc6_:* = param3 * param3 + -param2 * param4 > 0;
         if(!_loc6_)
         {
            _loc5_ = -_loc5_;
         }
         return _loc5_;
      }
      
      public function initialise(param1:Number = 0, param2:Number = 0) : void
      {
         this.x = param1;
         this.y = param2;
      }
      
      public function set o3215(param1:Number) : void
      {
         var _loc2_:Number = param1 / Math.sqrt(x * x + y * y);
         x = x * _loc2_;
         y = y * _loc2_;
      }
      
      public function get o3215() : Number
      {
         return Math.sqrt(x * x + y * y);
      }
      
      public function get o17573() : Number
      {
         return x * x + y * y;
      }
      
      public function o17903(param1:Number) : void
      {
         x = x * param1;
         y = y * param1;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Number = Math.sqrt(x * x + y * y);
         x = _loc2_ * Math.cos(param1);
         y = _loc2_ * Math.sin(param1);
      }
      
      public function get rotation() : Number
      {
         return Math.atan2(y,x);
      }
      
      public function o14528() : void
      {
         var _loc1_:Number = Math.sqrt(x * x + y * y);
         x = x / _loc1_;
         y = y / _loc1_;
      }
      
      public function rotate(param1:Number) : void
      {
         var _loc3_:Number = Math.sin(param1);
         var _loc2_:Number = Math.cos(param1);
         var _loc4_:Number = x * _loc2_ - y * _loc3_;
         y = x * _loc3_ + y * _loc2_;
         x = _loc4_;
      }
      
      public function o19203(param1:o18509) : Number
      {
         var _loc2_:Number = Math.atan2(param1.y,param1.x) - Math.atan2(y,x);
         if(_loc2_ > 3.14159265358979)
         {
            _loc2_ = _loc2_ - 2 * 3.14159265358979;
         }
         else if(_loc2_ < -3.14159265358979)
         {
            _loc2_ = _loc2_ + 2 * 3.14159265358979;
         }
         return _loc2_;
      }
      
      public function o13655(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - Math.atan2(y,x)) % (2 * 3.14159265358979);
         if(_loc2_ > 3.14159265358979)
         {
            _loc2_ = _loc2_ - 2 * 3.14159265358979;
         }
         else if(_loc2_ <= -3.14159265358979)
         {
            _loc2_ = _loc2_ + 2 * 3.14159265358979;
         }
         return _loc2_;
      }
      
      public function o4010() : o18509
      {
         var _loc1_:o18509 = Mem.create(this,o18509) as o18509;
         _loc1_.x = -y;
         _loc1_.y = x;
         return _loc1_;
      }
      
      public function o10018(param1:o18509) : Number
      {
         return param1.x * x + param1.y * y;
      }
      
      public function add(param1:o18509) : o18509
      {
         var _loc2_:o18509 = Mem.create(this,o18509) as o18509;
         _loc2_.x = x + param1.x;
         _loc2_.y = y + param1.y;
         return _loc2_;
      }
      
      public function o2413(param1:o18509) : o18509
      {
         var _loc2_:o18509 = Mem.create(this,o18509) as o18509;
         _loc2_.x = x - param1.x;
         _loc2_.y = y - param1.y;
         return _loc2_;
      }
      
      public function o20646(param1:Number) : o18509
      {
         var _loc2_:o18509 = Mem.create(this,o18509) as o18509;
         _loc2_.x = x * param1;
         _loc2_.y = y * param1;
         return _loc2_;
      }
      
      public function o18820(param1:o18509) : Number
      {
         return x * param1.y - y * param1.x;
      }
      
      public function o7277(param1:Number, param2:Number) : void
      {
         x = Math.cos(param1) * param2;
         y = Math.sin(param1) * param2;
      }
   }
}
