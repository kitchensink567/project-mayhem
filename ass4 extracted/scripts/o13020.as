package
{
   public class o13020
   {
       
      
      public var o16255:Vector.<o18509>;
      
      public function o13020(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number)
      {
         o16255 = new Vector.<o18509>();
         super();
         o16255.push(new o18509(param1,param2));
         o16255.push(new o18509(param3,param4));
         o16255.push(new o18509(param5,param6));
         var _loc7_:Number = param3 - param1;
         var _loc9_:Number = param5 - param1;
         var _loc8_:Number = param4 - param2;
         var _loc10_:Number = param6 - param2;
         var _loc11_:Number = _loc7_ * _loc10_ - _loc9_ * _loc8_;
         if(_loc11_ > 0)
         {
            o16255[0].x = param1;
            o16255[1].x = param3;
            o16255[2].x = param5;
            o16255[0].y = param2;
            o16255[1].y = param4;
            o16255[2].y = param6;
         }
         else
         {
            o16255[0].x = param1;
            o16255[1].x = param5;
            o16255[2].x = param3;
            o16255[0].y = param2;
            o16255[1].y = param6;
            o16255[2].y = param4;
         }
      }
      
      public function get x() : Array
      {
         var _loc2_:int = 0;
         var _loc1_:Array = [];
         _loc2_ = 0;
         while(_loc2_ < o16255.length)
         {
            _loc1_.push(o16255[_loc2_].x);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get y() : Array
      {
         var _loc2_:int = 0;
         var _loc1_:Array = [];
         _loc2_ = 0;
         while(_loc2_ < o16255.length)
         {
            _loc1_.push(o16255[_loc2_].y);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function o8729(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = param1 - o16255[0].x;
         var _loc4_:Number = param2 - o16255[0].y;
         var _loc15_:Number = o16255[1].x - o16255[0].x;
         var _loc11_:Number = o16255[1].y - o16255[0].y;
         var _loc13_:Number = o16255[2].x - o16255[0].x;
         var _loc10_:Number = o16255[2].y - o16255[0].y;
         var _loc6_:Number = _loc13_ * _loc13_ + _loc10_ * _loc10_;
         var _loc16_:Number = _loc13_ * _loc15_ + _loc10_ * _loc11_;
         var _loc7_:Number = _loc13_ * _loc3_ + _loc10_ * _loc4_;
         var _loc5_:Number = _loc15_ * _loc15_ + _loc11_ * _loc11_;
         var _loc12_:Number = _loc15_ * _loc3_ + _loc11_ * _loc4_;
         var _loc9_:Number = 1 / (_loc6_ * _loc5_ - _loc16_ * _loc16_);
         var _loc14_:Number = (_loc5_ * _loc7_ - _loc16_ * _loc12_) * _loc9_;
         var _loc8_:Number = (_loc6_ * _loc12_ - _loc16_ * _loc7_) * _loc9_;
         return _loc14_ > 0 && _loc8_ > 0 && _loc14_ + _loc8_ < 1;
      }
   }
}
