package
{
   use namespace b2internal;
   
   class o1851
   {
      
      private static var o17793:o20021 = new o20021();
      
      private static var o13629:o20021 = new o20021();
       
      
      public var o17937:o20021;
      
      public var o6942:Vector.<o20021>;
      
      public var o5075:Vector.<Number>;
      
      function o1851()
      {
         var _loc1_:int = 0;
         super();
         o17937 = new o20021();
         o5075 = new Vector.<Number>(2);
         o6942 = new Vector.<o20021>(2);
         _loc1_ = 0;
         while(_loc1_ < 2)
         {
            o6942[_loc1_] = new o20021();
            _loc1_++;
         }
      }
      
      public function o3836(param1:o14274) : void
      {
         var _loc6_:int = 0;
         var _loc14_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc13_:* = null;
         var _loc12_:* = null;
         var _loc11_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc15_:Number = NaN;
         o14980.o12199(param1.o13134 > 0);
         switch(int(param1.type) - 1)
         {
            case 0:
               _loc13_ = param1.o6133.o7718.o13707;
               _loc12_ = param1.o15759;
               _loc16_ = param1.o6133.o7718.position.x + (_loc13_.o19549.x * _loc12_.x + _loc13_.o20685.x * _loc12_.y);
               _loc5_ = param1.o6133.o7718.position.y + (_loc13_.o19549.y * _loc12_.x + _loc13_.o20685.y * _loc12_.y);
               _loc13_ = param1.o3428.o7718.o13707;
               _loc12_ = param1.o16255[0].o15759;
               _loc8_ = param1.o3428.o7718.position.x + (_loc13_.o19549.x * _loc12_.x + _loc13_.o20685.x * _loc12_.y);
               _loc4_ = param1.o3428.o7718.position.y + (_loc13_.o19549.y * _loc12_.x + _loc13_.o20685.y * _loc12_.y);
               _loc7_ = _loc8_ - _loc16_;
               _loc3_ = _loc4_ - _loc5_;
               _loc2_ = _loc7_ * _loc7_ + _loc3_ * _loc3_;
               if(_loc2_ > Number.MIN_VALUE * Number.MIN_VALUE)
               {
                  _loc15_ = Math.sqrt(_loc2_);
                  o17937.x = _loc7_ / _loc15_;
                  o17937.y = _loc3_ / _loc15_;
               }
               else
               {
                  o17937.x = 1;
                  o17937.y = 0;
               }
               o6942[0].x = 0.5 * (_loc16_ + _loc8_);
               o6942[0].y = 0.5 * (_loc5_ + _loc4_);
               o5075[0] = _loc7_ * o17937.x + _loc3_ * o17937.y - param1.o30;
               break;
            case 1:
               _loc13_ = param1.o6133.o7718.o13707;
               _loc12_ = param1.o19522;
               o17937.x = _loc13_.o19549.x * _loc12_.x + _loc13_.o20685.x * _loc12_.y;
               o17937.y = _loc13_.o19549.y * _loc12_.x + _loc13_.o20685.y * _loc12_.y;
               _loc13_ = param1.o6133.o7718.o13707;
               _loc12_ = param1.o15759;
               _loc11_ = param1.o6133.o7718.position.x + (_loc13_.o19549.x * _loc12_.x + _loc13_.o20685.x * _loc12_.y);
               _loc10_ = param1.o6133.o7718.position.y + (_loc13_.o19549.y * _loc12_.x + _loc13_.o20685.y * _loc12_.y);
               _loc13_ = param1.o3428.o7718.o13707;
               _loc6_ = 0;
               while(_loc6_ < param1.o13134)
               {
                  _loc12_ = param1.o16255[_loc6_].o15759;
                  _loc14_ = param1.o3428.o7718.position.x + (_loc13_.o19549.x * _loc12_.x + _loc13_.o20685.x * _loc12_.y);
                  _loc9_ = param1.o3428.o7718.position.y + (_loc13_.o19549.y * _loc12_.x + _loc13_.o20685.y * _loc12_.y);
                  o5075[_loc6_] = (_loc14_ - _loc11_) * o17937.x + (_loc9_ - _loc10_) * o17937.y - param1.o30;
                  o6942[_loc6_].x = _loc14_;
                  o6942[_loc6_].y = _loc9_;
                  _loc6_++;
               }
               break;
            default:
               _loc13_ = param1.o6133.o7718.o13707;
               _loc12_ = param1.o19522;
               o17937.x = _loc13_.o19549.x * _loc12_.x + _loc13_.o20685.x * _loc12_.y;
               o17937.y = _loc13_.o19549.y * _loc12_.x + _loc13_.o20685.y * _loc12_.y;
               _loc13_ = param1.o6133.o7718.o13707;
               _loc12_ = param1.o15759;
               _loc11_ = param1.o6133.o7718.position.x + (_loc13_.o19549.x * _loc12_.x + _loc13_.o20685.x * _loc12_.y);
               _loc10_ = param1.o6133.o7718.position.y + (_loc13_.o19549.y * _loc12_.x + _loc13_.o20685.y * _loc12_.y);
               _loc13_ = param1.o3428.o7718.o13707;
               _loc6_ = 0;
               while(_loc6_ < param1.o13134)
               {
                  _loc12_ = param1.o16255[_loc6_].o15759;
                  _loc14_ = param1.o3428.o7718.position.x + (_loc13_.o19549.x * _loc12_.x + _loc13_.o20685.x * _loc12_.y);
                  _loc9_ = param1.o3428.o7718.position.y + (_loc13_.o19549.y * _loc12_.x + _loc13_.o20685.y * _loc12_.y);
                  o5075[_loc6_] = (_loc14_ - _loc11_) * o17937.x + (_loc9_ - _loc10_) * o17937.y - param1.o30;
                  o6942[_loc6_].x = _loc14_;
                  o6942[_loc6_].y = _loc9_;
                  _loc6_++;
               }
               break;
            case 3:
               _loc13_ = param1.o3428.o7718.o13707;
               _loc12_ = param1.o19522;
               o17937.x = _loc13_.o19549.x * _loc12_.x + _loc13_.o20685.x * _loc12_.y;
               o17937.y = _loc13_.o19549.y * _loc12_.x + _loc13_.o20685.y * _loc12_.y;
               _loc13_ = param1.o3428.o7718.o13707;
               _loc12_ = param1.o15759;
               _loc11_ = param1.o3428.o7718.position.x + (_loc13_.o19549.x * _loc12_.x + _loc13_.o20685.x * _loc12_.y);
               _loc10_ = param1.o3428.o7718.position.y + (_loc13_.o19549.y * _loc12_.x + _loc13_.o20685.y * _loc12_.y);
               _loc13_ = param1.o6133.o7718.o13707;
               _loc6_ = 0;
               while(_loc6_ < param1.o13134)
               {
                  _loc12_ = param1.o16255[_loc6_].o15759;
                  _loc14_ = param1.o6133.o7718.position.x + (_loc13_.o19549.x * _loc12_.x + _loc13_.o20685.x * _loc12_.y);
                  _loc9_ = param1.o6133.o7718.position.y + (_loc13_.o19549.y * _loc12_.x + _loc13_.o20685.y * _loc12_.y);
                  o5075[_loc6_] = (_loc14_ - _loc11_) * o17937.x + (_loc9_ - _loc10_) * o17937.y - param1.o30;
                  o6942[_loc6_].o18596(_loc14_,_loc9_);
                  _loc6_++;
               }
               o17937.x = o17937.x * -1;
               o17937.y = o17937.y * -1;
         }
      }
   }
}
