package
{
   public class o12663
   {
      
      public static const o19364:int = 0;
      
      public static const o8533:int = 1;
       
      
      protected var o6949:int;
      
      protected var o9919:int;
      
      protected var o2390:Array;
      
      public function o12663(param1:int, param2:int)
      {
         super();
         o6611(param1,param2);
      }
      
      protected function o6611(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         if(param1 > 0 && param2 > 0)
         {
            o6949 = param1;
            o9919 = param2;
            o2390 = new Array(param2);
            _loc4_ = 0;
            while(_loc4_ < param2)
            {
               o2390[_loc4_] = new Array(param1);
               _loc3_ = 0;
               while(_loc3_ < param2)
               {
                  o2390[_loc4_][_loc3_] = 0;
                  _loc3_++;
               }
               _loc4_++;
            }
         }
      }
      
      protected function o18143() : void
      {
         o2390 = null;
      }
      
      public function o11791() : Number
      {
         return o6949;
      }
      
      public function o1759() : Number
      {
         return o9919;
      }
      
      public function o1697(param1:int, param2:int) : Number
      {
         var _loc3_:* = 0;
         if(param1 >= 0 && param1 < o9919 && param2 >= 0 && param2 <= o6949)
         {
            _loc3_ = Number(o2390[param1][param2]);
         }
         return _loc3_;
      }
      
      public function o10063(param1:int, param2:int, param3:Number) : void
      {
         if(param1 >= 0 && param1 < o9919 && param2 >= 0 && param2 <= o6949)
         {
            o2390[param1][param2] = param3;
         }
      }
      
      public function o16979() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         if(o2390)
         {
            _loc2_ = 0;
            while(_loc2_ < o9919)
            {
               _loc1_ = 0;
               while(_loc1_ < o6949)
               {
                  if(_loc2_ == _loc1_)
                  {
                     o2390[_loc2_][_loc1_] = 1;
                  }
                  else
                  {
                     o2390[_loc2_][_loc1_] = 0;
                  }
                  _loc1_++;
               }
               _loc2_++;
            }
         }
      }
      
      public function o4637() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         if(o2390)
         {
            _loc2_ = 0;
            while(_loc2_ < o9919)
            {
               _loc1_ = 0;
               while(_loc1_ < o6949)
               {
                  o2390[_loc2_][_loc1_] = 0;
                  _loc1_++;
               }
               _loc2_++;
            }
         }
      }
      
      public function o5041(param1:o12663, param2:int = 0) : Boolean
      {
         var _loc10_:* = null;
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         var _loc8_:* = NaN;
         var _loc4_:int = 0;
         var _loc9_:int = 0;
         if(!o2390 || !param1)
         {
            return false;
         }
         var _loc7_:int = param1.o1759();
         var _loc6_:int = param1.o11791();
         if(param2 == 1)
         {
            if(o6949 != _loc7_)
            {
               return false;
            }
            _loc10_ = new o12663(_loc6_,o9919);
            _loc5_ = 0;
            while(_loc5_ < o9919)
            {
               _loc3_ = 0;
               while(_loc3_ < _loc6_)
               {
                  _loc8_ = 0;
                  _loc4_ = 0;
                  _loc9_ = 0;
                  while(_loc4_ < Math.max(o9919,_loc7_) && _loc9_ < Math.max(o6949,_loc6_))
                  {
                     _loc8_ = Number(_loc8_ + param1.o1697(_loc4_,_loc3_) * o2390[_loc5_][_loc9_]);
                     _loc4_++;
                     _loc9_++;
                     _loc9_;
                  }
                  _loc10_.o10063(_loc5_,_loc3_,_loc8_);
                  _loc3_++;
               }
               _loc5_++;
            }
            o18143();
            o6611(_loc6_,o9919);
            _loc5_ = 0;
            while(_loc5_ < _loc7_)
            {
               _loc3_ = 0;
               while(_loc3_ < o6949)
               {
                  o2390[_loc5_][_loc3_] = _loc10_.o1697(_loc5_,_loc3_);
                  _loc3_++;
               }
               _loc5_++;
            }
         }
         else
         {
            if(o9919 != _loc6_)
            {
               return false;
            }
            _loc10_ = new o12663(o6949,_loc7_);
            _loc5_ = 0;
            while(_loc5_ < _loc7_)
            {
               _loc3_ = 0;
               while(_loc3_ < o6949)
               {
                  _loc8_ = 0;
                  _loc4_ = 0;
                  _loc9_ = 0;
                  0;
                  while(_loc4_ < Math.max(_loc7_,o9919) && _loc9_ < Math.max(_loc6_,o6949))
                  {
                     _loc8_ = Number(_loc8_ + o2390[_loc4_][_loc3_] * param1.o1697(_loc5_,_loc9_));
                     _loc4_++;
                     _loc9_++;
                     _loc9_;
                  }
                  _loc10_.o10063(_loc5_,_loc3_,_loc8_);
                  _loc3_++;
               }
               _loc5_++;
            }
            o18143();
            o6611(o6949,_loc7_);
            _loc5_ = 0;
            while(_loc5_ < _loc7_)
            {
               _loc3_ = 0;
               while(_loc3_ < o6949)
               {
                  o2390[_loc5_][_loc3_] = _loc10_.o1697(_loc5_,_loc3_);
                  _loc3_++;
               }
               _loc5_++;
            }
         }
         return true;
      }
      
      public function o19422(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:* = NaN;
         if(!o2390)
         {
            return false;
         }
         _loc3_ = 0;
         while(_loc3_ < o9919)
         {
            _loc2_ = 0;
            while(_loc2_ < o6949)
            {
               _loc4_ = 0;
               _loc4_ = Number(o2390[_loc3_][_loc2_] * param1);
               o2390[_loc3_][_loc2_] = _loc4_;
               _loc2_++;
            }
            _loc3_++;
         }
         return true;
      }
      
      public function o14473(param1:o12663) : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc6_:* = NaN;
         if(!o2390 || !param1)
         {
            return false;
         }
         var _loc5_:int = param1.o1759();
         var _loc4_:int = param1.o11791();
         if(o6949 != _loc4_ || o9919 != _loc5_)
         {
            return false;
         }
         _loc3_ = 0;
         while(_loc3_ < o9919)
         {
            _loc2_ = 0;
            while(_loc2_ < o6949)
            {
               _loc6_ = 0;
               _loc6_ = Number(o2390[_loc3_][_loc2_] + param1.o1697(_loc3_,_loc2_));
               o2390[_loc3_][_loc2_] = _loc6_;
               _loc2_++;
            }
            _loc3_++;
         }
         return true;
      }
   }
}
