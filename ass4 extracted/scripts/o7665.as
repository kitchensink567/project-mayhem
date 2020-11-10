package
{
   public class o7665
   {
       
      
      private var o15155:o19006;
      
      private var o8420:o19006;
      
      private var o17939:uint;
      
      private var o15515:int;
      
      public function o7665()
      {
         super();
         o15155 = null;
         o8420 = null;
         o17939 = 0;
         o15515 = 0;
      }
      
      public function o3221(param1:o1693, param2:*) : o19006
      {
         var _loc3_:o19006 = o12538();
         var _loc5_:* = 0.1;
         var _loc4_:* = 0.1;
         _loc3_.o3664.o8628.x = param1.o8628.x - _loc5_;
         _loc3_.o3664.o8628.y = param1.o8628.y - _loc4_;
         _loc3_.o3664.o18391.x = param1.o18391.x + _loc5_;
         _loc3_.o3664.o18391.y = param1.o18391.y + _loc4_;
         _loc3_.o18152 = param2;
         o3883(_loc3_);
         return _loc3_;
      }
      
      public function o13799(param1:o19006) : void
      {
         o17347(param1);
         o5956(param1);
      }
      
      public function o3619(param1:o19006, param2:o1693, param3:o20021) : Boolean
      {
         o14980.o12199(param1.o14207());
         if(param1.o3664.o19221(param2))
         {
            return false;
         }
         o17347(param1);
         var _loc5_:Number = 0.1 + 2 * (param3.x > 0?param3.x:-param3.x);
         var _loc4_:Number = 0.1 + 2 * (param3.y > 0?param3.y:-param3.y);
         param1.o3664.o8628.x = param2.o8628.x - _loc5_;
         param1.o3664.o8628.y = param2.o8628.y - _loc4_;
         param1.o3664.o18391.x = param2.o18391.x + _loc5_;
         param1.o3664.o18391.y = param2.o18391.y + _loc4_;
         o3883(param1);
         return true;
      }
      
      public function o4141(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc2_:* = 0;
         if(o15155 == null)
         {
            return;
         }
         _loc4_ = 0;
         while(_loc4_ < param1)
         {
            _loc3_ = o15155;
            _loc2_ = uint(0);
            while(_loc3_.o14207() == false)
            {
               _loc3_ = !!(o17939 >> _loc2_ & 1)?_loc3_.o10612:_loc3_.o10703;
               _loc2_ = uint(_loc2_ + 1 & 31);
            }
            o17939 = o17939 + 1;
            o17347(_loc3_);
            o3883(_loc3_);
            _loc4_++;
         }
      }
      
      public function o12025(param1:o19006) : o1693
      {
         return param1.o3664;
      }
      
      public function o3272(param1:o19006) : *
      {
         return param1.o18152;
      }
      
      public function o9501(param1:Function, param2:o1693) : void
      {
         var _loc4_:* = null;
         var _loc6_:Boolean = false;
         if(o15155 == null)
         {
            return;
         }
         var _loc5_:Vector.<o19006> = new Vector.<o19006>();
         var _loc3_:int = 0;
         _loc3_++;
         _loc5_[_loc3_] = o15155;
         while(_loc3_ > 0)
         {
            _loc3_--;
            _loc4_ = _loc5_[_loc3_];
            if(_loc4_.o3664.o15642(param2))
            {
               if(_loc4_.o14207())
               {
                  _loc6_ = param1(_loc4_);
                  if(!_loc6_)
                  {
                     return;
                  }
               }
               else
               {
                  _loc3_++;
                  _loc5_[_loc3_] = _loc4_.o10703;
                  _loc3_++;
                  _loc5_[_loc3_] = _loc4_.o10612;
               }
            }
         }
      }
      
      public function o4566(param1:Function, param2:Function, param3:o13148) : void
      {
         var _loc11_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc16_:* = null;
         var _loc4_:* = null;
         var _loc19_:* = null;
         var _loc7_:Number = NaN;
         var _loc13_:* = null;
         if(o15155 == null)
         {
            §§push(param2());
            return;
         }
         var _loc5_:o20021 = param3.o12282;
         var _loc12_:o20021 = param3.o14457;
         var _loc17_:o20021 = o10852.o6072(_loc5_,_loc12_);
         _loc17_.o5775();
         var _loc10_:o20021 = o10852.o18626(1,_loc17_);
         var _loc6_:o20021 = o10852.o3387(_loc10_);
         var _loc9_:Number = param3.o544;
         var _loc14_:o1693 = new o1693();
         _loc11_ = _loc5_.x + _loc9_ * (_loc12_.x - _loc5_.x);
         _loc8_ = _loc5_.y + _loc9_ * (_loc12_.y - _loc5_.y);
         _loc14_.o8628.x = Math.min(_loc5_.x,_loc11_);
         _loc14_.o8628.y = Math.min(_loc5_.y,_loc8_);
         _loc14_.o18391.x = Math.max(_loc5_.x,_loc11_);
         _loc14_.o18391.y = Math.max(_loc5_.y,_loc8_);
         var _loc18_:Vector.<o19006> = new Vector.<o19006>();
         var _loc15_:int = 0;
         _loc15_++;
         _loc18_[_loc15_] = o15155;
         while(_loc15_ > 0)
         {
            _loc15_--;
            _loc16_ = _loc18_[_loc15_];
            if(_loc16_.o3664.o15642(_loc14_) != false)
            {
               _loc4_ = _loc16_.o3664.o9628();
               _loc19_ = _loc16_.o3664.o19787();
               _loc7_ = Math.abs(_loc10_.x * (_loc5_.x - _loc4_.x) + _loc10_.y * (_loc5_.y - _loc4_.y)) - _loc6_.x * _loc19_.x - _loc6_.y * _loc19_.y;
               if(_loc7_ <= 0)
               {
                  if(_loc16_.o14207())
                  {
                     _loc13_ = new o13148();
                     _loc13_.o12282 = param3.o12282;
                     _loc13_.o14457 = param3.o14457;
                     _loc13_.o544 = param3.o544;
                     _loc9_ = param1(_loc13_,_loc16_);
                     if(_loc9_ == 0)
                     {
                        §§push(param2());
                        return;
                     }
                     _loc11_ = _loc5_.x + _loc9_ * (_loc12_.x - _loc5_.x);
                     _loc8_ = _loc5_.y + _loc9_ * (_loc12_.y - _loc5_.y);
                     _loc14_.o8628.x = Math.min(_loc5_.x,_loc11_);
                     _loc14_.o8628.y = Math.min(_loc5_.y,_loc8_);
                     _loc14_.o18391.x = Math.max(_loc5_.x,_loc11_);
                     _loc14_.o18391.y = Math.max(_loc5_.y,_loc8_);
                  }
                  else
                  {
                     _loc15_++;
                     _loc18_[_loc15_] = _loc16_.o10703;
                     _loc15_++;
                     _loc18_[_loc15_] = _loc16_.o10612;
                  }
               }
            }
         }
         §§push(param2());
      }
      
      private function o12538() : o19006
      {
         var _loc1_:* = null;
         if(o8420)
         {
            _loc1_ = o8420;
            o8420 = _loc1_.parent;
            _loc1_.parent = null;
            _loc1_.o10703 = null;
            _loc1_.o10612 = null;
            return _loc1_;
         }
         return new o19006();
      }
      
      private function o5956(param1:o19006) : void
      {
         param1.parent = o8420;
         o8420 = param1;
      }
      
      private function o3883(param1:o19006) : void
      {
         var _loc4_:* = null;
         var _loc8_:* = null;
         var _loc7_:Number = NaN;
         var _loc3_:Number = NaN;
         o15515 = o15515 + 1;
         if(o15155 == null)
         {
            o15155 = param1;
            o15155.parent = null;
            return;
         }
         var _loc9_:o20021 = param1.o3664.o9628();
         var _loc6_:* = o15155;
         if(_loc6_.o14207() == false)
         {
            do
            {
               _loc4_ = _loc6_.o10703;
               _loc8_ = _loc6_.o10612;
               _loc7_ = Math.abs((_loc4_.o3664.o8628.x + _loc4_.o3664.o18391.x) / 2 - _loc9_.x) + Math.abs((_loc4_.o3664.o8628.y + _loc4_.o3664.o18391.y) / 2 - _loc9_.y);
               _loc3_ = Math.abs((_loc8_.o3664.o8628.x + _loc8_.o3664.o18391.x) / 2 - _loc9_.x) + Math.abs((_loc8_.o3664.o8628.y + _loc8_.o3664.o18391.y) / 2 - _loc9_.y);
               if(_loc7_ < _loc3_)
               {
                  _loc6_ = _loc4_;
               }
               else
               {
                  _loc6_ = _loc8_;
               }
            }
            while(_loc6_.o14207() == false);
            
         }
         var _loc2_:o19006 = _loc6_.parent;
         var _loc5_:* = o12538();
         _loc5_.parent = _loc2_;
         _loc5_.o18152 = null;
         _loc5_.o3664.o1852(param1.o3664,_loc6_.o3664);
         if(_loc2_)
         {
            if(_loc6_.parent.o10703 == _loc6_)
            {
               _loc2_.o10703 = _loc5_;
            }
            else
            {
               _loc2_.o10612 = _loc5_;
            }
            _loc5_.o10703 = _loc6_;
            _loc5_.o10612 = param1;
            _loc6_.parent = _loc5_;
            param1.parent = _loc5_;
            while(!_loc2_.o3664.o19221(_loc5_.o3664))
            {
               _loc2_.o3664.o1852(_loc2_.o10703.o3664,_loc2_.o10612.o3664);
               _loc5_ = _loc2_;
               _loc2_ = _loc2_.parent;
               if(!_loc2_)
               {
                  break;
               }
            }
         }
         else
         {
            _loc5_.o10703 = _loc6_;
            _loc5_.o10612 = param1;
            _loc6_.parent = _loc5_;
            param1.parent = _loc5_;
            o15155 = _loc5_;
         }
      }
      
      private function o17347(param1:o19006) : void
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         if(param1 == o15155)
         {
            o15155 = null;
            return;
         }
         var _loc5_:o19006 = param1.parent;
         var _loc2_:o19006 = _loc5_.parent;
         if(_loc5_.o10703 == param1)
         {
            _loc4_ = _loc5_.o10612;
         }
         else
         {
            _loc4_ = _loc5_.o10703;
         }
         if(_loc2_)
         {
            if(_loc2_.o10703 == _loc5_)
            {
               _loc2_.o10703 = _loc4_;
            }
            else
            {
               _loc2_.o10612 = _loc4_;
            }
            _loc4_.parent = _loc2_;
            o5956(_loc5_);
            while(_loc2_)
            {
               _loc3_ = _loc2_.o3664;
               _loc2_.o3664 = o1693.o1852(_loc2_.o10703.o3664,_loc2_.o10612.o3664);
               if(!_loc3_.o19221(_loc2_.o3664))
               {
                  _loc2_ = _loc2_.parent;
                  continue;
               }
               break;
            }
         }
         else
         {
            o15155 = _loc4_;
            _loc4_.parent = null;
            o5956(_loc5_);
         }
      }
   }
}
